# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SecurityHub
  module Validators

    class AcceptAdministratorInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptAdministratorInvitationInput, context: context)
        Hearth::Validator.validate!(input[:administrator_id], ::String, context: "#{context}[:administrator_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
      end
    end

    class AcceptAdministratorInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptAdministratorInvitationOutput, context: context)
      end
    end

    class AcceptInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationInput, context: context)
        Hearth::Validator.validate!(input[:master_id], ::String, context: "#{context}[:master_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
      end
    end

    class AcceptInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationOutput, context: context)
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class AccountDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountDetails, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class AccountDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Validators::NetworkConnectionAction.validate!(input[:network_connection_action], context: "#{context}[:network_connection_action]") unless input[:network_connection_action].nil?
        Validators::AwsApiCallAction.validate!(input[:aws_api_call_action], context: "#{context}[:aws_api_call_action]") unless input[:aws_api_call_action].nil?
        Validators::DnsRequestAction.validate!(input[:dns_request_action], context: "#{context}[:dns_request_action]") unless input[:dns_request_action].nil?
        Validators::PortProbeAction.validate!(input[:port_probe_action], context: "#{context}[:port_probe_action]") unless input[:port_probe_action].nil?
      end
    end

    class ActionLocalIpDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionLocalIpDetails, context: context)
        Hearth::Validator.validate!(input[:ip_address_v4], ::String, context: "#{context}[:ip_address_v4]")
      end
    end

    class ActionLocalPortDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionLocalPortDetails, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:port_name], ::String, context: "#{context}[:port_name]")
      end
    end

    class ActionRemoteIpDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionRemoteIpDetails, context: context)
        Hearth::Validator.validate!(input[:ip_address_v4], ::String, context: "#{context}[:ip_address_v4]")
        Validators::IpOrganizationDetails.validate!(input[:organization], context: "#{context}[:organization]") unless input[:organization].nil?
        Validators::Country.validate!(input[:country], context: "#{context}[:country]") unless input[:country].nil?
        Validators::City.validate!(input[:city], context: "#{context}[:city]") unless input[:city].nil?
        Validators::GeoLocation.validate!(input[:geo_location], context: "#{context}[:geo_location]") unless input[:geo_location].nil?
      end
    end

    class ActionRemotePortDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionRemotePortDetails, context: context)
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:port_name], ::String, context: "#{context}[:port_name]")
      end
    end

    class ActionTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionTarget, context: context)
        Hearth::Validator.validate!(input[:action_target_arn], ::String, context: "#{context}[:action_target_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ActionTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActionTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Adjustment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Adjustment, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class AdjustmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Adjustment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdminAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AdminAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdminAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:zone_name], ::String, context: "#{context}[:zone_name]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AvailabilityZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsApiCallAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiCallAction, context: context)
        Hearth::Validator.validate!(input[:api], ::String, context: "#{context}[:api]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:caller_type], ::String, context: "#{context}[:caller_type]")
        Validators::ActionRemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
        Validators::AwsApiCallActionDomainDetails.validate!(input[:domain_details], context: "#{context}[:domain_details]") unless input[:domain_details].nil?
        Validators::FieldMap.validate!(input[:affected_resources], context: "#{context}[:affected_resources]") unless input[:affected_resources].nil?
        Hearth::Validator.validate!(input[:first_seen], ::String, context: "#{context}[:first_seen]")
        Hearth::Validator.validate!(input[:last_seen], ::String, context: "#{context}[:last_seen]")
      end
    end

    class AwsApiCallActionDomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiCallActionDomainDetails, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class AwsApiGatewayAccessLogSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayAccessLogSettings, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class AwsApiGatewayCanarySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayCanarySettings, context: context)
        Hearth::Validator.validate!(input[:percent_traffic], ::Float, context: "#{context}[:percent_traffic]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Validators::FieldMap.validate!(input[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless input[:stage_variable_overrides].nil?
        Hearth::Validator.validate!(input[:use_stage_cache], ::TrueClass, ::FalseClass, context: "#{context}[:use_stage_cache]")
      end
    end

    class AwsApiGatewayEndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayEndpointConfiguration, context: context)
        Validators::NonEmptyStringList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
      end
    end

    class AwsApiGatewayMethodSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayMethodSettings, context: context)
        Hearth::Validator.validate!(input[:metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:metrics_enabled]")
        Hearth::Validator.validate!(input[:logging_level], ::String, context: "#{context}[:logging_level]")
        Hearth::Validator.validate!(input[:data_trace_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:data_trace_enabled]")
        Hearth::Validator.validate!(input[:throttling_burst_limit], ::Integer, context: "#{context}[:throttling_burst_limit]")
        Hearth::Validator.validate!(input[:throttling_rate_limit], ::Float, context: "#{context}[:throttling_rate_limit]")
        Hearth::Validator.validate!(input[:caching_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:caching_enabled]")
        Hearth::Validator.validate!(input[:cache_ttl_in_seconds], ::Integer, context: "#{context}[:cache_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:cache_data_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:cache_data_encrypted]")
        Hearth::Validator.validate!(input[:require_authorization_for_cache_control], ::TrueClass, ::FalseClass, context: "#{context}[:require_authorization_for_cache_control]")
        Hearth::Validator.validate!(input[:unauthorized_cache_control_header_strategy], ::String, context: "#{context}[:unauthorized_cache_control_header_strategy]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:resource_path], ::String, context: "#{context}[:resource_path]")
      end
    end

    class AwsApiGatewayMethodSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsApiGatewayMethodSettings.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsApiGatewayRestApiDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayRestApiDetails, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::NonEmptyStringList.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        Validators::AwsApiGatewayEndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
      end
    end

    class AwsApiGatewayStageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayStageDetails, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        Validators::AwsApiGatewayMethodSettingsList.validate!(input[:method_settings], context: "#{context}[:method_settings]") unless input[:method_settings].nil?
        Validators::FieldMap.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        Validators::AwsApiGatewayAccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Validators::AwsApiGatewayCanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::String, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
      end
    end

    class AwsApiGatewayV2ApiDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayV2ApiDetails, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Validators::AwsCorsConfiguration.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
      end
    end

    class AwsApiGatewayV2RouteSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayV2RouteSettings, context: context)
        Hearth::Validator.validate!(input[:detailed_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:detailed_metrics_enabled]")
        Hearth::Validator.validate!(input[:logging_level], ::String, context: "#{context}[:logging_level]")
        Hearth::Validator.validate!(input[:data_trace_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:data_trace_enabled]")
        Hearth::Validator.validate!(input[:throttling_burst_limit], ::Integer, context: "#{context}[:throttling_burst_limit]")
        Hearth::Validator.validate!(input[:throttling_rate_limit], ::Float, context: "#{context}[:throttling_rate_limit]")
      end
    end

    class AwsApiGatewayV2StageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsApiGatewayV2StageDetails, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AwsApiGatewayV2RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:last_updated_date], ::String, context: "#{context}[:last_updated_date]")
        Validators::AwsApiGatewayV2RouteSettings.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Validators::FieldMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Validators::AwsApiGatewayAccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:last_deployment_status_message], ::String, context: "#{context}[:last_deployment_status_message]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
      end
    end

    class AwsAutoScalingAutoScalingGroupAvailabilityZonesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsAutoScalingAutoScalingGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupDetails, context: context)
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::StringList.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        Hearth::Validator.validate!(input[:health_check_type], ::String, context: "#{context}[:health_check_type]")
        Hearth::Validator.validate!(input[:health_check_grace_period], ::Integer, context: "#{context}[:health_check_grace_period]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.validate!(input[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless input[:mixed_instances_policy].nil?
        Validators::AwsAutoScalingAutoScalingGroupAvailabilityZonesList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Hearth::Validator.validate!(input[:capacity_rebalance], ::TrueClass, ::FalseClass, context: "#{context}[:capacity_rebalance]")
      end
    end

    class AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails, context: context)
        Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.validate!(input[:instances_distribution], context: "#{context}[:instances_distribution]") unless input[:instances_distribution].nil?
        Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails, context: context)
        Hearth::Validator.validate!(input[:on_demand_allocation_strategy], ::String, context: "#{context}[:on_demand_allocation_strategy]")
        Hearth::Validator.validate!(input[:on_demand_base_capacity], ::Integer, context: "#{context}[:on_demand_base_capacity]")
        Hearth::Validator.validate!(input[:on_demand_percentage_above_base_capacity], ::Integer, context: "#{context}[:on_demand_percentage_above_base_capacity]")
        Hearth::Validator.validate!(input[:spot_allocation_strategy], ::String, context: "#{context}[:spot_allocation_strategy]")
        Hearth::Validator.validate!(input[:spot_instance_pools], ::Integer, context: "#{context}[:spot_instance_pools]")
        Hearth::Validator.validate!(input[:spot_max_price], ::String, context: "#{context}[:spot_max_price]")
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails, context: context)
        Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.validate!(input[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless input[:launch_template_specification].nil?
        Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::String, context: "#{context}[:weighted_capacity]")
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Validators::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::TrueClass, ::FalseClass, context: "#{context}[:no_device]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails, context: context)
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
      end
    end

    class AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsAutoScalingLaunchConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingLaunchConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Validators::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:classic_link_vpc_id], ::String, context: "#{context}[:classic_link_vpc_id]")
        Validators::NonEmptyStringList.validate!(input[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless input[:classic_link_vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:iam_instance_profile], ::String, context: "#{context}[:iam_instance_profile]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.validate!(input[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless input[:instance_monitoring].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Hearth::Validator.validate!(input[:placement_tenancy], ::String, context: "#{context}[:placement_tenancy]")
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Validators::NonEmptyStringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Validators::AwsAutoScalingLaunchConfigurationMetadataOptions.validate!(input[:metadata_options], context: "#{context}[:metadata_options]") unless input[:metadata_options].nil?
      end
    end

    class AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsAutoScalingLaunchConfigurationMetadataOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsAutoScalingLaunchConfigurationMetadataOptions, context: context)
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
      end
    end

    class AwsCertificateManagerCertificateDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateDetails, context: context)
        Hearth::Validator.validate!(input[:certificate_authority_arn], ::String, context: "#{context}[:certificate_authority_arn]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::AwsCertificateManagerCertificateDomainValidationOptions.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
        Validators::AwsCertificateManagerCertificateExtendedKeyUsages.validate!(input[:extended_key_usages], context: "#{context}[:extended_key_usages]") unless input[:extended_key_usages].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:imported_at], ::String, context: "#{context}[:imported_at]")
        Validators::StringList.validate!(input[:in_use_by], context: "#{context}[:in_use_by]") unless input[:in_use_by].nil?
        Hearth::Validator.validate!(input[:issued_at], ::String, context: "#{context}[:issued_at]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:key_algorithm], ::String, context: "#{context}[:key_algorithm]")
        Validators::AwsCertificateManagerCertificateKeyUsages.validate!(input[:key_usages], context: "#{context}[:key_usages]") unless input[:key_usages].nil?
        Hearth::Validator.validate!(input[:not_after], ::String, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:not_before], ::String, context: "#{context}[:not_before]")
        Validators::AwsCertificateManagerCertificateOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:renewal_eligibility], ::String, context: "#{context}[:renewal_eligibility]")
        Validators::AwsCertificateManagerCertificateRenewalSummary.validate!(input[:renewal_summary], context: "#{context}[:renewal_summary]") unless input[:renewal_summary].nil?
        Hearth::Validator.validate!(input[:serial], ::String, context: "#{context}[:serial]")
        Hearth::Validator.validate!(input[:signature_algorithm], ::String, context: "#{context}[:signature_algorithm]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Validators::StringList.validate!(input[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless input[:subject_alternative_names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsCertificateManagerCertificateDomainValidationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateDomainValidationOption, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::AwsCertificateManagerCertificateResourceRecord.validate!(input[:resource_record], context: "#{context}[:resource_record]") unless input[:resource_record].nil?
        Hearth::Validator.validate!(input[:validation_domain], ::String, context: "#{context}[:validation_domain]")
        Validators::StringList.validate!(input[:validation_emails], context: "#{context}[:validation_emails]") unless input[:validation_emails].nil?
        Hearth::Validator.validate!(input[:validation_method], ::String, context: "#{context}[:validation_method]")
        Hearth::Validator.validate!(input[:validation_status], ::String, context: "#{context}[:validation_status]")
      end
    end

    class AwsCertificateManagerCertificateDomainValidationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCertificateManagerCertificateDomainValidationOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCertificateManagerCertificateExtendedKeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateExtendedKeyUsage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:o_id], ::String, context: "#{context}[:o_id]")
      end
    end

    class AwsCertificateManagerCertificateExtendedKeyUsages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCertificateManagerCertificateExtendedKeyUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCertificateManagerCertificateKeyUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateKeyUsage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AwsCertificateManagerCertificateKeyUsages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCertificateManagerCertificateKeyUsage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCertificateManagerCertificateOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateOptions, context: context)
        Hearth::Validator.validate!(input[:certificate_transparency_logging_preference], ::String, context: "#{context}[:certificate_transparency_logging_preference]")
      end
    end

    class AwsCertificateManagerCertificateRenewalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateRenewalSummary, context: context)
        Validators::AwsCertificateManagerCertificateDomainValidationOptions.validate!(input[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless input[:domain_validation_options].nil?
        Hearth::Validator.validate!(input[:renewal_status], ::String, context: "#{context}[:renewal_status]")
        Hearth::Validator.validate!(input[:renewal_status_reason], ::String, context: "#{context}[:renewal_status_reason]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
      end
    end

    class AwsCertificateManagerCertificateResourceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCertificateManagerCertificateResourceRecord, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsCloudFrontDistributionCacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionCacheBehavior, context: context)
        Hearth::Validator.validate!(input[:viewer_protocol_policy], ::String, context: "#{context}[:viewer_protocol_policy]")
      end
    end

    class AwsCloudFrontDistributionCacheBehaviors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionCacheBehaviors, context: context)
        Validators::AwsCloudFrontDistributionCacheBehaviorsItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class AwsCloudFrontDistributionCacheBehaviorsItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCloudFrontDistributionCacheBehavior.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCloudFrontDistributionDefaultCacheBehavior
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionDefaultCacheBehavior, context: context)
        Hearth::Validator.validate!(input[:viewer_protocol_policy], ::String, context: "#{context}[:viewer_protocol_policy]")
      end
    end

    class AwsCloudFrontDistributionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionDetails, context: context)
        Validators::AwsCloudFrontDistributionCacheBehaviors.validate!(input[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless input[:cache_behaviors].nil?
        Validators::AwsCloudFrontDistributionDefaultCacheBehavior.validate!(input[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless input[:default_cache_behavior].nil?
        Hearth::Validator.validate!(input[:default_root_object], ::String, context: "#{context}[:default_root_object]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
        Validators::AwsCloudFrontDistributionLogging.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
        Validators::AwsCloudFrontDistributionOrigins.validate!(input[:origins], context: "#{context}[:origins]") unless input[:origins].nil?
        Validators::AwsCloudFrontDistributionOriginGroups.validate!(input[:origin_groups], context: "#{context}[:origin_groups]") unless input[:origin_groups].nil?
        Validators::AwsCloudFrontDistributionViewerCertificate.validate!(input[:viewer_certificate], context: "#{context}[:viewer_certificate]") unless input[:viewer_certificate].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
      end
    end

    class AwsCloudFrontDistributionLogging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionLogging, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:include_cookies], ::TrueClass, ::FalseClass, context: "#{context}[:include_cookies]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class AwsCloudFrontDistributionOriginGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginGroup, context: context)
        Validators::AwsCloudFrontDistributionOriginGroupFailover.validate!(input[:failover_criteria], context: "#{context}[:failover_criteria]") unless input[:failover_criteria].nil?
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailover
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginGroupFailover, context: context)
        Validators::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.validate!(input[:status_codes], context: "#{context}[:status_codes]") unless input[:status_codes].nil?
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes, context: context)
        Validators::AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
      end
    end

    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class AwsCloudFrontDistributionOriginGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginGroups, context: context)
        Validators::AwsCloudFrontDistributionOriginGroupsItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class AwsCloudFrontDistributionOriginGroupsItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCloudFrontDistributionOriginGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCloudFrontDistributionOriginItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginItem, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:origin_path], ::String, context: "#{context}[:origin_path]")
        Validators::AwsCloudFrontDistributionOriginS3OriginConfig.validate!(input[:s3_origin_config], context: "#{context}[:s3_origin_config]") unless input[:s3_origin_config].nil?
      end
    end

    class AwsCloudFrontDistributionOriginItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCloudFrontDistributionOriginItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCloudFrontDistributionOriginS3OriginConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOriginS3OriginConfig, context: context)
        Hearth::Validator.validate!(input[:origin_access_identity], ::String, context: "#{context}[:origin_access_identity]")
      end
    end

    class AwsCloudFrontDistributionOrigins
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionOrigins, context: context)
        Validators::AwsCloudFrontDistributionOriginItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class AwsCloudFrontDistributionViewerCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudFrontDistributionViewerCertificate, context: context)
        Hearth::Validator.validate!(input[:acm_certificate_arn], ::String, context: "#{context}[:acm_certificate_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_source], ::String, context: "#{context}[:certificate_source]")
        Hearth::Validator.validate!(input[:cloud_front_default_certificate], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_front_default_certificate]")
        Hearth::Validator.validate!(input[:iam_certificate_id], ::String, context: "#{context}[:iam_certificate_id]")
        Hearth::Validator.validate!(input[:minimum_protocol_version], ::String, context: "#{context}[:minimum_protocol_version]")
        Hearth::Validator.validate!(input[:ssl_support_method], ::String, context: "#{context}[:ssl_support_method]")
      end
    end

    class AwsCloudTrailTrailDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCloudTrailTrailDetails, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:has_custom_event_selectors], ::TrueClass, ::FalseClass, context: "#{context}[:has_custom_event_selectors]")
        Hearth::Validator.validate!(input[:home_region], ::String, context: "#{context}[:home_region]")
        Hearth::Validator.validate!(input[:include_global_service_events], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_service_events]")
        Hearth::Validator.validate!(input[:is_multi_region_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_multi_region_trail]")
        Hearth::Validator.validate!(input[:is_organization_trail], ::TrueClass, ::FalseClass, context: "#{context}[:is_organization_trail]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:log_file_validation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:log_file_validation_enabled]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_topic_name], ::String, context: "#{context}[:sns_topic_name]")
        Hearth::Validator.validate!(input[:trail_arn], ::String, context: "#{context}[:trail_arn]")
      end
    end

    class AwsCodeBuildProjectArtifactsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectArtifactsDetails, context: context)
        Hearth::Validator.validate!(input[:artifact_identifier], ::String, context: "#{context}[:artifact_identifier]")
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:namespace_type], ::String, context: "#{context}[:namespace_type]")
        Hearth::Validator.validate!(input[:override_artifact_name], ::TrueClass, ::FalseClass, context: "#{context}[:override_artifact_name]")
        Hearth::Validator.validate!(input[:packaging], ::String, context: "#{context}[:packaging]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsCodeBuildProjectArtifactsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCodeBuildProjectArtifactsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCodeBuildProjectDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectDetails, context: context)
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Validators::AwsCodeBuildProjectArtifactsList.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        Validators::AwsCodeBuildProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsCodeBuildProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Validators::AwsCodeBuildProjectLogsConfigDetails.validate!(input[:logs_config], context: "#{context}[:logs_config]") unless input[:logs_config].nil?
        Validators::AwsCodeBuildProjectVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::AwsCodeBuildProjectArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
      end
    end

    class AwsCodeBuildProjectEnvironment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectEnvironment, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Validators::AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:privileged_mode], ::TrueClass, ::FalseClass, context: "#{context}[:privileged_mode]")
        Hearth::Validator.validate!(input[:image_pull_credentials_type], ::String, context: "#{context}[:image_pull_credentials_type]")
        Validators::AwsCodeBuildProjectEnvironmentRegistryCredential.validate!(input[:registry_credential], context: "#{context}[:registry_credential]") unless input[:registry_credential].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsCodeBuildProjectEnvironmentRegistryCredential
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectEnvironmentRegistryCredential, context: context)
        Hearth::Validator.validate!(input[:credential], ::String, context: "#{context}[:credential]")
        Hearth::Validator.validate!(input[:credential_provider], ::String, context: "#{context}[:credential_provider]")
      end
    end

    class AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class AwsCodeBuildProjectLogsConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectLogsConfigDetails, context: context)
        Validators::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        Validators::AwsCodeBuildProjectLogsConfigS3LogsDetails.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
      end
    end

    class AwsCodeBuildProjectLogsConfigS3LogsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectLogsConfigS3LogsDetails, context: context)
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsCodeBuildProjectSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:git_clone_depth], ::Integer, context: "#{context}[:git_clone_depth]")
        Hearth::Validator.validate!(input[:insecure_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:insecure_ssl]")
      end
    end

    class AwsCodeBuildProjectVpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCodeBuildProjectVpcConfig, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::NonEmptyStringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::NonEmptyStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class AwsCorsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCorsConfiguration, context: context)
        Validators::NonEmptyStringList.validate!(input[:allow_origins], context: "#{context}[:allow_origins]") unless input[:allow_origins].nil?
        Hearth::Validator.validate!(input[:allow_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:allow_credentials]")
        Validators::NonEmptyStringList.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate!(input[:max_age], ::Integer, context: "#{context}[:max_age]")
        Validators::NonEmptyStringList.validate!(input[:allow_methods], context: "#{context}[:allow_methods]") unless input[:allow_methods].nil?
        Validators::NonEmptyStringList.validate!(input[:allow_headers], context: "#{context}[:allow_headers]") unless input[:allow_headers].nil?
      end
    end

    class AwsDynamoDbTableAttributeDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableAttributeDefinition, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
      end
    end

    class AwsDynamoDbTableAttributeDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableAttributeDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableBillingModeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableBillingModeSummary, context: context)
        Hearth::Validator.validate!(input[:billing_mode], ::String, context: "#{context}[:billing_mode]")
        Hearth::Validator.validate!(input[:last_update_to_pay_per_request_date_time], ::String, context: "#{context}[:last_update_to_pay_per_request_date_time]")
      end
    end

    class AwsDynamoDbTableDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableDetails, context: context)
        Validators::AwsDynamoDbTableAttributeDefinitionList.validate!(input[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless input[:attribute_definitions].nil?
        Validators::AwsDynamoDbTableBillingModeSummary.validate!(input[:billing_mode_summary], context: "#{context}[:billing_mode_summary]") unless input[:billing_mode_summary].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::String, context: "#{context}[:creation_date_time]")
        Validators::AwsDynamoDbTableGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:global_table_version], ::String, context: "#{context}[:global_table_version]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Validators::AwsDynamoDbTableKeySchemaList.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Hearth::Validator.validate!(input[:latest_stream_arn], ::String, context: "#{context}[:latest_stream_arn]")
        Hearth::Validator.validate!(input[:latest_stream_label], ::String, context: "#{context}[:latest_stream_label]")
        Validators::AwsDynamoDbTableLocalSecondaryIndexList.validate!(input[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless input[:local_secondary_indexes].nil?
        Validators::AwsDynamoDbTableProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
        Validators::AwsDynamoDbTableReplicaList.validate!(input[:replicas], context: "#{context}[:replicas]") unless input[:replicas].nil?
        Validators::AwsDynamoDbTableRestoreSummary.validate!(input[:restore_summary], context: "#{context}[:restore_summary]") unless input[:restore_summary].nil?
        Validators::AwsDynamoDbTableSseDescription.validate!(input[:sse_description], context: "#{context}[:sse_description]") unless input[:sse_description].nil?
        Validators::AwsDynamoDbTableStreamSpecification.validate!(input[:stream_specification], context: "#{context}[:stream_specification]") unless input[:stream_specification].nil?
        Hearth::Validator.validate!(input[:table_id], ::String, context: "#{context}[:table_id]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:table_size_bytes], ::Integer, context: "#{context}[:table_size_bytes]")
        Hearth::Validator.validate!(input[:table_status], ::String, context: "#{context}[:table_status]")
      end
    end

    class AwsDynamoDbTableGlobalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableGlobalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:backfilling], ::TrueClass, ::FalseClass, context: "#{context}[:backfilling]")
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Hearth::Validator.validate!(input[:index_size_bytes], ::Integer, context: "#{context}[:index_size_bytes]")
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Validators::AwsDynamoDbTableKeySchemaList.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::AwsDynamoDbTableProjection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
        Validators::AwsDynamoDbTableProvisionedThroughput.validate!(input[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless input[:provisioned_throughput].nil?
      end
    end

    class AwsDynamoDbTableGlobalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableGlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableKeySchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableKeySchema, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class AwsDynamoDbTableKeySchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableKeySchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableLocalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableLocalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:index_arn], ::String, context: "#{context}[:index_arn]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::AwsDynamoDbTableKeySchemaList.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        Validators::AwsDynamoDbTableProjection.validate!(input[:projection], context: "#{context}[:projection]") unless input[:projection].nil?
      end
    end

    class AwsDynamoDbTableLocalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableLocalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableProjection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableProjection, context: context)
        Validators::StringList.validate!(input[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless input[:non_key_attributes].nil?
        Hearth::Validator.validate!(input[:projection_type], ::String, context: "#{context}[:projection_type]")
      end
    end

    class AwsDynamoDbTableProvisionedThroughput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableProvisionedThroughput, context: context)
        Hearth::Validator.validate!(input[:last_decrease_date_time], ::String, context: "#{context}[:last_decrease_date_time]")
        Hearth::Validator.validate!(input[:last_increase_date_time], ::String, context: "#{context}[:last_increase_date_time]")
        Hearth::Validator.validate!(input[:number_of_decreases_today], ::Integer, context: "#{context}[:number_of_decreases_today]")
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
        Hearth::Validator.validate!(input[:write_capacity_units], ::Integer, context: "#{context}[:write_capacity_units]")
      end
    end

    class AwsDynamoDbTableProvisionedThroughputOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableProvisionedThroughputOverride, context: context)
        Hearth::Validator.validate!(input[:read_capacity_units], ::Integer, context: "#{context}[:read_capacity_units]")
      end
    end

    class AwsDynamoDbTableReplica
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableReplica, context: context)
        Validators::AwsDynamoDbTableReplicaGlobalSecondaryIndexList.validate!(input[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless input[:global_secondary_indexes].nil?
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Validators::AwsDynamoDbTableProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
        Hearth::Validator.validate!(input[:region_name], ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate!(input[:replica_status], ::String, context: "#{context}[:replica_status]")
        Hearth::Validator.validate!(input[:replica_status_description], ::String, context: "#{context}[:replica_status_description]")
      end
    end

    class AwsDynamoDbTableReplicaGlobalSecondaryIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        Validators::AwsDynamoDbTableProvisionedThroughputOverride.validate!(input[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless input[:provisioned_throughput_override].nil?
      end
    end

    class AwsDynamoDbTableReplicaGlobalSecondaryIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableReplicaGlobalSecondaryIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableReplicaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsDynamoDbTableReplica.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsDynamoDbTableRestoreSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableRestoreSummary, context: context)
        Hearth::Validator.validate!(input[:source_backup_arn], ::String, context: "#{context}[:source_backup_arn]")
        Hearth::Validator.validate!(input[:source_table_arn], ::String, context: "#{context}[:source_table_arn]")
        Hearth::Validator.validate!(input[:restore_date_time], ::String, context: "#{context}[:restore_date_time]")
        Hearth::Validator.validate!(input[:restore_in_progress], ::TrueClass, ::FalseClass, context: "#{context}[:restore_in_progress]")
      end
    end

    class AwsDynamoDbTableSseDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableSseDescription, context: context)
        Hearth::Validator.validate!(input[:inaccessible_encryption_date_time], ::String, context: "#{context}[:inaccessible_encryption_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sse_type], ::String, context: "#{context}[:sse_type]")
        Hearth::Validator.validate!(input[:kms_master_key_arn], ::String, context: "#{context}[:kms_master_key_arn]")
      end
    end

    class AwsDynamoDbTableStreamSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsDynamoDbTableStreamSpecification, context: context)
        Hearth::Validator.validate!(input[:stream_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:stream_enabled]")
        Hearth::Validator.validate!(input[:stream_view_type], ::String, context: "#{context}[:stream_view_type]")
      end
    end

    class AwsEc2EipDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2EipDetails, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:allocation_id], ::String, context: "#{context}[:allocation_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:public_ipv4_pool], ::String, context: "#{context}[:public_ipv4_pool]")
        Hearth::Validator.validate!(input[:network_border_group], ::String, context: "#{context}[:network_border_group]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:network_interface_owner_id], ::String, context: "#{context}[:network_interface_owner_id]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class AwsEc2InstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2InstanceDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::StringList.validate!(input[:ip_v4_addresses], context: "#{context}[:ip_v4_addresses]") unless input[:ip_v4_addresses].nil?
        Validators::StringList.validate!(input[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless input[:ip_v6_addresses].nil?
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:iam_instance_profile_arn], ::String, context: "#{context}[:iam_instance_profile_arn]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:launched_at], ::String, context: "#{context}[:launched_at]")
        Validators::AwsEc2InstanceNetworkInterfacesList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
      end
    end

    class AwsEc2InstanceNetworkInterfacesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2InstanceNetworkInterfacesDetails, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class AwsEc2InstanceNetworkInterfacesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2InstanceNetworkInterfacesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2NetworkAclAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkAclAssociation, context: context)
        Hearth::Validator.validate!(input[:network_acl_association_id], ::String, context: "#{context}[:network_acl_association_id]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class AwsEc2NetworkAclAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkAclAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2NetworkAclDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkAclDetails, context: context)
        Hearth::Validator.validate!(input[:is_default], ::TrueClass, ::FalseClass, context: "#{context}[:is_default]")
        Hearth::Validator.validate!(input[:network_acl_id], ::String, context: "#{context}[:network_acl_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::AwsEc2NetworkAclAssociationList.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
        Validators::AwsEc2NetworkAclEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class AwsEc2NetworkAclEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkAclEntry, context: context)
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:egress], ::TrueClass, ::FalseClass, context: "#{context}[:egress]")
        Validators::IcmpTypeCode.validate!(input[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless input[:icmp_type_code].nil?
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Validators::PortRangeFromTo.validate!(input[:port_range], context: "#{context}[:port_range]") unless input[:port_range].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:rule_action], ::String, context: "#{context}[:rule_action]")
        Hearth::Validator.validate!(input[:rule_number], ::Integer, context: "#{context}[:rule_number]")
      end
    end

    class AwsEc2NetworkAclEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkAclEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2NetworkInterfaceAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfaceAttachment, context: context)
        Hearth::Validator.validate!(input[:attach_time], ::String, context: "#{context}[:attach_time]")
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:device_index], ::Integer, context: "#{context}[:device_index]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_owner_id], ::String, context: "#{context}[:instance_owner_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsEc2NetworkInterfaceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfaceDetails, context: context)
        Validators::AwsEc2NetworkInterfaceAttachment.validate!(input[:attachment], context: "#{context}[:attachment]") unless input[:attachment].nil?
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Validators::AwsEc2NetworkInterfaceSecurityGroupList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:source_dest_check], ::TrueClass, ::FalseClass, context: "#{context}[:source_dest_check]")
        Validators::AwsEc2NetworkInterfaceIpV6AddressList.validate!(input[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless input[:ip_v6_addresses].nil?
        Validators::AwsEc2NetworkInterfacePrivateIpAddressList.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:public_dns_name], ::String, context: "#{context}[:public_dns_name]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
      end
    end

    class AwsEc2NetworkInterfaceIpV6AddressDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfaceIpV6AddressDetail, context: context)
        Hearth::Validator.validate!(input[:ip_v6_address], ::String, context: "#{context}[:ip_v6_address]")
      end
    end

    class AwsEc2NetworkInterfaceIpV6AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkInterfaceIpV6AddressDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2NetworkInterfacePrivateIpAddressDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfacePrivateIpAddressDetail, context: context)
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
      end
    end

    class AwsEc2NetworkInterfacePrivateIpAddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkInterfacePrivateIpAddressDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2NetworkInterfaceSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2NetworkInterfaceSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class AwsEc2NetworkInterfaceSecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2NetworkInterfaceSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SecurityGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupDetails, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::AwsEc2SecurityGroupIpPermissionList.validate!(input[:ip_permissions], context: "#{context}[:ip_permissions]") unless input[:ip_permissions].nil?
        Validators::AwsEc2SecurityGroupIpPermissionList.validate!(input[:ip_permissions_egress], context: "#{context}[:ip_permissions_egress]") unless input[:ip_permissions_egress].nil?
      end
    end

    class AwsEc2SecurityGroupIpPermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupIpPermission, context: context)
        Hearth::Validator.validate!(input[:ip_protocol], ::String, context: "#{context}[:ip_protocol]")
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Validators::AwsEc2SecurityGroupUserIdGroupPairList.validate!(input[:user_id_group_pairs], context: "#{context}[:user_id_group_pairs]") unless input[:user_id_group_pairs].nil?
        Validators::AwsEc2SecurityGroupIpRangeList.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Validators::AwsEc2SecurityGroupIpv6RangeList.validate!(input[:ipv6_ranges], context: "#{context}[:ipv6_ranges]") unless input[:ipv6_ranges].nil?
        Validators::AwsEc2SecurityGroupPrefixListIdList.validate!(input[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless input[:prefix_list_ids].nil?
      end
    end

    class AwsEc2SecurityGroupIpPermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2SecurityGroupIpPermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SecurityGroupIpRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupIpRange, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
      end
    end

    class AwsEc2SecurityGroupIpRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2SecurityGroupIpRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SecurityGroupIpv6Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupIpv6Range, context: context)
        Hearth::Validator.validate!(input[:cidr_ipv6], ::String, context: "#{context}[:cidr_ipv6]")
      end
    end

    class AwsEc2SecurityGroupIpv6RangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2SecurityGroupIpv6Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SecurityGroupPrefixListId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupPrefixListId, context: context)
        Hearth::Validator.validate!(input[:prefix_list_id], ::String, context: "#{context}[:prefix_list_id]")
      end
    end

    class AwsEc2SecurityGroupPrefixListIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2SecurityGroupPrefixListId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SecurityGroupUserIdGroupPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SecurityGroupUserIdGroupPair, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:peering_status], ::String, context: "#{context}[:peering_status]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class AwsEc2SecurityGroupUserIdGroupPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2SecurityGroupUserIdGroupPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2SubnetDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2SubnetDetails, context: context)
        Hearth::Validator.validate!(input[:assign_ipv6_address_on_creation], ::TrueClass, ::FalseClass, context: "#{context}[:assign_ipv6_address_on_creation]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:available_ip_address_count], ::Integer, context: "#{context}[:available_ip_address_count]")
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:default_for_az], ::TrueClass, ::FalseClass, context: "#{context}[:default_for_az]")
        Hearth::Validator.validate!(input[:map_public_ip_on_launch], ::TrueClass, ::FalseClass, context: "#{context}[:map_public_ip_on_launch]")
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:subnet_arn], ::String, context: "#{context}[:subnet_arn]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::Ipv6CidrBlockAssociationList.validate!(input[:ipv6_cidr_block_association_set], context: "#{context}[:ipv6_cidr_block_association_set]") unless input[:ipv6_cidr_block_association_set].nil?
      end
    end

    class AwsEc2VolumeAttachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VolumeAttachment, context: context)
        Hearth::Validator.validate!(input[:attach_time], ::String, context: "#{context}[:attach_time]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsEc2VolumeAttachmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2VolumeAttachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2VolumeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VolumeDetails, context: context)
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::AwsEc2VolumeAttachmentList.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
      end
    end

    class AwsEc2VpcDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpcDetails, context: context)
        Validators::CidrBlockAssociationList.validate!(input[:cidr_block_association_set], context: "#{context}[:cidr_block_association_set]") unless input[:cidr_block_association_set].nil?
        Validators::Ipv6CidrBlockAssociationList.validate!(input[:ipv6_cidr_block_association_set], context: "#{context}[:ipv6_cidr_block_association_set]") unless input[:ipv6_cidr_block_association_set].nil?
        Hearth::Validator.validate!(input[:dhcp_options_id], ::String, context: "#{context}[:dhcp_options_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AwsEc2VpcEndpointServiceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpcEndpointServiceDetails, context: context)
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Validators::NonEmptyStringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::NonEmptyStringList.validate!(input[:base_endpoint_dns_names], context: "#{context}[:base_endpoint_dns_names]") unless input[:base_endpoint_dns_names].nil?
        Hearth::Validator.validate!(input[:manages_vpc_endpoints], ::TrueClass, ::FalseClass, context: "#{context}[:manages_vpc_endpoints]")
        Validators::NonEmptyStringList.validate!(input[:gateway_load_balancer_arns], context: "#{context}[:gateway_load_balancer_arns]") unless input[:gateway_load_balancer_arns].nil?
        Validators::NonEmptyStringList.validate!(input[:network_load_balancer_arns], context: "#{context}[:network_load_balancer_arns]") unless input[:network_load_balancer_arns].nil?
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:service_state], ::String, context: "#{context}[:service_state]")
        Validators::AwsEc2VpcEndpointServiceServiceTypeList.validate!(input[:service_type], context: "#{context}[:service_type]") unless input[:service_type].nil?
      end
    end

    class AwsEc2VpcEndpointServiceServiceTypeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpcEndpointServiceServiceTypeDetails, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
      end
    end

    class AwsEc2VpcEndpointServiceServiceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2VpcEndpointServiceServiceTypeDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2VpnConnectionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpnConnectionDetails, context: context)
        Hearth::Validator.validate!(input[:vpn_connection_id], ::String, context: "#{context}[:vpn_connection_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:customer_gateway_id], ::String, context: "#{context}[:customer_gateway_id]")
        Hearth::Validator.validate!(input[:customer_gateway_configuration], ::String, context: "#{context}[:customer_gateway_configuration]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vpn_gateway_id], ::String, context: "#{context}[:vpn_gateway_id]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Validators::AwsEc2VpnConnectionVgwTelemetryList.validate!(input[:vgw_telemetry], context: "#{context}[:vgw_telemetry]") unless input[:vgw_telemetry].nil?
        Validators::AwsEc2VpnConnectionOptionsDetails.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::AwsEc2VpnConnectionRoutesList.validate!(input[:routes], context: "#{context}[:routes]") unless input[:routes].nil?
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
      end
    end

    class AwsEc2VpnConnectionOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpnConnectionOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:static_routes_only], ::TrueClass, ::FalseClass, context: "#{context}[:static_routes_only]")
        Validators::AwsEc2VpnConnectionOptionsTunnelOptionsList.validate!(input[:tunnel_options], context: "#{context}[:tunnel_options]") unless input[:tunnel_options].nil?
      end
    end

    class AwsEc2VpnConnectionOptionsTunnelOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:dpd_timeout_seconds], ::Integer, context: "#{context}[:dpd_timeout_seconds]")
        Validators::NonEmptyStringList.validate!(input[:ike_versions], context: "#{context}[:ike_versions]") unless input[:ike_versions].nil?
        Hearth::Validator.validate!(input[:outside_ip_address], ::String, context: "#{context}[:outside_ip_address]")
        Validators::IntegerList.validate!(input[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless input[:phase1_dh_group_numbers].nil?
        Validators::NonEmptyStringList.validate!(input[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless input[:phase1_encryption_algorithms].nil?
        Validators::NonEmptyStringList.validate!(input[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless input[:phase1_integrity_algorithms].nil?
        Hearth::Validator.validate!(input[:phase1_lifetime_seconds], ::Integer, context: "#{context}[:phase1_lifetime_seconds]")
        Validators::IntegerList.validate!(input[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless input[:phase2_dh_group_numbers].nil?
        Validators::NonEmptyStringList.validate!(input[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless input[:phase2_encryption_algorithms].nil?
        Validators::NonEmptyStringList.validate!(input[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless input[:phase2_integrity_algorithms].nil?
        Hearth::Validator.validate!(input[:phase2_lifetime_seconds], ::Integer, context: "#{context}[:phase2_lifetime_seconds]")
        Hearth::Validator.validate!(input[:pre_shared_key], ::String, context: "#{context}[:pre_shared_key]")
        Hearth::Validator.validate!(input[:rekey_fuzz_percentage], ::Integer, context: "#{context}[:rekey_fuzz_percentage]")
        Hearth::Validator.validate!(input[:rekey_margin_time_seconds], ::Integer, context: "#{context}[:rekey_margin_time_seconds]")
        Hearth::Validator.validate!(input[:replay_window_size], ::Integer, context: "#{context}[:replay_window_size]")
        Hearth::Validator.validate!(input[:tunnel_inside_cidr], ::String, context: "#{context}[:tunnel_inside_cidr]")
      end
    end

    class AwsEc2VpnConnectionOptionsTunnelOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2VpnConnectionRoutesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpnConnectionRoutesDetails, context: context)
        Hearth::Validator.validate!(input[:destination_cidr_block], ::String, context: "#{context}[:destination_cidr_block]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AwsEc2VpnConnectionRoutesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2VpnConnectionRoutesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEc2VpnConnectionVgwTelemetryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEc2VpnConnectionVgwTelemetryDetails, context: context)
        Hearth::Validator.validate!(input[:accepted_route_count], ::Integer, context: "#{context}[:accepted_route_count]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:last_status_change], ::String, context: "#{context}[:last_status_change]")
        Hearth::Validator.validate!(input[:outside_ip_address], ::String, context: "#{context}[:outside_ip_address]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class AwsEc2VpnConnectionVgwTelemetryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEc2VpnConnectionVgwTelemetryDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcrContainerImageDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrContainerImageDetails, context: context)
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Validators::NonEmptyStringList.validate!(input[:image_tags], context: "#{context}[:image_tags]") unless input[:image_tags].nil?
        Hearth::Validator.validate!(input[:image_published_at], ::String, context: "#{context}[:image_published_at]")
      end
    end

    class AwsEcrRepositoryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrRepositoryDetails, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AwsEcrRepositoryImageScanningConfigurationDetails.validate!(input[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless input[:image_scanning_configuration].nil?
        Hearth::Validator.validate!(input[:image_tag_mutability], ::String, context: "#{context}[:image_tag_mutability]")
        Validators::AwsEcrRepositoryLifecyclePolicyDetails.validate!(input[:lifecycle_policy], context: "#{context}[:lifecycle_policy]") unless input[:lifecycle_policy].nil?
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_policy_text], ::String, context: "#{context}[:repository_policy_text]")
      end
    end

    class AwsEcrRepositoryImageScanningConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrRepositoryImageScanningConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:scan_on_push], ::TrueClass, ::FalseClass, context: "#{context}[:scan_on_push]")
      end
    end

    class AwsEcrRepositoryLifecyclePolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcrRepositoryLifecyclePolicyDetails, context: context)
        Hearth::Validator.validate!(input[:lifecycle_policy_text], ::String, context: "#{context}[:lifecycle_policy_text]")
        Hearth::Validator.validate!(input[:registry_id], ::String, context: "#{context}[:registry_id]")
      end
    end

    class AwsEcsClusterClusterSettingsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterClusterSettingsDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsClusterClusterSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsClusterClusterSettingsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsClusterConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterConfigurationDetails, context: context)
        Validators::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.validate!(input[:execute_command_configuration], context: "#{context}[:execute_command_configuration]") unless input[:execute_command_configuration].nil?
      end
    end

    class AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Hearth::Validator.validate!(input[:logging], ::String, context: "#{context}[:logging]")
      end
    end

    class AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_encryption_enabled]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_name], ::String, context: "#{context}[:cloud_watch_log_group_name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:s3_encryption_enabled]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
      end
    end

    class AwsEcsClusterDefaultCapacityProviderStrategyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails, context: context)
        Hearth::Validator.validate!(input[:base], ::Integer, context: "#{context}[:base]")
        Hearth::Validator.validate!(input[:capacity_provider], ::String, context: "#{context}[:capacity_provider]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
      end
    end

    class AwsEcsClusterDefaultCapacityProviderStrategyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsClusterDefaultCapacityProviderStrategyDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsClusterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsClusterDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        Validators::AwsEcsClusterClusterSettingsList.validate!(input[:cluster_settings], context: "#{context}[:cluster_settings]") unless input[:cluster_settings].nil?
        Validators::AwsEcsClusterConfigurationDetails.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::AwsEcsClusterDefaultCapacityProviderStrategyList.validate!(input[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless input[:default_capacity_provider_strategy].nil?
      end
    end

    class AwsEcsServiceCapacityProviderStrategyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceCapacityProviderStrategyDetails, context: context)
        Hearth::Validator.validate!(input[:base], ::Integer, context: "#{context}[:base]")
        Hearth::Validator.validate!(input[:capacity_provider], ::String, context: "#{context}[:capacity_provider]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
      end
    end

    class AwsEcsServiceCapacityProviderStrategyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsServiceCapacityProviderStrategyDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails, context: context)
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        Hearth::Validator.validate!(input[:rollback], ::TrueClass, ::FalseClass, context: "#{context}[:rollback]")
      end
    end

    class AwsEcsServiceDeploymentConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceDeploymentConfigurationDetails, context: context)
        Validators::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.validate!(input[:deployment_circuit_breaker], context: "#{context}[:deployment_circuit_breaker]") unless input[:deployment_circuit_breaker].nil?
        Hearth::Validator.validate!(input[:maximum_percent], ::Integer, context: "#{context}[:maximum_percent]")
        Hearth::Validator.validate!(input[:minimum_healthy_percent], ::Integer, context: "#{context}[:minimum_healthy_percent]")
      end
    end

    class AwsEcsServiceDeploymentControllerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceDeploymentControllerDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsServiceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceDetails, context: context)
        Validators::AwsEcsServiceCapacityProviderStrategyList.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Validators::AwsEcsServiceDeploymentConfigurationDetails.validate!(input[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless input[:deployment_configuration].nil?
        Validators::AwsEcsServiceDeploymentControllerDetails.validate!(input[:deployment_controller], context: "#{context}[:deployment_controller]") unless input[:deployment_controller].nil?
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        Hearth::Validator.validate!(input[:health_check_grace_period_seconds], ::Integer, context: "#{context}[:health_check_grace_period_seconds]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        Validators::AwsEcsServiceLoadBalancersList.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsEcsServiceNetworkConfigurationDetails.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::AwsEcsServicePlacementConstraintsList.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        Validators::AwsEcsServicePlacementStrategiesList.validate!(input[:placement_strategies], context: "#{context}[:placement_strategies]") unless input[:placement_strategies].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:scheduling_strategy], ::String, context: "#{context}[:scheduling_strategy]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Validators::AwsEcsServiceServiceRegistriesList.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
      end
    end

    class AwsEcsServiceLoadBalancersDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceLoadBalancersDetails, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
      end
    end

    class AwsEcsServiceLoadBalancersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsServiceLoadBalancersDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:assign_public_ip], ::String, context: "#{context}[:assign_public_ip]")
        Validators::NonEmptyStringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::NonEmptyStringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class AwsEcsServiceNetworkConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceNetworkConfigurationDetails, context: context)
        Validators::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.validate!(input[:aws_vpc_configuration], context: "#{context}[:aws_vpc_configuration]") unless input[:aws_vpc_configuration].nil?
      end
    end

    class AwsEcsServicePlacementConstraintsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServicePlacementConstraintsDetails, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsServicePlacementConstraintsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsServicePlacementConstraintsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsServicePlacementStrategiesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServicePlacementStrategiesDetails, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsServicePlacementStrategiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsServicePlacementStrategiesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsServiceServiceRegistriesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsServiceServiceRegistriesDetails, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
      end
    end

    class AwsEcsServiceServiceRegistriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsServiceServiceRegistriesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails, context: context)
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:cpu], ::Integer, context: "#{context}[:cpu]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.validate!(input[:depends_on], context: "#{context}[:depends_on]") unless input[:depends_on].nil?
        Hearth::Validator.validate!(input[:disable_networking], ::TrueClass, ::FalseClass, context: "#{context}[:disable_networking]")
        Validators::NonEmptyStringList.validate!(input[:dns_search_domains], context: "#{context}[:dns_search_domains]") unless input[:dns_search_domains].nil?
        Validators::NonEmptyStringList.validate!(input[:dns_servers], context: "#{context}[:dns_servers]") unless input[:dns_servers].nil?
        Validators::FieldMap.validate!(input[:docker_labels], context: "#{context}[:docker_labels]") unless input[:docker_labels].nil?
        Validators::NonEmptyStringList.validate!(input[:docker_security_options], context: "#{context}[:docker_security_options]") unless input[:docker_security_options].nil?
        Validators::NonEmptyStringList.validate!(input[:entry_point], context: "#{context}[:entry_point]") unless input[:entry_point].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.validate!(input[:environment_files], context: "#{context}[:environment_files]") unless input[:environment_files].nil?
        Hearth::Validator.validate!(input[:essential], ::TrueClass, ::FalseClass, context: "#{context}[:essential]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.validate!(input[:extra_hosts], context: "#{context}[:extra_hosts]") unless input[:extra_hosts].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.validate!(input[:firelens_configuration], context: "#{context}[:firelens_configuration]") unless input[:firelens_configuration].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:interactive], ::TrueClass, ::FalseClass, context: "#{context}[:interactive]")
        Validators::NonEmptyStringList.validate!(input[:links], context: "#{context}[:links]") unless input[:links].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.validate!(input[:linux_parameters], context: "#{context}[:linux_parameters]") unless input[:linux_parameters].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:memory_reservation], ::Integer, context: "#{context}[:memory_reservation]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.validate!(input[:mount_points], context: "#{context}[:mount_points]") unless input[:mount_points].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.validate!(input[:port_mappings], context: "#{context}[:port_mappings]") unless input[:port_mappings].nil?
        Hearth::Validator.validate!(input[:privileged], ::TrueClass, ::FalseClass, context: "#{context}[:privileged]")
        Hearth::Validator.validate!(input[:pseudo_terminal], ::TrueClass, ::FalseClass, context: "#{context}[:pseudo_terminal]")
        Hearth::Validator.validate!(input[:readonly_root_filesystem], ::TrueClass, ::FalseClass, context: "#{context}[:readonly_root_filesystem]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.validate!(input[:repository_credentials], context: "#{context}[:repository_credentials]") unless input[:repository_credentials].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsSecretsList.validate!(input[:secrets], context: "#{context}[:secrets]") unless input[:secrets].nil?
        Hearth::Validator.validate!(input[:start_timeout], ::Integer, context: "#{context}[:start_timeout]")
        Hearth::Validator.validate!(input[:stop_timeout], ::Integer, context: "#{context}[:stop_timeout]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.validate!(input[:system_controls], context: "#{context}[:system_controls]") unless input[:system_controls].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.validate!(input[:ulimits], context: "#{context}[:ulimits]") unless input[:ulimits].nil?
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.validate!(input[:volumes_from], context: "#{context}[:volumes_from]") unless input[:volumes_from].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails, context: context)
        Validators::FieldMap.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:retries], ::Integer, context: "#{context}[:retries]")
        Hearth::Validator.validate!(input[:start_period], ::Integer, context: "#{context}[:start_period]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:add], context: "#{context}[:add]") unless input[:add].nil?
        Validators::NonEmptyStringList.validate!(input[:drop], context: "#{context}[:drop]") unless input[:drop].nil?
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails, context: context)
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:init_process_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:init_process_enabled]")
        Hearth::Validator.validate!(input[:max_swap], ::Integer, context: "#{context}[:max_swap]")
        Hearth::Validator.validate!(input[:shared_memory_size], ::Integer, context: "#{context}[:shared_memory_size]")
        Hearth::Validator.validate!(input[:swappiness], ::Integer, context: "#{context}[:swappiness]")
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.validate!(input[:tmpfs], context: "#{context}[:tmpfs]") unless input[:tmpfs].nil?
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:host_path], ::String, context: "#{context}[:host_path]")
        Validators::NonEmptyStringList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Validators::NonEmptyStringList.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:log_driver], ::String, context: "#{context}[:log_driver]")
        Validators::FieldMap.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.validate!(input[:secret_options], context: "#{context}[:secret_options]") unless input[:secret_options].nil?
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value_from], ::String, context: "#{context}[:value_from]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:source_volume], ::String, context: "#{context}[:source_volume]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails, context: context)
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        Hearth::Validator.validate!(input[:host_port], ::Integer, context: "#{context}[:host_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails, context: context)
        Hearth::Validator.validate!(input[:credentials_parameter], ::String, context: "#{context}[:credentials_parameter]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value_from], ::String, context: "#{context}[:value_from]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSecretsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails, context: context)
        Hearth::Validator.validate!(input[:hard_limit], ::Integer, context: "#{context}[:hard_limit]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:soft_limit], ::Integer, context: "#{context}[:soft_limit]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails, context: context)
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:source_container], ::String, context: "#{context}[:source_container]")
      end
    end

    class AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionDetails, context: context)
        Validators::AwsEcsTaskDefinitionContainerDefinitionsList.validate!(input[:container_definitions], context: "#{context}[:container_definitions]") unless input[:container_definitions].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Validators::AwsEcsTaskDefinitionInferenceAcceleratorsList.validate!(input[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless input[:inference_accelerators].nil?
        Hearth::Validator.validate!(input[:ipc_mode], ::String, context: "#{context}[:ipc_mode]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:network_mode], ::String, context: "#{context}[:network_mode]")
        Hearth::Validator.validate!(input[:pid_mode], ::String, context: "#{context}[:pid_mode]")
        Validators::AwsEcsTaskDefinitionPlacementConstraintsList.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        Validators::AwsEcsTaskDefinitionProxyConfigurationDetails.validate!(input[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless input[:proxy_configuration].nil?
        Validators::NonEmptyStringList.validate!(input[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless input[:requires_compatibilities].nil?
        Hearth::Validator.validate!(input[:task_role_arn], ::String, context: "#{context}[:task_role_arn]")
        Validators::AwsEcsTaskDefinitionVolumesList.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
      end
    end

    class AwsEcsTaskDefinitionInferenceAcceleratorsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
      end
    end

    class AwsEcsTaskDefinitionInferenceAcceleratorsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionPlacementConstraintsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionPlacementConstraintsDetails, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsTaskDefinitionPlacementConstraintsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionPlacementConstraintsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionProxyConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Validators::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.validate!(input[:proxy_configuration_properties], context: "#{context}[:proxy_configuration_properties]") unless input[:proxy_configuration_properties].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEcsTaskDefinitionVolumesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionVolumesDetails, context: context)
        Validators::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.validate!(input[:docker_volume_configuration], context: "#{context}[:docker_volume_configuration]") unless input[:docker_volume_configuration].nil?
        Validators::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.validate!(input[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless input[:efs_volume_configuration].nil?
        Validators::AwsEcsTaskDefinitionVolumesHostDetails.validate!(input[:host], context: "#{context}[:host]") unless input[:host].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails, context: context)
        Hearth::Validator.validate!(input[:autoprovision], ::TrueClass, ::FalseClass, context: "#{context}[:autoprovision]")
        Hearth::Validator.validate!(input[:driver], ::String, context: "#{context}[:driver]")
        Validators::FieldMap.validate!(input[:driver_opts], context: "#{context}[:driver_opts]") unless input[:driver_opts].nil?
        Validators::FieldMap.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
      end
    end

    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails, context: context)
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
        Hearth::Validator.validate!(input[:iam], ::String, context: "#{context}[:iam]")
      end
    end

    class AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails, context: context)
        Validators::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.validate!(input[:authorization_config], context: "#{context}[:authorization_config]") unless input[:authorization_config].nil?
        Hearth::Validator.validate!(input[:filesystem_id], ::String, context: "#{context}[:filesystem_id]")
        Hearth::Validator.validate!(input[:root_directory], ::String, context: "#{context}[:root_directory]")
        Hearth::Validator.validate!(input[:transit_encryption], ::String, context: "#{context}[:transit_encryption]")
        Hearth::Validator.validate!(input[:transit_encryption_port], ::Integer, context: "#{context}[:transit_encryption_port]")
      end
    end

    class AwsEcsTaskDefinitionVolumesHostDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEcsTaskDefinitionVolumesHostDetails, context: context)
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
      end
    end

    class AwsEcsTaskDefinitionVolumesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEcsTaskDefinitionVolumesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEksClusterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEksClusterDetails, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:certificate_authority_data], ::String, context: "#{context}[:certificate_authority_data]")
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsEksClusterResourcesVpcConfigDetails.validate!(input[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless input[:resources_vpc_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::AwsEksClusterLoggingDetails.validate!(input[:logging], context: "#{context}[:logging]") unless input[:logging].nil?
      end
    end

    class AwsEksClusterLoggingClusterLoggingDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEksClusterLoggingClusterLoggingDetails, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::NonEmptyStringList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
      end
    end

    class AwsEksClusterLoggingClusterLoggingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsEksClusterLoggingClusterLoggingDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsEksClusterLoggingDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEksClusterLoggingDetails, context: context)
        Validators::AwsEksClusterLoggingClusterLoggingList.validate!(input[:cluster_logging], context: "#{context}[:cluster_logging]") unless input[:cluster_logging].nil?
      end
    end

    class AwsEksClusterResourcesVpcConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsEksClusterResourcesVpcConfigDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::NonEmptyStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class AwsElasticBeanstalkEnvironmentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticBeanstalkEnvironmentDetails, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:cname], ::String, context: "#{context}[:cname]")
        Hearth::Validator.validate!(input[:date_created], ::String, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_updated], ::String, context: "#{context}[:date_updated]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Validators::AwsElasticBeanstalkEnvironmentEnvironmentLinks.validate!(input[:environment_links], context: "#{context}[:environment_links]") unless input[:environment_links].nil?
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Validators::AwsElasticBeanstalkEnvironmentOptionSettings.validate!(input[:option_settings], context: "#{context}[:option_settings]") unless input[:option_settings].nil?
        Hearth::Validator.validate!(input[:platform_arn], ::String, context: "#{context}[:platform_arn]")
        Hearth::Validator.validate!(input[:solution_stack_name], ::String, context: "#{context}[:solution_stack_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AwsElasticBeanstalkEnvironmentTier.validate!(input[:tier], context: "#{context}[:tier]") unless input[:tier].nil?
        Hearth::Validator.validate!(input[:version_label], ::String, context: "#{context}[:version_label]")
      end
    end

    class AwsElasticBeanstalkEnvironmentEnvironmentLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticBeanstalkEnvironmentEnvironmentLink, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:link_name], ::String, context: "#{context}[:link_name]")
      end
    end

    class AwsElasticBeanstalkEnvironmentEnvironmentLinks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElasticBeanstalkEnvironmentEnvironmentLink.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElasticBeanstalkEnvironmentOptionSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticBeanstalkEnvironmentOptionSetting, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:option_name], ::String, context: "#{context}[:option_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsElasticBeanstalkEnvironmentOptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElasticBeanstalkEnvironmentOptionSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElasticBeanstalkEnvironmentTier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticBeanstalkEnvironmentTier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AwsElasticsearchDomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainDetails, context: context)
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
        Validators::AwsElasticsearchDomainDomainEndpointOptions.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Validators::FieldMap.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:elasticsearch_version], ::String, context: "#{context}[:elasticsearch_version]")
        Validators::AwsElasticsearchDomainElasticsearchClusterConfigDetails.validate!(input[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless input[:elasticsearch_cluster_config].nil?
        Validators::AwsElasticsearchDomainEncryptionAtRestOptions.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        Validators::AwsElasticsearchDomainLogPublishingOptions.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        Validators::AwsElasticsearchDomainNodeToNodeEncryptionOptions.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        Validators::AwsElasticsearchDomainServiceSoftwareOptions.validate!(input[:service_software_options], context: "#{context}[:service_software_options]") unless input[:service_software_options].nil?
        Validators::AwsElasticsearchDomainVPCOptions.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
      end
    end

    class AwsElasticsearchDomainDomainEndpointOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainDomainEndpointOptions, context: context)
        Hearth::Validator.validate!(input[:enforce_https], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_https]")
        Hearth::Validator.validate!(input[:tls_security_policy], ::String, context: "#{context}[:tls_security_policy]")
      end
    end

    class AwsElasticsearchDomainElasticsearchClusterConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails, context: context)
        Hearth::Validator.validate!(input[:dedicated_master_count], ::Integer, context: "#{context}[:dedicated_master_count]")
        Hearth::Validator.validate!(input[:dedicated_master_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dedicated_master_enabled]")
        Hearth::Validator.validate!(input[:dedicated_master_type], ::String, context: "#{context}[:dedicated_master_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.validate!(input[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless input[:zone_awareness_config].nil?
        Hearth::Validator.validate!(input[:zone_awareness_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:zone_awareness_enabled]")
      end
    end

    class AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails, context: context)
        Hearth::Validator.validate!(input[:availability_zone_count], ::Integer, context: "#{context}[:availability_zone_count]")
      end
    end

    class AwsElasticsearchDomainEncryptionAtRestOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainEncryptionAtRestOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class AwsElasticsearchDomainLogPublishingOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainLogPublishingOptions, context: context)
        Validators::AwsElasticsearchDomainLogPublishingOptionsLogConfig.validate!(input[:index_slow_logs], context: "#{context}[:index_slow_logs]") unless input[:index_slow_logs].nil?
        Validators::AwsElasticsearchDomainLogPublishingOptionsLogConfig.validate!(input[:search_slow_logs], context: "#{context}[:search_slow_logs]") unless input[:search_slow_logs].nil?
        Validators::AwsElasticsearchDomainLogPublishingOptionsLogConfig.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class AwsElasticsearchDomainLogPublishingOptionsLogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsElasticsearchDomainNodeToNodeEncryptionOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsElasticsearchDomainServiceSoftwareOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainServiceSoftwareOptions, context: context)
        Hearth::Validator.validate!(input[:automated_update_date], ::String, context: "#{context}[:automated_update_date]")
        Hearth::Validator.validate!(input[:cancellable], ::TrueClass, ::FalseClass, context: "#{context}[:cancellable]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:new_version], ::String, context: "#{context}[:new_version]")
        Hearth::Validator.validate!(input[:update_available], ::TrueClass, ::FalseClass, context: "#{context}[:update_available]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
      end
    end

    class AwsElasticsearchDomainVPCOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElasticsearchDomainVPCOptions, context: context)
        Validators::NonEmptyStringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::NonEmptyStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::NonEmptyStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AwsElbAppCookieStickinessPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbAppCookieStickinessPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbAppCookieStickinessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbAppCookieStickinessPolicy, context: context)
        Hearth::Validator.validate!(input[:cookie_name], ::String, context: "#{context}[:cookie_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class AwsElbLbCookieStickinessPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbLbCookieStickinessPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbLbCookieStickinessPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLbCookieStickinessPolicy, context: context)
        Hearth::Validator.validate!(input[:cookie_expiration_period], ::Integer, context: "#{context}[:cookie_expiration_period]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class AwsElbLoadBalancerAccessLog
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerAccessLog, context: context)
        Hearth::Validator.validate!(input[:emit_interval], ::Integer, context: "#{context}[:emit_interval]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_bucket_prefix], ::String, context: "#{context}[:s3_bucket_prefix]")
      end
    end

    class AwsElbLoadBalancerAdditionalAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerAdditionalAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsElbLoadBalancerAdditionalAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbLoadBalancerAdditionalAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbLoadBalancerAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerAttributes, context: context)
        Validators::AwsElbLoadBalancerAccessLog.validate!(input[:access_log], context: "#{context}[:access_log]") unless input[:access_log].nil?
        Validators::AwsElbLoadBalancerConnectionDraining.validate!(input[:connection_draining], context: "#{context}[:connection_draining]") unless input[:connection_draining].nil?
        Validators::AwsElbLoadBalancerConnectionSettings.validate!(input[:connection_settings], context: "#{context}[:connection_settings]") unless input[:connection_settings].nil?
        Validators::AwsElbLoadBalancerCrossZoneLoadBalancing.validate!(input[:cross_zone_load_balancing], context: "#{context}[:cross_zone_load_balancing]") unless input[:cross_zone_load_balancing].nil?
        Validators::AwsElbLoadBalancerAdditionalAttributeList.validate!(input[:additional_attributes], context: "#{context}[:additional_attributes]") unless input[:additional_attributes].nil?
      end
    end

    class AwsElbLoadBalancerBackendServerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerBackendServerDescription, context: context)
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        Validators::StringList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class AwsElbLoadBalancerBackendServerDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbLoadBalancerBackendServerDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbLoadBalancerConnectionDraining
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerConnectionDraining, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class AwsElbLoadBalancerConnectionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerConnectionSettings, context: context)
        Hearth::Validator.validate!(input[:idle_timeout], ::Integer, context: "#{context}[:idle_timeout]")
      end
    end

    class AwsElbLoadBalancerCrossZoneLoadBalancing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerCrossZoneLoadBalancing, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsElbLoadBalancerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerDetails, context: context)
        Validators::StringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::AwsElbLoadBalancerBackendServerDescriptions.validate!(input[:backend_server_descriptions], context: "#{context}[:backend_server_descriptions]") unless input[:backend_server_descriptions].nil?
        Hearth::Validator.validate!(input[:canonical_hosted_zone_name], ::String, context: "#{context}[:canonical_hosted_zone_name]")
        Hearth::Validator.validate!(input[:canonical_hosted_zone_name_id], ::String, context: "#{context}[:canonical_hosted_zone_name_id]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Validators::AwsElbLoadBalancerHealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        Validators::AwsElbLoadBalancerInstances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Validators::AwsElbLoadBalancerListenerDescriptions.validate!(input[:listener_descriptions], context: "#{context}[:listener_descriptions]") unless input[:listener_descriptions].nil?
        Validators::AwsElbLoadBalancerAttributes.validate!(input[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless input[:load_balancer_attributes].nil?
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Validators::AwsElbLoadBalancerPolicies.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        Validators::StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::AwsElbLoadBalancerSourceSecurityGroup.validate!(input[:source_security_group], context: "#{context}[:source_security_group]") unless input[:source_security_group].nil?
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AwsElbLoadBalancerHealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerHealthCheck, context: context)
        Hearth::Validator.validate!(input[:healthy_threshold], ::Integer, context: "#{context}[:healthy_threshold]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:unhealthy_threshold], ::Integer, context: "#{context}[:unhealthy_threshold]")
      end
    end

    class AwsElbLoadBalancerInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerInstance, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class AwsElbLoadBalancerInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbLoadBalancerInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbLoadBalancerListener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerListener, context: context)
        Hearth::Validator.validate!(input[:instance_port], ::Integer, context: "#{context}[:instance_port]")
        Hearth::Validator.validate!(input[:instance_protocol], ::String, context: "#{context}[:instance_protocol]")
        Hearth::Validator.validate!(input[:load_balancer_port], ::Integer, context: "#{context}[:load_balancer_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:ssl_certificate_id], ::String, context: "#{context}[:ssl_certificate_id]")
      end
    end

    class AwsElbLoadBalancerListenerDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerListenerDescription, context: context)
        Validators::AwsElbLoadBalancerListener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
        Validators::StringList.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
      end
    end

    class AwsElbLoadBalancerListenerDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbLoadBalancerListenerDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbLoadBalancerPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerPolicies, context: context)
        Validators::AwsElbAppCookieStickinessPolicies.validate!(input[:app_cookie_stickiness_policies], context: "#{context}[:app_cookie_stickiness_policies]") unless input[:app_cookie_stickiness_policies].nil?
        Validators::AwsElbLbCookieStickinessPolicies.validate!(input[:lb_cookie_stickiness_policies], context: "#{context}[:lb_cookie_stickiness_policies]") unless input[:lb_cookie_stickiness_policies].nil?
        Validators::StringList.validate!(input[:other_policies], context: "#{context}[:other_policies]") unless input[:other_policies].nil?
      end
    end

    class AwsElbLoadBalancerSourceSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbLoadBalancerSourceSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:owner_alias], ::String, context: "#{context}[:owner_alias]")
      end
    end

    class AwsElbv2LoadBalancerAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbv2LoadBalancerAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsElbv2LoadBalancerAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsElbv2LoadBalancerAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsElbv2LoadBalancerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsElbv2LoadBalancerDetails, context: context)
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:canonical_hosted_zone_id], ::String, context: "#{context}[:canonical_hosted_zone_id]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:scheme], ::String, context: "#{context}[:scheme]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Validators::LoadBalancerState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::AwsElbv2LoadBalancerAttributes.validate!(input[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless input[:load_balancer_attributes].nil?
      end
    end

    class AwsIamAccessKeyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamAccessKeyDetails, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
        Hearth::Validator.validate!(input[:principal_name], ::String, context: "#{context}[:principal_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Validators::AwsIamAccessKeySessionContext.validate!(input[:session_context], context: "#{context}[:session_context]") unless input[:session_context].nil?
      end
    end

    class AwsIamAccessKeySessionContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamAccessKeySessionContext, context: context)
        Validators::AwsIamAccessKeySessionContextAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::AwsIamAccessKeySessionContextSessionIssuer.validate!(input[:session_issuer], context: "#{context}[:session_issuer]") unless input[:session_issuer].nil?
      end
    end

    class AwsIamAccessKeySessionContextAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamAccessKeySessionContextAttributes, context: context)
        Hearth::Validator.validate!(input[:mfa_authenticated], ::TrueClass, ::FalseClass, context: "#{context}[:mfa_authenticated]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
      end
    end

    class AwsIamAccessKeySessionContextSessionIssuer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamAccessKeySessionContextSessionIssuer, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
      end
    end

    class AwsIamAttachedManagedPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamAttachedManagedPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class AwsIamAttachedManagedPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamAttachedManagedPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamGroupDetails, context: context)
        Validators::AwsIamAttachedManagedPolicyList.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Validators::AwsIamGroupPolicyList.validate!(input[:group_policy_list], context: "#{context}[:group_policy_list]") unless input[:group_policy_list].nil?
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class AwsIamGroupPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamGroupPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class AwsIamGroupPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamGroupPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamInstanceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamInstanceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:instance_profile_id], ::String, context: "#{context}[:instance_profile_id]")
        Hearth::Validator.validate!(input[:instance_profile_name], ::String, context: "#{context}[:instance_profile_name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Validators::AwsIamInstanceProfileRoles.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
      end
    end

    class AwsIamInstanceProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamInstanceProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamInstanceProfileRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamInstanceProfileRole, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:assume_role_policy_document], ::String, context: "#{context}[:assume_role_policy_document]")
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role_id], ::String, context: "#{context}[:role_id]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
      end
    end

    class AwsIamInstanceProfileRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamInstanceProfileRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamPermissionsBoundary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamPermissionsBoundary, context: context)
        Hearth::Validator.validate!(input[:permissions_boundary_arn], ::String, context: "#{context}[:permissions_boundary_arn]")
        Hearth::Validator.validate!(input[:permissions_boundary_type], ::String, context: "#{context}[:permissions_boundary_type]")
      end
    end

    class AwsIamPolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamPolicyDetails, context: context)
        Hearth::Validator.validate!(input[:attachment_count], ::Integer, context: "#{context}[:attachment_count]")
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:default_version_id], ::String, context: "#{context}[:default_version_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_attachable], ::TrueClass, ::FalseClass, context: "#{context}[:is_attachable]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:permissions_boundary_usage_count], ::Integer, context: "#{context}[:permissions_boundary_usage_count]")
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Validators::AwsIamPolicyVersionList.validate!(input[:policy_version_list], context: "#{context}[:policy_version_list]") unless input[:policy_version_list].nil?
        Hearth::Validator.validate!(input[:update_date], ::String, context: "#{context}[:update_date]")
      end
    end

    class AwsIamPolicyVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamPolicyVersion, context: context)
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
      end
    end

    class AwsIamPolicyVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamPolicyVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamRoleDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamRoleDetails, context: context)
        Hearth::Validator.validate!(input[:assume_role_policy_document], ::String, context: "#{context}[:assume_role_policy_document]")
        Validators::AwsIamAttachedManagedPolicyList.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Validators::AwsIamInstanceProfileList.validate!(input[:instance_profile_list], context: "#{context}[:instance_profile_list]") unless input[:instance_profile_list].nil?
        Validators::AwsIamPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Hearth::Validator.validate!(input[:role_id], ::String, context: "#{context}[:role_id]")
        Hearth::Validator.validate!(input[:role_name], ::String, context: "#{context}[:role_name]")
        Validators::AwsIamRolePolicyList.validate!(input[:role_policy_list], context: "#{context}[:role_policy_list]") unless input[:role_policy_list].nil?
        Hearth::Validator.validate!(input[:max_session_duration], ::Integer, context: "#{context}[:max_session_duration]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class AwsIamRolePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamRolePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class AwsIamRolePolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamRolePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsIamUserDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamUserDetails, context: context)
        Validators::AwsIamAttachedManagedPolicyList.validate!(input[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless input[:attached_managed_policies].nil?
        Hearth::Validator.validate!(input[:create_date], ::String, context: "#{context}[:create_date]")
        Validators::StringList.validate!(input[:group_list], context: "#{context}[:group_list]") unless input[:group_list].nil?
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Validators::AwsIamPermissionsBoundary.validate!(input[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless input[:permissions_boundary].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Validators::AwsIamUserPolicyList.validate!(input[:user_policy_list], context: "#{context}[:user_policy_list]") unless input[:user_policy_list].nil?
      end
    end

    class AwsIamUserPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamUserPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class AwsIamUserPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsIamUserPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsKmsKeyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsKmsKeyDetails, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Float, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_manager], ::String, context: "#{context}[:key_manager]")
        Hearth::Validator.validate!(input[:key_state], ::String, context: "#{context}[:key_state]")
        Hearth::Validator.validate!(input[:origin], ::String, context: "#{context}[:origin]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:key_rotation_status], ::TrueClass, ::FalseClass, context: "#{context}[:key_rotation_status]")
      end
    end

    class AwsLambdaFunctionCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionCode, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
      end
    end

    class AwsLambdaFunctionDeadLetterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionDeadLetterConfig, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class AwsLambdaFunctionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionDetails, context: context)
        Validators::AwsLambdaFunctionCode.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Validators::AwsLambdaFunctionDeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::AwsLambdaFunctionEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Validators::AwsLambdaFunctionLayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Validators::AwsLambdaFunctionTracingConfig.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Validators::AwsLambdaFunctionVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class AwsLambdaFunctionEnvironment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionEnvironment, context: context)
        Validators::FieldMap.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Validators::AwsLambdaFunctionEnvironmentError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class AwsLambdaFunctionEnvironmentError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionEnvironmentError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AwsLambdaFunctionLayer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionLayer, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
      end
    end

    class AwsLambdaFunctionLayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsLambdaFunctionLayer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsLambdaFunctionTracingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionTracingConfig, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class AwsLambdaFunctionVpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaFunctionVpcConfig, context: context)
        Validators::NonEmptyStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::NonEmptyStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AwsLambdaLayerVersionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsLambdaLayerVersionDetails, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::NonEmptyStringList.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
      end
    end

    class AwsNetworkFirewallFirewallDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsNetworkFirewallFirewallDetails, context: context)
        Hearth::Validator.validate!(input[:delete_protection], ::TrueClass, ::FalseClass, context: "#{context}[:delete_protection]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:firewall_arn], ::String, context: "#{context}[:firewall_arn]")
        Hearth::Validator.validate!(input[:firewall_id], ::String, context: "#{context}[:firewall_id]")
        Hearth::Validator.validate!(input[:firewall_name], ::String, context: "#{context}[:firewall_name]")
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:firewall_policy_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:firewall_policy_change_protection]")
        Hearth::Validator.validate!(input[:subnet_change_protection], ::TrueClass, ::FalseClass, context: "#{context}[:subnet_change_protection]")
        Validators::AwsNetworkFirewallFirewallSubnetMappingsList.validate!(input[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless input[:subnet_mappings].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AwsNetworkFirewallFirewallPolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsNetworkFirewallFirewallPolicyDetails, context: context)
        Validators::FirewallPolicyDetails.validate!(input[:firewall_policy], context: "#{context}[:firewall_policy]") unless input[:firewall_policy].nil?
        Hearth::Validator.validate!(input[:firewall_policy_arn], ::String, context: "#{context}[:firewall_policy_arn]")
        Hearth::Validator.validate!(input[:firewall_policy_id], ::String, context: "#{context}[:firewall_policy_id]")
        Hearth::Validator.validate!(input[:firewall_policy_name], ::String, context: "#{context}[:firewall_policy_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AwsNetworkFirewallFirewallSubnetMappingsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsNetworkFirewallFirewallSubnetMappingsDetails, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
      end
    end

    class AwsNetworkFirewallFirewallSubnetMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsNetworkFirewallFirewallSubnetMappingsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsNetworkFirewallRuleGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsNetworkFirewallRuleGroupDetails, context: context)
        Hearth::Validator.validate!(input[:capacity], ::Integer, context: "#{context}[:capacity]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RuleGroupDetails.validate!(input[:rule_group], context: "#{context}[:rule_group]") unless input[:rule_group].nil?
        Hearth::Validator.validate!(input[:rule_group_arn], ::String, context: "#{context}[:rule_group_arn]")
        Hearth::Validator.validate!(input[:rule_group_id], ::String, context: "#{context}[:rule_group_id]")
        Hearth::Validator.validate!(input[:rule_group_name], ::String, context: "#{context}[:rule_group_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsOpenSearchServiceDomainClusterConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainClusterConfigDetails, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:warm_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:warm_enabled]")
        Hearth::Validator.validate!(input[:warm_count], ::Integer, context: "#{context}[:warm_count]")
        Hearth::Validator.validate!(input[:dedicated_master_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:dedicated_master_enabled]")
        Validators::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.validate!(input[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless input[:zone_awareness_config].nil?
        Hearth::Validator.validate!(input[:dedicated_master_count], ::Integer, context: "#{context}[:dedicated_master_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:warm_type], ::String, context: "#{context}[:warm_type]")
        Hearth::Validator.validate!(input[:zone_awareness_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:zone_awareness_enabled]")
        Hearth::Validator.validate!(input[:dedicated_master_type], ::String, context: "#{context}[:dedicated_master_type]")
      end
    end

    class AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails, context: context)
        Hearth::Validator.validate!(input[:availability_zone_count], ::Integer, context: "#{context}[:availability_zone_count]")
      end
    end

    class AwsOpenSearchServiceDomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainDetails, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:domain_endpoint], ::String, context: "#{context}[:domain_endpoint]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Validators::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.validate!(input[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless input[:encryption_at_rest_options].nil?
        Validators::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.validate!(input[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless input[:node_to_node_encryption_options].nil?
        Validators::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.validate!(input[:service_software_options], context: "#{context}[:service_software_options]") unless input[:service_software_options].nil?
        Validators::AwsOpenSearchServiceDomainClusterConfigDetails.validate!(input[:cluster_config], context: "#{context}[:cluster_config]") unless input[:cluster_config].nil?
        Validators::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
        Validators::AwsOpenSearchServiceDomainVpcOptionsDetails.validate!(input[:vpc_options], context: "#{context}[:vpc_options]") unless input[:vpc_options].nil?
        Validators::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.validate!(input[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless input[:log_publishing_options].nil?
        Validators::FieldMap.validate!(input[:domain_endpoints], context: "#{context}[:domain_endpoints]") unless input[:domain_endpoints].nil?
      end
    end

    class AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:custom_endpoint_certificate_arn], ::String, context: "#{context}[:custom_endpoint_certificate_arn]")
        Hearth::Validator.validate!(input[:custom_endpoint_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:custom_endpoint_enabled]")
        Hearth::Validator.validate!(input[:enforce_https], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_https]")
        Hearth::Validator.validate!(input[:custom_endpoint], ::String, context: "#{context}[:custom_endpoint]")
        Hearth::Validator.validate!(input[:tls_security_policy], ::String, context: "#{context}[:tls_security_policy]")
      end
    end

    class AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class AwsOpenSearchServiceDomainLogPublishingOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainLogPublishingOption, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsOpenSearchServiceDomainLogPublishingOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails, context: context)
        Validators::AwsOpenSearchServiceDomainLogPublishingOption.validate!(input[:index_slow_logs], context: "#{context}[:index_slow_logs]") unless input[:index_slow_logs].nil?
        Validators::AwsOpenSearchServiceDomainLogPublishingOption.validate!(input[:search_slow_logs], context: "#{context}[:search_slow_logs]") unless input[:search_slow_logs].nil?
        Validators::AwsOpenSearchServiceDomainLogPublishingOption.validate!(input[:audit_logs], context: "#{context}[:audit_logs]") unless input[:audit_logs].nil?
      end
    end

    class AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:automated_update_date], ::String, context: "#{context}[:automated_update_date]")
        Hearth::Validator.validate!(input[:cancellable], ::TrueClass, ::FalseClass, context: "#{context}[:cancellable]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:new_version], ::String, context: "#{context}[:new_version]")
        Hearth::Validator.validate!(input[:update_available], ::TrueClass, ::FalseClass, context: "#{context}[:update_available]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:optional_deployment], ::TrueClass, ::FalseClass, context: "#{context}[:optional_deployment]")
      end
    end

    class AwsOpenSearchServiceDomainVpcOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsOpenSearchServiceDomainVpcOptionsDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::NonEmptyStringList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
      end
    end

    class AwsRdsDbClusterAssociatedRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbClusterAssociatedRole, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbClusterAssociatedRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbClusterAssociatedRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbClusterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbClusterDetails, context: context)
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Validators::StringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:reader_endpoint], ::String, context: "#{context}[:reader_endpoint]")
        Validators::StringList.validate!(input[:custom_endpoints], context: "#{context}[:custom_endpoints]") unless input[:custom_endpoints].nil?
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::StringList.validate!(input[:read_replica_identifiers], context: "#{context}[:read_replica_identifiers]") unless input[:read_replica_identifiers].nil?
        Validators::AwsRdsDbInstanceVpcSecurityGroups.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_resource_id], ::String, context: "#{context}[:db_cluster_resource_id]")
        Validators::AwsRdsDbClusterAssociatedRoles.validate!(input[:associated_roles], context: "#{context}[:associated_roles]") unless input[:associated_roles].nil?
        Hearth::Validator.validate!(input[:cluster_create_time], ::String, context: "#{context}[:cluster_create_time]")
        Validators::StringList.validate!(input[:enabled_cloud_watch_logs_exports], context: "#{context}[:enabled_cloud_watch_logs_exports]") unless input[:enabled_cloud_watch_logs_exports].nil?
        Hearth::Validator.validate!(input[:engine_mode], ::String, context: "#{context}[:engine_mode]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Hearth::Validator.validate!(input[:http_endpoint_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:http_endpoint_enabled]")
        Hearth::Validator.validate!(input[:activity_stream_status], ::String, context: "#{context}[:activity_stream_status]")
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:cross_account_clone], ::TrueClass, ::FalseClass, context: "#{context}[:cross_account_clone]")
        Validators::AwsRdsDbDomainMemberships.validate!(input[:domain_memberships], context: "#{context}[:domain_memberships]") unless input[:domain_memberships].nil?
        Hearth::Validator.validate!(input[:db_cluster_parameter_group], ::String, context: "#{context}[:db_cluster_parameter_group]")
        Hearth::Validator.validate!(input[:db_subnet_group], ::String, context: "#{context}[:db_subnet_group]")
        Validators::AwsRdsDbClusterOptionGroupMemberships.validate!(input[:db_cluster_option_group_memberships], context: "#{context}[:db_cluster_option_group_memberships]") unless input[:db_cluster_option_group_memberships].nil?
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Validators::AwsRdsDbClusterMembers.validate!(input[:db_cluster_members], context: "#{context}[:db_cluster_members]") unless input[:db_cluster_members].nil?
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
      end
    end

    class AwsRdsDbClusterMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbClusterMember, context: context)
        Hearth::Validator.validate!(input[:is_cluster_writer], ::TrueClass, ::FalseClass, context: "#{context}[:is_cluster_writer]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_parameter_group_status], ::String, context: "#{context}[:db_cluster_parameter_group_status]")
      end
    end

    class AwsRdsDbClusterMembers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbClusterMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbClusterOptionGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbClusterOptionGroupMembership, context: context)
        Hearth::Validator.validate!(input[:db_cluster_option_group_name], ::String, context: "#{context}[:db_cluster_option_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbClusterOptionGroupMemberships
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbClusterOptionGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbClusterSnapshotDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbClusterSnapshotDetails, context: context)
        Validators::StringList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:snapshot_create_time], ::String, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::String, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_snapshot_identifier], ::String, context: "#{context}[:db_cluster_snapshot_identifier]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
      end
    end

    class AwsRdsDbDomainMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbDomainMembership, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:fqdn], ::String, context: "#{context}[:fqdn]")
        Hearth::Validator.validate!(input[:iam_role_name], ::String, context: "#{context}[:iam_role_name]")
      end
    end

    class AwsRdsDbDomainMemberships
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbDomainMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbInstanceAssociatedRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbInstanceAssociatedRole, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbInstanceAssociatedRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbInstanceAssociatedRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbInstanceDetails, context: context)
        Validators::AwsRdsDbInstanceAssociatedRoles.validate!(input[:associated_roles], context: "#{context}[:associated_roles]") unless input[:associated_roles].nil?
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:db_instance_port], ::Integer, context: "#{context}[:db_instance_port]")
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Hearth::Validator.validate!(input[:deletion_protection], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection]")
        Validators::AwsRdsDbInstanceEndpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Hearth::Validator.validate!(input[:instance_create_time], ::String, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:storage_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:storage_encrypted]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Validators::AwsRdsDbInstanceVpcSecurityGroups.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:enhanced_monitoring_resource_arn], ::String, context: "#{context}[:enhanced_monitoring_resource_arn]")
        Hearth::Validator.validate!(input[:db_instance_status], ::String, context: "#{context}[:db_instance_status]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Validators::StringList.validate!(input[:db_security_groups], context: "#{context}[:db_security_groups]") unless input[:db_security_groups].nil?
        Validators::AwsRdsDbParameterGroups.validate!(input[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless input[:db_parameter_groups].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Validators::AwsRdsDbSubnetGroup.validate!(input[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless input[:db_subnet_group].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::AwsRdsDbPendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:latest_restorable_time], ::String, context: "#{context}[:latest_restorable_time]")
        Hearth::Validator.validate!(input[:auto_minor_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:auto_minor_version_upgrade]")
        Hearth::Validator.validate!(input[:read_replica_source_db_instance_identifier], ::String, context: "#{context}[:read_replica_source_db_instance_identifier]")
        Validators::StringList.validate!(input[:read_replica_db_instance_identifiers], context: "#{context}[:read_replica_db_instance_identifiers]") unless input[:read_replica_db_instance_identifiers].nil?
        Validators::StringList.validate!(input[:read_replica_db_cluster_identifiers], context: "#{context}[:read_replica_db_cluster_identifiers]") unless input[:read_replica_db_cluster_identifiers].nil?
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Validators::AwsRdsDbOptionGroupMemberships.validate!(input[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless input[:option_group_memberships].nil?
        Hearth::Validator.validate!(input[:character_set_name], ::String, context: "#{context}[:character_set_name]")
        Hearth::Validator.validate!(input[:secondary_availability_zone], ::String, context: "#{context}[:secondary_availability_zone]")
        Validators::AwsRdsDbStatusInfos.validate!(input[:status_infos], context: "#{context}[:status_infos]") unless input[:status_infos].nil?
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Validators::AwsRdsDbDomainMemberships.validate!(input[:domain_memberships], context: "#{context}[:domain_memberships]") unless input[:domain_memberships].nil?
        Hearth::Validator.validate!(input[:copy_tags_to_snapshot], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags_to_snapshot]")
        Hearth::Validator.validate!(input[:monitoring_interval], ::Integer, context: "#{context}[:monitoring_interval]")
        Hearth::Validator.validate!(input[:monitoring_role_arn], ::String, context: "#{context}[:monitoring_role_arn]")
        Hearth::Validator.validate!(input[:promotion_tier], ::Integer, context: "#{context}[:promotion_tier]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:performance_insights_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:performance_insights_enabled]")
        Hearth::Validator.validate!(input[:performance_insights_kms_key_id], ::String, context: "#{context}[:performance_insights_kms_key_id]")
        Hearth::Validator.validate!(input[:performance_insights_retention_period], ::Integer, context: "#{context}[:performance_insights_retention_period]")
        Validators::StringList.validate!(input[:enabled_cloud_watch_logs_exports], context: "#{context}[:enabled_cloud_watch_logs_exports]") unless input[:enabled_cloud_watch_logs_exports].nil?
        Validators::AwsRdsDbProcessorFeatures.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Validators::AwsRdsDbInstanceEndpoint.validate!(input[:listener_endpoint], context: "#{context}[:listener_endpoint]") unless input[:listener_endpoint].nil?
        Hearth::Validator.validate!(input[:max_allocated_storage], ::Integer, context: "#{context}[:max_allocated_storage]")
      end
    end

    class AwsRdsDbInstanceEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbInstanceEndpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class AwsRdsDbInstanceVpcSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbInstanceVpcSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:vpc_security_group_id], ::String, context: "#{context}[:vpc_security_group_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbInstanceVpcSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbInstanceVpcSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbOptionGroupMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbOptionGroupMembership, context: context)
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbOptionGroupMemberships
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbOptionGroupMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbParameterGroup, context: context)
        Hearth::Validator.validate!(input[:db_parameter_group_name], ::String, context: "#{context}[:db_parameter_group_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
      end
    end

    class AwsRdsDbParameterGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbPendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbPendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:db_instance_class], ::String, context: "#{context}[:db_instance_class]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:backup_retention_period], ::Integer, context: "#{context}[:backup_retention_period]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:ca_certificate_identifier], ::String, context: "#{context}[:ca_certificate_identifier]")
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Validators::AwsRdsPendingCloudWatchLogsExports.validate!(input[:pending_cloud_watch_logs_exports], context: "#{context}[:pending_cloud_watch_logs_exports]") unless input[:pending_cloud_watch_logs_exports].nil?
        Validators::AwsRdsDbProcessorFeatures.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
      end
    end

    class AwsRdsDbProcessorFeature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbProcessorFeature, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsRdsDbProcessorFeatures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbProcessorFeature.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbSecurityGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSecurityGroupDetails, context: context)
        Hearth::Validator.validate!(input[:db_security_group_arn], ::String, context: "#{context}[:db_security_group_arn]")
        Hearth::Validator.validate!(input[:db_security_group_description], ::String, context: "#{context}[:db_security_group_description]")
        Hearth::Validator.validate!(input[:db_security_group_name], ::String, context: "#{context}[:db_security_group_name]")
        Validators::AwsRdsDbSecurityGroupEc2SecurityGroups.validate!(input[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless input[:ec2_security_groups].nil?
        Validators::AwsRdsDbSecurityGroupIpRanges.validate!(input[:ip_ranges], context: "#{context}[:ip_ranges]") unless input[:ip_ranges].nil?
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class AwsRdsDbSecurityGroupEc2SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSecurityGroupEc2SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:ec2_security_group_id], ::String, context: "#{context}[:ec2_security_group_id]")
        Hearth::Validator.validate!(input[:ec2_security_group_name], ::String, context: "#{context}[:ec2_security_group_name]")
        Hearth::Validator.validate!(input[:ec2_security_group_owner_id], ::String, context: "#{context}[:ec2_security_group_owner_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbSecurityGroupEc2SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbSecurityGroupEc2SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbSecurityGroupIpRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSecurityGroupIpRange, context: context)
        Hearth::Validator.validate!(input[:cidr_ip], ::String, context: "#{context}[:cidr_ip]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRdsDbSecurityGroupIpRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbSecurityGroupIpRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbSnapshotDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSnapshotDetails, context: context)
        Hearth::Validator.validate!(input[:db_snapshot_identifier], ::String, context: "#{context}[:db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:snapshot_create_time], ::String, context: "#{context}[:snapshot_create_time]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:allocated_storage], ::Integer, context: "#{context}[:allocated_storage]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:instance_create_time], ::String, context: "#{context}[:instance_create_time]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:snapshot_type], ::String, context: "#{context}[:snapshot_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:option_group_name], ::String, context: "#{context}[:option_group_name]")
        Hearth::Validator.validate!(input[:percent_progress], ::Integer, context: "#{context}[:percent_progress]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:source_db_snapshot_identifier], ::String, context: "#{context}[:source_db_snapshot_identifier]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:tde_credential_arn], ::String, context: "#{context}[:tde_credential_arn]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:iam_database_authentication_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:iam_database_authentication_enabled]")
        Validators::AwsRdsDbProcessorFeatures.validate!(input[:processor_features], context: "#{context}[:processor_features]") unless input[:processor_features].nil?
        Hearth::Validator.validate!(input[:dbi_resource_id], ::String, context: "#{context}[:dbi_resource_id]")
      end
    end

    class AwsRdsDbStatusInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbStatusInfo, context: context)
        Hearth::Validator.validate!(input[:status_type], ::String, context: "#{context}[:status_type]")
        Hearth::Validator.validate!(input[:normal], ::TrueClass, ::FalseClass, context: "#{context}[:normal]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AwsRdsDbStatusInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbStatusInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsDbSubnetGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSubnetGroup, context: context)
        Hearth::Validator.validate!(input[:db_subnet_group_name], ::String, context: "#{context}[:db_subnet_group_name]")
        Hearth::Validator.validate!(input[:db_subnet_group_description], ::String, context: "#{context}[:db_subnet_group_description]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_group_status], ::String, context: "#{context}[:subnet_group_status]")
        Validators::AwsRdsDbSubnetGroupSubnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Hearth::Validator.validate!(input[:db_subnet_group_arn], ::String, context: "#{context}[:db_subnet_group_arn]")
      end
    end

    class AwsRdsDbSubnetGroupSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSubnetGroupSubnet, context: context)
        Hearth::Validator.validate!(input[:subnet_identifier], ::String, context: "#{context}[:subnet_identifier]")
        Validators::AwsRdsDbSubnetGroupSubnetAvailabilityZone.validate!(input[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless input[:subnet_availability_zone].nil?
        Hearth::Validator.validate!(input[:subnet_status], ::String, context: "#{context}[:subnet_status]")
      end
    end

    class AwsRdsDbSubnetGroupSubnetAvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AwsRdsDbSubnetGroupSubnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRdsDbSubnetGroupSubnet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRdsEventSubscriptionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsEventSubscriptionDetails, context: context)
        Hearth::Validator.validate!(input[:cust_subscription_id], ::String, context: "#{context}[:cust_subscription_id]")
        Hearth::Validator.validate!(input[:customer_aws_id], ::String, context: "#{context}[:customer_aws_id]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::NonEmptyStringList.validate!(input[:event_categories_list], context: "#{context}[:event_categories_list]") unless input[:event_categories_list].nil?
        Hearth::Validator.validate!(input[:event_subscription_arn], ::String, context: "#{context}[:event_subscription_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Validators::NonEmptyStringList.validate!(input[:source_ids_list], context: "#{context}[:source_ids_list]") unless input[:source_ids_list].nil?
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subscription_creation_time], ::String, context: "#{context}[:subscription_creation_time]")
      end
    end

    class AwsRdsPendingCloudWatchLogsExports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRdsPendingCloudWatchLogsExports, context: context)
        Validators::StringList.validate!(input[:log_types_to_enable], context: "#{context}[:log_types_to_enable]") unless input[:log_types_to_enable].nil?
        Validators::StringList.validate!(input[:log_types_to_disable], context: "#{context}[:log_types_to_disable]") unless input[:log_types_to_disable].nil?
      end
    end

    class AwsRedshiftClusterClusterNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterClusterNode, context: context)
        Hearth::Validator.validate!(input[:node_role], ::String, context: "#{context}[:node_role]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
      end
    end

    class AwsRedshiftClusterClusterNodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterClusterNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterClusterParameterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterClusterParameterGroup, context: context)
        Validators::AwsRedshiftClusterClusterParameterStatusList.validate!(input[:cluster_parameter_status_list], context: "#{context}[:cluster_parameter_status_list]") unless input[:cluster_parameter_status_list].nil?
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Hearth::Validator.validate!(input[:parameter_group_name], ::String, context: "#{context}[:parameter_group_name]")
      end
    end

    class AwsRedshiftClusterClusterParameterGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterClusterParameterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterClusterParameterStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterClusterParameterStatus, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_apply_status], ::String, context: "#{context}[:parameter_apply_status]")
        Hearth::Validator.validate!(input[:parameter_apply_error_description], ::String, context: "#{context}[:parameter_apply_error_description]")
      end
    end

    class AwsRedshiftClusterClusterParameterStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterClusterParameterStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterClusterSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterClusterSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:cluster_security_group_name], ::String, context: "#{context}[:cluster_security_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRedshiftClusterClusterSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterClusterSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterClusterSnapshotCopyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterClusterSnapshotCopyStatus, context: context)
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:retention_period], ::Integer, context: "#{context}[:retention_period]")
        Hearth::Validator.validate!(input[:snapshot_copy_grant_name], ::String, context: "#{context}[:snapshot_copy_grant_name]")
      end
    end

    class AwsRedshiftClusterDeferredMaintenanceWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterDeferredMaintenanceWindow, context: context)
        Hearth::Validator.validate!(input[:defer_maintenance_end_time], ::String, context: "#{context}[:defer_maintenance_end_time]")
        Hearth::Validator.validate!(input[:defer_maintenance_identifier], ::String, context: "#{context}[:defer_maintenance_identifier]")
        Hearth::Validator.validate!(input[:defer_maintenance_start_time], ::String, context: "#{context}[:defer_maintenance_start_time]")
      end
    end

    class AwsRedshiftClusterDeferredMaintenanceWindows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterDeferredMaintenanceWindow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterDetails, context: context)
        Hearth::Validator.validate!(input[:allow_version_upgrade], ::TrueClass, ::FalseClass, context: "#{context}[:allow_version_upgrade]")
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:cluster_availability_status], ::String, context: "#{context}[:cluster_availability_status]")
        Hearth::Validator.validate!(input[:cluster_create_time], ::String, context: "#{context}[:cluster_create_time]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Validators::AwsRedshiftClusterClusterNodes.validate!(input[:cluster_nodes], context: "#{context}[:cluster_nodes]") unless input[:cluster_nodes].nil?
        Validators::AwsRedshiftClusterClusterParameterGroups.validate!(input[:cluster_parameter_groups], context: "#{context}[:cluster_parameter_groups]") unless input[:cluster_parameter_groups].nil?
        Hearth::Validator.validate!(input[:cluster_public_key], ::String, context: "#{context}[:cluster_public_key]")
        Hearth::Validator.validate!(input[:cluster_revision_number], ::String, context: "#{context}[:cluster_revision_number]")
        Validators::AwsRedshiftClusterClusterSecurityGroups.validate!(input[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless input[:cluster_security_groups].nil?
        Validators::AwsRedshiftClusterClusterSnapshotCopyStatus.validate!(input[:cluster_snapshot_copy_status], context: "#{context}[:cluster_snapshot_copy_status]") unless input[:cluster_snapshot_copy_status].nil?
        Hearth::Validator.validate!(input[:cluster_status], ::String, context: "#{context}[:cluster_status]")
        Hearth::Validator.validate!(input[:cluster_subnet_group_name], ::String, context: "#{context}[:cluster_subnet_group_name]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:db_name], ::String, context: "#{context}[:db_name]")
        Validators::AwsRedshiftClusterDeferredMaintenanceWindows.validate!(input[:deferred_maintenance_windows], context: "#{context}[:deferred_maintenance_windows]") unless input[:deferred_maintenance_windows].nil?
        Validators::AwsRedshiftClusterElasticIpStatus.validate!(input[:elastic_ip_status], context: "#{context}[:elastic_ip_status]") unless input[:elastic_ip_status].nil?
        Hearth::Validator.validate!(input[:elastic_resize_number_of_node_options], ::String, context: "#{context}[:elastic_resize_number_of_node_options]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Validators::AwsRedshiftClusterEndpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:expected_next_snapshot_schedule_time], ::String, context: "#{context}[:expected_next_snapshot_schedule_time]")
        Hearth::Validator.validate!(input[:expected_next_snapshot_schedule_time_status], ::String, context: "#{context}[:expected_next_snapshot_schedule_time_status]")
        Validators::AwsRedshiftClusterHsmStatus.validate!(input[:hsm_status], context: "#{context}[:hsm_status]") unless input[:hsm_status].nil?
        Validators::AwsRedshiftClusterIamRoles.validate!(input[:iam_roles], context: "#{context}[:iam_roles]") unless input[:iam_roles].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:manual_snapshot_retention_period], ::Integer, context: "#{context}[:manual_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:master_username], ::String, context: "#{context}[:master_username]")
        Hearth::Validator.validate!(input[:next_maintenance_window_start_time], ::String, context: "#{context}[:next_maintenance_window_start_time]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Validators::StringList.validate!(input[:pending_actions], context: "#{context}[:pending_actions]") unless input[:pending_actions].nil?
        Validators::AwsRedshiftClusterPendingModifiedValues.validate!(input[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless input[:pending_modified_values].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::AwsRedshiftClusterResizeInfo.validate!(input[:resize_info], context: "#{context}[:resize_info]") unless input[:resize_info].nil?
        Validators::AwsRedshiftClusterRestoreStatus.validate!(input[:restore_status], context: "#{context}[:restore_status]") unless input[:restore_status].nil?
        Hearth::Validator.validate!(input[:snapshot_schedule_identifier], ::String, context: "#{context}[:snapshot_schedule_identifier]")
        Hearth::Validator.validate!(input[:snapshot_schedule_state], ::String, context: "#{context}[:snapshot_schedule_state]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::AwsRedshiftClusterVpcSecurityGroups.validate!(input[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless input[:vpc_security_groups].nil?
        Validators::AwsRedshiftClusterLoggingStatus.validate!(input[:logging_status], context: "#{context}[:logging_status]") unless input[:logging_status].nil?
      end
    end

    class AwsRedshiftClusterElasticIpStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterElasticIpStatus, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRedshiftClusterEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterEndpoint, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class AwsRedshiftClusterHsmStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterHsmStatus, context: context)
        Hearth::Validator.validate!(input[:hsm_client_certificate_identifier], ::String, context: "#{context}[:hsm_client_certificate_identifier]")
        Hearth::Validator.validate!(input[:hsm_configuration_identifier], ::String, context: "#{context}[:hsm_configuration_identifier]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRedshiftClusterIamRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterIamRole, context: context)
        Hearth::Validator.validate!(input[:apply_status], ::String, context: "#{context}[:apply_status]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
      end
    end

    class AwsRedshiftClusterIamRoles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterIamRole.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsRedshiftClusterLoggingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterLoggingStatus, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:last_failure_message], ::String, context: "#{context}[:last_failure_message]")
        Hearth::Validator.validate!(input[:last_failure_time], ::String, context: "#{context}[:last_failure_time]")
        Hearth::Validator.validate!(input[:last_successful_delivery_time], ::String, context: "#{context}[:last_successful_delivery_time]")
        Hearth::Validator.validate!(input[:logging_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:logging_enabled]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
      end
    end

    class AwsRedshiftClusterPendingModifiedValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterPendingModifiedValues, context: context)
        Hearth::Validator.validate!(input[:automated_snapshot_retention_period], ::Integer, context: "#{context}[:automated_snapshot_retention_period]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:cluster_type], ::String, context: "#{context}[:cluster_type]")
        Hearth::Validator.validate!(input[:cluster_version], ::String, context: "#{context}[:cluster_version]")
        Hearth::Validator.validate!(input[:encryption_type], ::String, context: "#{context}[:encryption_type]")
        Hearth::Validator.validate!(input[:enhanced_vpc_routing], ::TrueClass, ::FalseClass, context: "#{context}[:enhanced_vpc_routing]")
        Hearth::Validator.validate!(input[:maintenance_track_name], ::String, context: "#{context}[:maintenance_track_name]")
        Hearth::Validator.validate!(input[:master_user_password], ::String, context: "#{context}[:master_user_password]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
      end
    end

    class AwsRedshiftClusterResizeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterResizeInfo, context: context)
        Hearth::Validator.validate!(input[:allow_cancel_resize], ::TrueClass, ::FalseClass, context: "#{context}[:allow_cancel_resize]")
        Hearth::Validator.validate!(input[:resize_type], ::String, context: "#{context}[:resize_type]")
      end
    end

    class AwsRedshiftClusterRestoreStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterRestoreStatus, context: context)
        Hearth::Validator.validate!(input[:current_restore_rate_in_mega_bytes_per_second], ::Float, context: "#{context}[:current_restore_rate_in_mega_bytes_per_second]")
        Hearth::Validator.validate!(input[:elapsed_time_in_seconds], ::Integer, context: "#{context}[:elapsed_time_in_seconds]")
        Hearth::Validator.validate!(input[:estimated_time_to_completion_in_seconds], ::Integer, context: "#{context}[:estimated_time_to_completion_in_seconds]")
        Hearth::Validator.validate!(input[:progress_in_mega_bytes], ::Integer, context: "#{context}[:progress_in_mega_bytes]")
        Hearth::Validator.validate!(input[:snapshot_size_in_mega_bytes], ::Integer, context: "#{context}[:snapshot_size_in_mega_bytes]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsRedshiftClusterVpcSecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsRedshiftClusterVpcSecurityGroup, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:vpc_security_group_id], ::String, context: "#{context}[:vpc_security_group_id]")
      end
    end

    class AwsRedshiftClusterVpcSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsRedshiftClusterVpcSecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3AccountPublicAccessBlockDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3AccountPublicAccessBlockDetails, context: context)
        Hearth::Validator.validate!(input[:block_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_acls]")
        Hearth::Validator.validate!(input[:block_public_policy], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_policy]")
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationDetails, context: context)
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails, context: context)
        Hearth::Validator.validate!(input[:days_after_initiation], ::Integer, context: "#{context}[:days_after_initiation]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails, context: context)
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.validate!(input[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless input[:abort_incomplete_multipart_upload].nil?
        Hearth::Validator.validate!(input[:expiration_date], ::String, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:expiration_in_days], ::Integer, context: "#{context}[:expiration_in_days]")
        Hearth::Validator.validate!(input[:expired_object_delete_marker], ::TrueClass, ::FalseClass, context: "#{context}[:expired_object_delete_marker]")
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:noncurrent_version_expiration_in_days], ::Integer, context: "#{context}[:noncurrent_version_expiration_in_days]")
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.validate!(input[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless input[:noncurrent_version_transitions].nil?
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.validate!(input[:transitions], context: "#{context}[:transitions]") unless input[:transitions].nil?
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails, context: context)
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails, context: context)
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.validate!(input[:operands], context: "#{context}[:operands]") unless input[:operands].nil?
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.validate!(input[:tag], context: "#{context}[:tag]") unless input[:tag].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketBucketLifecycleConfigurationRulesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails, context: context)
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails, context: context)
        Hearth::Validator.validate!(input[:date], ::String, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:days], ::Integer, context: "#{context}[:days]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketBucketVersioningConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketBucketVersioningConfiguration, context: context)
        Hearth::Validator.validate!(input[:is_mfa_delete_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_mfa_delete_enabled]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AwsS3BucketDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketDetails, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:owner_name], ::String, context: "#{context}[:owner_name]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Validators::AwsS3BucketServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Validators::AwsS3BucketBucketLifecycleConfigurationDetails.validate!(input[:bucket_lifecycle_configuration], context: "#{context}[:bucket_lifecycle_configuration]") unless input[:bucket_lifecycle_configuration].nil?
        Validators::AwsS3AccountPublicAccessBlockDetails.validate!(input[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless input[:public_access_block_configuration].nil?
        Hearth::Validator.validate!(input[:access_control_list], ::String, context: "#{context}[:access_control_list]")
        Validators::AwsS3BucketLoggingConfiguration.validate!(input[:bucket_logging_configuration], context: "#{context}[:bucket_logging_configuration]") unless input[:bucket_logging_configuration].nil?
        Validators::AwsS3BucketWebsiteConfiguration.validate!(input[:bucket_website_configuration], context: "#{context}[:bucket_website_configuration]") unless input[:bucket_website_configuration].nil?
        Validators::AwsS3BucketNotificationConfiguration.validate!(input[:bucket_notification_configuration], context: "#{context}[:bucket_notification_configuration]") unless input[:bucket_notification_configuration].nil?
        Validators::AwsS3BucketBucketVersioningConfiguration.validate!(input[:bucket_versioning_configuration], context: "#{context}[:bucket_versioning_configuration]") unless input[:bucket_versioning_configuration].nil?
      end
    end

    class AwsS3BucketLoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketLoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:destination_bucket_name], ::String, context: "#{context}[:destination_bucket_name]")
        Hearth::Validator.validate!(input[:log_file_prefix], ::String, context: "#{context}[:log_file_prefix]")
      end
    end

    class AwsS3BucketNotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketNotificationConfiguration, context: context)
        Validators::AwsS3BucketNotificationConfigurationDetails.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
      end
    end

    class AwsS3BucketNotificationConfigurationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketNotificationConfigurationDetail, context: context)
        Validators::AwsS3BucketNotificationConfigurationEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Validators::AwsS3BucketNotificationConfigurationFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsS3BucketNotificationConfigurationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketNotificationConfigurationDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketNotificationConfigurationEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AwsS3BucketNotificationConfigurationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketNotificationConfigurationFilter, context: context)
        Validators::AwsS3BucketNotificationConfigurationS3KeyFilter.validate!(input[:s3_key_filter], context: "#{context}[:s3_key_filter]") unless input[:s3_key_filter].nil?
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketNotificationConfigurationS3KeyFilter, context: context)
        Validators::AwsS3BucketNotificationConfigurationS3KeyFilterRules.validate!(input[:filter_rules], context: "#{context}[:filter_rules]") unless input[:filter_rules].nil?
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilterRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AwsS3BucketNotificationConfigurationS3KeyFilterRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketNotificationConfigurationS3KeyFilterRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketServerSideEncryptionByDefault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketServerSideEncryptionByDefault, context: context)
        Hearth::Validator.validate!(input[:sse_algorithm], ::String, context: "#{context}[:sse_algorithm]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
      end
    end

    class AwsS3BucketServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketServerSideEncryptionConfiguration, context: context)
        Validators::AwsS3BucketServerSideEncryptionRules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class AwsS3BucketServerSideEncryptionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketServerSideEncryptionRule, context: context)
        Validators::AwsS3BucketServerSideEncryptionByDefault.validate!(input[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless input[:apply_server_side_encryption_by_default].nil?
      end
    end

    class AwsS3BucketServerSideEncryptionRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketServerSideEncryptionRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3BucketWebsiteConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketWebsiteConfiguration, context: context)
        Hearth::Validator.validate!(input[:error_document], ::String, context: "#{context}[:error_document]")
        Hearth::Validator.validate!(input[:index_document_suffix], ::String, context: "#{context}[:index_document_suffix]")
        Validators::AwsS3BucketWebsiteConfigurationRedirectTo.validate!(input[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless input[:redirect_all_requests_to].nil?
        Validators::AwsS3BucketWebsiteConfigurationRoutingRules.validate!(input[:routing_rules], context: "#{context}[:routing_rules]") unless input[:routing_rules].nil?
      end
    end

    class AwsS3BucketWebsiteConfigurationRedirectTo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketWebsiteConfigurationRedirectTo, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketWebsiteConfigurationRoutingRule, context: context)
        Validators::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Validators::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.validate!(input[:redirect], context: "#{context}[:redirect]") unless input[:redirect].nil?
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRuleCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition, context: context)
        Hearth::Validator.validate!(input[:http_error_code_returned_equals], ::String, context: "#{context}[:http_error_code_returned_equals]")
        Hearth::Validator.validate!(input[:key_prefix_equals], ::String, context: "#{context}[:key_prefix_equals]")
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:http_redirect_code], ::String, context: "#{context}[:http_redirect_code]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:replace_key_prefix_with], ::String, context: "#{context}[:replace_key_prefix_with]")
        Hearth::Validator.validate!(input[:replace_key_with], ::String, context: "#{context}[:replace_key_with]")
      end
    end

    class AwsS3BucketWebsiteConfigurationRoutingRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsS3BucketWebsiteConfigurationRoutingRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsS3ObjectDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsS3ObjectDetails, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:server_side_encryption], ::String, context: "#{context}[:server_side_encryption]")
        Hearth::Validator.validate!(input[:ssekms_key_id], ::String, context: "#{context}[:ssekms_key_id]")
      end
    end

    class AwsSecretsManagerSecretDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSecretsManagerSecretDetails, context: context)
        Validators::AwsSecretsManagerSecretRotationRules.validate!(input[:rotation_rules], context: "#{context}[:rotation_rules]") unless input[:rotation_rules].nil?
        Hearth::Validator.validate!(input[:rotation_occurred_within_frequency], ::TrueClass, ::FalseClass, context: "#{context}[:rotation_occurred_within_frequency]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:rotation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:rotation_enabled]")
        Hearth::Validator.validate!(input[:rotation_lambda_arn], ::String, context: "#{context}[:rotation_lambda_arn]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AwsSecretsManagerSecretRotationRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSecretsManagerSecretRotationRules, context: context)
        Hearth::Validator.validate!(input[:automatically_after_days], ::Integer, context: "#{context}[:automatically_after_days]")
      end
    end

    class AwsSecurityFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSecurityFinding, context: context)
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:company_name], ::String, context: "#{context}[:company_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:generator_id], ::String, context: "#{context}[:generator_id]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::TypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Hearth::Validator.validate!(input[:first_observed_at], ::String, context: "#{context}[:first_observed_at]")
        Hearth::Validator.validate!(input[:last_observed_at], ::String, context: "#{context}[:last_observed_at]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
        Validators::Severity.validate!(input[:severity], context: "#{context}[:severity]") unless input[:severity].nil?
        Hearth::Validator.validate!(input[:confidence], ::Integer, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:criticality], ::Integer, context: "#{context}[:criticality]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Remediation.validate!(input[:remediation], context: "#{context}[:remediation]") unless input[:remediation].nil?
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
        Validators::FieldMap.validate!(input[:product_fields], context: "#{context}[:product_fields]") unless input[:product_fields].nil?
        Validators::FieldMap.validate!(input[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless input[:user_defined_fields].nil?
        Validators::MalwareList.validate!(input[:malware], context: "#{context}[:malware]") unless input[:malware].nil?
        Validators::Network.validate!(input[:network], context: "#{context}[:network]") unless input[:network].nil?
        Validators::NetworkPathList.validate!(input[:network_path], context: "#{context}[:network_path]") unless input[:network_path].nil?
        Validators::ProcessDetails.validate!(input[:process], context: "#{context}[:process]") unless input[:process].nil?
        Validators::ThreatIntelIndicatorList.validate!(input[:threat_intel_indicators], context: "#{context}[:threat_intel_indicators]") unless input[:threat_intel_indicators].nil?
        Validators::ResourceList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::Compliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:workflow_state], ::String, context: "#{context}[:workflow_state]")
        Validators::Workflow.validate!(input[:workflow], context: "#{context}[:workflow]") unless input[:workflow].nil?
        Hearth::Validator.validate!(input[:record_state], ::String, context: "#{context}[:record_state]")
        Validators::RelatedFindingList.validate!(input[:related_findings], context: "#{context}[:related_findings]") unless input[:related_findings].nil?
        Validators::Note.validate!(input[:note], context: "#{context}[:note]") unless input[:note].nil?
        Validators::VulnerabilityList.validate!(input[:vulnerabilities], context: "#{context}[:vulnerabilities]") unless input[:vulnerabilities].nil?
        Validators::PatchSummary.validate!(input[:patch_summary], context: "#{context}[:patch_summary]") unless input[:patch_summary].nil?
        Validators::Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::FindingProviderFields.validate!(input[:finding_provider_fields], context: "#{context}[:finding_provider_fields]") unless input[:finding_provider_fields].nil?
        Hearth::Validator.validate!(input[:sample], ::TrueClass, ::FalseClass, context: "#{context}[:sample]")
      end
    end

    class AwsSecurityFindingFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSecurityFindingFilters, context: context)
        Validators::StringFilterList.validate!(input[:product_arn], context: "#{context}[:product_arn]") unless input[:product_arn].nil?
        Validators::StringFilterList.validate!(input[:aws_account_id], context: "#{context}[:aws_account_id]") unless input[:aws_account_id].nil?
        Validators::StringFilterList.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        Validators::StringFilterList.validate!(input[:generator_id], context: "#{context}[:generator_id]") unless input[:generator_id].nil?
        Validators::StringFilterList.validate!(input[:region], context: "#{context}[:region]") unless input[:region].nil?
        Validators::StringFilterList.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::DateFilterList.validate!(input[:first_observed_at], context: "#{context}[:first_observed_at]") unless input[:first_observed_at].nil?
        Validators::DateFilterList.validate!(input[:last_observed_at], context: "#{context}[:last_observed_at]") unless input[:last_observed_at].nil?
        Validators::DateFilterList.validate!(input[:created_at], context: "#{context}[:created_at]") unless input[:created_at].nil?
        Validators::DateFilterList.validate!(input[:updated_at], context: "#{context}[:updated_at]") unless input[:updated_at].nil?
        Validators::NumberFilterList.validate!(input[:severity_product], context: "#{context}[:severity_product]") unless input[:severity_product].nil?
        Validators::NumberFilterList.validate!(input[:severity_normalized], context: "#{context}[:severity_normalized]") unless input[:severity_normalized].nil?
        Validators::StringFilterList.validate!(input[:severity_label], context: "#{context}[:severity_label]") unless input[:severity_label].nil?
        Validators::NumberFilterList.validate!(input[:confidence], context: "#{context}[:confidence]") unless input[:confidence].nil?
        Validators::NumberFilterList.validate!(input[:criticality], context: "#{context}[:criticality]") unless input[:criticality].nil?
        Validators::StringFilterList.validate!(input[:title], context: "#{context}[:title]") unless input[:title].nil?
        Validators::StringFilterList.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
        Validators::StringFilterList.validate!(input[:recommendation_text], context: "#{context}[:recommendation_text]") unless input[:recommendation_text].nil?
        Validators::StringFilterList.validate!(input[:source_url], context: "#{context}[:source_url]") unless input[:source_url].nil?
        Validators::MapFilterList.validate!(input[:product_fields], context: "#{context}[:product_fields]") unless input[:product_fields].nil?
        Validators::StringFilterList.validate!(input[:product_name], context: "#{context}[:product_name]") unless input[:product_name].nil?
        Validators::StringFilterList.validate!(input[:company_name], context: "#{context}[:company_name]") unless input[:company_name].nil?
        Validators::MapFilterList.validate!(input[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless input[:user_defined_fields].nil?
        Validators::StringFilterList.validate!(input[:malware_name], context: "#{context}[:malware_name]") unless input[:malware_name].nil?
        Validators::StringFilterList.validate!(input[:malware_type], context: "#{context}[:malware_type]") unless input[:malware_type].nil?
        Validators::StringFilterList.validate!(input[:malware_path], context: "#{context}[:malware_path]") unless input[:malware_path].nil?
        Validators::StringFilterList.validate!(input[:malware_state], context: "#{context}[:malware_state]") unless input[:malware_state].nil?
        Validators::StringFilterList.validate!(input[:network_direction], context: "#{context}[:network_direction]") unless input[:network_direction].nil?
        Validators::StringFilterList.validate!(input[:network_protocol], context: "#{context}[:network_protocol]") unless input[:network_protocol].nil?
        Validators::IpFilterList.validate!(input[:network_source_ip_v4], context: "#{context}[:network_source_ip_v4]") unless input[:network_source_ip_v4].nil?
        Validators::IpFilterList.validate!(input[:network_source_ip_v6], context: "#{context}[:network_source_ip_v6]") unless input[:network_source_ip_v6].nil?
        Validators::NumberFilterList.validate!(input[:network_source_port], context: "#{context}[:network_source_port]") unless input[:network_source_port].nil?
        Validators::StringFilterList.validate!(input[:network_source_domain], context: "#{context}[:network_source_domain]") unless input[:network_source_domain].nil?
        Validators::StringFilterList.validate!(input[:network_source_mac], context: "#{context}[:network_source_mac]") unless input[:network_source_mac].nil?
        Validators::IpFilterList.validate!(input[:network_destination_ip_v4], context: "#{context}[:network_destination_ip_v4]") unless input[:network_destination_ip_v4].nil?
        Validators::IpFilterList.validate!(input[:network_destination_ip_v6], context: "#{context}[:network_destination_ip_v6]") unless input[:network_destination_ip_v6].nil?
        Validators::NumberFilterList.validate!(input[:network_destination_port], context: "#{context}[:network_destination_port]") unless input[:network_destination_port].nil?
        Validators::StringFilterList.validate!(input[:network_destination_domain], context: "#{context}[:network_destination_domain]") unless input[:network_destination_domain].nil?
        Validators::StringFilterList.validate!(input[:process_name], context: "#{context}[:process_name]") unless input[:process_name].nil?
        Validators::StringFilterList.validate!(input[:process_path], context: "#{context}[:process_path]") unless input[:process_path].nil?
        Validators::NumberFilterList.validate!(input[:process_pid], context: "#{context}[:process_pid]") unless input[:process_pid].nil?
        Validators::NumberFilterList.validate!(input[:process_parent_pid], context: "#{context}[:process_parent_pid]") unless input[:process_parent_pid].nil?
        Validators::DateFilterList.validate!(input[:process_launched_at], context: "#{context}[:process_launched_at]") unless input[:process_launched_at].nil?
        Validators::DateFilterList.validate!(input[:process_terminated_at], context: "#{context}[:process_terminated_at]") unless input[:process_terminated_at].nil?
        Validators::StringFilterList.validate!(input[:threat_intel_indicator_type], context: "#{context}[:threat_intel_indicator_type]") unless input[:threat_intel_indicator_type].nil?
        Validators::StringFilterList.validate!(input[:threat_intel_indicator_value], context: "#{context}[:threat_intel_indicator_value]") unless input[:threat_intel_indicator_value].nil?
        Validators::StringFilterList.validate!(input[:threat_intel_indicator_category], context: "#{context}[:threat_intel_indicator_category]") unless input[:threat_intel_indicator_category].nil?
        Validators::DateFilterList.validate!(input[:threat_intel_indicator_last_observed_at], context: "#{context}[:threat_intel_indicator_last_observed_at]") unless input[:threat_intel_indicator_last_observed_at].nil?
        Validators::StringFilterList.validate!(input[:threat_intel_indicator_source], context: "#{context}[:threat_intel_indicator_source]") unless input[:threat_intel_indicator_source].nil?
        Validators::StringFilterList.validate!(input[:threat_intel_indicator_source_url], context: "#{context}[:threat_intel_indicator_source_url]") unless input[:threat_intel_indicator_source_url].nil?
        Validators::StringFilterList.validate!(input[:resource_type], context: "#{context}[:resource_type]") unless input[:resource_type].nil?
        Validators::StringFilterList.validate!(input[:resource_id], context: "#{context}[:resource_id]") unless input[:resource_id].nil?
        Validators::StringFilterList.validate!(input[:resource_partition], context: "#{context}[:resource_partition]") unless input[:resource_partition].nil?
        Validators::StringFilterList.validate!(input[:resource_region], context: "#{context}[:resource_region]") unless input[:resource_region].nil?
        Validators::MapFilterList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_type], context: "#{context}[:resource_aws_ec2_instance_type]") unless input[:resource_aws_ec2_instance_type].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_image_id], context: "#{context}[:resource_aws_ec2_instance_image_id]") unless input[:resource_aws_ec2_instance_image_id].nil?
        Validators::IpFilterList.validate!(input[:resource_aws_ec2_instance_ip_v4_addresses], context: "#{context}[:resource_aws_ec2_instance_ip_v4_addresses]") unless input[:resource_aws_ec2_instance_ip_v4_addresses].nil?
        Validators::IpFilterList.validate!(input[:resource_aws_ec2_instance_ip_v6_addresses], context: "#{context}[:resource_aws_ec2_instance_ip_v6_addresses]") unless input[:resource_aws_ec2_instance_ip_v6_addresses].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_key_name], context: "#{context}[:resource_aws_ec2_instance_key_name]") unless input[:resource_aws_ec2_instance_key_name].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_iam_instance_profile_arn], context: "#{context}[:resource_aws_ec2_instance_iam_instance_profile_arn]") unless input[:resource_aws_ec2_instance_iam_instance_profile_arn].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_vpc_id], context: "#{context}[:resource_aws_ec2_instance_vpc_id]") unless input[:resource_aws_ec2_instance_vpc_id].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_ec2_instance_subnet_id], context: "#{context}[:resource_aws_ec2_instance_subnet_id]") unless input[:resource_aws_ec2_instance_subnet_id].nil?
        Validators::DateFilterList.validate!(input[:resource_aws_ec2_instance_launched_at], context: "#{context}[:resource_aws_ec2_instance_launched_at]") unless input[:resource_aws_ec2_instance_launched_at].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_s3_bucket_owner_id], context: "#{context}[:resource_aws_s3_bucket_owner_id]") unless input[:resource_aws_s3_bucket_owner_id].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_s3_bucket_owner_name], context: "#{context}[:resource_aws_s3_bucket_owner_name]") unless input[:resource_aws_s3_bucket_owner_name].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_iam_access_key_user_name], context: "#{context}[:resource_aws_iam_access_key_user_name]") unless input[:resource_aws_iam_access_key_user_name].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_iam_access_key_principal_name], context: "#{context}[:resource_aws_iam_access_key_principal_name]") unless input[:resource_aws_iam_access_key_principal_name].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_iam_access_key_status], context: "#{context}[:resource_aws_iam_access_key_status]") unless input[:resource_aws_iam_access_key_status].nil?
        Validators::DateFilterList.validate!(input[:resource_aws_iam_access_key_created_at], context: "#{context}[:resource_aws_iam_access_key_created_at]") unless input[:resource_aws_iam_access_key_created_at].nil?
        Validators::StringFilterList.validate!(input[:resource_aws_iam_user_user_name], context: "#{context}[:resource_aws_iam_user_user_name]") unless input[:resource_aws_iam_user_user_name].nil?
        Validators::StringFilterList.validate!(input[:resource_container_name], context: "#{context}[:resource_container_name]") unless input[:resource_container_name].nil?
        Validators::StringFilterList.validate!(input[:resource_container_image_id], context: "#{context}[:resource_container_image_id]") unless input[:resource_container_image_id].nil?
        Validators::StringFilterList.validate!(input[:resource_container_image_name], context: "#{context}[:resource_container_image_name]") unless input[:resource_container_image_name].nil?
        Validators::DateFilterList.validate!(input[:resource_container_launched_at], context: "#{context}[:resource_container_launched_at]") unless input[:resource_container_launched_at].nil?
        Validators::MapFilterList.validate!(input[:resource_details_other], context: "#{context}[:resource_details_other]") unless input[:resource_details_other].nil?
        Validators::StringFilterList.validate!(input[:compliance_status], context: "#{context}[:compliance_status]") unless input[:compliance_status].nil?
        Validators::StringFilterList.validate!(input[:verification_state], context: "#{context}[:verification_state]") unless input[:verification_state].nil?
        Validators::StringFilterList.validate!(input[:workflow_state], context: "#{context}[:workflow_state]") unless input[:workflow_state].nil?
        Validators::StringFilterList.validate!(input[:workflow_status], context: "#{context}[:workflow_status]") unless input[:workflow_status].nil?
        Validators::StringFilterList.validate!(input[:record_state], context: "#{context}[:record_state]") unless input[:record_state].nil?
        Validators::StringFilterList.validate!(input[:related_findings_product_arn], context: "#{context}[:related_findings_product_arn]") unless input[:related_findings_product_arn].nil?
        Validators::StringFilterList.validate!(input[:related_findings_id], context: "#{context}[:related_findings_id]") unless input[:related_findings_id].nil?
        Validators::StringFilterList.validate!(input[:note_text], context: "#{context}[:note_text]") unless input[:note_text].nil?
        Validators::DateFilterList.validate!(input[:note_updated_at], context: "#{context}[:note_updated_at]") unless input[:note_updated_at].nil?
        Validators::StringFilterList.validate!(input[:note_updated_by], context: "#{context}[:note_updated_by]") unless input[:note_updated_by].nil?
        Validators::KeywordFilterList.validate!(input[:keyword], context: "#{context}[:keyword]") unless input[:keyword].nil?
        Validators::NumberFilterList.validate!(input[:finding_provider_fields_confidence], context: "#{context}[:finding_provider_fields_confidence]") unless input[:finding_provider_fields_confidence].nil?
        Validators::NumberFilterList.validate!(input[:finding_provider_fields_criticality], context: "#{context}[:finding_provider_fields_criticality]") unless input[:finding_provider_fields_criticality].nil?
        Validators::StringFilterList.validate!(input[:finding_provider_fields_related_findings_id], context: "#{context}[:finding_provider_fields_related_findings_id]") unless input[:finding_provider_fields_related_findings_id].nil?
        Validators::StringFilterList.validate!(input[:finding_provider_fields_related_findings_product_arn], context: "#{context}[:finding_provider_fields_related_findings_product_arn]") unless input[:finding_provider_fields_related_findings_product_arn].nil?
        Validators::StringFilterList.validate!(input[:finding_provider_fields_severity_label], context: "#{context}[:finding_provider_fields_severity_label]") unless input[:finding_provider_fields_severity_label].nil?
        Validators::StringFilterList.validate!(input[:finding_provider_fields_severity_original], context: "#{context}[:finding_provider_fields_severity_original]") unless input[:finding_provider_fields_severity_original].nil?
        Validators::StringFilterList.validate!(input[:finding_provider_fields_types], context: "#{context}[:finding_provider_fields_types]") unless input[:finding_provider_fields_types].nil?
        Validators::BooleanFilterList.validate!(input[:sample], context: "#{context}[:sample]") unless input[:sample].nil?
      end
    end

    class AwsSecurityFindingIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSecurityFindingIdentifier, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
      end
    end

    class AwsSecurityFindingIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsSecurityFindingIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsSecurityFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsSecurityFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsSnsTopicDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSnsTopicDetails, context: context)
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Validators::AwsSnsTopicSubscriptionList.validate!(input[:subscription], context: "#{context}[:subscription]") unless input[:subscription].nil?
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
      end
    end

    class AwsSnsTopicSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSnsTopicSubscription, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class AwsSnsTopicSubscriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsSnsTopicSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsSqsQueueDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSqsQueueDetails, context: context)
        Hearth::Validator.validate!(input[:kms_data_key_reuse_period_seconds], ::Integer, context: "#{context}[:kms_data_key_reuse_period_seconds]")
        Hearth::Validator.validate!(input[:kms_master_key_id], ::String, context: "#{context}[:kms_master_key_id]")
        Hearth::Validator.validate!(input[:queue_name], ::String, context: "#{context}[:queue_name]")
        Hearth::Validator.validate!(input[:dead_letter_target_arn], ::String, context: "#{context}[:dead_letter_target_arn]")
      end
    end

    class AwsSsmComplianceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSsmComplianceSummary, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:compliant_critical_count], ::Integer, context: "#{context}[:compliant_critical_count]")
        Hearth::Validator.validate!(input[:compliant_high_count], ::Integer, context: "#{context}[:compliant_high_count]")
        Hearth::Validator.validate!(input[:compliant_medium_count], ::Integer, context: "#{context}[:compliant_medium_count]")
        Hearth::Validator.validate!(input[:execution_type], ::String, context: "#{context}[:execution_type]")
        Hearth::Validator.validate!(input[:non_compliant_critical_count], ::Integer, context: "#{context}[:non_compliant_critical_count]")
        Hearth::Validator.validate!(input[:compliant_informational_count], ::Integer, context: "#{context}[:compliant_informational_count]")
        Hearth::Validator.validate!(input[:non_compliant_informational_count], ::Integer, context: "#{context}[:non_compliant_informational_count]")
        Hearth::Validator.validate!(input[:compliant_unspecified_count], ::Integer, context: "#{context}[:compliant_unspecified_count]")
        Hearth::Validator.validate!(input[:non_compliant_low_count], ::Integer, context: "#{context}[:non_compliant_low_count]")
        Hearth::Validator.validate!(input[:non_compliant_high_count], ::Integer, context: "#{context}[:non_compliant_high_count]")
        Hearth::Validator.validate!(input[:compliant_low_count], ::Integer, context: "#{context}[:compliant_low_count]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:patch_baseline_id], ::String, context: "#{context}[:patch_baseline_id]")
        Hearth::Validator.validate!(input[:overall_severity], ::String, context: "#{context}[:overall_severity]")
        Hearth::Validator.validate!(input[:non_compliant_medium_count], ::Integer, context: "#{context}[:non_compliant_medium_count]")
        Hearth::Validator.validate!(input[:non_compliant_unspecified_count], ::Integer, context: "#{context}[:non_compliant_unspecified_count]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class AwsSsmPatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSsmPatch, context: context)
        Validators::AwsSsmComplianceSummary.validate!(input[:compliance_summary], context: "#{context}[:compliance_summary]") unless input[:compliance_summary].nil?
      end
    end

    class AwsSsmPatchComplianceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSsmPatchComplianceDetails, context: context)
        Validators::AwsSsmPatch.validate!(input[:patch], context: "#{context}[:patch]") unless input[:patch].nil?
      end
    end

    class AwsWafRateBasedRuleDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafRateBasedRuleDetails, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rate_key], ::String, context: "#{context}[:rate_key]")
        Hearth::Validator.validate!(input[:rate_limit], ::Integer, context: "#{context}[:rate_limit]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Validators::AwsWafRateBasedRuleMatchPredicateList.validate!(input[:match_predicates], context: "#{context}[:match_predicates]") unless input[:match_predicates].nil?
      end
    end

    class AwsWafRateBasedRuleMatchPredicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafRateBasedRuleMatchPredicate, context: context)
        Hearth::Validator.validate!(input[:data_id], ::String, context: "#{context}[:data_id]")
        Hearth::Validator.validate!(input[:negated], ::TrueClass, ::FalseClass, context: "#{context}[:negated]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsWafRateBasedRuleMatchPredicateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsWafRateBasedRuleMatchPredicate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsWafRegionalRateBasedRuleDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafRegionalRateBasedRuleDetails, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rate_key], ::String, context: "#{context}[:rate_key]")
        Hearth::Validator.validate!(input[:rate_limit], ::Integer, context: "#{context}[:rate_limit]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Validators::AwsWafRegionalRateBasedRuleMatchPredicateList.validate!(input[:match_predicates], context: "#{context}[:match_predicates]") unless input[:match_predicates].nil?
      end
    end

    class AwsWafRegionalRateBasedRuleMatchPredicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafRegionalRateBasedRuleMatchPredicate, context: context)
        Hearth::Validator.validate!(input[:data_id], ::String, context: "#{context}[:data_id]")
        Hearth::Validator.validate!(input[:negated], ::TrueClass, ::FalseClass, context: "#{context}[:negated]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsWafRegionalRateBasedRuleMatchPredicateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsWafRegionalRateBasedRuleMatchPredicate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsWafWebAclDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafWebAclDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_action], ::String, context: "#{context}[:default_action]")
        Validators::AwsWafWebAclRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:web_acl_id], ::String, context: "#{context}[:web_acl_id]")
      end
    end

    class AwsWafWebAclRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsWafWebAclRule, context: context)
        Validators::WafAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::WafExcludedRuleList.validate!(input[:excluded_rules], context: "#{context}[:excluded_rules]") unless input[:excluded_rules].nil?
        Validators::WafOverrideAction.validate!(input[:override_action], context: "#{context}[:override_action]") unless input[:override_action].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AwsWafWebAclRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsWafWebAclRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AwsXrayEncryptionConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsXrayEncryptionConfigDetails, context: context)
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class BatchDisableStandardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisableStandardsInput, context: context)
        Validators::StandardsSubscriptionArns.validate!(input[:standards_subscription_arns], context: "#{context}[:standards_subscription_arns]") unless input[:standards_subscription_arns].nil?
      end
    end

    class BatchDisableStandardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisableStandardsOutput, context: context)
        Validators::StandardsSubscriptions.validate!(input[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless input[:standards_subscriptions].nil?
      end
    end

    class BatchEnableStandardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEnableStandardsInput, context: context)
        Validators::StandardsSubscriptionRequests.validate!(input[:standards_subscription_requests], context: "#{context}[:standards_subscription_requests]") unless input[:standards_subscription_requests].nil?
      end
    end

    class BatchEnableStandardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEnableStandardsOutput, context: context)
        Validators::StandardsSubscriptions.validate!(input[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless input[:standards_subscriptions].nil?
      end
    end

    class BatchImportFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImportFindingsInput, context: context)
        Validators::BatchImportFindingsRequestFindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
      end
    end

    class BatchImportFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImportFindingsOutput, context: context)
        Hearth::Validator.validate!(input[:failed_count], ::Integer, context: "#{context}[:failed_count]")
        Hearth::Validator.validate!(input[:success_count], ::Integer, context: "#{context}[:success_count]")
        Validators::ImportFindingsErrorList.validate!(input[:failed_findings], context: "#{context}[:failed_findings]") unless input[:failed_findings].nil?
      end
    end

    class BatchImportFindingsRequestFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AwsSecurityFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdateFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateFindingsInput, context: context)
        Validators::AwsSecurityFindingIdentifierList.validate!(input[:finding_identifiers], context: "#{context}[:finding_identifiers]") unless input[:finding_identifiers].nil?
        Validators::NoteUpdate.validate!(input[:note], context: "#{context}[:note]") unless input[:note].nil?
        Validators::SeverityUpdate.validate!(input[:severity], context: "#{context}[:severity]") unless input[:severity].nil?
        Hearth::Validator.validate!(input[:verification_state], ::String, context: "#{context}[:verification_state]")
        Hearth::Validator.validate!(input[:confidence], ::Integer, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:criticality], ::Integer, context: "#{context}[:criticality]")
        Validators::TypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Validators::FieldMap.validate!(input[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless input[:user_defined_fields].nil?
        Validators::WorkflowUpdate.validate!(input[:workflow], context: "#{context}[:workflow]") unless input[:workflow].nil?
        Validators::RelatedFindingList.validate!(input[:related_findings], context: "#{context}[:related_findings]") unless input[:related_findings].nil?
      end
    end

    class BatchUpdateFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateFindingsOutput, context: context)
        Validators::AwsSecurityFindingIdentifierList.validate!(input[:processed_findings], context: "#{context}[:processed_findings]") unless input[:processed_findings].nil?
        Validators::BatchUpdateFindingsUnprocessedFindingsList.validate!(input[:unprocessed_findings], context: "#{context}[:unprocessed_findings]") unless input[:unprocessed_findings].nil?
      end
    end

    class BatchUpdateFindingsUnprocessedFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateFindingsUnprocessedFinding, context: context)
        Validators::AwsSecurityFindingIdentifier.validate!(input[:finding_identifier], context: "#{context}[:finding_identifier]") unless input[:finding_identifier].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchUpdateFindingsUnprocessedFindingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchUpdateFindingsUnprocessedFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BooleanFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BooleanFilter, context: context)
        Hearth::Validator.validate!(input[:value], ::TrueClass, ::FalseClass, context: "#{context}[:value]")
      end
    end

    class BooleanFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BooleanFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Cell
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cell, context: context)
        Hearth::Validator.validate!(input[:column], ::Integer, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:row], ::Integer, context: "#{context}[:row]")
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:cell_reference], ::String, context: "#{context}[:cell_reference]")
      end
    end

    class Cells
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cell.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CidrBlockAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrBlockAssociation, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:cidr_block_state], ::String, context: "#{context}[:cidr_block_state]")
      end
    end

    class CidrBlockAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CidrBlockAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class City
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::City, context: context)
        Hearth::Validator.validate!(input[:city_name], ::String, context: "#{context}[:city_name]")
      end
    end

    class ClassificationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationResult, context: context)
        Hearth::Validator.validate!(input[:mime_type], ::String, context: "#{context}[:mime_type]")
        Hearth::Validator.validate!(input[:size_classified], ::Integer, context: "#{context}[:size_classified]")
        Hearth::Validator.validate!(input[:additional_occurrences], ::TrueClass, ::FalseClass, context: "#{context}[:additional_occurrences]")
        Validators::ClassificationStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::SensitiveDataResultList.validate!(input[:sensitive_data], context: "#{context}[:sensitive_data]") unless input[:sensitive_data].nil?
        Validators::CustomDataIdentifiersResult.validate!(input[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless input[:custom_data_identifiers].nil?
      end
    end

    class ClassificationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassificationStatus, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Compliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Compliance, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::RelatedRequirementsList.validate!(input[:related_requirements], context: "#{context}[:related_requirements]") unless input[:related_requirements].nil?
        Validators::StatusReasonsList.validate!(input[:status_reasons], context: "#{context}[:status_reasons]") unless input[:status_reasons].nil?
      end
    end

    class ContainerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:launched_at], ::String, context: "#{context}[:launched_at]")
      end
    end

    class Country
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Country, context: context)
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:country_name], ::String, context: "#{context}[:country_name]")
      end
    end

    class CreateActionTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActionTargetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateActionTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActionTargetOutput, context: context)
        Hearth::Validator.validate!(input[:action_target_arn], ::String, context: "#{context}[:action_target_arn]")
      end
    end

    class CreateFindingAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:region_linking_mode], ::String, context: "#{context}[:region_linking_mode]")
        Validators::StringList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class CreateFindingAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFindingAggregatorOutput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
        Hearth::Validator.validate!(input[:finding_aggregation_region], ::String, context: "#{context}[:finding_aggregation_region]")
        Hearth::Validator.validate!(input[:region_linking_mode], ::String, context: "#{context}[:region_linking_mode]")
        Validators::StringList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class CreateInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInsightInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsSecurityFindingFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_attribute], ::String, context: "#{context}[:group_by_attribute]")
      end
    end

    class CreateInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInsightOutput, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
      end
    end

    class CreateMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersInput, context: context)
        Validators::AccountDetailsList.validate!(input[:account_details], context: "#{context}[:account_details]") unless input[:account_details].nil?
      end
    end

    class CreateMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersOutput, context: context)
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class CustomDataIdentifiersDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDataIdentifiersDetections, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Occurrences.validate!(input[:occurrences], context: "#{context}[:occurrences]") unless input[:occurrences].nil?
      end
    end

    class CustomDataIdentifiersDetectionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomDataIdentifiersDetections.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomDataIdentifiersResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDataIdentifiersResult, context: context)
        Validators::CustomDataIdentifiersDetectionsList.validate!(input[:detections], context: "#{context}[:detections]") unless input[:detections].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class Cvss
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cvss, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:base_score], ::Float, context: "#{context}[:base_score]")
        Hearth::Validator.validate!(input[:base_vector], ::String, context: "#{context}[:base_vector]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::AdjustmentList.validate!(input[:adjustments], context: "#{context}[:adjustments]") unless input[:adjustments].nil?
      end
    end

    class CvssList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Cvss.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataClassificationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataClassificationDetails, context: context)
        Hearth::Validator.validate!(input[:detailed_results_location], ::String, context: "#{context}[:detailed_results_location]")
        Validators::ClassificationResult.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class DateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateFilter, context: context)
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Validators::DateRange.validate!(input[:date_range], context: "#{context}[:date_range]") unless input[:date_range].nil?
      end
    end

    class DateFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DateRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateRange, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class DeclineInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeclineInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeclineInvitationsOutput, context: context)
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeleteActionTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActionTargetInput, context: context)
        Hearth::Validator.validate!(input[:action_target_arn], ::String, context: "#{context}[:action_target_arn]")
      end
    end

    class DeleteActionTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActionTargetOutput, context: context)
        Hearth::Validator.validate!(input[:action_target_arn], ::String, context: "#{context}[:action_target_arn]")
      end
    end

    class DeleteFindingAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFindingAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
      end
    end

    class DeleteFindingAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFindingAggregatorOutput, context: context)
      end
    end

    class DeleteInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightInput, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
      end
    end

    class DeleteInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightOutput, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
      end
    end

    class DeleteInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInvitationsOutput, context: context)
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeleteMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersOutput, context: context)
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DescribeActionTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActionTargetsInput, context: context)
        Validators::ArnList.validate!(input[:action_target_arns], context: "#{context}[:action_target_arns]") unless input[:action_target_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeActionTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActionTargetsOutput, context: context)
        Validators::ActionTargetList.validate!(input[:action_targets], context: "#{context}[:action_targets]") unless input[:action_targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeHubInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHubInput, context: context)
        Hearth::Validator.validate!(input[:hub_arn], ::String, context: "#{context}[:hub_arn]")
      end
    end

    class DescribeHubOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHubOutput, context: context)
        Hearth::Validator.validate!(input[:hub_arn], ::String, context: "#{context}[:hub_arn]")
        Hearth::Validator.validate!(input[:subscribed_at], ::String, context: "#{context}[:subscribed_at]")
        Hearth::Validator.validate!(input[:auto_enable_controls], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable_controls]")
      end
    end

    class DescribeOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationInput, context: context)
      end
    end

    class DescribeOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
        Hearth::Validator.validate!(input[:member_account_limit_reached], ::TrueClass, ::FalseClass, context: "#{context}[:member_account_limit_reached]")
        Hearth::Validator.validate!(input[:auto_enable_standards], ::String, context: "#{context}[:auto_enable_standards]")
      end
    end

    class DescribeProductsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
      end
    end

    class DescribeProductsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProductsOutput, context: context)
        Validators::ProductsList.validate!(input[:products], context: "#{context}[:products]") unless input[:products].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStandardsControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStandardsControlsInput, context: context)
        Hearth::Validator.validate!(input[:standards_subscription_arn], ::String, context: "#{context}[:standards_subscription_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeStandardsControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStandardsControlsOutput, context: context)
        Validators::StandardsControls.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeStandardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStandardsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeStandardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStandardsOutput, context: context)
        Validators::Standards.validate!(input[:standards], context: "#{context}[:standards]") unless input[:standards].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisableImportFindingsForProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableImportFindingsForProductInput, context: context)
        Hearth::Validator.validate!(input[:product_subscription_arn], ::String, context: "#{context}[:product_subscription_arn]")
      end
    end

    class DisableImportFindingsForProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableImportFindingsForProductOutput, context: context)
      end
    end

    class DisableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class DisableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountOutput, context: context)
      end
    end

    class DisableSecurityHubInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSecurityHubInput, context: context)
      end
    end

    class DisableSecurityHubOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSecurityHubOutput, context: context)
      end
    end

    class DisassociateFromAdministratorAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromAdministratorAccountInput, context: context)
      end
    end

    class DisassociateFromAdministratorAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromAdministratorAccountOutput, context: context)
      end
    end

    class DisassociateFromMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountInput, context: context)
      end
    end

    class DisassociateFromMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateFromMasterAccountOutput, context: context)
      end
    end

    class DisassociateMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembersInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DisassociateMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembersOutput, context: context)
      end
    end

    class DnsRequestAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DnsRequestAction, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:blocked], ::TrueClass, ::FalseClass, context: "#{context}[:blocked]")
      end
    end

    class EnableImportFindingsForProductInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableImportFindingsForProductInput, context: context)
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
      end
    end

    class EnableImportFindingsForProductOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableImportFindingsForProductOutput, context: context)
        Hearth::Validator.validate!(input[:product_subscription_arn], ::String, context: "#{context}[:product_subscription_arn]")
      end
    end

    class EnableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:admin_account_id], ::String, context: "#{context}[:admin_account_id]")
      end
    end

    class EnableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountOutput, context: context)
      end
    end

    class EnableSecurityHubInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSecurityHubInput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_default_standards], ::TrueClass, ::FalseClass, context: "#{context}[:enable_default_standards]")
      end
    end

    class EnableSecurityHubOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSecurityHubOutput, context: context)
      end
    end

    class FieldMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FindingAggregator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingAggregator, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
      end
    end

    class FindingAggregatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FindingAggregator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingProviderFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingProviderFields, context: context)
        Hearth::Validator.validate!(input[:confidence], ::Integer, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:criticality], ::Integer, context: "#{context}[:criticality]")
        Validators::RelatedFindingList.validate!(input[:related_findings], context: "#{context}[:related_findings]") unless input[:related_findings].nil?
        Validators::FindingProviderSeverity.validate!(input[:severity], context: "#{context}[:severity]") unless input[:severity].nil?
        Validators::TypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
      end
    end

    class FindingProviderSeverity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingProviderSeverity, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:original], ::String, context: "#{context}[:original]")
      end
    end

    class FirewallPolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyDetails, context: context)
        Validators::FirewallPolicyStatefulRuleGroupReferencesList.validate!(input[:stateful_rule_group_references], context: "#{context}[:stateful_rule_group_references]") unless input[:stateful_rule_group_references].nil?
        Validators::FirewallPolicyStatelessCustomActionsList.validate!(input[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless input[:stateless_custom_actions].nil?
        Validators::NonEmptyStringList.validate!(input[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless input[:stateless_default_actions].nil?
        Validators::NonEmptyStringList.validate!(input[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless input[:stateless_fragment_default_actions].nil?
        Validators::FirewallPolicyStatelessRuleGroupReferencesList.validate!(input[:stateless_rule_group_references], context: "#{context}[:stateless_rule_group_references]") unless input[:stateless_rule_group_references].nil?
      end
    end

    class FirewallPolicyStatefulRuleGroupReferencesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyStatefulRuleGroupReferencesDetails, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class FirewallPolicyStatefulRuleGroupReferencesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallPolicyStatefulRuleGroupReferencesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallPolicyStatelessCustomActionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyStatelessCustomActionsDetails, context: context)
        Validators::StatelessCustomActionDefinition.validate!(input[:action_definition], context: "#{context}[:action_definition]") unless input[:action_definition].nil?
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class FirewallPolicyStatelessCustomActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallPolicyStatelessCustomActionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirewallPolicyStatelessRuleGroupReferencesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirewallPolicyStatelessRuleGroupReferencesDetails, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class FirewallPolicyStatelessRuleGroupReferencesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FirewallPolicyStatelessRuleGroupReferencesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeoLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoLocation, context: context)
        Hearth::Validator.validate!(input[:lon], ::Float, context: "#{context}[:lon]")
        Hearth::Validator.validate!(input[:lat], ::Float, context: "#{context}[:lat]")
      end
    end

    class GetAdministratorAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdministratorAccountInput, context: context)
      end
    end

    class GetAdministratorAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAdministratorAccountOutput, context: context)
        Validators::Invitation.validate!(input[:administrator], context: "#{context}[:administrator]") unless input[:administrator].nil?
      end
    end

    class GetEnabledStandardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnabledStandardsInput, context: context)
        Validators::StandardsSubscriptionArns.validate!(input[:standards_subscription_arns], context: "#{context}[:standards_subscription_arns]") unless input[:standards_subscription_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEnabledStandardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnabledStandardsOutput, context: context)
        Validators::StandardsSubscriptions.validate!(input[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless input[:standards_subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetFindingAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
      end
    end

    class GetFindingAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingAggregatorOutput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
        Hearth::Validator.validate!(input[:finding_aggregation_region], ::String, context: "#{context}[:finding_aggregation_region]")
        Hearth::Validator.validate!(input[:region_linking_mode], ::String, context: "#{context}[:region_linking_mode]")
        Validators::StringList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class GetFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsInput, context: context)
        Validators::AwsSecurityFindingFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsOutput, context: context)
        Validators::AwsSecurityFindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInsightResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightResultsInput, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
      end
    end

    class GetInsightResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightResultsOutput, context: context)
        Validators::InsightResults.validate!(input[:insight_results], context: "#{context}[:insight_results]") unless input[:insight_results].nil?
      end
    end

    class GetInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsInput, context: context)
        Validators::ArnList.validate!(input[:insight_arns], context: "#{context}[:insight_arns]") unless input[:insight_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInsightsOutput, context: context)
        Validators::InsightList.validate!(input[:insights], context: "#{context}[:insights]") unless input[:insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInvitationsCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountInput, context: context)
      end
    end

    class GetInvitationsCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInvitationsCountOutput, context: context)
        Hearth::Validator.validate!(input[:invitations_count], ::Integer, context: "#{context}[:invitations_count]")
      end
    end

    class GetMasterAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountInput, context: context)
      end
    end

    class GetMasterAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMasterAccountOutput, context: context)
        Validators::Invitation.validate!(input[:master], context: "#{context}[:master]") unless input[:master].nil?
      end
    end

    class GetMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class GetMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersOutput, context: context)
        Validators::MemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class IcmpTypeCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IcmpTypeCode, context: context)
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:type], ::Integer, context: "#{context}[:type]")
      end
    end

    class ImportFindingsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportFindingsError, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ImportFindingsErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImportFindingsError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Insight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Insight, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsSecurityFindingFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_attribute], ::String, context: "#{context}[:group_by_attribute]")
      end
    end

    class InsightList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Insight.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightResultValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightResultValue, context: context)
        Hearth::Validator.validate!(input[:group_by_attribute_value], ::String, context: "#{context}[:group_by_attribute_value]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class InsightResultValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InsightResultValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsightResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightResults, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
        Hearth::Validator.validate!(input[:group_by_attribute], ::String, context: "#{context}[:group_by_attribute]")
        Validators::InsightResultValueList.validate!(input[:result_values], context: "#{context}[:result_values]") unless input[:result_values].nil?
      end
    end

    class IntegerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class IntegrationTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Invitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invitation, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:invited_at], ::Time, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:member_status], ::String, context: "#{context}[:member_status]")
      end
    end

    class InvitationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Invitation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InviteMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteMembersInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class InviteMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteMembersOutput, context: context)
        Validators::ResultList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class IpFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpFilter, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class IpFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IpFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IpOrganizationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpOrganizationDetails, context: context)
        Hearth::Validator.validate!(input[:asn], ::Integer, context: "#{context}[:asn]")
        Hearth::Validator.validate!(input[:asn_org], ::String, context: "#{context}[:asn_org]")
        Hearth::Validator.validate!(input[:isp], ::String, context: "#{context}[:isp]")
        Hearth::Validator.validate!(input[:org], ::String, context: "#{context}[:org]")
      end
    end

    class Ipv6CidrBlockAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ipv6CidrBlockAssociation, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:ipv6_cidr_block], ::String, context: "#{context}[:ipv6_cidr_block]")
        Hearth::Validator.validate!(input[:cidr_block_state], ::String, context: "#{context}[:cidr_block_state]")
      end
    end

    class Ipv6CidrBlockAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ipv6CidrBlockAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeywordFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeywordFilter, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class KeywordFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeywordFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class ListEnabledProductsForImportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnabledProductsForImportInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnabledProductsForImportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnabledProductsForImportOutput, context: context)
        Validators::ProductSubscriptionArnList.validate!(input[:product_subscriptions], context: "#{context}[:product_subscriptions]") unless input[:product_subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingAggregatorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingAggregatorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFindingAggregatorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingAggregatorsOutput, context: context)
        Validators::FindingAggregatorList.validate!(input[:finding_aggregators], context: "#{context}[:finding_aggregators]") unless input[:finding_aggregators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsOutput, context: context)
        Validators::InvitationList.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:only_associated], ::TrueClass, ::FalseClass, context: "#{context}[:only_associated]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        Validators::MemberList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsOutput, context: context)
        Validators::AdminAccounts.validate!(input[:admin_accounts], context: "#{context}[:admin_accounts]") unless input[:admin_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoadBalancerState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerState, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Malware
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Malware, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class MalwareList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Malware.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MapFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MapFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
      end
    end

    class MapFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MapFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:master_id], ::String, context: "#{context}[:master_id]")
        Hearth::Validator.validate!(input[:administrator_id], ::String, context: "#{context}[:administrator_id]")
        Hearth::Validator.validate!(input[:member_status], ::String, context: "#{context}[:member_status]")
        Hearth::Validator.validate!(input[:invited_at], ::Time, context: "#{context}[:invited_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class MemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Member.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Network
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Network, context: context)
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Validators::PortRange.validate!(input[:open_port_range], context: "#{context}[:open_port_range]") unless input[:open_port_range].nil?
        Hearth::Validator.validate!(input[:source_ip_v4], ::String, context: "#{context}[:source_ip_v4]")
        Hearth::Validator.validate!(input[:source_ip_v6], ::String, context: "#{context}[:source_ip_v6]")
        Hearth::Validator.validate!(input[:source_port], ::Integer, context: "#{context}[:source_port]")
        Hearth::Validator.validate!(input[:source_domain], ::String, context: "#{context}[:source_domain]")
        Hearth::Validator.validate!(input[:source_mac], ::String, context: "#{context}[:source_mac]")
        Hearth::Validator.validate!(input[:destination_ip_v4], ::String, context: "#{context}[:destination_ip_v4]")
        Hearth::Validator.validate!(input[:destination_ip_v6], ::String, context: "#{context}[:destination_ip_v6]")
        Hearth::Validator.validate!(input[:destination_port], ::Integer, context: "#{context}[:destination_port]")
        Hearth::Validator.validate!(input[:destination_domain], ::String, context: "#{context}[:destination_domain]")
      end
    end

    class NetworkConnectionAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConnectionAction, context: context)
        Hearth::Validator.validate!(input[:connection_direction], ::String, context: "#{context}[:connection_direction]")
        Validators::ActionRemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
        Validators::ActionRemotePortDetails.validate!(input[:remote_port_details], context: "#{context}[:remote_port_details]") unless input[:remote_port_details].nil?
        Validators::ActionLocalPortDetails.validate!(input[:local_port_details], context: "#{context}[:local_port_details]") unless input[:local_port_details].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:blocked], ::TrueClass, ::FalseClass, context: "#{context}[:blocked]")
      end
    end

    class NetworkHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkHeader, context: context)
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Validators::NetworkPathComponentDetails.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::NetworkPathComponentDetails.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class NetworkPathComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkPathComponent, context: context)
        Hearth::Validator.validate!(input[:component_id], ::String, context: "#{context}[:component_id]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
        Validators::NetworkHeader.validate!(input[:egress], context: "#{context}[:egress]") unless input[:egress].nil?
        Validators::NetworkHeader.validate!(input[:ingress], context: "#{context}[:ingress]") unless input[:ingress].nil?
      end
    end

    class NetworkPathComponentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkPathComponentDetails, context: context)
        Validators::StringList.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
        Validators::PortRangeList.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
      end
    end

    class NetworkPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkPathComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NonEmptyStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Note
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Note, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
        Hearth::Validator.validate!(input[:updated_at], ::String, context: "#{context}[:updated_at]")
      end
    end

    class NoteUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoteUpdate, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:updated_by], ::String, context: "#{context}[:updated_by]")
      end
    end

    class NumberFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberFilter, context: context)
        Hearth::Validator.validate!(input[:gte], ::Float, context: "#{context}[:gte]")
        Hearth::Validator.validate!(input[:lte], ::Float, context: "#{context}[:lte]")
        Hearth::Validator.validate!(input[:eq], ::Float, context: "#{context}[:eq]")
      end
    end

    class NumberFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NumberFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Occurrences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Occurrences, context: context)
        Validators::Ranges.validate!(input[:line_ranges], context: "#{context}[:line_ranges]") unless input[:line_ranges].nil?
        Validators::Ranges.validate!(input[:offset_ranges], context: "#{context}[:offset_ranges]") unless input[:offset_ranges].nil?
        Validators::Pages.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
        Validators::Records.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Validators::Cells.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
      end
    end

    class Page
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Page, context: context)
        Hearth::Validator.validate!(input[:page_number], ::Integer, context: "#{context}[:page_number]")
        Validators::Range.validate!(input[:line_range], context: "#{context}[:line_range]") unless input[:line_range].nil?
        Validators::Range.validate!(input[:offset_range], context: "#{context}[:offset_range]") unless input[:offset_range].nil?
      end
    end

    class Pages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Page.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:installed_count], ::Integer, context: "#{context}[:installed_count]")
        Hearth::Validator.validate!(input[:missing_count], ::Integer, context: "#{context}[:missing_count]")
        Hearth::Validator.validate!(input[:failed_count], ::Integer, context: "#{context}[:failed_count]")
        Hearth::Validator.validate!(input[:installed_other_count], ::Integer, context: "#{context}[:installed_other_count]")
        Hearth::Validator.validate!(input[:installed_rejected_count], ::Integer, context: "#{context}[:installed_rejected_count]")
        Hearth::Validator.validate!(input[:installed_pending_reboot], ::Integer, context: "#{context}[:installed_pending_reboot]")
        Hearth::Validator.validate!(input[:operation_start_time], ::String, context: "#{context}[:operation_start_time]")
        Hearth::Validator.validate!(input[:operation_end_time], ::String, context: "#{context}[:operation_end_time]")
        Hearth::Validator.validate!(input[:reboot_option], ::String, context: "#{context}[:reboot_option]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
      end
    end

    class PortProbeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortProbeAction, context: context)
        Validators::PortProbeDetailList.validate!(input[:port_probe_details], context: "#{context}[:port_probe_details]") unless input[:port_probe_details].nil?
        Hearth::Validator.validate!(input[:blocked], ::TrueClass, ::FalseClass, context: "#{context}[:blocked]")
      end
    end

    class PortProbeDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortProbeDetail, context: context)
        Validators::ActionLocalPortDetails.validate!(input[:local_port_details], context: "#{context}[:local_port_details]") unless input[:local_port_details].nil?
        Validators::ActionLocalIpDetails.validate!(input[:local_ip_details], context: "#{context}[:local_ip_details]") unless input[:local_ip_details].nil?
        Validators::ActionRemoteIpDetails.validate!(input[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless input[:remote_ip_details].nil?
      end
    end

    class PortProbeDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortProbeDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:begin], ::Integer, context: "#{context}[:begin]")
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
      end
    end

    class PortRangeFromTo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRangeFromTo, context: context)
        Hearth::Validator.validate!(input[:from], ::Integer, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Integer, context: "#{context}[:to]")
      end
    end

    class PortRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PortRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessDetails, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:pid], ::Integer, context: "#{context}[:pid]")
        Hearth::Validator.validate!(input[:parent_pid], ::Integer, context: "#{context}[:parent_pid]")
        Hearth::Validator.validate!(input[:launched_at], ::String, context: "#{context}[:launched_at]")
        Hearth::Validator.validate!(input[:terminated_at], ::String, context: "#{context}[:terminated_at]")
      end
    end

    class Product
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Product, context: context)
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
        Hearth::Validator.validate!(input[:product_name], ::String, context: "#{context}[:product_name]")
        Hearth::Validator.validate!(input[:company_name], ::String, context: "#{context}[:company_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::CategoryList.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
        Validators::IntegrationTypeList.validate!(input[:integration_types], context: "#{context}[:integration_types]") unless input[:integration_types].nil?
        Hearth::Validator.validate!(input[:marketplace_url], ::String, context: "#{context}[:marketplace_url]")
        Hearth::Validator.validate!(input[:activation_url], ::String, context: "#{context}[:activation_url]")
        Hearth::Validator.validate!(input[:product_subscription_resource_policy], ::String, context: "#{context}[:product_subscription_resource_policy]")
      end
    end

    class ProductSubscriptionArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Product.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Range, context: context)
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Integer, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:start_column], ::Integer, context: "#{context}[:start_column]")
      end
    end

    class Ranges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Range.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
        Hearth::Validator.validate!(input[:record_index], ::Integer, context: "#{context}[:record_index]")
      end
    end

    class Records
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedFinding, context: context)
        Hearth::Validator.validate!(input[:product_arn], ::String, context: "#{context}[:product_arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class RelatedFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RelatedFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedRequirementsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Remediation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Remediation, context: context)
        Validators::Recommendation.validate!(input[:recommendation], context: "#{context}[:recommendation]") unless input[:recommendation].nil?
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:partition], ::String, context: "#{context}[:partition]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:resource_role], ::String, context: "#{context}[:resource_role]")
        Validators::FieldMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::DataClassificationDetails.validate!(input[:data_classification], context: "#{context}[:data_classification]") unless input[:data_classification].nil?
        Validators::ResourceDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDetails, context: context)
        Validators::AwsAutoScalingAutoScalingGroupDetails.validate!(input[:aws_auto_scaling_auto_scaling_group], context: "#{context}[:aws_auto_scaling_auto_scaling_group]") unless input[:aws_auto_scaling_auto_scaling_group].nil?
        Validators::AwsCodeBuildProjectDetails.validate!(input[:aws_code_build_project], context: "#{context}[:aws_code_build_project]") unless input[:aws_code_build_project].nil?
        Validators::AwsCloudFrontDistributionDetails.validate!(input[:aws_cloud_front_distribution], context: "#{context}[:aws_cloud_front_distribution]") unless input[:aws_cloud_front_distribution].nil?
        Validators::AwsEc2InstanceDetails.validate!(input[:aws_ec2_instance], context: "#{context}[:aws_ec2_instance]") unless input[:aws_ec2_instance].nil?
        Validators::AwsEc2NetworkInterfaceDetails.validate!(input[:aws_ec2_network_interface], context: "#{context}[:aws_ec2_network_interface]") unless input[:aws_ec2_network_interface].nil?
        Validators::AwsEc2SecurityGroupDetails.validate!(input[:aws_ec2_security_group], context: "#{context}[:aws_ec2_security_group]") unless input[:aws_ec2_security_group].nil?
        Validators::AwsEc2VolumeDetails.validate!(input[:aws_ec2_volume], context: "#{context}[:aws_ec2_volume]") unless input[:aws_ec2_volume].nil?
        Validators::AwsEc2VpcDetails.validate!(input[:aws_ec2_vpc], context: "#{context}[:aws_ec2_vpc]") unless input[:aws_ec2_vpc].nil?
        Validators::AwsEc2EipDetails.validate!(input[:aws_ec2_eip], context: "#{context}[:aws_ec2_eip]") unless input[:aws_ec2_eip].nil?
        Validators::AwsEc2SubnetDetails.validate!(input[:aws_ec2_subnet], context: "#{context}[:aws_ec2_subnet]") unless input[:aws_ec2_subnet].nil?
        Validators::AwsEc2NetworkAclDetails.validate!(input[:aws_ec2_network_acl], context: "#{context}[:aws_ec2_network_acl]") unless input[:aws_ec2_network_acl].nil?
        Validators::AwsElbv2LoadBalancerDetails.validate!(input[:aws_elbv2_load_balancer], context: "#{context}[:aws_elbv2_load_balancer]") unless input[:aws_elbv2_load_balancer].nil?
        Validators::AwsElasticBeanstalkEnvironmentDetails.validate!(input[:aws_elastic_beanstalk_environment], context: "#{context}[:aws_elastic_beanstalk_environment]") unless input[:aws_elastic_beanstalk_environment].nil?
        Validators::AwsElasticsearchDomainDetails.validate!(input[:aws_elasticsearch_domain], context: "#{context}[:aws_elasticsearch_domain]") unless input[:aws_elasticsearch_domain].nil?
        Validators::AwsS3BucketDetails.validate!(input[:aws_s3_bucket], context: "#{context}[:aws_s3_bucket]") unless input[:aws_s3_bucket].nil?
        Validators::AwsS3AccountPublicAccessBlockDetails.validate!(input[:aws_s3_account_public_access_block], context: "#{context}[:aws_s3_account_public_access_block]") unless input[:aws_s3_account_public_access_block].nil?
        Validators::AwsS3ObjectDetails.validate!(input[:aws_s3_object], context: "#{context}[:aws_s3_object]") unless input[:aws_s3_object].nil?
        Validators::AwsSecretsManagerSecretDetails.validate!(input[:aws_secrets_manager_secret], context: "#{context}[:aws_secrets_manager_secret]") unless input[:aws_secrets_manager_secret].nil?
        Validators::AwsIamAccessKeyDetails.validate!(input[:aws_iam_access_key], context: "#{context}[:aws_iam_access_key]") unless input[:aws_iam_access_key].nil?
        Validators::AwsIamUserDetails.validate!(input[:aws_iam_user], context: "#{context}[:aws_iam_user]") unless input[:aws_iam_user].nil?
        Validators::AwsIamPolicyDetails.validate!(input[:aws_iam_policy], context: "#{context}[:aws_iam_policy]") unless input[:aws_iam_policy].nil?
        Validators::AwsApiGatewayV2StageDetails.validate!(input[:aws_api_gateway_v2_stage], context: "#{context}[:aws_api_gateway_v2_stage]") unless input[:aws_api_gateway_v2_stage].nil?
        Validators::AwsApiGatewayV2ApiDetails.validate!(input[:aws_api_gateway_v2_api], context: "#{context}[:aws_api_gateway_v2_api]") unless input[:aws_api_gateway_v2_api].nil?
        Validators::AwsDynamoDbTableDetails.validate!(input[:aws_dynamo_db_table], context: "#{context}[:aws_dynamo_db_table]") unless input[:aws_dynamo_db_table].nil?
        Validators::AwsApiGatewayStageDetails.validate!(input[:aws_api_gateway_stage], context: "#{context}[:aws_api_gateway_stage]") unless input[:aws_api_gateway_stage].nil?
        Validators::AwsApiGatewayRestApiDetails.validate!(input[:aws_api_gateway_rest_api], context: "#{context}[:aws_api_gateway_rest_api]") unless input[:aws_api_gateway_rest_api].nil?
        Validators::AwsCloudTrailTrailDetails.validate!(input[:aws_cloud_trail_trail], context: "#{context}[:aws_cloud_trail_trail]") unless input[:aws_cloud_trail_trail].nil?
        Validators::AwsSsmPatchComplianceDetails.validate!(input[:aws_ssm_patch_compliance], context: "#{context}[:aws_ssm_patch_compliance]") unless input[:aws_ssm_patch_compliance].nil?
        Validators::AwsCertificateManagerCertificateDetails.validate!(input[:aws_certificate_manager_certificate], context: "#{context}[:aws_certificate_manager_certificate]") unless input[:aws_certificate_manager_certificate].nil?
        Validators::AwsRedshiftClusterDetails.validate!(input[:aws_redshift_cluster], context: "#{context}[:aws_redshift_cluster]") unless input[:aws_redshift_cluster].nil?
        Validators::AwsElbLoadBalancerDetails.validate!(input[:aws_elb_load_balancer], context: "#{context}[:aws_elb_load_balancer]") unless input[:aws_elb_load_balancer].nil?
        Validators::AwsIamGroupDetails.validate!(input[:aws_iam_group], context: "#{context}[:aws_iam_group]") unless input[:aws_iam_group].nil?
        Validators::AwsIamRoleDetails.validate!(input[:aws_iam_role], context: "#{context}[:aws_iam_role]") unless input[:aws_iam_role].nil?
        Validators::AwsKmsKeyDetails.validate!(input[:aws_kms_key], context: "#{context}[:aws_kms_key]") unless input[:aws_kms_key].nil?
        Validators::AwsLambdaFunctionDetails.validate!(input[:aws_lambda_function], context: "#{context}[:aws_lambda_function]") unless input[:aws_lambda_function].nil?
        Validators::AwsLambdaLayerVersionDetails.validate!(input[:aws_lambda_layer_version], context: "#{context}[:aws_lambda_layer_version]") unless input[:aws_lambda_layer_version].nil?
        Validators::AwsRdsDbInstanceDetails.validate!(input[:aws_rds_db_instance], context: "#{context}[:aws_rds_db_instance]") unless input[:aws_rds_db_instance].nil?
        Validators::AwsSnsTopicDetails.validate!(input[:aws_sns_topic], context: "#{context}[:aws_sns_topic]") unless input[:aws_sns_topic].nil?
        Validators::AwsSqsQueueDetails.validate!(input[:aws_sqs_queue], context: "#{context}[:aws_sqs_queue]") unless input[:aws_sqs_queue].nil?
        Validators::AwsWafWebAclDetails.validate!(input[:aws_waf_web_acl], context: "#{context}[:aws_waf_web_acl]") unless input[:aws_waf_web_acl].nil?
        Validators::AwsRdsDbSnapshotDetails.validate!(input[:aws_rds_db_snapshot], context: "#{context}[:aws_rds_db_snapshot]") unless input[:aws_rds_db_snapshot].nil?
        Validators::AwsRdsDbClusterSnapshotDetails.validate!(input[:aws_rds_db_cluster_snapshot], context: "#{context}[:aws_rds_db_cluster_snapshot]") unless input[:aws_rds_db_cluster_snapshot].nil?
        Validators::AwsRdsDbClusterDetails.validate!(input[:aws_rds_db_cluster], context: "#{context}[:aws_rds_db_cluster]") unless input[:aws_rds_db_cluster].nil?
        Validators::AwsEcsClusterDetails.validate!(input[:aws_ecs_cluster], context: "#{context}[:aws_ecs_cluster]") unless input[:aws_ecs_cluster].nil?
        Validators::AwsEcsTaskDefinitionDetails.validate!(input[:aws_ecs_task_definition], context: "#{context}[:aws_ecs_task_definition]") unless input[:aws_ecs_task_definition].nil?
        Validators::ContainerDetails.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
        Validators::FieldMap.validate!(input[:other], context: "#{context}[:other]") unless input[:other].nil?
        Validators::AwsRdsEventSubscriptionDetails.validate!(input[:aws_rds_event_subscription], context: "#{context}[:aws_rds_event_subscription]") unless input[:aws_rds_event_subscription].nil?
        Validators::AwsEcsServiceDetails.validate!(input[:aws_ecs_service], context: "#{context}[:aws_ecs_service]") unless input[:aws_ecs_service].nil?
        Validators::AwsAutoScalingLaunchConfigurationDetails.validate!(input[:aws_auto_scaling_launch_configuration], context: "#{context}[:aws_auto_scaling_launch_configuration]") unless input[:aws_auto_scaling_launch_configuration].nil?
        Validators::AwsEc2VpnConnectionDetails.validate!(input[:aws_ec2_vpn_connection], context: "#{context}[:aws_ec2_vpn_connection]") unless input[:aws_ec2_vpn_connection].nil?
        Validators::AwsEcrContainerImageDetails.validate!(input[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless input[:aws_ecr_container_image].nil?
        Validators::AwsOpenSearchServiceDomainDetails.validate!(input[:aws_open_search_service_domain], context: "#{context}[:aws_open_search_service_domain]") unless input[:aws_open_search_service_domain].nil?
        Validators::AwsEc2VpcEndpointServiceDetails.validate!(input[:aws_ec2_vpc_endpoint_service], context: "#{context}[:aws_ec2_vpc_endpoint_service]") unless input[:aws_ec2_vpc_endpoint_service].nil?
        Validators::AwsXrayEncryptionConfigDetails.validate!(input[:aws_xray_encryption_config], context: "#{context}[:aws_xray_encryption_config]") unless input[:aws_xray_encryption_config].nil?
        Validators::AwsWafRateBasedRuleDetails.validate!(input[:aws_waf_rate_based_rule], context: "#{context}[:aws_waf_rate_based_rule]") unless input[:aws_waf_rate_based_rule].nil?
        Validators::AwsWafRegionalRateBasedRuleDetails.validate!(input[:aws_waf_regional_rate_based_rule], context: "#{context}[:aws_waf_regional_rate_based_rule]") unless input[:aws_waf_regional_rate_based_rule].nil?
        Validators::AwsEcrRepositoryDetails.validate!(input[:aws_ecr_repository], context: "#{context}[:aws_ecr_repository]") unless input[:aws_ecr_repository].nil?
        Validators::AwsEksClusterDetails.validate!(input[:aws_eks_cluster], context: "#{context}[:aws_eks_cluster]") unless input[:aws_eks_cluster].nil?
        Validators::AwsNetworkFirewallFirewallPolicyDetails.validate!(input[:aws_network_firewall_firewall_policy], context: "#{context}[:aws_network_firewall_firewall_policy]") unless input[:aws_network_firewall_firewall_policy].nil?
        Validators::AwsNetworkFirewallFirewallDetails.validate!(input[:aws_network_firewall_firewall], context: "#{context}[:aws_network_firewall_firewall]") unless input[:aws_network_firewall_firewall].nil?
        Validators::AwsNetworkFirewallRuleGroupDetails.validate!(input[:aws_network_firewall_rule_group], context: "#{context}[:aws_network_firewall_rule_group]") unless input[:aws_network_firewall_rule_group].nil?
        Validators::AwsRdsDbSecurityGroupDetails.validate!(input[:aws_rds_db_security_group], context: "#{context}[:aws_rds_db_security_group]") unless input[:aws_rds_db_security_group].nil?
      end
    end

    class ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Result
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Result, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:processing_result], ::String, context: "#{context}[:processing_result]")
      end
    end

    class ResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Result.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupDetails, context: context)
        Validators::RuleGroupVariables.validate!(input[:rule_variables], context: "#{context}[:rule_variables]") unless input[:rule_variables].nil?
        Validators::RuleGroupSource.validate!(input[:rules_source], context: "#{context}[:rules_source]") unless input[:rules_source].nil?
      end
    end

    class RuleGroupSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSource, context: context)
        Validators::RuleGroupSourceListDetails.validate!(input[:rules_source_list], context: "#{context}[:rules_source_list]") unless input[:rules_source_list].nil?
        Hearth::Validator.validate!(input[:rules_string], ::String, context: "#{context}[:rules_string]")
        Validators::RuleGroupSourceStatefulRulesList.validate!(input[:stateful_rules], context: "#{context}[:stateful_rules]") unless input[:stateful_rules].nil?
        Validators::RuleGroupSourceStatelessRulesAndCustomActionsDetails.validate!(input[:stateless_rules_and_custom_actions], context: "#{context}[:stateless_rules_and_custom_actions]") unless input[:stateless_rules_and_custom_actions].nil?
      end
    end

    class RuleGroupSourceCustomActionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceCustomActionsDetails, context: context)
        Validators::StatelessCustomActionDefinition.validate!(input[:action_definition], context: "#{context}[:action_definition]") unless input[:action_definition].nil?
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class RuleGroupSourceCustomActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceCustomActionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceListDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceListDetails, context: context)
        Hearth::Validator.validate!(input[:generated_rules_type], ::String, context: "#{context}[:generated_rules_type]")
        Validators::NonEmptyStringList.validate!(input[:target_types], context: "#{context}[:target_types]") unless input[:target_types].nil?
        Validators::NonEmptyStringList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
      end
    end

    class RuleGroupSourceStatefulRulesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatefulRulesDetails, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::RuleGroupSourceStatefulRulesHeaderDetails.validate!(input[:header], context: "#{context}[:header]") unless input[:header].nil?
        Validators::RuleGroupSourceStatefulRulesOptionsList.validate!(input[:rule_options], context: "#{context}[:rule_options]") unless input[:rule_options].nil?
      end
    end

    class RuleGroupSourceStatefulRulesHeaderDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatefulRulesHeaderDetails, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:destination_port], ::String, context: "#{context}[:destination_port]")
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_port], ::String, context: "#{context}[:source_port]")
      end
    end

    class RuleGroupSourceStatefulRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatefulRulesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatefulRulesOptionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatefulRulesOptionsDetails, context: context)
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Validators::RuleGroupSourceStatefulRulesRuleOptionsSettingsList.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class RuleGroupSourceStatefulRulesOptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatefulRulesOptionsDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatefulRulesRuleOptionsSettingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RuleGroupSourceStatelessRuleDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleDefinition, context: context)
        Validators::NonEmptyStringList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributes.validate!(input[:match_attributes], context: "#{context}[:match_attributes]") unless input[:match_attributes].nil?
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributes, context: context)
        Validators::RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.validate!(input[:destination_ports], context: "#{context}[:destination_ports]") unless input[:destination_ports].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.validate!(input[:source_ports], context: "#{context}[:source_ports]") unless input[:source_ports].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributesSourcesList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Validators::RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.validate!(input[:tcp_flags], context: "#{context}[:tcp_flags]") unless input[:tcp_flags].nil?
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations, context: context)
        Hearth::Validator.validate!(input[:address_definition], ::String, context: "#{context}[:address_definition]")
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRuleMatchAttributesDestinations.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributesSources, context: context)
        Hearth::Validator.validate!(input[:address_definition], ::String, context: "#{context}[:address_definition]")
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesSourcesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRuleMatchAttributesSources.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags, context: context)
        Validators::NonEmptyStringList.validate!(input[:flags], context: "#{context}[:flags]") unless input[:flags].nil?
        Validators::NonEmptyStringList.validate!(input[:masks], context: "#{context}[:masks]") unless input[:masks].nil?
      end
    end

    class RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupSourceStatelessRulesAndCustomActionsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails, context: context)
        Validators::RuleGroupSourceCustomActionsList.validate!(input[:custom_actions], context: "#{context}[:custom_actions]") unless input[:custom_actions].nil?
        Validators::RuleGroupSourceStatelessRulesList.validate!(input[:stateless_rules], context: "#{context}[:stateless_rules]") unless input[:stateless_rules].nil?
      end
    end

    class RuleGroupSourceStatelessRulesDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupSourceStatelessRulesDetails, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::RuleGroupSourceStatelessRuleDefinition.validate!(input[:rule_definition], context: "#{context}[:rule_definition]") unless input[:rule_definition].nil?
      end
    end

    class RuleGroupSourceStatelessRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupSourceStatelessRulesDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleGroupVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupVariables, context: context)
        Validators::RuleGroupVariablesIpSetsDetails.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
        Validators::RuleGroupVariablesPortSetsDetails.validate!(input[:port_sets], context: "#{context}[:port_sets]") unless input[:port_sets].nil?
      end
    end

    class RuleGroupVariablesIpSetsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupVariablesIpSetsDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class RuleGroupVariablesPortSetsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupVariablesPortSetsDetails, context: context)
        Validators::NonEmptyStringList.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SensitiveDataDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SensitiveDataDetections, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Occurrences.validate!(input[:occurrences], context: "#{context}[:occurrences]") unless input[:occurrences].nil?
      end
    end

    class SensitiveDataDetectionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SensitiveDataDetections.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SensitiveDataResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SensitiveDataResult, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Validators::SensitiveDataDetectionsList.validate!(input[:detections], context: "#{context}[:detections]") unless input[:detections].nil?
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
      end
    end

    class SensitiveDataResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SensitiveDataResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Severity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Severity, context: context)
        Hearth::Validator.validate!(input[:product], ::Float, context: "#{context}[:product]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:normalized], ::Integer, context: "#{context}[:normalized]")
        Hearth::Validator.validate!(input[:original], ::String, context: "#{context}[:original]")
      end
    end

    class SeverityUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeverityUpdate, context: context)
        Hearth::Validator.validate!(input[:normalized], ::Integer, context: "#{context}[:normalized]")
        Hearth::Validator.validate!(input[:product], ::Float, context: "#{context}[:product]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class SoftwarePackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SoftwarePackage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:epoch], ::String, context: "#{context}[:epoch]")
        Hearth::Validator.validate!(input[:release], ::String, context: "#{context}[:release]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:package_manager], ::String, context: "#{context}[:package_manager]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
      end
    end

    class SoftwarePackageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SoftwarePackage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SortCriterion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SortCriterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriterion, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class Standard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Standard, context: context)
        Hearth::Validator.validate!(input[:standards_arn], ::String, context: "#{context}[:standards_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled_by_default], ::TrueClass, ::FalseClass, context: "#{context}[:enabled_by_default]")
      end
    end

    class Standards
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Standard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StandardsControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StandardsControl, context: context)
        Hearth::Validator.validate!(input[:standards_control_arn], ::String, context: "#{context}[:standards_control_arn]")
        Hearth::Validator.validate!(input[:control_status], ::String, context: "#{context}[:control_status]")
        Hearth::Validator.validate!(input[:disabled_reason], ::String, context: "#{context}[:disabled_reason]")
        Hearth::Validator.validate!(input[:control_status_updated_at], ::Time, context: "#{context}[:control_status_updated_at]")
        Hearth::Validator.validate!(input[:control_id], ::String, context: "#{context}[:control_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:remediation_url], ::String, context: "#{context}[:remediation_url]")
        Hearth::Validator.validate!(input[:severity_rating], ::String, context: "#{context}[:severity_rating]")
        Validators::RelatedRequirementsList.validate!(input[:related_requirements], context: "#{context}[:related_requirements]") unless input[:related_requirements].nil?
      end
    end

    class StandardsControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StandardsControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StandardsInputParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StandardsStatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StandardsStatusReason, context: context)
        Hearth::Validator.validate!(input[:status_reason_code], ::String, context: "#{context}[:status_reason_code]")
      end
    end

    class StandardsSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StandardsSubscription, context: context)
        Hearth::Validator.validate!(input[:standards_subscription_arn], ::String, context: "#{context}[:standards_subscription_arn]")
        Hearth::Validator.validate!(input[:standards_arn], ::String, context: "#{context}[:standards_arn]")
        Validators::StandardsInputParameterMap.validate!(input[:standards_input], context: "#{context}[:standards_input]") unless input[:standards_input].nil?
        Hearth::Validator.validate!(input[:standards_status], ::String, context: "#{context}[:standards_status]")
        Validators::StandardsStatusReason.validate!(input[:standards_status_reason], context: "#{context}[:standards_status_reason]") unless input[:standards_status_reason].nil?
      end
    end

    class StandardsSubscriptionArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StandardsSubscriptionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StandardsSubscriptionRequest, context: context)
        Hearth::Validator.validate!(input[:standards_arn], ::String, context: "#{context}[:standards_arn]")
        Validators::StandardsInputParameterMap.validate!(input[:standards_input], context: "#{context}[:standards_input]") unless input[:standards_input].nil?
      end
    end

    class StandardsSubscriptionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StandardsSubscriptionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StandardsSubscriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StandardsSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatelessCustomActionDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessCustomActionDefinition, context: context)
        Validators::StatelessCustomPublishMetricAction.validate!(input[:publish_metric_action], context: "#{context}[:publish_metric_action]") unless input[:publish_metric_action].nil?
      end
    end

    class StatelessCustomPublishMetricAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessCustomPublishMetricAction, context: context)
        Validators::StatelessCustomPublishMetricActionDimensionsList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class StatelessCustomPublishMetricActionDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatelessCustomPublishMetricActionDimension, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class StatelessCustomPublishMetricActionDimensionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatelessCustomPublishMetricActionDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusReason, context: context)
        Hearth::Validator.validate!(input[:reason_code], ::String, context: "#{context}[:reason_code]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StatusReasonsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatusReason.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringFilter, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:comparison], ::String, context: "#{context}[:comparison]")
      end
    end

    class StringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThreatIntelIndicator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThreatIntelIndicator, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:last_observed_at], ::String, context: "#{context}[:last_observed_at]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
      end
    end

    class ThreatIntelIndicatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThreatIntelIndicator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateActionTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionTargetInput, context: context)
        Hearth::Validator.validate!(input[:action_target_arn], ::String, context: "#{context}[:action_target_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateActionTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionTargetOutput, context: context)
      end
    end

    class UpdateFindingAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
        Hearth::Validator.validate!(input[:region_linking_mode], ::String, context: "#{context}[:region_linking_mode]")
        Validators::StringList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class UpdateFindingAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingAggregatorOutput, context: context)
        Hearth::Validator.validate!(input[:finding_aggregator_arn], ::String, context: "#{context}[:finding_aggregator_arn]")
        Hearth::Validator.validate!(input[:finding_aggregation_region], ::String, context: "#{context}[:finding_aggregation_region]")
        Hearth::Validator.validate!(input[:region_linking_mode], ::String, context: "#{context}[:region_linking_mode]")
        Validators::StringList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
      end
    end

    class UpdateFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsInput, context: context)
        Validators::AwsSecurityFindingFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Validators::NoteUpdate.validate!(input[:note], context: "#{context}[:note]") unless input[:note].nil?
        Hearth::Validator.validate!(input[:record_state], ::String, context: "#{context}[:record_state]")
      end
    end

    class UpdateFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsOutput, context: context)
      end
    end

    class UpdateInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInsightInput, context: context)
        Hearth::Validator.validate!(input[:insight_arn], ::String, context: "#{context}[:insight_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AwsSecurityFindingFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_attribute], ::String, context: "#{context}[:group_by_attribute]")
      end
    end

    class UpdateInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInsightOutput, context: context)
      end
    end

    class UpdateOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
        Hearth::Validator.validate!(input[:auto_enable_standards], ::String, context: "#{context}[:auto_enable_standards]")
      end
    end

    class UpdateOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationOutput, context: context)
      end
    end

    class UpdateSecurityHubConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityHubConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_enable_controls], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable_controls]")
      end
    end

    class UpdateSecurityHubConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSecurityHubConfigurationOutput, context: context)
      end
    end

    class UpdateStandardsControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStandardsControlInput, context: context)
        Hearth::Validator.validate!(input[:standards_control_arn], ::String, context: "#{context}[:standards_control_arn]")
        Hearth::Validator.validate!(input[:control_status], ::String, context: "#{context}[:control_status]")
        Hearth::Validator.validate!(input[:disabled_reason], ::String, context: "#{context}[:disabled_reason]")
      end
    end

    class UpdateStandardsControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStandardsControlOutput, context: context)
      end
    end

    class Vulnerability
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vulnerability, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::SoftwarePackageList.validate!(input[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless input[:vulnerable_packages].nil?
        Validators::CvssList.validate!(input[:cvss], context: "#{context}[:cvss]") unless input[:cvss].nil?
        Validators::StringList.validate!(input[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless input[:related_vulnerabilities].nil?
        Validators::VulnerabilityVendor.validate!(input[:vendor], context: "#{context}[:vendor]") unless input[:vendor].nil?
        Validators::StringList.validate!(input[:reference_urls], context: "#{context}[:reference_urls]") unless input[:reference_urls].nil?
      end
    end

    class VulnerabilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Vulnerability.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VulnerabilityVendor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VulnerabilityVendor, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:vendor_severity], ::String, context: "#{context}[:vendor_severity]")
        Hearth::Validator.validate!(input[:vendor_created_at], ::String, context: "#{context}[:vendor_created_at]")
        Hearth::Validator.validate!(input[:vendor_updated_at], ::String, context: "#{context}[:vendor_updated_at]")
      end
    end

    class WafAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WafAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class WafExcludedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WafExcludedRule, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class WafExcludedRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WafExcludedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WafOverrideAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WafOverrideAction, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Workflow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workflow, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class WorkflowUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowUpdate, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

  end
end
