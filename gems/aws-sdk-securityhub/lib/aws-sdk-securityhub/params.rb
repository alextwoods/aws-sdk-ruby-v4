# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SecurityHub
  module Params

    module AcceptAdministratorInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptAdministratorInvitationInput, context: context)
        type = Types::AcceptAdministratorInvitationInput.new
        type.administrator_id = params[:administrator_id]
        type.invitation_id = params[:invitation_id]
        type
      end
    end

    module AcceptAdministratorInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptAdministratorInvitationOutput, context: context)
        type = Types::AcceptAdministratorInvitationOutput.new
        type
      end
    end

    module AcceptInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationInput, context: context)
        type = Types::AcceptInvitationInput.new
        type.master_id = params[:master_id]
        type.invitation_id = params[:invitation_id]
        type
      end
    end

    module AcceptInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationOutput, context: context)
        type = Types::AcceptInvitationOutput.new
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module AccountDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountDetails, context: context)
        type = Types::AccountDetails.new
        type.account_id = params[:account_id]
        type.email = params[:email]
        type
      end
    end

    module AccountDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.action_type = params[:action_type]
        type.network_connection_action = NetworkConnectionAction.build(params[:network_connection_action], context: "#{context}[:network_connection_action]") unless params[:network_connection_action].nil?
        type.aws_api_call_action = AwsApiCallAction.build(params[:aws_api_call_action], context: "#{context}[:aws_api_call_action]") unless params[:aws_api_call_action].nil?
        type.dns_request_action = DnsRequestAction.build(params[:dns_request_action], context: "#{context}[:dns_request_action]") unless params[:dns_request_action].nil?
        type.port_probe_action = PortProbeAction.build(params[:port_probe_action], context: "#{context}[:port_probe_action]") unless params[:port_probe_action].nil?
        type
      end
    end

    module ActionLocalIpDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionLocalIpDetails, context: context)
        type = Types::ActionLocalIpDetails.new
        type.ip_address_v4 = params[:ip_address_v4]
        type
      end
    end

    module ActionLocalPortDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionLocalPortDetails, context: context)
        type = Types::ActionLocalPortDetails.new
        type.port = params[:port]
        type.port_name = params[:port_name]
        type
      end
    end

    module ActionRemoteIpDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionRemoteIpDetails, context: context)
        type = Types::ActionRemoteIpDetails.new
        type.ip_address_v4 = params[:ip_address_v4]
        type.organization = IpOrganizationDetails.build(params[:organization], context: "#{context}[:organization]") unless params[:organization].nil?
        type.country = Country.build(params[:country], context: "#{context}[:country]") unless params[:country].nil?
        type.city = City.build(params[:city], context: "#{context}[:city]") unless params[:city].nil?
        type.geo_location = GeoLocation.build(params[:geo_location], context: "#{context}[:geo_location]") unless params[:geo_location].nil?
        type
      end
    end

    module ActionRemotePortDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionRemotePortDetails, context: context)
        type = Types::ActionRemotePortDetails.new
        type.port = params[:port]
        type.port_name = params[:port_name]
        type
      end
    end

    module ActionTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionTarget, context: context)
        type = Types::ActionTarget.new
        type.action_target_arn = params[:action_target_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module ActionTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Adjustment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Adjustment, context: context)
        type = Types::Adjustment.new
        type.metric = params[:metric]
        type.reason = params[:reason]
        type
      end
    end

    module AdjustmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Adjustment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdminAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminAccount, context: context)
        type = Types::AdminAccount.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type
      end
    end

    module AdminAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdminAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZone, context: context)
        type = Types::AvailabilityZone.new
        type.zone_name = params[:zone_name]
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AvailabilityZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsApiCallAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiCallAction, context: context)
        type = Types::AwsApiCallAction.new
        type.api = params[:api]
        type.service_name = params[:service_name]
        type.caller_type = params[:caller_type]
        type.remote_ip_details = ActionRemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type.domain_details = AwsApiCallActionDomainDetails.build(params[:domain_details], context: "#{context}[:domain_details]") unless params[:domain_details].nil?
        type.affected_resources = FieldMap.build(params[:affected_resources], context: "#{context}[:affected_resources]") unless params[:affected_resources].nil?
        type.first_seen = params[:first_seen]
        type.last_seen = params[:last_seen]
        type
      end
    end

    module AwsApiCallActionDomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiCallActionDomainDetails, context: context)
        type = Types::AwsApiCallActionDomainDetails.new
        type.domain = params[:domain]
        type
      end
    end

    module AwsApiGatewayAccessLogSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayAccessLogSettings, context: context)
        type = Types::AwsApiGatewayAccessLogSettings.new
        type.format = params[:format]
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module AwsApiGatewayCanarySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayCanarySettings, context: context)
        type = Types::AwsApiGatewayCanarySettings.new
        type.percent_traffic = params[:percent_traffic]
        type.deployment_id = params[:deployment_id]
        type.stage_variable_overrides = FieldMap.build(params[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless params[:stage_variable_overrides].nil?
        type.use_stage_cache = params[:use_stage_cache]
        type
      end
    end

    module AwsApiGatewayEndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayEndpointConfiguration, context: context)
        type = Types::AwsApiGatewayEndpointConfiguration.new
        type.types = NonEmptyStringList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type
      end
    end

    module AwsApiGatewayMethodSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayMethodSettings, context: context)
        type = Types::AwsApiGatewayMethodSettings.new
        type.metrics_enabled = params[:metrics_enabled]
        type.logging_level = params[:logging_level]
        type.data_trace_enabled = params[:data_trace_enabled]
        type.throttling_burst_limit = params[:throttling_burst_limit]
        type.throttling_rate_limit = params[:throttling_rate_limit]
        type.caching_enabled = params[:caching_enabled]
        type.cache_ttl_in_seconds = params[:cache_ttl_in_seconds]
        type.cache_data_encrypted = params[:cache_data_encrypted]
        type.require_authorization_for_cache_control = params[:require_authorization_for_cache_control]
        type.unauthorized_cache_control_header_strategy = params[:unauthorized_cache_control_header_strategy]
        type.http_method = params[:http_method]
        type.resource_path = params[:resource_path]
        type
      end
    end

    module AwsApiGatewayMethodSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsApiGatewayMethodSettings.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsApiGatewayRestApiDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayRestApiDetails, context: context)
        type = Types::AwsApiGatewayRestApiDetails.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.binary_media_types = NonEmptyStringList.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = AwsApiGatewayEndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type
      end
    end

    module AwsApiGatewayStageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayStageDetails, context: context)
        type = Types::AwsApiGatewayStageDetails.new
        type.deployment_id = params[:deployment_id]
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.method_settings = AwsApiGatewayMethodSettingsList.build(params[:method_settings], context: "#{context}[:method_settings]") unless params[:method_settings].nil?
        type.variables = FieldMap.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.access_log_settings = AwsApiGatewayAccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.canary_settings = AwsApiGatewayCanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.web_acl_arn = params[:web_acl_arn]
        type
      end
    end

    module AwsApiGatewayV2ApiDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayV2ApiDetails, context: context)
        type = Types::AwsApiGatewayV2ApiDetails.new
        type.api_endpoint = params[:api_endpoint]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.version = params[:version]
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.cors_configuration = AwsCorsConfiguration.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type
      end
    end

    module AwsApiGatewayV2RouteSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayV2RouteSettings, context: context)
        type = Types::AwsApiGatewayV2RouteSettings.new
        type.detailed_metrics_enabled = params[:detailed_metrics_enabled]
        type.logging_level = params[:logging_level]
        type.data_trace_enabled = params[:data_trace_enabled]
        type.throttling_burst_limit = params[:throttling_burst_limit]
        type.throttling_rate_limit = params[:throttling_rate_limit]
        type
      end
    end

    module AwsApiGatewayV2StageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsApiGatewayV2StageDetails, context: context)
        type = Types::AwsApiGatewayV2StageDetails.new
        type.client_certificate_id = params[:client_certificate_id]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.default_route_settings = AwsApiGatewayV2RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.last_updated_date = params[:last_updated_date]
        type.route_settings = AwsApiGatewayV2RouteSettings.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = FieldMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.access_log_settings = AwsApiGatewayAccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.auto_deploy = params[:auto_deploy]
        type.last_deployment_status_message = params[:last_deployment_status_message]
        type.api_gateway_managed = params[:api_gateway_managed]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupAvailabilityZonesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupAvailabilityZonesListDetails.new
        type.value = params[:value]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupDetails.new
        type.launch_configuration_name = params[:launch_configuration_name]
        type.load_balancer_names = StringList.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.health_check_type = params[:health_check_type]
        type.health_check_grace_period = params[:health_check_grace_period]
        type.created_time = params[:created_time]
        type.mixed_instances_policy = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.build(params[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless params[:mixed_instances_policy].nil?
        type.availability_zones = AwsAutoScalingAutoScalingGroupAvailabilityZonesList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.launch_template = AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.capacity_rebalance = params[:capacity_rebalance]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyDetails.new
        type.instances_distribution = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.build(params[:instances_distribution], context: "#{context}[:instances_distribution]") unless params[:instances_distribution].nil?
        type.launch_template = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyInstancesDistributionDetails.new
        type.on_demand_allocation_strategy = params[:on_demand_allocation_strategy]
        type.on_demand_base_capacity = params[:on_demand_base_capacity]
        type.on_demand_percentage_above_base_capacity = params[:on_demand_percentage_above_base_capacity]
        type.spot_allocation_strategy = params[:spot_allocation_strategy]
        type.spot_instance_pools = params[:spot_instance_pools]
        type.spot_max_price = params[:spot_max_price]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateDetails.new
        type.launch_template_specification = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.build(params[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless params[:launch_template_specification].nil?
        type.overrides = AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateLaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails, context: context)
        type = Types::AwsAutoScalingAutoScalingGroupMixedInstancesPolicyLaunchTemplateOverridesListDetails.new
        type.instance_type = params[:instance_type]
        type.weighted_capacity = params[:weighted_capacity]
        type
      end
    end

    module AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails, context: context)
        type = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.new
        type.device_name = params[:device_name]
        type.ebs = AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
        type.virtual_name = params[:virtual_name]
        type
      end
    end

    module AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails, context: context)
        type = Types::AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails.new
        type.delete_on_termination = params[:delete_on_termination]
        type.encrypted = params[:encrypted]
        type.iops = params[:iops]
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type
      end
    end

    module AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsAutoScalingLaunchConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingLaunchConfigurationDetails, context: context)
        type = Types::AwsAutoScalingLaunchConfigurationDetails.new
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.block_device_mappings = AwsAutoScalingLaunchConfigurationBlockDeviceMappingsList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.classic_link_vpc_id = params[:classic_link_vpc_id]
        type.classic_link_vpc_security_groups = NonEmptyStringList.build(params[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless params[:classic_link_vpc_security_groups].nil?
        type.created_time = params[:created_time]
        type.ebs_optimized = params[:ebs_optimized]
        type.iam_instance_profile = params[:iam_instance_profile]
        type.image_id = params[:image_id]
        type.instance_monitoring = AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.build(params[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless params[:instance_monitoring].nil?
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.key_name = params[:key_name]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.placement_tenancy = params[:placement_tenancy]
        type.ramdisk_id = params[:ramdisk_id]
        type.security_groups = NonEmptyStringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.spot_price = params[:spot_price]
        type.user_data = params[:user_data]
        type.metadata_options = AwsAutoScalingLaunchConfigurationMetadataOptions.build(params[:metadata_options], context: "#{context}[:metadata_options]") unless params[:metadata_options].nil?
        type
      end
    end

    module AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails, context: context)
        type = Types::AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsAutoScalingLaunchConfigurationMetadataOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsAutoScalingLaunchConfigurationMetadataOptions, context: context)
        type = Types::AwsAutoScalingLaunchConfigurationMetadataOptions.new
        type.http_endpoint = params[:http_endpoint]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type.http_tokens = params[:http_tokens]
        type
      end
    end

    module AwsCertificateManagerCertificateDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateDetails, context: context)
        type = Types::AwsCertificateManagerCertificateDetails.new
        type.certificate_authority_arn = params[:certificate_authority_arn]
        type.created_at = params[:created_at]
        type.domain_name = params[:domain_name]
        type.domain_validation_options = AwsCertificateManagerCertificateDomainValidationOptions.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type.extended_key_usages = AwsCertificateManagerCertificateExtendedKeyUsages.build(params[:extended_key_usages], context: "#{context}[:extended_key_usages]") unless params[:extended_key_usages].nil?
        type.failure_reason = params[:failure_reason]
        type.imported_at = params[:imported_at]
        type.in_use_by = StringList.build(params[:in_use_by], context: "#{context}[:in_use_by]") unless params[:in_use_by].nil?
        type.issued_at = params[:issued_at]
        type.issuer = params[:issuer]
        type.key_algorithm = params[:key_algorithm]
        type.key_usages = AwsCertificateManagerCertificateKeyUsages.build(params[:key_usages], context: "#{context}[:key_usages]") unless params[:key_usages].nil?
        type.not_after = params[:not_after]
        type.not_before = params[:not_before]
        type.options = AwsCertificateManagerCertificateOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.renewal_eligibility = params[:renewal_eligibility]
        type.renewal_summary = AwsCertificateManagerCertificateRenewalSummary.build(params[:renewal_summary], context: "#{context}[:renewal_summary]") unless params[:renewal_summary].nil?
        type.serial = params[:serial]
        type.signature_algorithm = params[:signature_algorithm]
        type.status = params[:status]
        type.subject = params[:subject]
        type.subject_alternative_names = StringList.build(params[:subject_alternative_names], context: "#{context}[:subject_alternative_names]") unless params[:subject_alternative_names].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsCertificateManagerCertificateDomainValidationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateDomainValidationOption, context: context)
        type = Types::AwsCertificateManagerCertificateDomainValidationOption.new
        type.domain_name = params[:domain_name]
        type.resource_record = AwsCertificateManagerCertificateResourceRecord.build(params[:resource_record], context: "#{context}[:resource_record]") unless params[:resource_record].nil?
        type.validation_domain = params[:validation_domain]
        type.validation_emails = StringList.build(params[:validation_emails], context: "#{context}[:validation_emails]") unless params[:validation_emails].nil?
        type.validation_method = params[:validation_method]
        type.validation_status = params[:validation_status]
        type
      end
    end

    module AwsCertificateManagerCertificateDomainValidationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCertificateManagerCertificateDomainValidationOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCertificateManagerCertificateExtendedKeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateExtendedKeyUsage, context: context)
        type = Types::AwsCertificateManagerCertificateExtendedKeyUsage.new
        type.name = params[:name]
        type.o_id = params[:o_id]
        type
      end
    end

    module AwsCertificateManagerCertificateExtendedKeyUsages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCertificateManagerCertificateExtendedKeyUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCertificateManagerCertificateKeyUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateKeyUsage, context: context)
        type = Types::AwsCertificateManagerCertificateKeyUsage.new
        type.name = params[:name]
        type
      end
    end

    module AwsCertificateManagerCertificateKeyUsages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCertificateManagerCertificateKeyUsage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCertificateManagerCertificateOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateOptions, context: context)
        type = Types::AwsCertificateManagerCertificateOptions.new
        type.certificate_transparency_logging_preference = params[:certificate_transparency_logging_preference]
        type
      end
    end

    module AwsCertificateManagerCertificateRenewalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateRenewalSummary, context: context)
        type = Types::AwsCertificateManagerCertificateRenewalSummary.new
        type.domain_validation_options = AwsCertificateManagerCertificateDomainValidationOptions.build(params[:domain_validation_options], context: "#{context}[:domain_validation_options]") unless params[:domain_validation_options].nil?
        type.renewal_status = params[:renewal_status]
        type.renewal_status_reason = params[:renewal_status_reason]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module AwsCertificateManagerCertificateResourceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCertificateManagerCertificateResourceRecord, context: context)
        type = Types::AwsCertificateManagerCertificateResourceRecord.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module AwsCloudFrontDistributionCacheBehavior
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionCacheBehavior, context: context)
        type = Types::AwsCloudFrontDistributionCacheBehavior.new
        type.viewer_protocol_policy = params[:viewer_protocol_policy]
        type
      end
    end

    module AwsCloudFrontDistributionCacheBehaviors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionCacheBehaviors, context: context)
        type = Types::AwsCloudFrontDistributionCacheBehaviors.new
        type.items = AwsCloudFrontDistributionCacheBehaviorsItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module AwsCloudFrontDistributionCacheBehaviorsItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCloudFrontDistributionCacheBehavior.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCloudFrontDistributionDefaultCacheBehavior
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionDefaultCacheBehavior, context: context)
        type = Types::AwsCloudFrontDistributionDefaultCacheBehavior.new
        type.viewer_protocol_policy = params[:viewer_protocol_policy]
        type
      end
    end

    module AwsCloudFrontDistributionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionDetails, context: context)
        type = Types::AwsCloudFrontDistributionDetails.new
        type.cache_behaviors = AwsCloudFrontDistributionCacheBehaviors.build(params[:cache_behaviors], context: "#{context}[:cache_behaviors]") unless params[:cache_behaviors].nil?
        type.default_cache_behavior = AwsCloudFrontDistributionDefaultCacheBehavior.build(params[:default_cache_behavior], context: "#{context}[:default_cache_behavior]") unless params[:default_cache_behavior].nil?
        type.default_root_object = params[:default_root_object]
        type.domain_name = params[:domain_name]
        type.e_tag = params[:e_tag]
        type.last_modified_time = params[:last_modified_time]
        type.logging = AwsCloudFrontDistributionLogging.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type.origins = AwsCloudFrontDistributionOrigins.build(params[:origins], context: "#{context}[:origins]") unless params[:origins].nil?
        type.origin_groups = AwsCloudFrontDistributionOriginGroups.build(params[:origin_groups], context: "#{context}[:origin_groups]") unless params[:origin_groups].nil?
        type.viewer_certificate = AwsCloudFrontDistributionViewerCertificate.build(params[:viewer_certificate], context: "#{context}[:viewer_certificate]") unless params[:viewer_certificate].nil?
        type.status = params[:status]
        type.web_acl_id = params[:web_acl_id]
        type
      end
    end

    module AwsCloudFrontDistributionLogging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionLogging, context: context)
        type = Types::AwsCloudFrontDistributionLogging.new
        type.bucket = params[:bucket]
        type.enabled = params[:enabled]
        type.include_cookies = params[:include_cookies]
        type.prefix = params[:prefix]
        type
      end
    end

    module AwsCloudFrontDistributionOriginGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginGroup, context: context)
        type = Types::AwsCloudFrontDistributionOriginGroup.new
        type.failover_criteria = AwsCloudFrontDistributionOriginGroupFailover.build(params[:failover_criteria], context: "#{context}[:failover_criteria]") unless params[:failover_criteria].nil?
        type
      end
    end

    module AwsCloudFrontDistributionOriginGroupFailover
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginGroupFailover, context: context)
        type = Types::AwsCloudFrontDistributionOriginGroupFailover.new
        type.status_codes = AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.build(params[:status_codes], context: "#{context}[:status_codes]") unless params[:status_codes].nil?
        type
      end
    end

    module AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes, context: context)
        type = Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes.new
        type.items = AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.quantity = params[:quantity]
        type
      end
    end

    module AwsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AwsCloudFrontDistributionOriginGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginGroups, context: context)
        type = Types::AwsCloudFrontDistributionOriginGroups.new
        type.items = AwsCloudFrontDistributionOriginGroupsItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module AwsCloudFrontDistributionOriginGroupsItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCloudFrontDistributionOriginGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCloudFrontDistributionOriginItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginItem, context: context)
        type = Types::AwsCloudFrontDistributionOriginItem.new
        type.domain_name = params[:domain_name]
        type.id = params[:id]
        type.origin_path = params[:origin_path]
        type.s3_origin_config = AwsCloudFrontDistributionOriginS3OriginConfig.build(params[:s3_origin_config], context: "#{context}[:s3_origin_config]") unless params[:s3_origin_config].nil?
        type
      end
    end

    module AwsCloudFrontDistributionOriginItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCloudFrontDistributionOriginItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCloudFrontDistributionOriginS3OriginConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOriginS3OriginConfig, context: context)
        type = Types::AwsCloudFrontDistributionOriginS3OriginConfig.new
        type.origin_access_identity = params[:origin_access_identity]
        type
      end
    end

    module AwsCloudFrontDistributionOrigins
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionOrigins, context: context)
        type = Types::AwsCloudFrontDistributionOrigins.new
        type.items = AwsCloudFrontDistributionOriginItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module AwsCloudFrontDistributionViewerCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudFrontDistributionViewerCertificate, context: context)
        type = Types::AwsCloudFrontDistributionViewerCertificate.new
        type.acm_certificate_arn = params[:acm_certificate_arn]
        type.certificate = params[:certificate]
        type.certificate_source = params[:certificate_source]
        type.cloud_front_default_certificate = params[:cloud_front_default_certificate]
        type.iam_certificate_id = params[:iam_certificate_id]
        type.minimum_protocol_version = params[:minimum_protocol_version]
        type.ssl_support_method = params[:ssl_support_method]
        type
      end
    end

    module AwsCloudTrailTrailDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCloudTrailTrailDetails, context: context)
        type = Types::AwsCloudTrailTrailDetails.new
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.has_custom_event_selectors = params[:has_custom_event_selectors]
        type.home_region = params[:home_region]
        type.include_global_service_events = params[:include_global_service_events]
        type.is_multi_region_trail = params[:is_multi_region_trail]
        type.is_organization_trail = params[:is_organization_trail]
        type.kms_key_id = params[:kms_key_id]
        type.log_file_validation_enabled = params[:log_file_validation_enabled]
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_topic_name = params[:sns_topic_name]
        type.trail_arn = params[:trail_arn]
        type
      end
    end

    module AwsCodeBuildProjectArtifactsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectArtifactsDetails, context: context)
        type = Types::AwsCodeBuildProjectArtifactsDetails.new
        type.artifact_identifier = params[:artifact_identifier]
        type.encryption_disabled = params[:encryption_disabled]
        type.location = params[:location]
        type.name = params[:name]
        type.namespace_type = params[:namespace_type]
        type.override_artifact_name = params[:override_artifact_name]
        type.packaging = params[:packaging]
        type.path = params[:path]
        type.type = params[:type]
        type
      end
    end

    module AwsCodeBuildProjectArtifactsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCodeBuildProjectArtifactsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCodeBuildProjectDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectDetails, context: context)
        type = Types::AwsCodeBuildProjectDetails.new
        type.encryption_key = params[:encryption_key]
        type.artifacts = AwsCodeBuildProjectArtifactsList.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.environment = AwsCodeBuildProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.name = params[:name]
        type.source = AwsCodeBuildProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.service_role = params[:service_role]
        type.logs_config = AwsCodeBuildProjectLogsConfigDetails.build(params[:logs_config], context: "#{context}[:logs_config]") unless params[:logs_config].nil?
        type.vpc_config = AwsCodeBuildProjectVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.secondary_artifacts = AwsCodeBuildProjectArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type
      end
    end

    module AwsCodeBuildProjectEnvironment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectEnvironment, context: context)
        type = Types::AwsCodeBuildProjectEnvironment.new
        type.certificate = params[:certificate]
        type.environment_variables = AwsCodeBuildProjectEnvironmentEnvironmentVariablesList.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.privileged_mode = params[:privileged_mode]
        type.image_pull_credentials_type = params[:image_pull_credentials_type]
        type.registry_credential = AwsCodeBuildProjectEnvironmentRegistryCredential.build(params[:registry_credential], context: "#{context}[:registry_credential]") unless params[:registry_credential].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails, context: context)
        type = Types::AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module AwsCodeBuildProjectEnvironmentEnvironmentVariablesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsCodeBuildProjectEnvironmentRegistryCredential
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectEnvironmentRegistryCredential, context: context)
        type = Types::AwsCodeBuildProjectEnvironmentRegistryCredential.new
        type.credential = params[:credential]
        type.credential_provider = params[:credential_provider]
        type
      end
    end

    module AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails, context: context)
        type = Types::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.new
        type.group_name = params[:group_name]
        type.status = params[:status]
        type.stream_name = params[:stream_name]
        type
      end
    end

    module AwsCodeBuildProjectLogsConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectLogsConfigDetails, context: context)
        type = Types::AwsCodeBuildProjectLogsConfigDetails.new
        type.cloud_watch_logs = AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.s3_logs = AwsCodeBuildProjectLogsConfigS3LogsDetails.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type
      end
    end

    module AwsCodeBuildProjectLogsConfigS3LogsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectLogsConfigS3LogsDetails, context: context)
        type = Types::AwsCodeBuildProjectLogsConfigS3LogsDetails.new
        type.encryption_disabled = params[:encryption_disabled]
        type.location = params[:location]
        type.status = params[:status]
        type
      end
    end

    module AwsCodeBuildProjectSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectSource, context: context)
        type = Types::AwsCodeBuildProjectSource.new
        type.type = params[:type]
        type.location = params[:location]
        type.git_clone_depth = params[:git_clone_depth]
        type.insecure_ssl = params[:insecure_ssl]
        type
      end
    end

    module AwsCodeBuildProjectVpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCodeBuildProjectVpcConfig, context: context)
        type = Types::AwsCodeBuildProjectVpcConfig.new
        type.vpc_id = params[:vpc_id]
        type.subnets = NonEmptyStringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_group_ids = NonEmptyStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module AwsCorsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCorsConfiguration, context: context)
        type = Types::AwsCorsConfiguration.new
        type.allow_origins = NonEmptyStringList.build(params[:allow_origins], context: "#{context}[:allow_origins]") unless params[:allow_origins].nil?
        type.allow_credentials = params[:allow_credentials]
        type.expose_headers = NonEmptyStringList.build(params[:expose_headers], context: "#{context}[:expose_headers]") unless params[:expose_headers].nil?
        type.max_age = params[:max_age]
        type.allow_methods = NonEmptyStringList.build(params[:allow_methods], context: "#{context}[:allow_methods]") unless params[:allow_methods].nil?
        type.allow_headers = NonEmptyStringList.build(params[:allow_headers], context: "#{context}[:allow_headers]") unless params[:allow_headers].nil?
        type
      end
    end

    module AwsDynamoDbTableAttributeDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableAttributeDefinition, context: context)
        type = Types::AwsDynamoDbTableAttributeDefinition.new
        type.attribute_name = params[:attribute_name]
        type.attribute_type = params[:attribute_type]
        type
      end
    end

    module AwsDynamoDbTableAttributeDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableAttributeDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableBillingModeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableBillingModeSummary, context: context)
        type = Types::AwsDynamoDbTableBillingModeSummary.new
        type.billing_mode = params[:billing_mode]
        type.last_update_to_pay_per_request_date_time = params[:last_update_to_pay_per_request_date_time]
        type
      end
    end

    module AwsDynamoDbTableDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableDetails, context: context)
        type = Types::AwsDynamoDbTableDetails.new
        type.attribute_definitions = AwsDynamoDbTableAttributeDefinitionList.build(params[:attribute_definitions], context: "#{context}[:attribute_definitions]") unless params[:attribute_definitions].nil?
        type.billing_mode_summary = AwsDynamoDbTableBillingModeSummary.build(params[:billing_mode_summary], context: "#{context}[:billing_mode_summary]") unless params[:billing_mode_summary].nil?
        type.creation_date_time = params[:creation_date_time]
        type.global_secondary_indexes = AwsDynamoDbTableGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.global_table_version = params[:global_table_version]
        type.item_count = params[:item_count]
        type.key_schema = AwsDynamoDbTableKeySchemaList.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.latest_stream_arn = params[:latest_stream_arn]
        type.latest_stream_label = params[:latest_stream_label]
        type.local_secondary_indexes = AwsDynamoDbTableLocalSecondaryIndexList.build(params[:local_secondary_indexes], context: "#{context}[:local_secondary_indexes]") unless params[:local_secondary_indexes].nil?
        type.provisioned_throughput = AwsDynamoDbTableProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type.replicas = AwsDynamoDbTableReplicaList.build(params[:replicas], context: "#{context}[:replicas]") unless params[:replicas].nil?
        type.restore_summary = AwsDynamoDbTableRestoreSummary.build(params[:restore_summary], context: "#{context}[:restore_summary]") unless params[:restore_summary].nil?
        type.sse_description = AwsDynamoDbTableSseDescription.build(params[:sse_description], context: "#{context}[:sse_description]") unless params[:sse_description].nil?
        type.stream_specification = AwsDynamoDbTableStreamSpecification.build(params[:stream_specification], context: "#{context}[:stream_specification]") unless params[:stream_specification].nil?
        type.table_id = params[:table_id]
        type.table_name = params[:table_name]
        type.table_size_bytes = params[:table_size_bytes]
        type.table_status = params[:table_status]
        type
      end
    end

    module AwsDynamoDbTableGlobalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableGlobalSecondaryIndex, context: context)
        type = Types::AwsDynamoDbTableGlobalSecondaryIndex.new
        type.backfilling = params[:backfilling]
        type.index_arn = params[:index_arn]
        type.index_name = params[:index_name]
        type.index_size_bytes = params[:index_size_bytes]
        type.index_status = params[:index_status]
        type.item_count = params[:item_count]
        type.key_schema = AwsDynamoDbTableKeySchemaList.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = AwsDynamoDbTableProjection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type.provisioned_throughput = AwsDynamoDbTableProvisionedThroughput.build(params[:provisioned_throughput], context: "#{context}[:provisioned_throughput]") unless params[:provisioned_throughput].nil?
        type
      end
    end

    module AwsDynamoDbTableGlobalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableGlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableKeySchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableKeySchema, context: context)
        type = Types::AwsDynamoDbTableKeySchema.new
        type.attribute_name = params[:attribute_name]
        type.key_type = params[:key_type]
        type
      end
    end

    module AwsDynamoDbTableKeySchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableKeySchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableLocalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableLocalSecondaryIndex, context: context)
        type = Types::AwsDynamoDbTableLocalSecondaryIndex.new
        type.index_arn = params[:index_arn]
        type.index_name = params[:index_name]
        type.key_schema = AwsDynamoDbTableKeySchemaList.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.projection = AwsDynamoDbTableProjection.build(params[:projection], context: "#{context}[:projection]") unless params[:projection].nil?
        type
      end
    end

    module AwsDynamoDbTableLocalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableLocalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableProjection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableProjection, context: context)
        type = Types::AwsDynamoDbTableProjection.new
        type.non_key_attributes = StringList.build(params[:non_key_attributes], context: "#{context}[:non_key_attributes]") unless params[:non_key_attributes].nil?
        type.projection_type = params[:projection_type]
        type
      end
    end

    module AwsDynamoDbTableProvisionedThroughput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableProvisionedThroughput, context: context)
        type = Types::AwsDynamoDbTableProvisionedThroughput.new
        type.last_decrease_date_time = params[:last_decrease_date_time]
        type.last_increase_date_time = params[:last_increase_date_time]
        type.number_of_decreases_today = params[:number_of_decreases_today]
        type.read_capacity_units = params[:read_capacity_units]
        type.write_capacity_units = params[:write_capacity_units]
        type
      end
    end

    module AwsDynamoDbTableProvisionedThroughputOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableProvisionedThroughputOverride, context: context)
        type = Types::AwsDynamoDbTableProvisionedThroughputOverride.new
        type.read_capacity_units = params[:read_capacity_units]
        type
      end
    end

    module AwsDynamoDbTableReplica
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableReplica, context: context)
        type = Types::AwsDynamoDbTableReplica.new
        type.global_secondary_indexes = AwsDynamoDbTableReplicaGlobalSecondaryIndexList.build(params[:global_secondary_indexes], context: "#{context}[:global_secondary_indexes]") unless params[:global_secondary_indexes].nil?
        type.kms_master_key_id = params[:kms_master_key_id]
        type.provisioned_throughput_override = AwsDynamoDbTableProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type.region_name = params[:region_name]
        type.replica_status = params[:replica_status]
        type.replica_status_description = params[:replica_status_description]
        type
      end
    end

    module AwsDynamoDbTableReplicaGlobalSecondaryIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex, context: context)
        type = Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex.new
        type.index_name = params[:index_name]
        type.provisioned_throughput_override = AwsDynamoDbTableProvisionedThroughputOverride.build(params[:provisioned_throughput_override], context: "#{context}[:provisioned_throughput_override]") unless params[:provisioned_throughput_override].nil?
        type
      end
    end

    module AwsDynamoDbTableReplicaGlobalSecondaryIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableReplicaGlobalSecondaryIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableReplicaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsDynamoDbTableReplica.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsDynamoDbTableRestoreSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableRestoreSummary, context: context)
        type = Types::AwsDynamoDbTableRestoreSummary.new
        type.source_backup_arn = params[:source_backup_arn]
        type.source_table_arn = params[:source_table_arn]
        type.restore_date_time = params[:restore_date_time]
        type.restore_in_progress = params[:restore_in_progress]
        type
      end
    end

    module AwsDynamoDbTableSseDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableSseDescription, context: context)
        type = Types::AwsDynamoDbTableSseDescription.new
        type.inaccessible_encryption_date_time = params[:inaccessible_encryption_date_time]
        type.status = params[:status]
        type.sse_type = params[:sse_type]
        type.kms_master_key_arn = params[:kms_master_key_arn]
        type
      end
    end

    module AwsDynamoDbTableStreamSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsDynamoDbTableStreamSpecification, context: context)
        type = Types::AwsDynamoDbTableStreamSpecification.new
        type.stream_enabled = params[:stream_enabled]
        type.stream_view_type = params[:stream_view_type]
        type
      end
    end

    module AwsEc2EipDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2EipDetails, context: context)
        type = Types::AwsEc2EipDetails.new
        type.instance_id = params[:instance_id]
        type.public_ip = params[:public_ip]
        type.allocation_id = params[:allocation_id]
        type.association_id = params[:association_id]
        type.domain = params[:domain]
        type.public_ipv4_pool = params[:public_ipv4_pool]
        type.network_border_group = params[:network_border_group]
        type.network_interface_id = params[:network_interface_id]
        type.network_interface_owner_id = params[:network_interface_owner_id]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module AwsEc2InstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2InstanceDetails, context: context)
        type = Types::AwsEc2InstanceDetails.new
        type.type = params[:type]
        type.image_id = params[:image_id]
        type.ip_v4_addresses = StringList.build(params[:ip_v4_addresses], context: "#{context}[:ip_v4_addresses]") unless params[:ip_v4_addresses].nil?
        type.ip_v6_addresses = StringList.build(params[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless params[:ip_v6_addresses].nil?
        type.key_name = params[:key_name]
        type.iam_instance_profile_arn = params[:iam_instance_profile_arn]
        type.vpc_id = params[:vpc_id]
        type.subnet_id = params[:subnet_id]
        type.launched_at = params[:launched_at]
        type.network_interfaces = AwsEc2InstanceNetworkInterfacesList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type
      end
    end

    module AwsEc2InstanceNetworkInterfacesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2InstanceNetworkInterfacesDetails, context: context)
        type = Types::AwsEc2InstanceNetworkInterfacesDetails.new
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module AwsEc2InstanceNetworkInterfacesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2InstanceNetworkInterfacesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2NetworkAclAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkAclAssociation, context: context)
        type = Types::AwsEc2NetworkAclAssociation.new
        type.network_acl_association_id = params[:network_acl_association_id]
        type.network_acl_id = params[:network_acl_id]
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module AwsEc2NetworkAclAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkAclAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2NetworkAclDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkAclDetails, context: context)
        type = Types::AwsEc2NetworkAclDetails.new
        type.is_default = params[:is_default]
        type.network_acl_id = params[:network_acl_id]
        type.owner_id = params[:owner_id]
        type.vpc_id = params[:vpc_id]
        type.associations = AwsEc2NetworkAclAssociationList.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type.entries = AwsEc2NetworkAclEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module AwsEc2NetworkAclEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkAclEntry, context: context)
        type = Types::AwsEc2NetworkAclEntry.new
        type.cidr_block = params[:cidr_block]
        type.egress = params[:egress]
        type.icmp_type_code = IcmpTypeCode.build(params[:icmp_type_code], context: "#{context}[:icmp_type_code]") unless params[:icmp_type_code].nil?
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.port_range = PortRangeFromTo.build(params[:port_range], context: "#{context}[:port_range]") unless params[:port_range].nil?
        type.protocol = params[:protocol]
        type.rule_action = params[:rule_action]
        type.rule_number = params[:rule_number]
        type
      end
    end

    module AwsEc2NetworkAclEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkAclEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2NetworkInterfaceAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfaceAttachment, context: context)
        type = Types::AwsEc2NetworkInterfaceAttachment.new
        type.attach_time = params[:attach_time]
        type.attachment_id = params[:attachment_id]
        type.delete_on_termination = params[:delete_on_termination]
        type.device_index = params[:device_index]
        type.instance_id = params[:instance_id]
        type.instance_owner_id = params[:instance_owner_id]
        type.status = params[:status]
        type
      end
    end

    module AwsEc2NetworkInterfaceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfaceDetails, context: context)
        type = Types::AwsEc2NetworkInterfaceDetails.new
        type.attachment = AwsEc2NetworkInterfaceAttachment.build(params[:attachment], context: "#{context}[:attachment]") unless params[:attachment].nil?
        type.network_interface_id = params[:network_interface_id]
        type.security_groups = AwsEc2NetworkInterfaceSecurityGroupList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.source_dest_check = params[:source_dest_check]
        type.ip_v6_addresses = AwsEc2NetworkInterfaceIpV6AddressList.build(params[:ip_v6_addresses], context: "#{context}[:ip_v6_addresses]") unless params[:ip_v6_addresses].nil?
        type.private_ip_addresses = AwsEc2NetworkInterfacePrivateIpAddressList.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.public_dns_name = params[:public_dns_name]
        type.public_ip = params[:public_ip]
        type
      end
    end

    module AwsEc2NetworkInterfaceIpV6AddressDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfaceIpV6AddressDetail, context: context)
        type = Types::AwsEc2NetworkInterfaceIpV6AddressDetail.new
        type.ip_v6_address = params[:ip_v6_address]
        type
      end
    end

    module AwsEc2NetworkInterfaceIpV6AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkInterfaceIpV6AddressDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2NetworkInterfacePrivateIpAddressDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfacePrivateIpAddressDetail, context: context)
        type = Types::AwsEc2NetworkInterfacePrivateIpAddressDetail.new
        type.private_ip_address = params[:private_ip_address]
        type.private_dns_name = params[:private_dns_name]
        type
      end
    end

    module AwsEc2NetworkInterfacePrivateIpAddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkInterfacePrivateIpAddressDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2NetworkInterfaceSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2NetworkInterfaceSecurityGroup, context: context)
        type = Types::AwsEc2NetworkInterfaceSecurityGroup.new
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type
      end
    end

    module AwsEc2NetworkInterfaceSecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2NetworkInterfaceSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SecurityGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupDetails, context: context)
        type = Types::AwsEc2SecurityGroupDetails.new
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type.owner_id = params[:owner_id]
        type.vpc_id = params[:vpc_id]
        type.ip_permissions = AwsEc2SecurityGroupIpPermissionList.build(params[:ip_permissions], context: "#{context}[:ip_permissions]") unless params[:ip_permissions].nil?
        type.ip_permissions_egress = AwsEc2SecurityGroupIpPermissionList.build(params[:ip_permissions_egress], context: "#{context}[:ip_permissions_egress]") unless params[:ip_permissions_egress].nil?
        type
      end
    end

    module AwsEc2SecurityGroupIpPermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupIpPermission, context: context)
        type = Types::AwsEc2SecurityGroupIpPermission.new
        type.ip_protocol = params[:ip_protocol]
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.user_id_group_pairs = AwsEc2SecurityGroupUserIdGroupPairList.build(params[:user_id_group_pairs], context: "#{context}[:user_id_group_pairs]") unless params[:user_id_group_pairs].nil?
        type.ip_ranges = AwsEc2SecurityGroupIpRangeList.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.ipv6_ranges = AwsEc2SecurityGroupIpv6RangeList.build(params[:ipv6_ranges], context: "#{context}[:ipv6_ranges]") unless params[:ipv6_ranges].nil?
        type.prefix_list_ids = AwsEc2SecurityGroupPrefixListIdList.build(params[:prefix_list_ids], context: "#{context}[:prefix_list_ids]") unless params[:prefix_list_ids].nil?
        type
      end
    end

    module AwsEc2SecurityGroupIpPermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2SecurityGroupIpPermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SecurityGroupIpRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupIpRange, context: context)
        type = Types::AwsEc2SecurityGroupIpRange.new
        type.cidr_ip = params[:cidr_ip]
        type
      end
    end

    module AwsEc2SecurityGroupIpRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2SecurityGroupIpRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SecurityGroupIpv6Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupIpv6Range, context: context)
        type = Types::AwsEc2SecurityGroupIpv6Range.new
        type.cidr_ipv6 = params[:cidr_ipv6]
        type
      end
    end

    module AwsEc2SecurityGroupIpv6RangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2SecurityGroupIpv6Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SecurityGroupPrefixListId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupPrefixListId, context: context)
        type = Types::AwsEc2SecurityGroupPrefixListId.new
        type.prefix_list_id = params[:prefix_list_id]
        type
      end
    end

    module AwsEc2SecurityGroupPrefixListIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2SecurityGroupPrefixListId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SecurityGroupUserIdGroupPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SecurityGroupUserIdGroupPair, context: context)
        type = Types::AwsEc2SecurityGroupUserIdGroupPair.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.peering_status = params[:peering_status]
        type.user_id = params[:user_id]
        type.vpc_id = params[:vpc_id]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module AwsEc2SecurityGroupUserIdGroupPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2SecurityGroupUserIdGroupPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2SubnetDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2SubnetDetails, context: context)
        type = Types::AwsEc2SubnetDetails.new
        type.assign_ipv6_address_on_creation = params[:assign_ipv6_address_on_creation]
        type.availability_zone = params[:availability_zone]
        type.availability_zone_id = params[:availability_zone_id]
        type.available_ip_address_count = params[:available_ip_address_count]
        type.cidr_block = params[:cidr_block]
        type.default_for_az = params[:default_for_az]
        type.map_public_ip_on_launch = params[:map_public_ip_on_launch]
        type.owner_id = params[:owner_id]
        type.state = params[:state]
        type.subnet_arn = params[:subnet_arn]
        type.subnet_id = params[:subnet_id]
        type.vpc_id = params[:vpc_id]
        type.ipv6_cidr_block_association_set = Ipv6CidrBlockAssociationList.build(params[:ipv6_cidr_block_association_set], context: "#{context}[:ipv6_cidr_block_association_set]") unless params[:ipv6_cidr_block_association_set].nil?
        type
      end
    end

    module AwsEc2VolumeAttachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VolumeAttachment, context: context)
        type = Types::AwsEc2VolumeAttachment.new
        type.attach_time = params[:attach_time]
        type.delete_on_termination = params[:delete_on_termination]
        type.instance_id = params[:instance_id]
        type.status = params[:status]
        type
      end
    end

    module AwsEc2VolumeAttachmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2VolumeAttachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2VolumeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VolumeDetails, context: context)
        type = Types::AwsEc2VolumeDetails.new
        type.create_time = params[:create_time]
        type.encrypted = params[:encrypted]
        type.size = params[:size]
        type.snapshot_id = params[:snapshot_id]
        type.status = params[:status]
        type.kms_key_id = params[:kms_key_id]
        type.attachments = AwsEc2VolumeAttachmentList.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type
      end
    end

    module AwsEc2VpcDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpcDetails, context: context)
        type = Types::AwsEc2VpcDetails.new
        type.cidr_block_association_set = CidrBlockAssociationList.build(params[:cidr_block_association_set], context: "#{context}[:cidr_block_association_set]") unless params[:cidr_block_association_set].nil?
        type.ipv6_cidr_block_association_set = Ipv6CidrBlockAssociationList.build(params[:ipv6_cidr_block_association_set], context: "#{context}[:ipv6_cidr_block_association_set]") unless params[:ipv6_cidr_block_association_set].nil?
        type.dhcp_options_id = params[:dhcp_options_id]
        type.state = params[:state]
        type
      end
    end

    module AwsEc2VpcEndpointServiceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpcEndpointServiceDetails, context: context)
        type = Types::AwsEc2VpcEndpointServiceDetails.new
        type.acceptance_required = params[:acceptance_required]
        type.availability_zones = NonEmptyStringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.base_endpoint_dns_names = NonEmptyStringList.build(params[:base_endpoint_dns_names], context: "#{context}[:base_endpoint_dns_names]") unless params[:base_endpoint_dns_names].nil?
        type.manages_vpc_endpoints = params[:manages_vpc_endpoints]
        type.gateway_load_balancer_arns = NonEmptyStringList.build(params[:gateway_load_balancer_arns], context: "#{context}[:gateway_load_balancer_arns]") unless params[:gateway_load_balancer_arns].nil?
        type.network_load_balancer_arns = NonEmptyStringList.build(params[:network_load_balancer_arns], context: "#{context}[:network_load_balancer_arns]") unless params[:network_load_balancer_arns].nil?
        type.private_dns_name = params[:private_dns_name]
        type.service_id = params[:service_id]
        type.service_name = params[:service_name]
        type.service_state = params[:service_state]
        type.service_type = AwsEc2VpcEndpointServiceServiceTypeList.build(params[:service_type], context: "#{context}[:service_type]") unless params[:service_type].nil?
        type
      end
    end

    module AwsEc2VpcEndpointServiceServiceTypeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpcEndpointServiceServiceTypeDetails, context: context)
        type = Types::AwsEc2VpcEndpointServiceServiceTypeDetails.new
        type.service_type = params[:service_type]
        type
      end
    end

    module AwsEc2VpcEndpointServiceServiceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2VpcEndpointServiceServiceTypeDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2VpnConnectionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpnConnectionDetails, context: context)
        type = Types::AwsEc2VpnConnectionDetails.new
        type.vpn_connection_id = params[:vpn_connection_id]
        type.state = params[:state]
        type.customer_gateway_id = params[:customer_gateway_id]
        type.customer_gateway_configuration = params[:customer_gateway_configuration]
        type.type = params[:type]
        type.vpn_gateway_id = params[:vpn_gateway_id]
        type.category = params[:category]
        type.vgw_telemetry = AwsEc2VpnConnectionVgwTelemetryList.build(params[:vgw_telemetry], context: "#{context}[:vgw_telemetry]") unless params[:vgw_telemetry].nil?
        type.options = AwsEc2VpnConnectionOptionsDetails.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.routes = AwsEc2VpnConnectionRoutesList.build(params[:routes], context: "#{context}[:routes]") unless params[:routes].nil?
        type.transit_gateway_id = params[:transit_gateway_id]
        type
      end
    end

    module AwsEc2VpnConnectionOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpnConnectionOptionsDetails, context: context)
        type = Types::AwsEc2VpnConnectionOptionsDetails.new
        type.static_routes_only = params[:static_routes_only]
        type.tunnel_options = AwsEc2VpnConnectionOptionsTunnelOptionsList.build(params[:tunnel_options], context: "#{context}[:tunnel_options]") unless params[:tunnel_options].nil?
        type
      end
    end

    module AwsEc2VpnConnectionOptionsTunnelOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails, context: context)
        type = Types::AwsEc2VpnConnectionOptionsTunnelOptionsDetails.new
        type.dpd_timeout_seconds = params[:dpd_timeout_seconds]
        type.ike_versions = NonEmptyStringList.build(params[:ike_versions], context: "#{context}[:ike_versions]") unless params[:ike_versions].nil?
        type.outside_ip_address = params[:outside_ip_address]
        type.phase1_dh_group_numbers = IntegerList.build(params[:phase1_dh_group_numbers], context: "#{context}[:phase1_dh_group_numbers]") unless params[:phase1_dh_group_numbers].nil?
        type.phase1_encryption_algorithms = NonEmptyStringList.build(params[:phase1_encryption_algorithms], context: "#{context}[:phase1_encryption_algorithms]") unless params[:phase1_encryption_algorithms].nil?
        type.phase1_integrity_algorithms = NonEmptyStringList.build(params[:phase1_integrity_algorithms], context: "#{context}[:phase1_integrity_algorithms]") unless params[:phase1_integrity_algorithms].nil?
        type.phase1_lifetime_seconds = params[:phase1_lifetime_seconds]
        type.phase2_dh_group_numbers = IntegerList.build(params[:phase2_dh_group_numbers], context: "#{context}[:phase2_dh_group_numbers]") unless params[:phase2_dh_group_numbers].nil?
        type.phase2_encryption_algorithms = NonEmptyStringList.build(params[:phase2_encryption_algorithms], context: "#{context}[:phase2_encryption_algorithms]") unless params[:phase2_encryption_algorithms].nil?
        type.phase2_integrity_algorithms = NonEmptyStringList.build(params[:phase2_integrity_algorithms], context: "#{context}[:phase2_integrity_algorithms]") unless params[:phase2_integrity_algorithms].nil?
        type.phase2_lifetime_seconds = params[:phase2_lifetime_seconds]
        type.pre_shared_key = params[:pre_shared_key]
        type.rekey_fuzz_percentage = params[:rekey_fuzz_percentage]
        type.rekey_margin_time_seconds = params[:rekey_margin_time_seconds]
        type.replay_window_size = params[:replay_window_size]
        type.tunnel_inside_cidr = params[:tunnel_inside_cidr]
        type
      end
    end

    module AwsEc2VpnConnectionOptionsTunnelOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2VpnConnectionOptionsTunnelOptionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2VpnConnectionRoutesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpnConnectionRoutesDetails, context: context)
        type = Types::AwsEc2VpnConnectionRoutesDetails.new
        type.destination_cidr_block = params[:destination_cidr_block]
        type.state = params[:state]
        type
      end
    end

    module AwsEc2VpnConnectionRoutesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2VpnConnectionRoutesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEc2VpnConnectionVgwTelemetryDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEc2VpnConnectionVgwTelemetryDetails, context: context)
        type = Types::AwsEc2VpnConnectionVgwTelemetryDetails.new
        type.accepted_route_count = params[:accepted_route_count]
        type.certificate_arn = params[:certificate_arn]
        type.last_status_change = params[:last_status_change]
        type.outside_ip_address = params[:outside_ip_address]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module AwsEc2VpnConnectionVgwTelemetryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEc2VpnConnectionVgwTelemetryDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcrContainerImageDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrContainerImageDetails, context: context)
        type = Types::AwsEcrContainerImageDetails.new
        type.registry_id = params[:registry_id]
        type.repository_name = params[:repository_name]
        type.architecture = params[:architecture]
        type.image_digest = params[:image_digest]
        type.image_tags = NonEmptyStringList.build(params[:image_tags], context: "#{context}[:image_tags]") unless params[:image_tags].nil?
        type.image_published_at = params[:image_published_at]
        type
      end
    end

    module AwsEcrRepositoryDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrRepositoryDetails, context: context)
        type = Types::AwsEcrRepositoryDetails.new
        type.arn = params[:arn]
        type.image_scanning_configuration = AwsEcrRepositoryImageScanningConfigurationDetails.build(params[:image_scanning_configuration], context: "#{context}[:image_scanning_configuration]") unless params[:image_scanning_configuration].nil?
        type.image_tag_mutability = params[:image_tag_mutability]
        type.lifecycle_policy = AwsEcrRepositoryLifecyclePolicyDetails.build(params[:lifecycle_policy], context: "#{context}[:lifecycle_policy]") unless params[:lifecycle_policy].nil?
        type.repository_name = params[:repository_name]
        type.repository_policy_text = params[:repository_policy_text]
        type
      end
    end

    module AwsEcrRepositoryImageScanningConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrRepositoryImageScanningConfigurationDetails, context: context)
        type = Types::AwsEcrRepositoryImageScanningConfigurationDetails.new
        type.scan_on_push = params[:scan_on_push]
        type
      end
    end

    module AwsEcrRepositoryLifecyclePolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcrRepositoryLifecyclePolicyDetails, context: context)
        type = Types::AwsEcrRepositoryLifecyclePolicyDetails.new
        type.lifecycle_policy_text = params[:lifecycle_policy_text]
        type.registry_id = params[:registry_id]
        type
      end
    end

    module AwsEcsClusterClusterSettingsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterClusterSettingsDetails, context: context)
        type = Types::AwsEcsClusterClusterSettingsDetails.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsClusterClusterSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsClusterClusterSettingsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsClusterConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterConfigurationDetails, context: context)
        type = Types::AwsEcsClusterConfigurationDetails.new
        type.execute_command_configuration = AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.build(params[:execute_command_configuration], context: "#{context}[:execute_command_configuration]") unless params[:execute_command_configuration].nil?
        type
      end
    end

    module AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails, context: context)
        type = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationDetails.new
        type.kms_key_id = params[:kms_key_id]
        type.log_configuration = AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.logging = params[:logging]
        type
      end
    end

    module AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails, context: context)
        type = Types::AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails.new
        type.cloud_watch_encryption_enabled = params[:cloud_watch_encryption_enabled]
        type.cloud_watch_log_group_name = params[:cloud_watch_log_group_name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_encryption_enabled = params[:s3_encryption_enabled]
        type.s3_key_prefix = params[:s3_key_prefix]
        type
      end
    end

    module AwsEcsClusterDefaultCapacityProviderStrategyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails, context: context)
        type = Types::AwsEcsClusterDefaultCapacityProviderStrategyDetails.new
        type.base = params[:base]
        type.capacity_provider = params[:capacity_provider]
        type.weight = params[:weight]
        type
      end
    end

    module AwsEcsClusterDefaultCapacityProviderStrategyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsClusterDefaultCapacityProviderStrategyDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsClusterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsClusterDetails, context: context)
        type = Types::AwsEcsClusterDetails.new
        type.capacity_providers = NonEmptyStringList.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.cluster_settings = AwsEcsClusterClusterSettingsList.build(params[:cluster_settings], context: "#{context}[:cluster_settings]") unless params[:cluster_settings].nil?
        type.configuration = AwsEcsClusterConfigurationDetails.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.default_capacity_provider_strategy = AwsEcsClusterDefaultCapacityProviderStrategyList.build(params[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless params[:default_capacity_provider_strategy].nil?
        type
      end
    end

    module AwsEcsServiceCapacityProviderStrategyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceCapacityProviderStrategyDetails, context: context)
        type = Types::AwsEcsServiceCapacityProviderStrategyDetails.new
        type.base = params[:base]
        type.capacity_provider = params[:capacity_provider]
        type.weight = params[:weight]
        type
      end
    end

    module AwsEcsServiceCapacityProviderStrategyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsServiceCapacityProviderStrategyDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails, context: context)
        type = Types::AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.new
        type.enable = params[:enable]
        type.rollback = params[:rollback]
        type
      end
    end

    module AwsEcsServiceDeploymentConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceDeploymentConfigurationDetails, context: context)
        type = Types::AwsEcsServiceDeploymentConfigurationDetails.new
        type.deployment_circuit_breaker = AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails.build(params[:deployment_circuit_breaker], context: "#{context}[:deployment_circuit_breaker]") unless params[:deployment_circuit_breaker].nil?
        type.maximum_percent = params[:maximum_percent]
        type.minimum_healthy_percent = params[:minimum_healthy_percent]
        type
      end
    end

    module AwsEcsServiceDeploymentControllerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceDeploymentControllerDetails, context: context)
        type = Types::AwsEcsServiceDeploymentControllerDetails.new
        type.type = params[:type]
        type
      end
    end

    module AwsEcsServiceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceDetails, context: context)
        type = Types::AwsEcsServiceDetails.new
        type.capacity_provider_strategy = AwsEcsServiceCapacityProviderStrategyList.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.cluster = params[:cluster]
        type.deployment_configuration = AwsEcsServiceDeploymentConfigurationDetails.build(params[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless params[:deployment_configuration].nil?
        type.deployment_controller = AwsEcsServiceDeploymentControllerDetails.build(params[:deployment_controller], context: "#{context}[:deployment_controller]") unless params[:deployment_controller].nil?
        type.desired_count = params[:desired_count]
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type.health_check_grace_period_seconds = params[:health_check_grace_period_seconds]
        type.launch_type = params[:launch_type]
        type.load_balancers = AwsEcsServiceLoadBalancersList.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.name = params[:name]
        type.network_configuration = AwsEcsServiceNetworkConfigurationDetails.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.placement_constraints = AwsEcsServicePlacementConstraintsList.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategies = AwsEcsServicePlacementStrategiesList.build(params[:placement_strategies], context: "#{context}[:placement_strategies]") unless params[:placement_strategies].nil?
        type.platform_version = params[:platform_version]
        type.propagate_tags = params[:propagate_tags]
        type.role = params[:role]
        type.scheduling_strategy = params[:scheduling_strategy]
        type.service_arn = params[:service_arn]
        type.service_name = params[:service_name]
        type.service_registries = AwsEcsServiceServiceRegistriesList.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type.task_definition = params[:task_definition]
        type
      end
    end

    module AwsEcsServiceLoadBalancersDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceLoadBalancersDetails, context: context)
        type = Types::AwsEcsServiceLoadBalancersDetails.new
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type.load_balancer_name = params[:load_balancer_name]
        type.target_group_arn = params[:target_group_arn]
        type
      end
    end

    module AwsEcsServiceLoadBalancersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsServiceLoadBalancersDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails, context: context)
        type = Types::AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.new
        type.assign_public_ip = params[:assign_public_ip]
        type.security_groups = NonEmptyStringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.subnets = NonEmptyStringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module AwsEcsServiceNetworkConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceNetworkConfigurationDetails, context: context)
        type = Types::AwsEcsServiceNetworkConfigurationDetails.new
        type.aws_vpc_configuration = AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails.build(params[:aws_vpc_configuration], context: "#{context}[:aws_vpc_configuration]") unless params[:aws_vpc_configuration].nil?
        type
      end
    end

    module AwsEcsServicePlacementConstraintsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServicePlacementConstraintsDetails, context: context)
        type = Types::AwsEcsServicePlacementConstraintsDetails.new
        type.expression = params[:expression]
        type.type = params[:type]
        type
      end
    end

    module AwsEcsServicePlacementConstraintsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsServicePlacementConstraintsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsServicePlacementStrategiesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServicePlacementStrategiesDetails, context: context)
        type = Types::AwsEcsServicePlacementStrategiesDetails.new
        type.field = params[:field]
        type.type = params[:type]
        type
      end
    end

    module AwsEcsServicePlacementStrategiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsServicePlacementStrategiesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsServiceServiceRegistriesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsServiceServiceRegistriesDetails, context: context)
        type = Types::AwsEcsServiceServiceRegistriesDetails.new
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type.port = params[:port]
        type.registry_arn = params[:registry_arn]
        type
      end
    end

    module AwsEcsServiceServiceRegistriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsServiceServiceRegistriesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.new
        type.condition = params[:condition]
        type.container_name = params[:container_name]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsDependsOnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsDetails.new
        type.command = NonEmptyStringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.cpu = params[:cpu]
        type.depends_on = AwsEcsTaskDefinitionContainerDefinitionsDependsOnList.build(params[:depends_on], context: "#{context}[:depends_on]") unless params[:depends_on].nil?
        type.disable_networking = params[:disable_networking]
        type.dns_search_domains = NonEmptyStringList.build(params[:dns_search_domains], context: "#{context}[:dns_search_domains]") unless params[:dns_search_domains].nil?
        type.dns_servers = NonEmptyStringList.build(params[:dns_servers], context: "#{context}[:dns_servers]") unless params[:dns_servers].nil?
        type.docker_labels = FieldMap.build(params[:docker_labels], context: "#{context}[:docker_labels]") unless params[:docker_labels].nil?
        type.docker_security_options = NonEmptyStringList.build(params[:docker_security_options], context: "#{context}[:docker_security_options]") unless params[:docker_security_options].nil?
        type.entry_point = NonEmptyStringList.build(params[:entry_point], context: "#{context}[:entry_point]") unless params[:entry_point].nil?
        type.environment = AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.environment_files = AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList.build(params[:environment_files], context: "#{context}[:environment_files]") unless params[:environment_files].nil?
        type.essential = params[:essential]
        type.extra_hosts = AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList.build(params[:extra_hosts], context: "#{context}[:extra_hosts]") unless params[:extra_hosts].nil?
        type.firelens_configuration = AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.build(params[:firelens_configuration], context: "#{context}[:firelens_configuration]") unless params[:firelens_configuration].nil?
        type.health_check = AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.hostname = params[:hostname]
        type.image = params[:image]
        type.interactive = params[:interactive]
        type.links = NonEmptyStringList.build(params[:links], context: "#{context}[:links]") unless params[:links].nil?
        type.linux_parameters = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.build(params[:linux_parameters], context: "#{context}[:linux_parameters]") unless params[:linux_parameters].nil?
        type.log_configuration = AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.memory = params[:memory]
        type.memory_reservation = params[:memory_reservation]
        type.mount_points = AwsEcsTaskDefinitionContainerDefinitionsMountPointsList.build(params[:mount_points], context: "#{context}[:mount_points]") unless params[:mount_points].nil?
        type.name = params[:name]
        type.port_mappings = AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList.build(params[:port_mappings], context: "#{context}[:port_mappings]") unless params[:port_mappings].nil?
        type.privileged = params[:privileged]
        type.pseudo_terminal = params[:pseudo_terminal]
        type.readonly_root_filesystem = params[:readonly_root_filesystem]
        type.repository_credentials = AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.build(params[:repository_credentials], context: "#{context}[:repository_credentials]") unless params[:repository_credentials].nil?
        type.resource_requirements = AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type.secrets = AwsEcsTaskDefinitionContainerDefinitionsSecretsList.build(params[:secrets], context: "#{context}[:secrets]") unless params[:secrets].nil?
        type.start_timeout = params[:start_timeout]
        type.stop_timeout = params[:stop_timeout]
        type.system_controls = AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList.build(params[:system_controls], context: "#{context}[:system_controls]") unless params[:system_controls].nil?
        type.ulimits = AwsEcsTaskDefinitionContainerDefinitionsUlimitsList.build(params[:ulimits], context: "#{context}[:ulimits]") unless params[:ulimits].nil?
        type.user = params[:user]
        type.volumes_from = AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList.build(params[:volumes_from], context: "#{context}[:volumes_from]") unless params[:volumes_from].nil?
        type.working_directory = params[:working_directory]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsEnvironmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.new
        type.hostname = params[:hostname]
        type.ip_address = params[:ip_address]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsExtraHostsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails.new
        type.options = FieldMap.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails.new
        type.command = NonEmptyStringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.interval = params[:interval]
        type.retries = params[:retries]
        type.start_period = params[:start_period]
        type.timeout = params[:timeout]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.new
        type.add = NonEmptyStringList.build(params[:add], context: "#{context}[:add]") unless params[:add].nil?
        type.drop = NonEmptyStringList.build(params[:drop], context: "#{context}[:drop]") unless params[:drop].nil?
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails.new
        type.capabilities = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.devices = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.init_process_enabled = params[:init_process_enabled]
        type.max_swap = params[:max_swap]
        type.shared_memory_size = params[:shared_memory_size]
        type.swappiness = params[:swappiness]
        type.tmpfs = AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList.build(params[:tmpfs], context: "#{context}[:tmpfs]") unless params[:tmpfs].nil?
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.new
        type.container_path = params[:container_path]
        type.host_path = params[:host_path]
        type.permissions = NonEmptyStringList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.new
        type.container_path = params[:container_path]
        type.mount_options = NonEmptyStringList.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type.size = params[:size]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails.new
        type.log_driver = params[:log_driver]
        type.options = FieldMap.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.secret_options = AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList.build(params[:secret_options], context: "#{context}[:secret_options]") unless params[:secret_options].nil?
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.new
        type.name = params[:name]
        type.value_from = params[:value_from]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.new
        type.container_path = params[:container_path]
        type.read_only = params[:read_only]
        type.source_volume = params[:source_volume]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsMountPointsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.new
        type.container_port = params[:container_port]
        type.host_port = params[:host_port]
        type.protocol = params[:protocol]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsPortMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails.new
        type.credentials_parameter = params[:credentials_parameter]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.new
        type.name = params[:name]
        type.value_from = params[:value_from]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsSecretsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.new
        type.namespace = params[:namespace]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsSystemControlsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.new
        type.hard_limit = params[:hard_limit]
        type.name = params[:name]
        type.soft_limit = params[:soft_limit]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsUlimitsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails, context: context)
        type = Types::AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.new
        type.read_only = params[:read_only]
        type.source_container = params[:source_container]
        type
      end
    end

    module AwsEcsTaskDefinitionContainerDefinitionsVolumesFromList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionDetails, context: context)
        type = Types::AwsEcsTaskDefinitionDetails.new
        type.container_definitions = AwsEcsTaskDefinitionContainerDefinitionsList.build(params[:container_definitions], context: "#{context}[:container_definitions]") unless params[:container_definitions].nil?
        type.cpu = params[:cpu]
        type.execution_role_arn = params[:execution_role_arn]
        type.family = params[:family]
        type.inference_accelerators = AwsEcsTaskDefinitionInferenceAcceleratorsList.build(params[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless params[:inference_accelerators].nil?
        type.ipc_mode = params[:ipc_mode]
        type.memory = params[:memory]
        type.network_mode = params[:network_mode]
        type.pid_mode = params[:pid_mode]
        type.placement_constraints = AwsEcsTaskDefinitionPlacementConstraintsList.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.proxy_configuration = AwsEcsTaskDefinitionProxyConfigurationDetails.build(params[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless params[:proxy_configuration].nil?
        type.requires_compatibilities = NonEmptyStringList.build(params[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless params[:requires_compatibilities].nil?
        type.task_role_arn = params[:task_role_arn]
        type.volumes = AwsEcsTaskDefinitionVolumesList.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type
      end
    end

    module AwsEcsTaskDefinitionInferenceAcceleratorsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionInferenceAcceleratorsDetails.new
        type.device_name = params[:device_name]
        type.device_type = params[:device_type]
        type
      end
    end

    module AwsEcsTaskDefinitionInferenceAcceleratorsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionInferenceAcceleratorsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionPlacementConstraintsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionPlacementConstraintsDetails, context: context)
        type = Types::AwsEcsTaskDefinitionPlacementConstraintsDetails.new
        type.expression = params[:expression]
        type.type = params[:type]
        type
      end
    end

    module AwsEcsTaskDefinitionPlacementConstraintsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionPlacementConstraintsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionProxyConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionProxyConfigurationDetails, context: context)
        type = Types::AwsEcsTaskDefinitionProxyConfigurationDetails.new
        type.container_name = params[:container_name]
        type.proxy_configuration_properties = AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList.build(params[:proxy_configuration_properties], context: "#{context}[:proxy_configuration_properties]") unless params[:proxy_configuration_properties].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails, context: context)
        type = Types::AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEcsTaskDefinitionVolumesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionVolumesDetails, context: context)
        type = Types::AwsEcsTaskDefinitionVolumesDetails.new
        type.docker_volume_configuration = AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.build(params[:docker_volume_configuration], context: "#{context}[:docker_volume_configuration]") unless params[:docker_volume_configuration].nil?
        type.efs_volume_configuration = AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.build(params[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless params[:efs_volume_configuration].nil?
        type.host = AwsEcsTaskDefinitionVolumesHostDetails.build(params[:host], context: "#{context}[:host]") unless params[:host].nil?
        type.name = params[:name]
        type
      end
    end

    module AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails, context: context)
        type = Types::AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails.new
        type.autoprovision = params[:autoprovision]
        type.driver = params[:driver]
        type.driver_opts = FieldMap.build(params[:driver_opts], context: "#{context}[:driver_opts]") unless params[:driver_opts].nil?
        type.labels = FieldMap.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.scope = params[:scope]
        type
      end
    end

    module AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails, context: context)
        type = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.new
        type.access_point_id = params[:access_point_id]
        type.iam = params[:iam]
        type
      end
    end

    module AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails, context: context)
        type = Types::AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails.new
        type.authorization_config = AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails.build(params[:authorization_config], context: "#{context}[:authorization_config]") unless params[:authorization_config].nil?
        type.filesystem_id = params[:filesystem_id]
        type.root_directory = params[:root_directory]
        type.transit_encryption = params[:transit_encryption]
        type.transit_encryption_port = params[:transit_encryption_port]
        type
      end
    end

    module AwsEcsTaskDefinitionVolumesHostDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEcsTaskDefinitionVolumesHostDetails, context: context)
        type = Types::AwsEcsTaskDefinitionVolumesHostDetails.new
        type.source_path = params[:source_path]
        type
      end
    end

    module AwsEcsTaskDefinitionVolumesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEcsTaskDefinitionVolumesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEksClusterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEksClusterDetails, context: context)
        type = Types::AwsEksClusterDetails.new
        type.arn = params[:arn]
        type.certificate_authority_data = params[:certificate_authority_data]
        type.cluster_status = params[:cluster_status]
        type.endpoint = params[:endpoint]
        type.name = params[:name]
        type.resources_vpc_config = AwsEksClusterResourcesVpcConfigDetails.build(params[:resources_vpc_config], context: "#{context}[:resources_vpc_config]") unless params[:resources_vpc_config].nil?
        type.role_arn = params[:role_arn]
        type.version = params[:version]
        type.logging = AwsEksClusterLoggingDetails.build(params[:logging], context: "#{context}[:logging]") unless params[:logging].nil?
        type
      end
    end

    module AwsEksClusterLoggingClusterLoggingDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEksClusterLoggingClusterLoggingDetails, context: context)
        type = Types::AwsEksClusterLoggingClusterLoggingDetails.new
        type.enabled = params[:enabled]
        type.types = NonEmptyStringList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type
      end
    end

    module AwsEksClusterLoggingClusterLoggingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsEksClusterLoggingClusterLoggingDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsEksClusterLoggingDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEksClusterLoggingDetails, context: context)
        type = Types::AwsEksClusterLoggingDetails.new
        type.cluster_logging = AwsEksClusterLoggingClusterLoggingList.build(params[:cluster_logging], context: "#{context}[:cluster_logging]") unless params[:cluster_logging].nil?
        type
      end
    end

    module AwsEksClusterResourcesVpcConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsEksClusterResourcesVpcConfigDetails, context: context)
        type = Types::AwsEksClusterResourcesVpcConfigDetails.new
        type.security_group_ids = NonEmptyStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = NonEmptyStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module AwsElasticBeanstalkEnvironmentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticBeanstalkEnvironmentDetails, context: context)
        type = Types::AwsElasticBeanstalkEnvironmentDetails.new
        type.application_name = params[:application_name]
        type.cname = params[:cname]
        type.date_created = params[:date_created]
        type.date_updated = params[:date_updated]
        type.description = params[:description]
        type.endpoint_url = params[:endpoint_url]
        type.environment_arn = params[:environment_arn]
        type.environment_id = params[:environment_id]
        type.environment_links = AwsElasticBeanstalkEnvironmentEnvironmentLinks.build(params[:environment_links], context: "#{context}[:environment_links]") unless params[:environment_links].nil?
        type.environment_name = params[:environment_name]
        type.option_settings = AwsElasticBeanstalkEnvironmentOptionSettings.build(params[:option_settings], context: "#{context}[:option_settings]") unless params[:option_settings].nil?
        type.platform_arn = params[:platform_arn]
        type.solution_stack_name = params[:solution_stack_name]
        type.status = params[:status]
        type.tier = AwsElasticBeanstalkEnvironmentTier.build(params[:tier], context: "#{context}[:tier]") unless params[:tier].nil?
        type.version_label = params[:version_label]
        type
      end
    end

    module AwsElasticBeanstalkEnvironmentEnvironmentLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticBeanstalkEnvironmentEnvironmentLink, context: context)
        type = Types::AwsElasticBeanstalkEnvironmentEnvironmentLink.new
        type.environment_name = params[:environment_name]
        type.link_name = params[:link_name]
        type
      end
    end

    module AwsElasticBeanstalkEnvironmentEnvironmentLinks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElasticBeanstalkEnvironmentEnvironmentLink.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElasticBeanstalkEnvironmentOptionSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticBeanstalkEnvironmentOptionSetting, context: context)
        type = Types::AwsElasticBeanstalkEnvironmentOptionSetting.new
        type.namespace = params[:namespace]
        type.option_name = params[:option_name]
        type.resource_name = params[:resource_name]
        type.value = params[:value]
        type
      end
    end

    module AwsElasticBeanstalkEnvironmentOptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElasticBeanstalkEnvironmentOptionSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElasticBeanstalkEnvironmentTier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticBeanstalkEnvironmentTier, context: context)
        type = Types::AwsElasticBeanstalkEnvironmentTier.new
        type.name = params[:name]
        type.type = params[:type]
        type.version = params[:version]
        type
      end
    end

    module AwsElasticsearchDomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainDetails, context: context)
        type = Types::AwsElasticsearchDomainDetails.new
        type.access_policies = params[:access_policies]
        type.domain_endpoint_options = AwsElasticsearchDomainDomainEndpointOptions.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.domain_id = params[:domain_id]
        type.domain_name = params[:domain_name]
        type.endpoint = params[:endpoint]
        type.endpoints = FieldMap.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.elasticsearch_version = params[:elasticsearch_version]
        type.elasticsearch_cluster_config = AwsElasticsearchDomainElasticsearchClusterConfigDetails.build(params[:elasticsearch_cluster_config], context: "#{context}[:elasticsearch_cluster_config]") unless params[:elasticsearch_cluster_config].nil?
        type.encryption_at_rest_options = AwsElasticsearchDomainEncryptionAtRestOptions.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.log_publishing_options = AwsElasticsearchDomainLogPublishingOptions.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.node_to_node_encryption_options = AwsElasticsearchDomainNodeToNodeEncryptionOptions.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.service_software_options = AwsElasticsearchDomainServiceSoftwareOptions.build(params[:service_software_options], context: "#{context}[:service_software_options]") unless params[:service_software_options].nil?
        type.vpc_options = AwsElasticsearchDomainVPCOptions.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type
      end
    end

    module AwsElasticsearchDomainDomainEndpointOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainDomainEndpointOptions, context: context)
        type = Types::AwsElasticsearchDomainDomainEndpointOptions.new
        type.enforce_https = params[:enforce_https]
        type.tls_security_policy = params[:tls_security_policy]
        type
      end
    end

    module AwsElasticsearchDomainElasticsearchClusterConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails, context: context)
        type = Types::AwsElasticsearchDomainElasticsearchClusterConfigDetails.new
        type.dedicated_master_count = params[:dedicated_master_count]
        type.dedicated_master_enabled = params[:dedicated_master_enabled]
        type.dedicated_master_type = params[:dedicated_master_type]
        type.instance_count = params[:instance_count]
        type.instance_type = params[:instance_type]
        type.zone_awareness_config = AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.build(params[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless params[:zone_awareness_config].nil?
        type.zone_awareness_enabled = params[:zone_awareness_enabled]
        type
      end
    end

    module AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails, context: context)
        type = Types::AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails.new
        type.availability_zone_count = params[:availability_zone_count]
        type
      end
    end

    module AwsElasticsearchDomainEncryptionAtRestOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainEncryptionAtRestOptions, context: context)
        type = Types::AwsElasticsearchDomainEncryptionAtRestOptions.new
        type.enabled = params[:enabled]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module AwsElasticsearchDomainLogPublishingOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainLogPublishingOptions, context: context)
        type = Types::AwsElasticsearchDomainLogPublishingOptions.new
        type.index_slow_logs = AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(params[:index_slow_logs], context: "#{context}[:index_slow_logs]") unless params[:index_slow_logs].nil?
        type.search_slow_logs = AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(params[:search_slow_logs], context: "#{context}[:search_slow_logs]") unless params[:search_slow_logs].nil?
        type.audit_logs = AwsElasticsearchDomainLogPublishingOptionsLogConfig.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module AwsElasticsearchDomainLogPublishingOptionsLogConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig, context: context)
        type = Types::AwsElasticsearchDomainLogPublishingOptionsLogConfig.new
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsElasticsearchDomainNodeToNodeEncryptionOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions, context: context)
        type = Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsElasticsearchDomainServiceSoftwareOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainServiceSoftwareOptions, context: context)
        type = Types::AwsElasticsearchDomainServiceSoftwareOptions.new
        type.automated_update_date = params[:automated_update_date]
        type.cancellable = params[:cancellable]
        type.current_version = params[:current_version]
        type.description = params[:description]
        type.new_version = params[:new_version]
        type.update_available = params[:update_available]
        type.update_status = params[:update_status]
        type
      end
    end

    module AwsElasticsearchDomainVPCOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElasticsearchDomainVPCOptions, context: context)
        type = Types::AwsElasticsearchDomainVPCOptions.new
        type.availability_zones = NonEmptyStringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.security_group_ids = NonEmptyStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = NonEmptyStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AwsElbAppCookieStickinessPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbAppCookieStickinessPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbAppCookieStickinessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbAppCookieStickinessPolicy, context: context)
        type = Types::AwsElbAppCookieStickinessPolicy.new
        type.cookie_name = params[:cookie_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module AwsElbLbCookieStickinessPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbLbCookieStickinessPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbLbCookieStickinessPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLbCookieStickinessPolicy, context: context)
        type = Types::AwsElbLbCookieStickinessPolicy.new
        type.cookie_expiration_period = params[:cookie_expiration_period]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module AwsElbLoadBalancerAccessLog
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerAccessLog, context: context)
        type = Types::AwsElbLoadBalancerAccessLog.new
        type.emit_interval = params[:emit_interval]
        type.enabled = params[:enabled]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_bucket_prefix = params[:s3_bucket_prefix]
        type
      end
    end

    module AwsElbLoadBalancerAdditionalAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerAdditionalAttribute, context: context)
        type = Types::AwsElbLoadBalancerAdditionalAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AwsElbLoadBalancerAdditionalAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbLoadBalancerAdditionalAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbLoadBalancerAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerAttributes, context: context)
        type = Types::AwsElbLoadBalancerAttributes.new
        type.access_log = AwsElbLoadBalancerAccessLog.build(params[:access_log], context: "#{context}[:access_log]") unless params[:access_log].nil?
        type.connection_draining = AwsElbLoadBalancerConnectionDraining.build(params[:connection_draining], context: "#{context}[:connection_draining]") unless params[:connection_draining].nil?
        type.connection_settings = AwsElbLoadBalancerConnectionSettings.build(params[:connection_settings], context: "#{context}[:connection_settings]") unless params[:connection_settings].nil?
        type.cross_zone_load_balancing = AwsElbLoadBalancerCrossZoneLoadBalancing.build(params[:cross_zone_load_balancing], context: "#{context}[:cross_zone_load_balancing]") unless params[:cross_zone_load_balancing].nil?
        type.additional_attributes = AwsElbLoadBalancerAdditionalAttributeList.build(params[:additional_attributes], context: "#{context}[:additional_attributes]") unless params[:additional_attributes].nil?
        type
      end
    end

    module AwsElbLoadBalancerBackendServerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerBackendServerDescription, context: context)
        type = Types::AwsElbLoadBalancerBackendServerDescription.new
        type.instance_port = params[:instance_port]
        type.policy_names = StringList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module AwsElbLoadBalancerBackendServerDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbLoadBalancerBackendServerDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbLoadBalancerConnectionDraining
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerConnectionDraining, context: context)
        type = Types::AwsElbLoadBalancerConnectionDraining.new
        type.enabled = params[:enabled]
        type.timeout = params[:timeout]
        type
      end
    end

    module AwsElbLoadBalancerConnectionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerConnectionSettings, context: context)
        type = Types::AwsElbLoadBalancerConnectionSettings.new
        type.idle_timeout = params[:idle_timeout]
        type
      end
    end

    module AwsElbLoadBalancerCrossZoneLoadBalancing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerCrossZoneLoadBalancing, context: context)
        type = Types::AwsElbLoadBalancerCrossZoneLoadBalancing.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsElbLoadBalancerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerDetails, context: context)
        type = Types::AwsElbLoadBalancerDetails.new
        type.availability_zones = StringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.backend_server_descriptions = AwsElbLoadBalancerBackendServerDescriptions.build(params[:backend_server_descriptions], context: "#{context}[:backend_server_descriptions]") unless params[:backend_server_descriptions].nil?
        type.canonical_hosted_zone_name = params[:canonical_hosted_zone_name]
        type.canonical_hosted_zone_name_id = params[:canonical_hosted_zone_name_id]
        type.created_time = params[:created_time]
        type.dns_name = params[:dns_name]
        type.health_check = AwsElbLoadBalancerHealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.instances = AwsElbLoadBalancerInstances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.listener_descriptions = AwsElbLoadBalancerListenerDescriptions.build(params[:listener_descriptions], context: "#{context}[:listener_descriptions]") unless params[:listener_descriptions].nil?
        type.load_balancer_attributes = AwsElbLoadBalancerAttributes.build(params[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless params[:load_balancer_attributes].nil?
        type.load_balancer_name = params[:load_balancer_name]
        type.policies = AwsElbLoadBalancerPolicies.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.scheme = params[:scheme]
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.source_security_group = AwsElbLoadBalancerSourceSecurityGroup.build(params[:source_security_group], context: "#{context}[:source_security_group]") unless params[:source_security_group].nil?
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AwsElbLoadBalancerHealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerHealthCheck, context: context)
        type = Types::AwsElbLoadBalancerHealthCheck.new
        type.healthy_threshold = params[:healthy_threshold]
        type.interval = params[:interval]
        type.target = params[:target]
        type.timeout = params[:timeout]
        type.unhealthy_threshold = params[:unhealthy_threshold]
        type
      end
    end

    module AwsElbLoadBalancerInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerInstance, context: context)
        type = Types::AwsElbLoadBalancerInstance.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module AwsElbLoadBalancerInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbLoadBalancerInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbLoadBalancerListener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerListener, context: context)
        type = Types::AwsElbLoadBalancerListener.new
        type.instance_port = params[:instance_port]
        type.instance_protocol = params[:instance_protocol]
        type.load_balancer_port = params[:load_balancer_port]
        type.protocol = params[:protocol]
        type.ssl_certificate_id = params[:ssl_certificate_id]
        type
      end
    end

    module AwsElbLoadBalancerListenerDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerListenerDescription, context: context)
        type = Types::AwsElbLoadBalancerListenerDescription.new
        type.listener = AwsElbLoadBalancerListener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type.policy_names = StringList.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type
      end
    end

    module AwsElbLoadBalancerListenerDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbLoadBalancerListenerDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbLoadBalancerPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerPolicies, context: context)
        type = Types::AwsElbLoadBalancerPolicies.new
        type.app_cookie_stickiness_policies = AwsElbAppCookieStickinessPolicies.build(params[:app_cookie_stickiness_policies], context: "#{context}[:app_cookie_stickiness_policies]") unless params[:app_cookie_stickiness_policies].nil?
        type.lb_cookie_stickiness_policies = AwsElbLbCookieStickinessPolicies.build(params[:lb_cookie_stickiness_policies], context: "#{context}[:lb_cookie_stickiness_policies]") unless params[:lb_cookie_stickiness_policies].nil?
        type.other_policies = StringList.build(params[:other_policies], context: "#{context}[:other_policies]") unless params[:other_policies].nil?
        type
      end
    end

    module AwsElbLoadBalancerSourceSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbLoadBalancerSourceSecurityGroup, context: context)
        type = Types::AwsElbLoadBalancerSourceSecurityGroup.new
        type.group_name = params[:group_name]
        type.owner_alias = params[:owner_alias]
        type
      end
    end

    module AwsElbv2LoadBalancerAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbv2LoadBalancerAttribute, context: context)
        type = Types::AwsElbv2LoadBalancerAttribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AwsElbv2LoadBalancerAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsElbv2LoadBalancerAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsElbv2LoadBalancerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsElbv2LoadBalancerDetails, context: context)
        type = Types::AwsElbv2LoadBalancerDetails.new
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.canonical_hosted_zone_id = params[:canonical_hosted_zone_id]
        type.created_time = params[:created_time]
        type.dns_name = params[:dns_name]
        type.ip_address_type = params[:ip_address_type]
        type.scheme = params[:scheme]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.state = LoadBalancerState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.type = params[:type]
        type.vpc_id = params[:vpc_id]
        type.load_balancer_attributes = AwsElbv2LoadBalancerAttributes.build(params[:load_balancer_attributes], context: "#{context}[:load_balancer_attributes]") unless params[:load_balancer_attributes].nil?
        type
      end
    end

    module AwsIamAccessKeyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamAccessKeyDetails, context: context)
        type = Types::AwsIamAccessKeyDetails.new
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.principal_id = params[:principal_id]
        type.principal_type = params[:principal_type]
        type.principal_name = params[:principal_name]
        type.account_id = params[:account_id]
        type.access_key_id = params[:access_key_id]
        type.session_context = AwsIamAccessKeySessionContext.build(params[:session_context], context: "#{context}[:session_context]") unless params[:session_context].nil?
        type
      end
    end

    module AwsIamAccessKeySessionContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamAccessKeySessionContext, context: context)
        type = Types::AwsIamAccessKeySessionContext.new
        type.attributes = AwsIamAccessKeySessionContextAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.session_issuer = AwsIamAccessKeySessionContextSessionIssuer.build(params[:session_issuer], context: "#{context}[:session_issuer]") unless params[:session_issuer].nil?
        type
      end
    end

    module AwsIamAccessKeySessionContextAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamAccessKeySessionContextAttributes, context: context)
        type = Types::AwsIamAccessKeySessionContextAttributes.new
        type.mfa_authenticated = params[:mfa_authenticated]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module AwsIamAccessKeySessionContextSessionIssuer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamAccessKeySessionContextSessionIssuer, context: context)
        type = Types::AwsIamAccessKeySessionContextSessionIssuer.new
        type.type = params[:type]
        type.principal_id = params[:principal_id]
        type.arn = params[:arn]
        type.account_id = params[:account_id]
        type.user_name = params[:user_name]
        type
      end
    end

    module AwsIamAttachedManagedPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamAttachedManagedPolicy, context: context)
        type = Types::AwsIamAttachedManagedPolicy.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module AwsIamAttachedManagedPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamAttachedManagedPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamGroupDetails, context: context)
        type = Types::AwsIamGroupDetails.new
        type.attached_managed_policies = AwsIamAttachedManagedPolicyList.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.create_date = params[:create_date]
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.group_policy_list = AwsIamGroupPolicyList.build(params[:group_policy_list], context: "#{context}[:group_policy_list]") unless params[:group_policy_list].nil?
        type.path = params[:path]
        type
      end
    end

    module AwsIamGroupPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamGroupPolicy, context: context)
        type = Types::AwsIamGroupPolicy.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module AwsIamGroupPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamGroupPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamInstanceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamInstanceProfile, context: context)
        type = Types::AwsIamInstanceProfile.new
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.instance_profile_id = params[:instance_profile_id]
        type.instance_profile_name = params[:instance_profile_name]
        type.path = params[:path]
        type.roles = AwsIamInstanceProfileRoles.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type
      end
    end

    module AwsIamInstanceProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamInstanceProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamInstanceProfileRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamInstanceProfileRole, context: context)
        type = Types::AwsIamInstanceProfileRole.new
        type.arn = params[:arn]
        type.assume_role_policy_document = params[:assume_role_policy_document]
        type.create_date = params[:create_date]
        type.path = params[:path]
        type.role_id = params[:role_id]
        type.role_name = params[:role_name]
        type
      end
    end

    module AwsIamInstanceProfileRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamInstanceProfileRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamPermissionsBoundary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamPermissionsBoundary, context: context)
        type = Types::AwsIamPermissionsBoundary.new
        type.permissions_boundary_arn = params[:permissions_boundary_arn]
        type.permissions_boundary_type = params[:permissions_boundary_type]
        type
      end
    end

    module AwsIamPolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamPolicyDetails, context: context)
        type = Types::AwsIamPolicyDetails.new
        type.attachment_count = params[:attachment_count]
        type.create_date = params[:create_date]
        type.default_version_id = params[:default_version_id]
        type.description = params[:description]
        type.is_attachable = params[:is_attachable]
        type.path = params[:path]
        type.permissions_boundary_usage_count = params[:permissions_boundary_usage_count]
        type.policy_id = params[:policy_id]
        type.policy_name = params[:policy_name]
        type.policy_version_list = AwsIamPolicyVersionList.build(params[:policy_version_list], context: "#{context}[:policy_version_list]") unless params[:policy_version_list].nil?
        type.update_date = params[:update_date]
        type
      end
    end

    module AwsIamPolicyVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamPolicyVersion, context: context)
        type = Types::AwsIamPolicyVersion.new
        type.version_id = params[:version_id]
        type.is_default_version = params[:is_default_version]
        type.create_date = params[:create_date]
        type
      end
    end

    module AwsIamPolicyVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamPolicyVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamRoleDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamRoleDetails, context: context)
        type = Types::AwsIamRoleDetails.new
        type.assume_role_policy_document = params[:assume_role_policy_document]
        type.attached_managed_policies = AwsIamAttachedManagedPolicyList.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.create_date = params[:create_date]
        type.instance_profile_list = AwsIamInstanceProfileList.build(params[:instance_profile_list], context: "#{context}[:instance_profile_list]") unless params[:instance_profile_list].nil?
        type.permissions_boundary = AwsIamPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.role_id = params[:role_id]
        type.role_name = params[:role_name]
        type.role_policy_list = AwsIamRolePolicyList.build(params[:role_policy_list], context: "#{context}[:role_policy_list]") unless params[:role_policy_list].nil?
        type.max_session_duration = params[:max_session_duration]
        type.path = params[:path]
        type
      end
    end

    module AwsIamRolePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamRolePolicy, context: context)
        type = Types::AwsIamRolePolicy.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module AwsIamRolePolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamRolePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsIamUserDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamUserDetails, context: context)
        type = Types::AwsIamUserDetails.new
        type.attached_managed_policies = AwsIamAttachedManagedPolicyList.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.create_date = params[:create_date]
        type.group_list = StringList.build(params[:group_list], context: "#{context}[:group_list]") unless params[:group_list].nil?
        type.path = params[:path]
        type.permissions_boundary = AwsIamPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.user_id = params[:user_id]
        type.user_name = params[:user_name]
        type.user_policy_list = AwsIamUserPolicyList.build(params[:user_policy_list], context: "#{context}[:user_policy_list]") unless params[:user_policy_list].nil?
        type
      end
    end

    module AwsIamUserPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamUserPolicy, context: context)
        type = Types::AwsIamUserPolicy.new
        type.policy_name = params[:policy_name]
        type
      end
    end

    module AwsIamUserPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsIamUserPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsKmsKeyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsKmsKeyDetails, context: context)
        type = Types::AwsKmsKeyDetails.new
        type.aws_account_id = params[:aws_account_id]
        type.creation_date = params[:creation_date]
        type.key_id = params[:key_id]
        type.key_manager = params[:key_manager]
        type.key_state = params[:key_state]
        type.origin = params[:origin]
        type.description = params[:description]
        type.key_rotation_status = params[:key_rotation_status]
        type
      end
    end

    module AwsLambdaFunctionCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionCode, context: context)
        type = Types::AwsLambdaFunctionCode.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.s3_object_version = params[:s3_object_version]
        type.zip_file = params[:zip_file]
        type
      end
    end

    module AwsLambdaFunctionDeadLetterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionDeadLetterConfig, context: context)
        type = Types::AwsLambdaFunctionDeadLetterConfig.new
        type.target_arn = params[:target_arn]
        type
      end
    end

    module AwsLambdaFunctionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionDetails, context: context)
        type = Types::AwsLambdaFunctionDetails.new
        type.code = AwsLambdaFunctionCode.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.code_sha256 = params[:code_sha256]
        type.dead_letter_config = AwsLambdaFunctionDeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = AwsLambdaFunctionEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.function_name = params[:function_name]
        type.handler = params[:handler]
        type.kms_key_arn = params[:kms_key_arn]
        type.last_modified = params[:last_modified]
        type.layers = AwsLambdaFunctionLayerList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.master_arn = params[:master_arn]
        type.memory_size = params[:memory_size]
        type.revision_id = params[:revision_id]
        type.role = params[:role]
        type.runtime = params[:runtime]
        type.timeout = params[:timeout]
        type.tracing_config = AwsLambdaFunctionTracingConfig.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.vpc_config = AwsLambdaFunctionVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.version = params[:version]
        type
      end
    end

    module AwsLambdaFunctionEnvironment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionEnvironment, context: context)
        type = Types::AwsLambdaFunctionEnvironment.new
        type.variables = FieldMap.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.error = AwsLambdaFunctionEnvironmentError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module AwsLambdaFunctionEnvironmentError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionEnvironmentError, context: context)
        type = Types::AwsLambdaFunctionEnvironmentError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AwsLambdaFunctionLayer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionLayer, context: context)
        type = Types::AwsLambdaFunctionLayer.new
        type.arn = params[:arn]
        type.code_size = params[:code_size]
        type
      end
    end

    module AwsLambdaFunctionLayerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsLambdaFunctionLayer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsLambdaFunctionTracingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionTracingConfig, context: context)
        type = Types::AwsLambdaFunctionTracingConfig.new
        type.mode = params[:mode]
        type
      end
    end

    module AwsLambdaFunctionVpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaFunctionVpcConfig, context: context)
        type = Types::AwsLambdaFunctionVpcConfig.new
        type.security_group_ids = NonEmptyStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = NonEmptyStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AwsLambdaLayerVersionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsLambdaLayerVersionDetails, context: context)
        type = Types::AwsLambdaLayerVersionDetails.new
        type.version = params[:version]
        type.compatible_runtimes = NonEmptyStringList.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.created_date = params[:created_date]
        type
      end
    end

    module AwsNetworkFirewallFirewallDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsNetworkFirewallFirewallDetails, context: context)
        type = Types::AwsNetworkFirewallFirewallDetails.new
        type.delete_protection = params[:delete_protection]
        type.description = params[:description]
        type.firewall_arn = params[:firewall_arn]
        type.firewall_id = params[:firewall_id]
        type.firewall_name = params[:firewall_name]
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.firewall_policy_change_protection = params[:firewall_policy_change_protection]
        type.subnet_change_protection = params[:subnet_change_protection]
        type.subnet_mappings = AwsNetworkFirewallFirewallSubnetMappingsList.build(params[:subnet_mappings], context: "#{context}[:subnet_mappings]") unless params[:subnet_mappings].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AwsNetworkFirewallFirewallPolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsNetworkFirewallFirewallPolicyDetails, context: context)
        type = Types::AwsNetworkFirewallFirewallPolicyDetails.new
        type.firewall_policy = FirewallPolicyDetails.build(params[:firewall_policy], context: "#{context}[:firewall_policy]") unless params[:firewall_policy].nil?
        type.firewall_policy_arn = params[:firewall_policy_arn]
        type.firewall_policy_id = params[:firewall_policy_id]
        type.firewall_policy_name = params[:firewall_policy_name]
        type.description = params[:description]
        type
      end
    end

    module AwsNetworkFirewallFirewallSubnetMappingsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsNetworkFirewallFirewallSubnetMappingsDetails, context: context)
        type = Types::AwsNetworkFirewallFirewallSubnetMappingsDetails.new
        type.subnet_id = params[:subnet_id]
        type
      end
    end

    module AwsNetworkFirewallFirewallSubnetMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsNetworkFirewallFirewallSubnetMappingsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsNetworkFirewallRuleGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsNetworkFirewallRuleGroupDetails, context: context)
        type = Types::AwsNetworkFirewallRuleGroupDetails.new
        type.capacity = params[:capacity]
        type.description = params[:description]
        type.rule_group = RuleGroupDetails.build(params[:rule_group], context: "#{context}[:rule_group]") unless params[:rule_group].nil?
        type.rule_group_arn = params[:rule_group_arn]
        type.rule_group_id = params[:rule_group_id]
        type.rule_group_name = params[:rule_group_name]
        type.type = params[:type]
        type
      end
    end

    module AwsOpenSearchServiceDomainClusterConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainClusterConfigDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainClusterConfigDetails.new
        type.instance_count = params[:instance_count]
        type.warm_enabled = params[:warm_enabled]
        type.warm_count = params[:warm_count]
        type.dedicated_master_enabled = params[:dedicated_master_enabled]
        type.zone_awareness_config = AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.build(params[:zone_awareness_config], context: "#{context}[:zone_awareness_config]") unless params[:zone_awareness_config].nil?
        type.dedicated_master_count = params[:dedicated_master_count]
        type.instance_type = params[:instance_type]
        type.warm_type = params[:warm_type]
        type.zone_awareness_enabled = params[:zone_awareness_enabled]
        type.dedicated_master_type = params[:dedicated_master_type]
        type
      end
    end

    module AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails.new
        type.availability_zone_count = params[:availability_zone_count]
        type
      end
    end

    module AwsOpenSearchServiceDomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainDetails.new
        type.arn = params[:arn]
        type.access_policies = params[:access_policies]
        type.domain_name = params[:domain_name]
        type.id = params[:id]
        type.domain_endpoint = params[:domain_endpoint]
        type.engine_version = params[:engine_version]
        type.encryption_at_rest_options = AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.build(params[:encryption_at_rest_options], context: "#{context}[:encryption_at_rest_options]") unless params[:encryption_at_rest_options].nil?
        type.node_to_node_encryption_options = AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.build(params[:node_to_node_encryption_options], context: "#{context}[:node_to_node_encryption_options]") unless params[:node_to_node_encryption_options].nil?
        type.service_software_options = AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.build(params[:service_software_options], context: "#{context}[:service_software_options]") unless params[:service_software_options].nil?
        type.cluster_config = AwsOpenSearchServiceDomainClusterConfigDetails.build(params[:cluster_config], context: "#{context}[:cluster_config]") unless params[:cluster_config].nil?
        type.domain_endpoint_options = AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type.vpc_options = AwsOpenSearchServiceDomainVpcOptionsDetails.build(params[:vpc_options], context: "#{context}[:vpc_options]") unless params[:vpc_options].nil?
        type.log_publishing_options = AwsOpenSearchServiceDomainLogPublishingOptionsDetails.build(params[:log_publishing_options], context: "#{context}[:log_publishing_options]") unless params[:log_publishing_options].nil?
        type.domain_endpoints = FieldMap.build(params[:domain_endpoints], context: "#{context}[:domain_endpoints]") unless params[:domain_endpoints].nil?
        type
      end
    end

    module AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainDomainEndpointOptionsDetails.new
        type.custom_endpoint_certificate_arn = params[:custom_endpoint_certificate_arn]
        type.custom_endpoint_enabled = params[:custom_endpoint_enabled]
        type.enforce_https = params[:enforce_https]
        type.custom_endpoint = params[:custom_endpoint]
        type.tls_security_policy = params[:tls_security_policy]
        type
      end
    end

    module AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails.new
        type.enabled = params[:enabled]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module AwsOpenSearchServiceDomainLogPublishingOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainLogPublishingOption, context: context)
        type = Types::AwsOpenSearchServiceDomainLogPublishingOption.new
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsOpenSearchServiceDomainLogPublishingOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainLogPublishingOptionsDetails.new
        type.index_slow_logs = AwsOpenSearchServiceDomainLogPublishingOption.build(params[:index_slow_logs], context: "#{context}[:index_slow_logs]") unless params[:index_slow_logs].nil?
        type.search_slow_logs = AwsOpenSearchServiceDomainLogPublishingOption.build(params[:search_slow_logs], context: "#{context}[:search_slow_logs]") unless params[:search_slow_logs].nil?
        type.audit_logs = AwsOpenSearchServiceDomainLogPublishingOption.build(params[:audit_logs], context: "#{context}[:audit_logs]") unless params[:audit_logs].nil?
        type
      end
    end

    module AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails.new
        type.automated_update_date = params[:automated_update_date]
        type.cancellable = params[:cancellable]
        type.current_version = params[:current_version]
        type.description = params[:description]
        type.new_version = params[:new_version]
        type.update_available = params[:update_available]
        type.update_status = params[:update_status]
        type.optional_deployment = params[:optional_deployment]
        type
      end
    end

    module AwsOpenSearchServiceDomainVpcOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsOpenSearchServiceDomainVpcOptionsDetails, context: context)
        type = Types::AwsOpenSearchServiceDomainVpcOptionsDetails.new
        type.security_group_ids = NonEmptyStringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = NonEmptyStringList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type
      end
    end

    module AwsRdsDbClusterAssociatedRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbClusterAssociatedRole, context: context)
        type = Types::AwsRdsDbClusterAssociatedRole.new
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbClusterAssociatedRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbClusterAssociatedRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbClusterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbClusterDetails, context: context)
        type = Types::AwsRdsDbClusterDetails.new
        type.allocated_storage = params[:allocated_storage]
        type.availability_zones = StringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.backup_retention_period = params[:backup_retention_period]
        type.database_name = params[:database_name]
        type.status = params[:status]
        type.endpoint = params[:endpoint]
        type.reader_endpoint = params[:reader_endpoint]
        type.custom_endpoints = StringList.build(params[:custom_endpoints], context: "#{context}[:custom_endpoints]") unless params[:custom_endpoints].nil?
        type.multi_az = params[:multi_az]
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.port = params[:port]
        type.master_username = params[:master_username]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.read_replica_identifiers = StringList.build(params[:read_replica_identifiers], context: "#{context}[:read_replica_identifiers]") unless params[:read_replica_identifiers].nil?
        type.vpc_security_groups = AwsRdsDbInstanceVpcSecurityGroups.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.hosted_zone_id = params[:hosted_zone_id]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.db_cluster_resource_id = params[:db_cluster_resource_id]
        type.associated_roles = AwsRdsDbClusterAssociatedRoles.build(params[:associated_roles], context: "#{context}[:associated_roles]") unless params[:associated_roles].nil?
        type.cluster_create_time = params[:cluster_create_time]
        type.enabled_cloud_watch_logs_exports = StringList.build(params[:enabled_cloud_watch_logs_exports], context: "#{context}[:enabled_cloud_watch_logs_exports]") unless params[:enabled_cloud_watch_logs_exports].nil?
        type.engine_mode = params[:engine_mode]
        type.deletion_protection = params[:deletion_protection]
        type.http_endpoint_enabled = params[:http_endpoint_enabled]
        type.activity_stream_status = params[:activity_stream_status]
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.cross_account_clone = params[:cross_account_clone]
        type.domain_memberships = AwsRdsDbDomainMemberships.build(params[:domain_memberships], context: "#{context}[:domain_memberships]") unless params[:domain_memberships].nil?
        type.db_cluster_parameter_group = params[:db_cluster_parameter_group]
        type.db_subnet_group = params[:db_subnet_group]
        type.db_cluster_option_group_memberships = AwsRdsDbClusterOptionGroupMemberships.build(params[:db_cluster_option_group_memberships], context: "#{context}[:db_cluster_option_group_memberships]") unless params[:db_cluster_option_group_memberships].nil?
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_members = AwsRdsDbClusterMembers.build(params[:db_cluster_members], context: "#{context}[:db_cluster_members]") unless params[:db_cluster_members].nil?
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type
      end
    end

    module AwsRdsDbClusterMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbClusterMember, context: context)
        type = Types::AwsRdsDbClusterMember.new
        type.is_cluster_writer = params[:is_cluster_writer]
        type.promotion_tier = params[:promotion_tier]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_cluster_parameter_group_status = params[:db_cluster_parameter_group_status]
        type
      end
    end

    module AwsRdsDbClusterMembers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbClusterMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbClusterOptionGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbClusterOptionGroupMembership, context: context)
        type = Types::AwsRdsDbClusterOptionGroupMembership.new
        type.db_cluster_option_group_name = params[:db_cluster_option_group_name]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbClusterOptionGroupMemberships
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbClusterOptionGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbClusterSnapshotDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbClusterSnapshotDetails, context: context)
        type = Types::AwsRdsDbClusterSnapshotDetails.new
        type.availability_zones = StringList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.snapshot_create_time = params[:snapshot_create_time]
        type.engine = params[:engine]
        type.allocated_storage = params[:allocated_storage]
        type.status = params[:status]
        type.port = params[:port]
        type.vpc_id = params[:vpc_id]
        type.cluster_create_time = params[:cluster_create_time]
        type.master_username = params[:master_username]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.snapshot_type = params[:snapshot_type]
        type.percent_progress = params[:percent_progress]
        type.storage_encrypted = params[:storage_encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_cluster_snapshot_identifier = params[:db_cluster_snapshot_identifier]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type
      end
    end

    module AwsRdsDbDomainMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbDomainMembership, context: context)
        type = Types::AwsRdsDbDomainMembership.new
        type.domain = params[:domain]
        type.status = params[:status]
        type.fqdn = params[:fqdn]
        type.iam_role_name = params[:iam_role_name]
        type
      end
    end

    module AwsRdsDbDomainMemberships
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbDomainMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbInstanceAssociatedRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbInstanceAssociatedRole, context: context)
        type = Types::AwsRdsDbInstanceAssociatedRole.new
        type.role_arn = params[:role_arn]
        type.feature_name = params[:feature_name]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbInstanceAssociatedRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbInstanceAssociatedRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbInstanceDetails, context: context)
        type = Types::AwsRdsDbInstanceDetails.new
        type.associated_roles = AwsRdsDbInstanceAssociatedRoles.build(params[:associated_roles], context: "#{context}[:associated_roles]") unless params[:associated_roles].nil?
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_instance_class = params[:db_instance_class]
        type.db_instance_port = params[:db_instance_port]
        type.dbi_resource_id = params[:dbi_resource_id]
        type.db_name = params[:db_name]
        type.deletion_protection = params[:deletion_protection]
        type.endpoint = AwsRdsDbInstanceEndpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.engine = params[:engine]
        type.engine_version = params[:engine_version]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.instance_create_time = params[:instance_create_time]
        type.kms_key_id = params[:kms_key_id]
        type.publicly_accessible = params[:publicly_accessible]
        type.storage_encrypted = params[:storage_encrypted]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.vpc_security_groups = AwsRdsDbInstanceVpcSecurityGroups.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.multi_az = params[:multi_az]
        type.enhanced_monitoring_resource_arn = params[:enhanced_monitoring_resource_arn]
        type.db_instance_status = params[:db_instance_status]
        type.master_username = params[:master_username]
        type.allocated_storage = params[:allocated_storage]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.backup_retention_period = params[:backup_retention_period]
        type.db_security_groups = StringList.build(params[:db_security_groups], context: "#{context}[:db_security_groups]") unless params[:db_security_groups].nil?
        type.db_parameter_groups = AwsRdsDbParameterGroups.build(params[:db_parameter_groups], context: "#{context}[:db_parameter_groups]") unless params[:db_parameter_groups].nil?
        type.availability_zone = params[:availability_zone]
        type.db_subnet_group = AwsRdsDbSubnetGroup.build(params[:db_subnet_group], context: "#{context}[:db_subnet_group]") unless params[:db_subnet_group].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_modified_values = AwsRdsDbPendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.latest_restorable_time = params[:latest_restorable_time]
        type.auto_minor_version_upgrade = params[:auto_minor_version_upgrade]
        type.read_replica_source_db_instance_identifier = params[:read_replica_source_db_instance_identifier]
        type.read_replica_db_instance_identifiers = StringList.build(params[:read_replica_db_instance_identifiers], context: "#{context}[:read_replica_db_instance_identifiers]") unless params[:read_replica_db_instance_identifiers].nil?
        type.read_replica_db_cluster_identifiers = StringList.build(params[:read_replica_db_cluster_identifiers], context: "#{context}[:read_replica_db_cluster_identifiers]") unless params[:read_replica_db_cluster_identifiers].nil?
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.option_group_memberships = AwsRdsDbOptionGroupMemberships.build(params[:option_group_memberships], context: "#{context}[:option_group_memberships]") unless params[:option_group_memberships].nil?
        type.character_set_name = params[:character_set_name]
        type.secondary_availability_zone = params[:secondary_availability_zone]
        type.status_infos = AwsRdsDbStatusInfos.build(params[:status_infos], context: "#{context}[:status_infos]") unless params[:status_infos].nil?
        type.storage_type = params[:storage_type]
        type.domain_memberships = AwsRdsDbDomainMemberships.build(params[:domain_memberships], context: "#{context}[:domain_memberships]") unless params[:domain_memberships].nil?
        type.copy_tags_to_snapshot = params[:copy_tags_to_snapshot]
        type.monitoring_interval = params[:monitoring_interval]
        type.monitoring_role_arn = params[:monitoring_role_arn]
        type.promotion_tier = params[:promotion_tier]
        type.timezone = params[:timezone]
        type.performance_insights_enabled = params[:performance_insights_enabled]
        type.performance_insights_kms_key_id = params[:performance_insights_kms_key_id]
        type.performance_insights_retention_period = params[:performance_insights_retention_period]
        type.enabled_cloud_watch_logs_exports = StringList.build(params[:enabled_cloud_watch_logs_exports], context: "#{context}[:enabled_cloud_watch_logs_exports]") unless params[:enabled_cloud_watch_logs_exports].nil?
        type.processor_features = AwsRdsDbProcessorFeatures.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.listener_endpoint = AwsRdsDbInstanceEndpoint.build(params[:listener_endpoint], context: "#{context}[:listener_endpoint]") unless params[:listener_endpoint].nil?
        type.max_allocated_storage = params[:max_allocated_storage]
        type
      end
    end

    module AwsRdsDbInstanceEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbInstanceEndpoint, context: context)
        type = Types::AwsRdsDbInstanceEndpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module AwsRdsDbInstanceVpcSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbInstanceVpcSecurityGroup, context: context)
        type = Types::AwsRdsDbInstanceVpcSecurityGroup.new
        type.vpc_security_group_id = params[:vpc_security_group_id]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbInstanceVpcSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbInstanceVpcSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbOptionGroupMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbOptionGroupMembership, context: context)
        type = Types::AwsRdsDbOptionGroupMembership.new
        type.option_group_name = params[:option_group_name]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbOptionGroupMemberships
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbOptionGroupMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbParameterGroup, context: context)
        type = Types::AwsRdsDbParameterGroup.new
        type.db_parameter_group_name = params[:db_parameter_group_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type
      end
    end

    module AwsRdsDbParameterGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbPendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbPendingModifiedValues, context: context)
        type = Types::AwsRdsDbPendingModifiedValues.new
        type.db_instance_class = params[:db_instance_class]
        type.allocated_storage = params[:allocated_storage]
        type.master_user_password = params[:master_user_password]
        type.port = params[:port]
        type.backup_retention_period = params[:backup_retention_period]
        type.multi_az = params[:multi_az]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.iops = params[:iops]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.storage_type = params[:storage_type]
        type.ca_certificate_identifier = params[:ca_certificate_identifier]
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.pending_cloud_watch_logs_exports = AwsRdsPendingCloudWatchLogsExports.build(params[:pending_cloud_watch_logs_exports], context: "#{context}[:pending_cloud_watch_logs_exports]") unless params[:pending_cloud_watch_logs_exports].nil?
        type.processor_features = AwsRdsDbProcessorFeatures.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type
      end
    end

    module AwsRdsDbProcessorFeature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbProcessorFeature, context: context)
        type = Types::AwsRdsDbProcessorFeature.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AwsRdsDbProcessorFeatures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbProcessorFeature.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbSecurityGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSecurityGroupDetails, context: context)
        type = Types::AwsRdsDbSecurityGroupDetails.new
        type.db_security_group_arn = params[:db_security_group_arn]
        type.db_security_group_description = params[:db_security_group_description]
        type.db_security_group_name = params[:db_security_group_name]
        type.ec2_security_groups = AwsRdsDbSecurityGroupEc2SecurityGroups.build(params[:ec2_security_groups], context: "#{context}[:ec2_security_groups]") unless params[:ec2_security_groups].nil?
        type.ip_ranges = AwsRdsDbSecurityGroupIpRanges.build(params[:ip_ranges], context: "#{context}[:ip_ranges]") unless params[:ip_ranges].nil?
        type.owner_id = params[:owner_id]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module AwsRdsDbSecurityGroupEc2SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSecurityGroupEc2SecurityGroup, context: context)
        type = Types::AwsRdsDbSecurityGroupEc2SecurityGroup.new
        type.ec2_security_group_id = params[:ec2_security_group_id]
        type.ec2_security_group_name = params[:ec2_security_group_name]
        type.ec2_security_group_owner_id = params[:ec2_security_group_owner_id]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbSecurityGroupEc2SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbSecurityGroupEc2SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbSecurityGroupIpRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSecurityGroupIpRange, context: context)
        type = Types::AwsRdsDbSecurityGroupIpRange.new
        type.cidr_ip = params[:cidr_ip]
        type.status = params[:status]
        type
      end
    end

    module AwsRdsDbSecurityGroupIpRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbSecurityGroupIpRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbSnapshotDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSnapshotDetails, context: context)
        type = Types::AwsRdsDbSnapshotDetails.new
        type.db_snapshot_identifier = params[:db_snapshot_identifier]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.snapshot_create_time = params[:snapshot_create_time]
        type.engine = params[:engine]
        type.allocated_storage = params[:allocated_storage]
        type.status = params[:status]
        type.port = params[:port]
        type.availability_zone = params[:availability_zone]
        type.vpc_id = params[:vpc_id]
        type.instance_create_time = params[:instance_create_time]
        type.master_username = params[:master_username]
        type.engine_version = params[:engine_version]
        type.license_model = params[:license_model]
        type.snapshot_type = params[:snapshot_type]
        type.iops = params[:iops]
        type.option_group_name = params[:option_group_name]
        type.percent_progress = params[:percent_progress]
        type.source_region = params[:source_region]
        type.source_db_snapshot_identifier = params[:source_db_snapshot_identifier]
        type.storage_type = params[:storage_type]
        type.tde_credential_arn = params[:tde_credential_arn]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.timezone = params[:timezone]
        type.iam_database_authentication_enabled = params[:iam_database_authentication_enabled]
        type.processor_features = AwsRdsDbProcessorFeatures.build(params[:processor_features], context: "#{context}[:processor_features]") unless params[:processor_features].nil?
        type.dbi_resource_id = params[:dbi_resource_id]
        type
      end
    end

    module AwsRdsDbStatusInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbStatusInfo, context: context)
        type = Types::AwsRdsDbStatusInfo.new
        type.status_type = params[:status_type]
        type.normal = params[:normal]
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module AwsRdsDbStatusInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbStatusInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsDbSubnetGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSubnetGroup, context: context)
        type = Types::AwsRdsDbSubnetGroup.new
        type.db_subnet_group_name = params[:db_subnet_group_name]
        type.db_subnet_group_description = params[:db_subnet_group_description]
        type.vpc_id = params[:vpc_id]
        type.subnet_group_status = params[:subnet_group_status]
        type.subnets = AwsRdsDbSubnetGroupSubnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.db_subnet_group_arn = params[:db_subnet_group_arn]
        type
      end
    end

    module AwsRdsDbSubnetGroupSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSubnetGroupSubnet, context: context)
        type = Types::AwsRdsDbSubnetGroupSubnet.new
        type.subnet_identifier = params[:subnet_identifier]
        type.subnet_availability_zone = AwsRdsDbSubnetGroupSubnetAvailabilityZone.build(params[:subnet_availability_zone], context: "#{context}[:subnet_availability_zone]") unless params[:subnet_availability_zone].nil?
        type.subnet_status = params[:subnet_status]
        type
      end
    end

    module AwsRdsDbSubnetGroupSubnetAvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone, context: context)
        type = Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone.new
        type.name = params[:name]
        type
      end
    end

    module AwsRdsDbSubnetGroupSubnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRdsDbSubnetGroupSubnet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRdsEventSubscriptionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsEventSubscriptionDetails, context: context)
        type = Types::AwsRdsEventSubscriptionDetails.new
        type.cust_subscription_id = params[:cust_subscription_id]
        type.customer_aws_id = params[:customer_aws_id]
        type.enabled = params[:enabled]
        type.event_categories_list = NonEmptyStringList.build(params[:event_categories_list], context: "#{context}[:event_categories_list]") unless params[:event_categories_list].nil?
        type.event_subscription_arn = params[:event_subscription_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.source_ids_list = NonEmptyStringList.build(params[:source_ids_list], context: "#{context}[:source_ids_list]") unless params[:source_ids_list].nil?
        type.source_type = params[:source_type]
        type.status = params[:status]
        type.subscription_creation_time = params[:subscription_creation_time]
        type
      end
    end

    module AwsRdsPendingCloudWatchLogsExports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRdsPendingCloudWatchLogsExports, context: context)
        type = Types::AwsRdsPendingCloudWatchLogsExports.new
        type.log_types_to_enable = StringList.build(params[:log_types_to_enable], context: "#{context}[:log_types_to_enable]") unless params[:log_types_to_enable].nil?
        type.log_types_to_disable = StringList.build(params[:log_types_to_disable], context: "#{context}[:log_types_to_disable]") unless params[:log_types_to_disable].nil?
        type
      end
    end

    module AwsRedshiftClusterClusterNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterClusterNode, context: context)
        type = Types::AwsRedshiftClusterClusterNode.new
        type.node_role = params[:node_role]
        type.private_ip_address = params[:private_ip_address]
        type.public_ip_address = params[:public_ip_address]
        type
      end
    end

    module AwsRedshiftClusterClusterNodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterClusterNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterClusterParameterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterClusterParameterGroup, context: context)
        type = Types::AwsRedshiftClusterClusterParameterGroup.new
        type.cluster_parameter_status_list = AwsRedshiftClusterClusterParameterStatusList.build(params[:cluster_parameter_status_list], context: "#{context}[:cluster_parameter_status_list]") unless params[:cluster_parameter_status_list].nil?
        type.parameter_apply_status = params[:parameter_apply_status]
        type.parameter_group_name = params[:parameter_group_name]
        type
      end
    end

    module AwsRedshiftClusterClusterParameterGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterClusterParameterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterClusterParameterStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterClusterParameterStatus, context: context)
        type = Types::AwsRedshiftClusterClusterParameterStatus.new
        type.parameter_name = params[:parameter_name]
        type.parameter_apply_status = params[:parameter_apply_status]
        type.parameter_apply_error_description = params[:parameter_apply_error_description]
        type
      end
    end

    module AwsRedshiftClusterClusterParameterStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterClusterParameterStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterClusterSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterClusterSecurityGroup, context: context)
        type = Types::AwsRedshiftClusterClusterSecurityGroup.new
        type.cluster_security_group_name = params[:cluster_security_group_name]
        type.status = params[:status]
        type
      end
    end

    module AwsRedshiftClusterClusterSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterClusterSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterClusterSnapshotCopyStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterClusterSnapshotCopyStatus, context: context)
        type = Types::AwsRedshiftClusterClusterSnapshotCopyStatus.new
        type.destination_region = params[:destination_region]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.retention_period = params[:retention_period]
        type.snapshot_copy_grant_name = params[:snapshot_copy_grant_name]
        type
      end
    end

    module AwsRedshiftClusterDeferredMaintenanceWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterDeferredMaintenanceWindow, context: context)
        type = Types::AwsRedshiftClusterDeferredMaintenanceWindow.new
        type.defer_maintenance_end_time = params[:defer_maintenance_end_time]
        type.defer_maintenance_identifier = params[:defer_maintenance_identifier]
        type.defer_maintenance_start_time = params[:defer_maintenance_start_time]
        type
      end
    end

    module AwsRedshiftClusterDeferredMaintenanceWindows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterDeferredMaintenanceWindow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterDetails, context: context)
        type = Types::AwsRedshiftClusterDetails.new
        type.allow_version_upgrade = params[:allow_version_upgrade]
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.availability_zone = params[:availability_zone]
        type.cluster_availability_status = params[:cluster_availability_status]
        type.cluster_create_time = params[:cluster_create_time]
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_nodes = AwsRedshiftClusterClusterNodes.build(params[:cluster_nodes], context: "#{context}[:cluster_nodes]") unless params[:cluster_nodes].nil?
        type.cluster_parameter_groups = AwsRedshiftClusterClusterParameterGroups.build(params[:cluster_parameter_groups], context: "#{context}[:cluster_parameter_groups]") unless params[:cluster_parameter_groups].nil?
        type.cluster_public_key = params[:cluster_public_key]
        type.cluster_revision_number = params[:cluster_revision_number]
        type.cluster_security_groups = AwsRedshiftClusterClusterSecurityGroups.build(params[:cluster_security_groups], context: "#{context}[:cluster_security_groups]") unless params[:cluster_security_groups].nil?
        type.cluster_snapshot_copy_status = AwsRedshiftClusterClusterSnapshotCopyStatus.build(params[:cluster_snapshot_copy_status], context: "#{context}[:cluster_snapshot_copy_status]") unless params[:cluster_snapshot_copy_status].nil?
        type.cluster_status = params[:cluster_status]
        type.cluster_subnet_group_name = params[:cluster_subnet_group_name]
        type.cluster_version = params[:cluster_version]
        type.db_name = params[:db_name]
        type.deferred_maintenance_windows = AwsRedshiftClusterDeferredMaintenanceWindows.build(params[:deferred_maintenance_windows], context: "#{context}[:deferred_maintenance_windows]") unless params[:deferred_maintenance_windows].nil?
        type.elastic_ip_status = AwsRedshiftClusterElasticIpStatus.build(params[:elastic_ip_status], context: "#{context}[:elastic_ip_status]") unless params[:elastic_ip_status].nil?
        type.elastic_resize_number_of_node_options = params[:elastic_resize_number_of_node_options]
        type.encrypted = params[:encrypted]
        type.endpoint = AwsRedshiftClusterEndpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.expected_next_snapshot_schedule_time = params[:expected_next_snapshot_schedule_time]
        type.expected_next_snapshot_schedule_time_status = params[:expected_next_snapshot_schedule_time_status]
        type.hsm_status = AwsRedshiftClusterHsmStatus.build(params[:hsm_status], context: "#{context}[:hsm_status]") unless params[:hsm_status].nil?
        type.iam_roles = AwsRedshiftClusterIamRoles.build(params[:iam_roles], context: "#{context}[:iam_roles]") unless params[:iam_roles].nil?
        type.kms_key_id = params[:kms_key_id]
        type.maintenance_track_name = params[:maintenance_track_name]
        type.manual_snapshot_retention_period = params[:manual_snapshot_retention_period]
        type.master_username = params[:master_username]
        type.next_maintenance_window_start_time = params[:next_maintenance_window_start_time]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.pending_actions = StringList.build(params[:pending_actions], context: "#{context}[:pending_actions]") unless params[:pending_actions].nil?
        type.pending_modified_values = AwsRedshiftClusterPendingModifiedValues.build(params[:pending_modified_values], context: "#{context}[:pending_modified_values]") unless params[:pending_modified_values].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.publicly_accessible = params[:publicly_accessible]
        type.resize_info = AwsRedshiftClusterResizeInfo.build(params[:resize_info], context: "#{context}[:resize_info]") unless params[:resize_info].nil?
        type.restore_status = AwsRedshiftClusterRestoreStatus.build(params[:restore_status], context: "#{context}[:restore_status]") unless params[:restore_status].nil?
        type.snapshot_schedule_identifier = params[:snapshot_schedule_identifier]
        type.snapshot_schedule_state = params[:snapshot_schedule_state]
        type.vpc_id = params[:vpc_id]
        type.vpc_security_groups = AwsRedshiftClusterVpcSecurityGroups.build(params[:vpc_security_groups], context: "#{context}[:vpc_security_groups]") unless params[:vpc_security_groups].nil?
        type.logging_status = AwsRedshiftClusterLoggingStatus.build(params[:logging_status], context: "#{context}[:logging_status]") unless params[:logging_status].nil?
        type
      end
    end

    module AwsRedshiftClusterElasticIpStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterElasticIpStatus, context: context)
        type = Types::AwsRedshiftClusterElasticIpStatus.new
        type.elastic_ip = params[:elastic_ip]
        type.status = params[:status]
        type
      end
    end

    module AwsRedshiftClusterEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterEndpoint, context: context)
        type = Types::AwsRedshiftClusterEndpoint.new
        type.address = params[:address]
        type.port = params[:port]
        type
      end
    end

    module AwsRedshiftClusterHsmStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterHsmStatus, context: context)
        type = Types::AwsRedshiftClusterHsmStatus.new
        type.hsm_client_certificate_identifier = params[:hsm_client_certificate_identifier]
        type.hsm_configuration_identifier = params[:hsm_configuration_identifier]
        type.status = params[:status]
        type
      end
    end

    module AwsRedshiftClusterIamRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterIamRole, context: context)
        type = Types::AwsRedshiftClusterIamRole.new
        type.apply_status = params[:apply_status]
        type.iam_role_arn = params[:iam_role_arn]
        type
      end
    end

    module AwsRedshiftClusterIamRoles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterIamRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsRedshiftClusterLoggingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterLoggingStatus, context: context)
        type = Types::AwsRedshiftClusterLoggingStatus.new
        type.bucket_name = params[:bucket_name]
        type.last_failure_message = params[:last_failure_message]
        type.last_failure_time = params[:last_failure_time]
        type.last_successful_delivery_time = params[:last_successful_delivery_time]
        type.logging_enabled = params[:logging_enabled]
        type.s3_key_prefix = params[:s3_key_prefix]
        type
      end
    end

    module AwsRedshiftClusterPendingModifiedValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterPendingModifiedValues, context: context)
        type = Types::AwsRedshiftClusterPendingModifiedValues.new
        type.automated_snapshot_retention_period = params[:automated_snapshot_retention_period]
        type.cluster_identifier = params[:cluster_identifier]
        type.cluster_type = params[:cluster_type]
        type.cluster_version = params[:cluster_version]
        type.encryption_type = params[:encryption_type]
        type.enhanced_vpc_routing = params[:enhanced_vpc_routing]
        type.maintenance_track_name = params[:maintenance_track_name]
        type.master_user_password = params[:master_user_password]
        type.node_type = params[:node_type]
        type.number_of_nodes = params[:number_of_nodes]
        type.publicly_accessible = params[:publicly_accessible]
        type
      end
    end

    module AwsRedshiftClusterResizeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterResizeInfo, context: context)
        type = Types::AwsRedshiftClusterResizeInfo.new
        type.allow_cancel_resize = params[:allow_cancel_resize]
        type.resize_type = params[:resize_type]
        type
      end
    end

    module AwsRedshiftClusterRestoreStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterRestoreStatus, context: context)
        type = Types::AwsRedshiftClusterRestoreStatus.new
        type.current_restore_rate_in_mega_bytes_per_second = params[:current_restore_rate_in_mega_bytes_per_second]
        type.elapsed_time_in_seconds = params[:elapsed_time_in_seconds]
        type.estimated_time_to_completion_in_seconds = params[:estimated_time_to_completion_in_seconds]
        type.progress_in_mega_bytes = params[:progress_in_mega_bytes]
        type.snapshot_size_in_mega_bytes = params[:snapshot_size_in_mega_bytes]
        type.status = params[:status]
        type
      end
    end

    module AwsRedshiftClusterVpcSecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsRedshiftClusterVpcSecurityGroup, context: context)
        type = Types::AwsRedshiftClusterVpcSecurityGroup.new
        type.status = params[:status]
        type.vpc_security_group_id = params[:vpc_security_group_id]
        type
      end
    end

    module AwsRedshiftClusterVpcSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsRedshiftClusterVpcSecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3AccountPublicAccessBlockDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3AccountPublicAccessBlockDetails, context: context)
        type = Types::AwsS3AccountPublicAccessBlockDetails.new
        type.block_public_acls = params[:block_public_acls]
        type.block_public_policy = params[:block_public_policy]
        type.ignore_public_acls = params[:ignore_public_acls]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationDetails.new
        type.rules = AwsS3BucketBucketLifecycleConfigurationRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.new
        type.days_after_initiation = params[:days_after_initiation]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesDetails.new
        type.abort_incomplete_multipart_upload = AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails.build(params[:abort_incomplete_multipart_upload], context: "#{context}[:abort_incomplete_multipart_upload]") unless params[:abort_incomplete_multipart_upload].nil?
        type.expiration_date = params[:expiration_date]
        type.expiration_in_days = params[:expiration_in_days]
        type.expired_object_delete_marker = params[:expired_object_delete_marker]
        type.filter = AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.id = params[:id]
        type.noncurrent_version_expiration_in_days = params[:noncurrent_version_expiration_in_days]
        type.noncurrent_version_transitions = AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList.build(params[:noncurrent_version_transitions], context: "#{context}[:noncurrent_version_transitions]") unless params[:noncurrent_version_transitions].nil?
        type.prefix = params[:prefix]
        type.status = params[:status]
        type.transitions = AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList.build(params[:transitions], context: "#{context}[:transitions]") unless params[:transitions].nil?
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails.new
        type.predicate = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails.new
        type.operands = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList.build(params[:operands], context: "#{context}[:operands]") unless params[:operands].nil?
        type.prefix = params[:prefix]
        type.tag = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.new
        type.prefix = params[:prefix]
        type.tag = AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.build(params[:tag], context: "#{context}[:tag]") unless params[:tag].nil?
        type.type = params[:type]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketBucketLifecycleConfigurationRulesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.new
        type.days = params[:days]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails, context: context)
        type = Types::AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.new
        type.date = params[:date]
        type.days = params[:days]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module AwsS3BucketBucketLifecycleConfigurationRulesTransitionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketBucketVersioningConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketBucketVersioningConfiguration, context: context)
        type = Types::AwsS3BucketBucketVersioningConfiguration.new
        type.is_mfa_delete_enabled = params[:is_mfa_delete_enabled]
        type.status = params[:status]
        type
      end
    end

    module AwsS3BucketDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketDetails, context: context)
        type = Types::AwsS3BucketDetails.new
        type.owner_id = params[:owner_id]
        type.owner_name = params[:owner_name]
        type.owner_account_id = params[:owner_account_id]
        type.created_at = params[:created_at]
        type.server_side_encryption_configuration = AwsS3BucketServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.bucket_lifecycle_configuration = AwsS3BucketBucketLifecycleConfigurationDetails.build(params[:bucket_lifecycle_configuration], context: "#{context}[:bucket_lifecycle_configuration]") unless params[:bucket_lifecycle_configuration].nil?
        type.public_access_block_configuration = AwsS3AccountPublicAccessBlockDetails.build(params[:public_access_block_configuration], context: "#{context}[:public_access_block_configuration]") unless params[:public_access_block_configuration].nil?
        type.access_control_list = params[:access_control_list]
        type.bucket_logging_configuration = AwsS3BucketLoggingConfiguration.build(params[:bucket_logging_configuration], context: "#{context}[:bucket_logging_configuration]") unless params[:bucket_logging_configuration].nil?
        type.bucket_website_configuration = AwsS3BucketWebsiteConfiguration.build(params[:bucket_website_configuration], context: "#{context}[:bucket_website_configuration]") unless params[:bucket_website_configuration].nil?
        type.bucket_notification_configuration = AwsS3BucketNotificationConfiguration.build(params[:bucket_notification_configuration], context: "#{context}[:bucket_notification_configuration]") unless params[:bucket_notification_configuration].nil?
        type.bucket_versioning_configuration = AwsS3BucketBucketVersioningConfiguration.build(params[:bucket_versioning_configuration], context: "#{context}[:bucket_versioning_configuration]") unless params[:bucket_versioning_configuration].nil?
        type
      end
    end

    module AwsS3BucketLoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketLoggingConfiguration, context: context)
        type = Types::AwsS3BucketLoggingConfiguration.new
        type.destination_bucket_name = params[:destination_bucket_name]
        type.log_file_prefix = params[:log_file_prefix]
        type
      end
    end

    module AwsS3BucketNotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketNotificationConfiguration, context: context)
        type = Types::AwsS3BucketNotificationConfiguration.new
        type.configurations = AwsS3BucketNotificationConfigurationDetails.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type
      end
    end

    module AwsS3BucketNotificationConfigurationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketNotificationConfigurationDetail, context: context)
        type = Types::AwsS3BucketNotificationConfigurationDetail.new
        type.events = AwsS3BucketNotificationConfigurationEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.filter = AwsS3BucketNotificationConfigurationFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.destination = params[:destination]
        type.type = params[:type]
        type
      end
    end

    module AwsS3BucketNotificationConfigurationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketNotificationConfigurationDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketNotificationConfigurationEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AwsS3BucketNotificationConfigurationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketNotificationConfigurationFilter, context: context)
        type = Types::AwsS3BucketNotificationConfigurationFilter.new
        type.s3_key_filter = AwsS3BucketNotificationConfigurationS3KeyFilter.build(params[:s3_key_filter], context: "#{context}[:s3_key_filter]") unless params[:s3_key_filter].nil?
        type
      end
    end

    module AwsS3BucketNotificationConfigurationS3KeyFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketNotificationConfigurationS3KeyFilter, context: context)
        type = Types::AwsS3BucketNotificationConfigurationS3KeyFilter.new
        type.filter_rules = AwsS3BucketNotificationConfigurationS3KeyFilterRules.build(params[:filter_rules], context: "#{context}[:filter_rules]") unless params[:filter_rules].nil?
        type
      end
    end

    module AwsS3BucketNotificationConfigurationS3KeyFilterRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule, context: context)
        type = Types::AwsS3BucketNotificationConfigurationS3KeyFilterRule.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AwsS3BucketNotificationConfigurationS3KeyFilterRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketNotificationConfigurationS3KeyFilterRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketServerSideEncryptionByDefault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketServerSideEncryptionByDefault, context: context)
        type = Types::AwsS3BucketServerSideEncryptionByDefault.new
        type.sse_algorithm = params[:sse_algorithm]
        type.kms_master_key_id = params[:kms_master_key_id]
        type
      end
    end

    module AwsS3BucketServerSideEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketServerSideEncryptionConfiguration, context: context)
        type = Types::AwsS3BucketServerSideEncryptionConfiguration.new
        type.rules = AwsS3BucketServerSideEncryptionRules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module AwsS3BucketServerSideEncryptionRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketServerSideEncryptionRule, context: context)
        type = Types::AwsS3BucketServerSideEncryptionRule.new
        type.apply_server_side_encryption_by_default = AwsS3BucketServerSideEncryptionByDefault.build(params[:apply_server_side_encryption_by_default], context: "#{context}[:apply_server_side_encryption_by_default]") unless params[:apply_server_side_encryption_by_default].nil?
        type
      end
    end

    module AwsS3BucketServerSideEncryptionRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketServerSideEncryptionRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3BucketWebsiteConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketWebsiteConfiguration, context: context)
        type = Types::AwsS3BucketWebsiteConfiguration.new
        type.error_document = params[:error_document]
        type.index_document_suffix = params[:index_document_suffix]
        type.redirect_all_requests_to = AwsS3BucketWebsiteConfigurationRedirectTo.build(params[:redirect_all_requests_to], context: "#{context}[:redirect_all_requests_to]") unless params[:redirect_all_requests_to].nil?
        type.routing_rules = AwsS3BucketWebsiteConfigurationRoutingRules.build(params[:routing_rules], context: "#{context}[:routing_rules]") unless params[:routing_rules].nil?
        type
      end
    end

    module AwsS3BucketWebsiteConfigurationRedirectTo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketWebsiteConfigurationRedirectTo, context: context)
        type = Types::AwsS3BucketWebsiteConfigurationRedirectTo.new
        type.hostname = params[:hostname]
        type.protocol = params[:protocol]
        type
      end
    end

    module AwsS3BucketWebsiteConfigurationRoutingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketWebsiteConfigurationRoutingRule, context: context)
        type = Types::AwsS3BucketWebsiteConfigurationRoutingRule.new
        type.condition = AwsS3BucketWebsiteConfigurationRoutingRuleCondition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.redirect = AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.build(params[:redirect], context: "#{context}[:redirect]") unless params[:redirect].nil?
        type
      end
    end

    module AwsS3BucketWebsiteConfigurationRoutingRuleCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition, context: context)
        type = Types::AwsS3BucketWebsiteConfigurationRoutingRuleCondition.new
        type.http_error_code_returned_equals = params[:http_error_code_returned_equals]
        type.key_prefix_equals = params[:key_prefix_equals]
        type
      end
    end

    module AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect, context: context)
        type = Types::AwsS3BucketWebsiteConfigurationRoutingRuleRedirect.new
        type.hostname = params[:hostname]
        type.http_redirect_code = params[:http_redirect_code]
        type.protocol = params[:protocol]
        type.replace_key_prefix_with = params[:replace_key_prefix_with]
        type.replace_key_with = params[:replace_key_with]
        type
      end
    end

    module AwsS3BucketWebsiteConfigurationRoutingRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsS3BucketWebsiteConfigurationRoutingRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsS3ObjectDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsS3ObjectDetails, context: context)
        type = Types::AwsS3ObjectDetails.new
        type.last_modified = params[:last_modified]
        type.e_tag = params[:e_tag]
        type.version_id = params[:version_id]
        type.content_type = params[:content_type]
        type.server_side_encryption = params[:server_side_encryption]
        type.ssekms_key_id = params[:ssekms_key_id]
        type
      end
    end

    module AwsSecretsManagerSecretDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSecretsManagerSecretDetails, context: context)
        type = Types::AwsSecretsManagerSecretDetails.new
        type.rotation_rules = AwsSecretsManagerSecretRotationRules.build(params[:rotation_rules], context: "#{context}[:rotation_rules]") unless params[:rotation_rules].nil?
        type.rotation_occurred_within_frequency = params[:rotation_occurred_within_frequency]
        type.kms_key_id = params[:kms_key_id]
        type.rotation_enabled = params[:rotation_enabled]
        type.rotation_lambda_arn = params[:rotation_lambda_arn]
        type.deleted = params[:deleted]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module AwsSecretsManagerSecretRotationRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSecretsManagerSecretRotationRules, context: context)
        type = Types::AwsSecretsManagerSecretRotationRules.new
        type.automatically_after_days = params[:automatically_after_days]
        type
      end
    end

    module AwsSecurityFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSecurityFinding, context: context)
        type = Types::AwsSecurityFinding.new
        type.schema_version = params[:schema_version]
        type.id = params[:id]
        type.product_arn = params[:product_arn]
        type.product_name = params[:product_name]
        type.company_name = params[:company_name]
        type.region = params[:region]
        type.generator_id = params[:generator_id]
        type.aws_account_id = params[:aws_account_id]
        type.types = TypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.first_observed_at = params[:first_observed_at]
        type.last_observed_at = params[:last_observed_at]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.severity = Severity.build(params[:severity], context: "#{context}[:severity]") unless params[:severity].nil?
        type.confidence = params[:confidence]
        type.criticality = params[:criticality]
        type.title = params[:title]
        type.description = params[:description]
        type.remediation = Remediation.build(params[:remediation], context: "#{context}[:remediation]") unless params[:remediation].nil?
        type.source_url = params[:source_url]
        type.product_fields = FieldMap.build(params[:product_fields], context: "#{context}[:product_fields]") unless params[:product_fields].nil?
        type.user_defined_fields = FieldMap.build(params[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless params[:user_defined_fields].nil?
        type.malware = MalwareList.build(params[:malware], context: "#{context}[:malware]") unless params[:malware].nil?
        type.network = Network.build(params[:network], context: "#{context}[:network]") unless params[:network].nil?
        type.network_path = NetworkPathList.build(params[:network_path], context: "#{context}[:network_path]") unless params[:network_path].nil?
        type.process = ProcessDetails.build(params[:process], context: "#{context}[:process]") unless params[:process].nil?
        type.threat_intel_indicators = ThreatIntelIndicatorList.build(params[:threat_intel_indicators], context: "#{context}[:threat_intel_indicators]") unless params[:threat_intel_indicators].nil?
        type.resources = ResourceList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.compliance = Compliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.verification_state = params[:verification_state]
        type.workflow_state = params[:workflow_state]
        type.workflow = Workflow.build(params[:workflow], context: "#{context}[:workflow]") unless params[:workflow].nil?
        type.record_state = params[:record_state]
        type.related_findings = RelatedFindingList.build(params[:related_findings], context: "#{context}[:related_findings]") unless params[:related_findings].nil?
        type.note = Note.build(params[:note], context: "#{context}[:note]") unless params[:note].nil?
        type.vulnerabilities = VulnerabilityList.build(params[:vulnerabilities], context: "#{context}[:vulnerabilities]") unless params[:vulnerabilities].nil?
        type.patch_summary = PatchSummary.build(params[:patch_summary], context: "#{context}[:patch_summary]") unless params[:patch_summary].nil?
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.finding_provider_fields = FindingProviderFields.build(params[:finding_provider_fields], context: "#{context}[:finding_provider_fields]") unless params[:finding_provider_fields].nil?
        type.sample = params[:sample]
        type
      end
    end

    module AwsSecurityFindingFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSecurityFindingFilters, context: context)
        type = Types::AwsSecurityFindingFilters.new
        type.product_arn = StringFilterList.build(params[:product_arn], context: "#{context}[:product_arn]") unless params[:product_arn].nil?
        type.aws_account_id = StringFilterList.build(params[:aws_account_id], context: "#{context}[:aws_account_id]") unless params[:aws_account_id].nil?
        type.id = StringFilterList.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.generator_id = StringFilterList.build(params[:generator_id], context: "#{context}[:generator_id]") unless params[:generator_id].nil?
        type.region = StringFilterList.build(params[:region], context: "#{context}[:region]") unless params[:region].nil?
        type.type = StringFilterList.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.first_observed_at = DateFilterList.build(params[:first_observed_at], context: "#{context}[:first_observed_at]") unless params[:first_observed_at].nil?
        type.last_observed_at = DateFilterList.build(params[:last_observed_at], context: "#{context}[:last_observed_at]") unless params[:last_observed_at].nil?
        type.created_at = DateFilterList.build(params[:created_at], context: "#{context}[:created_at]") unless params[:created_at].nil?
        type.updated_at = DateFilterList.build(params[:updated_at], context: "#{context}[:updated_at]") unless params[:updated_at].nil?
        type.severity_product = NumberFilterList.build(params[:severity_product], context: "#{context}[:severity_product]") unless params[:severity_product].nil?
        type.severity_normalized = NumberFilterList.build(params[:severity_normalized], context: "#{context}[:severity_normalized]") unless params[:severity_normalized].nil?
        type.severity_label = StringFilterList.build(params[:severity_label], context: "#{context}[:severity_label]") unless params[:severity_label].nil?
        type.confidence = NumberFilterList.build(params[:confidence], context: "#{context}[:confidence]") unless params[:confidence].nil?
        type.criticality = NumberFilterList.build(params[:criticality], context: "#{context}[:criticality]") unless params[:criticality].nil?
        type.title = StringFilterList.build(params[:title], context: "#{context}[:title]") unless params[:title].nil?
        type.description = StringFilterList.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type.recommendation_text = StringFilterList.build(params[:recommendation_text], context: "#{context}[:recommendation_text]") unless params[:recommendation_text].nil?
        type.source_url = StringFilterList.build(params[:source_url], context: "#{context}[:source_url]") unless params[:source_url].nil?
        type.product_fields = MapFilterList.build(params[:product_fields], context: "#{context}[:product_fields]") unless params[:product_fields].nil?
        type.product_name = StringFilterList.build(params[:product_name], context: "#{context}[:product_name]") unless params[:product_name].nil?
        type.company_name = StringFilterList.build(params[:company_name], context: "#{context}[:company_name]") unless params[:company_name].nil?
        type.user_defined_fields = MapFilterList.build(params[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless params[:user_defined_fields].nil?
        type.malware_name = StringFilterList.build(params[:malware_name], context: "#{context}[:malware_name]") unless params[:malware_name].nil?
        type.malware_type = StringFilterList.build(params[:malware_type], context: "#{context}[:malware_type]") unless params[:malware_type].nil?
        type.malware_path = StringFilterList.build(params[:malware_path], context: "#{context}[:malware_path]") unless params[:malware_path].nil?
        type.malware_state = StringFilterList.build(params[:malware_state], context: "#{context}[:malware_state]") unless params[:malware_state].nil?
        type.network_direction = StringFilterList.build(params[:network_direction], context: "#{context}[:network_direction]") unless params[:network_direction].nil?
        type.network_protocol = StringFilterList.build(params[:network_protocol], context: "#{context}[:network_protocol]") unless params[:network_protocol].nil?
        type.network_source_ip_v4 = IpFilterList.build(params[:network_source_ip_v4], context: "#{context}[:network_source_ip_v4]") unless params[:network_source_ip_v4].nil?
        type.network_source_ip_v6 = IpFilterList.build(params[:network_source_ip_v6], context: "#{context}[:network_source_ip_v6]") unless params[:network_source_ip_v6].nil?
        type.network_source_port = NumberFilterList.build(params[:network_source_port], context: "#{context}[:network_source_port]") unless params[:network_source_port].nil?
        type.network_source_domain = StringFilterList.build(params[:network_source_domain], context: "#{context}[:network_source_domain]") unless params[:network_source_domain].nil?
        type.network_source_mac = StringFilterList.build(params[:network_source_mac], context: "#{context}[:network_source_mac]") unless params[:network_source_mac].nil?
        type.network_destination_ip_v4 = IpFilterList.build(params[:network_destination_ip_v4], context: "#{context}[:network_destination_ip_v4]") unless params[:network_destination_ip_v4].nil?
        type.network_destination_ip_v6 = IpFilterList.build(params[:network_destination_ip_v6], context: "#{context}[:network_destination_ip_v6]") unless params[:network_destination_ip_v6].nil?
        type.network_destination_port = NumberFilterList.build(params[:network_destination_port], context: "#{context}[:network_destination_port]") unless params[:network_destination_port].nil?
        type.network_destination_domain = StringFilterList.build(params[:network_destination_domain], context: "#{context}[:network_destination_domain]") unless params[:network_destination_domain].nil?
        type.process_name = StringFilterList.build(params[:process_name], context: "#{context}[:process_name]") unless params[:process_name].nil?
        type.process_path = StringFilterList.build(params[:process_path], context: "#{context}[:process_path]") unless params[:process_path].nil?
        type.process_pid = NumberFilterList.build(params[:process_pid], context: "#{context}[:process_pid]") unless params[:process_pid].nil?
        type.process_parent_pid = NumberFilterList.build(params[:process_parent_pid], context: "#{context}[:process_parent_pid]") unless params[:process_parent_pid].nil?
        type.process_launched_at = DateFilterList.build(params[:process_launched_at], context: "#{context}[:process_launched_at]") unless params[:process_launched_at].nil?
        type.process_terminated_at = DateFilterList.build(params[:process_terminated_at], context: "#{context}[:process_terminated_at]") unless params[:process_terminated_at].nil?
        type.threat_intel_indicator_type = StringFilterList.build(params[:threat_intel_indicator_type], context: "#{context}[:threat_intel_indicator_type]") unless params[:threat_intel_indicator_type].nil?
        type.threat_intel_indicator_value = StringFilterList.build(params[:threat_intel_indicator_value], context: "#{context}[:threat_intel_indicator_value]") unless params[:threat_intel_indicator_value].nil?
        type.threat_intel_indicator_category = StringFilterList.build(params[:threat_intel_indicator_category], context: "#{context}[:threat_intel_indicator_category]") unless params[:threat_intel_indicator_category].nil?
        type.threat_intel_indicator_last_observed_at = DateFilterList.build(params[:threat_intel_indicator_last_observed_at], context: "#{context}[:threat_intel_indicator_last_observed_at]") unless params[:threat_intel_indicator_last_observed_at].nil?
        type.threat_intel_indicator_source = StringFilterList.build(params[:threat_intel_indicator_source], context: "#{context}[:threat_intel_indicator_source]") unless params[:threat_intel_indicator_source].nil?
        type.threat_intel_indicator_source_url = StringFilterList.build(params[:threat_intel_indicator_source_url], context: "#{context}[:threat_intel_indicator_source_url]") unless params[:threat_intel_indicator_source_url].nil?
        type.resource_type = StringFilterList.build(params[:resource_type], context: "#{context}[:resource_type]") unless params[:resource_type].nil?
        type.resource_id = StringFilterList.build(params[:resource_id], context: "#{context}[:resource_id]") unless params[:resource_id].nil?
        type.resource_partition = StringFilterList.build(params[:resource_partition], context: "#{context}[:resource_partition]") unless params[:resource_partition].nil?
        type.resource_region = StringFilterList.build(params[:resource_region], context: "#{context}[:resource_region]") unless params[:resource_region].nil?
        type.resource_tags = MapFilterList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.resource_aws_ec2_instance_type = StringFilterList.build(params[:resource_aws_ec2_instance_type], context: "#{context}[:resource_aws_ec2_instance_type]") unless params[:resource_aws_ec2_instance_type].nil?
        type.resource_aws_ec2_instance_image_id = StringFilterList.build(params[:resource_aws_ec2_instance_image_id], context: "#{context}[:resource_aws_ec2_instance_image_id]") unless params[:resource_aws_ec2_instance_image_id].nil?
        type.resource_aws_ec2_instance_ip_v4_addresses = IpFilterList.build(params[:resource_aws_ec2_instance_ip_v4_addresses], context: "#{context}[:resource_aws_ec2_instance_ip_v4_addresses]") unless params[:resource_aws_ec2_instance_ip_v4_addresses].nil?
        type.resource_aws_ec2_instance_ip_v6_addresses = IpFilterList.build(params[:resource_aws_ec2_instance_ip_v6_addresses], context: "#{context}[:resource_aws_ec2_instance_ip_v6_addresses]") unless params[:resource_aws_ec2_instance_ip_v6_addresses].nil?
        type.resource_aws_ec2_instance_key_name = StringFilterList.build(params[:resource_aws_ec2_instance_key_name], context: "#{context}[:resource_aws_ec2_instance_key_name]") unless params[:resource_aws_ec2_instance_key_name].nil?
        type.resource_aws_ec2_instance_iam_instance_profile_arn = StringFilterList.build(params[:resource_aws_ec2_instance_iam_instance_profile_arn], context: "#{context}[:resource_aws_ec2_instance_iam_instance_profile_arn]") unless params[:resource_aws_ec2_instance_iam_instance_profile_arn].nil?
        type.resource_aws_ec2_instance_vpc_id = StringFilterList.build(params[:resource_aws_ec2_instance_vpc_id], context: "#{context}[:resource_aws_ec2_instance_vpc_id]") unless params[:resource_aws_ec2_instance_vpc_id].nil?
        type.resource_aws_ec2_instance_subnet_id = StringFilterList.build(params[:resource_aws_ec2_instance_subnet_id], context: "#{context}[:resource_aws_ec2_instance_subnet_id]") unless params[:resource_aws_ec2_instance_subnet_id].nil?
        type.resource_aws_ec2_instance_launched_at = DateFilterList.build(params[:resource_aws_ec2_instance_launched_at], context: "#{context}[:resource_aws_ec2_instance_launched_at]") unless params[:resource_aws_ec2_instance_launched_at].nil?
        type.resource_aws_s3_bucket_owner_id = StringFilterList.build(params[:resource_aws_s3_bucket_owner_id], context: "#{context}[:resource_aws_s3_bucket_owner_id]") unless params[:resource_aws_s3_bucket_owner_id].nil?
        type.resource_aws_s3_bucket_owner_name = StringFilterList.build(params[:resource_aws_s3_bucket_owner_name], context: "#{context}[:resource_aws_s3_bucket_owner_name]") unless params[:resource_aws_s3_bucket_owner_name].nil?
        type.resource_aws_iam_access_key_user_name = StringFilterList.build(params[:resource_aws_iam_access_key_user_name], context: "#{context}[:resource_aws_iam_access_key_user_name]") unless params[:resource_aws_iam_access_key_user_name].nil?
        type.resource_aws_iam_access_key_principal_name = StringFilterList.build(params[:resource_aws_iam_access_key_principal_name], context: "#{context}[:resource_aws_iam_access_key_principal_name]") unless params[:resource_aws_iam_access_key_principal_name].nil?
        type.resource_aws_iam_access_key_status = StringFilterList.build(params[:resource_aws_iam_access_key_status], context: "#{context}[:resource_aws_iam_access_key_status]") unless params[:resource_aws_iam_access_key_status].nil?
        type.resource_aws_iam_access_key_created_at = DateFilterList.build(params[:resource_aws_iam_access_key_created_at], context: "#{context}[:resource_aws_iam_access_key_created_at]") unless params[:resource_aws_iam_access_key_created_at].nil?
        type.resource_aws_iam_user_user_name = StringFilterList.build(params[:resource_aws_iam_user_user_name], context: "#{context}[:resource_aws_iam_user_user_name]") unless params[:resource_aws_iam_user_user_name].nil?
        type.resource_container_name = StringFilterList.build(params[:resource_container_name], context: "#{context}[:resource_container_name]") unless params[:resource_container_name].nil?
        type.resource_container_image_id = StringFilterList.build(params[:resource_container_image_id], context: "#{context}[:resource_container_image_id]") unless params[:resource_container_image_id].nil?
        type.resource_container_image_name = StringFilterList.build(params[:resource_container_image_name], context: "#{context}[:resource_container_image_name]") unless params[:resource_container_image_name].nil?
        type.resource_container_launched_at = DateFilterList.build(params[:resource_container_launched_at], context: "#{context}[:resource_container_launched_at]") unless params[:resource_container_launched_at].nil?
        type.resource_details_other = MapFilterList.build(params[:resource_details_other], context: "#{context}[:resource_details_other]") unless params[:resource_details_other].nil?
        type.compliance_status = StringFilterList.build(params[:compliance_status], context: "#{context}[:compliance_status]") unless params[:compliance_status].nil?
        type.verification_state = StringFilterList.build(params[:verification_state], context: "#{context}[:verification_state]") unless params[:verification_state].nil?
        type.workflow_state = StringFilterList.build(params[:workflow_state], context: "#{context}[:workflow_state]") unless params[:workflow_state].nil?
        type.workflow_status = StringFilterList.build(params[:workflow_status], context: "#{context}[:workflow_status]") unless params[:workflow_status].nil?
        type.record_state = StringFilterList.build(params[:record_state], context: "#{context}[:record_state]") unless params[:record_state].nil?
        type.related_findings_product_arn = StringFilterList.build(params[:related_findings_product_arn], context: "#{context}[:related_findings_product_arn]") unless params[:related_findings_product_arn].nil?
        type.related_findings_id = StringFilterList.build(params[:related_findings_id], context: "#{context}[:related_findings_id]") unless params[:related_findings_id].nil?
        type.note_text = StringFilterList.build(params[:note_text], context: "#{context}[:note_text]") unless params[:note_text].nil?
        type.note_updated_at = DateFilterList.build(params[:note_updated_at], context: "#{context}[:note_updated_at]") unless params[:note_updated_at].nil?
        type.note_updated_by = StringFilterList.build(params[:note_updated_by], context: "#{context}[:note_updated_by]") unless params[:note_updated_by].nil?
        type.keyword = KeywordFilterList.build(params[:keyword], context: "#{context}[:keyword]") unless params[:keyword].nil?
        type.finding_provider_fields_confidence = NumberFilterList.build(params[:finding_provider_fields_confidence], context: "#{context}[:finding_provider_fields_confidence]") unless params[:finding_provider_fields_confidence].nil?
        type.finding_provider_fields_criticality = NumberFilterList.build(params[:finding_provider_fields_criticality], context: "#{context}[:finding_provider_fields_criticality]") unless params[:finding_provider_fields_criticality].nil?
        type.finding_provider_fields_related_findings_id = StringFilterList.build(params[:finding_provider_fields_related_findings_id], context: "#{context}[:finding_provider_fields_related_findings_id]") unless params[:finding_provider_fields_related_findings_id].nil?
        type.finding_provider_fields_related_findings_product_arn = StringFilterList.build(params[:finding_provider_fields_related_findings_product_arn], context: "#{context}[:finding_provider_fields_related_findings_product_arn]") unless params[:finding_provider_fields_related_findings_product_arn].nil?
        type.finding_provider_fields_severity_label = StringFilterList.build(params[:finding_provider_fields_severity_label], context: "#{context}[:finding_provider_fields_severity_label]") unless params[:finding_provider_fields_severity_label].nil?
        type.finding_provider_fields_severity_original = StringFilterList.build(params[:finding_provider_fields_severity_original], context: "#{context}[:finding_provider_fields_severity_original]") unless params[:finding_provider_fields_severity_original].nil?
        type.finding_provider_fields_types = StringFilterList.build(params[:finding_provider_fields_types], context: "#{context}[:finding_provider_fields_types]") unless params[:finding_provider_fields_types].nil?
        type.sample = BooleanFilterList.build(params[:sample], context: "#{context}[:sample]") unless params[:sample].nil?
        type
      end
    end

    module AwsSecurityFindingIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSecurityFindingIdentifier, context: context)
        type = Types::AwsSecurityFindingIdentifier.new
        type.id = params[:id]
        type.product_arn = params[:product_arn]
        type
      end
    end

    module AwsSecurityFindingIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsSecurityFindingIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsSecurityFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsSecurityFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsSnsTopicDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSnsTopicDetails, context: context)
        type = Types::AwsSnsTopicDetails.new
        type.kms_master_key_id = params[:kms_master_key_id]
        type.subscription = AwsSnsTopicSubscriptionList.build(params[:subscription], context: "#{context}[:subscription]") unless params[:subscription].nil?
        type.topic_name = params[:topic_name]
        type.owner = params[:owner]
        type
      end
    end

    module AwsSnsTopicSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSnsTopicSubscription, context: context)
        type = Types::AwsSnsTopicSubscription.new
        type.endpoint = params[:endpoint]
        type.protocol = params[:protocol]
        type
      end
    end

    module AwsSnsTopicSubscriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsSnsTopicSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsSqsQueueDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSqsQueueDetails, context: context)
        type = Types::AwsSqsQueueDetails.new
        type.kms_data_key_reuse_period_seconds = params[:kms_data_key_reuse_period_seconds]
        type.kms_master_key_id = params[:kms_master_key_id]
        type.queue_name = params[:queue_name]
        type.dead_letter_target_arn = params[:dead_letter_target_arn]
        type
      end
    end

    module AwsSsmComplianceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSsmComplianceSummary, context: context)
        type = Types::AwsSsmComplianceSummary.new
        type.status = params[:status]
        type.compliant_critical_count = params[:compliant_critical_count]
        type.compliant_high_count = params[:compliant_high_count]
        type.compliant_medium_count = params[:compliant_medium_count]
        type.execution_type = params[:execution_type]
        type.non_compliant_critical_count = params[:non_compliant_critical_count]
        type.compliant_informational_count = params[:compliant_informational_count]
        type.non_compliant_informational_count = params[:non_compliant_informational_count]
        type.compliant_unspecified_count = params[:compliant_unspecified_count]
        type.non_compliant_low_count = params[:non_compliant_low_count]
        type.non_compliant_high_count = params[:non_compliant_high_count]
        type.compliant_low_count = params[:compliant_low_count]
        type.compliance_type = params[:compliance_type]
        type.patch_baseline_id = params[:patch_baseline_id]
        type.overall_severity = params[:overall_severity]
        type.non_compliant_medium_count = params[:non_compliant_medium_count]
        type.non_compliant_unspecified_count = params[:non_compliant_unspecified_count]
        type.patch_group = params[:patch_group]
        type
      end
    end

    module AwsSsmPatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSsmPatch, context: context)
        type = Types::AwsSsmPatch.new
        type.compliance_summary = AwsSsmComplianceSummary.build(params[:compliance_summary], context: "#{context}[:compliance_summary]") unless params[:compliance_summary].nil?
        type
      end
    end

    module AwsSsmPatchComplianceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSsmPatchComplianceDetails, context: context)
        type = Types::AwsSsmPatchComplianceDetails.new
        type.patch = AwsSsmPatch.build(params[:patch], context: "#{context}[:patch]") unless params[:patch].nil?
        type
      end
    end

    module AwsWafRateBasedRuleDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafRateBasedRuleDetails, context: context)
        type = Types::AwsWafRateBasedRuleDetails.new
        type.metric_name = params[:metric_name]
        type.name = params[:name]
        type.rate_key = params[:rate_key]
        type.rate_limit = params[:rate_limit]
        type.rule_id = params[:rule_id]
        type.match_predicates = AwsWafRateBasedRuleMatchPredicateList.build(params[:match_predicates], context: "#{context}[:match_predicates]") unless params[:match_predicates].nil?
        type
      end
    end

    module AwsWafRateBasedRuleMatchPredicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafRateBasedRuleMatchPredicate, context: context)
        type = Types::AwsWafRateBasedRuleMatchPredicate.new
        type.data_id = params[:data_id]
        type.negated = params[:negated]
        type.type = params[:type]
        type
      end
    end

    module AwsWafRateBasedRuleMatchPredicateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsWafRateBasedRuleMatchPredicate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsWafRegionalRateBasedRuleDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafRegionalRateBasedRuleDetails, context: context)
        type = Types::AwsWafRegionalRateBasedRuleDetails.new
        type.metric_name = params[:metric_name]
        type.name = params[:name]
        type.rate_key = params[:rate_key]
        type.rate_limit = params[:rate_limit]
        type.rule_id = params[:rule_id]
        type.match_predicates = AwsWafRegionalRateBasedRuleMatchPredicateList.build(params[:match_predicates], context: "#{context}[:match_predicates]") unless params[:match_predicates].nil?
        type
      end
    end

    module AwsWafRegionalRateBasedRuleMatchPredicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafRegionalRateBasedRuleMatchPredicate, context: context)
        type = Types::AwsWafRegionalRateBasedRuleMatchPredicate.new
        type.data_id = params[:data_id]
        type.negated = params[:negated]
        type.type = params[:type]
        type
      end
    end

    module AwsWafRegionalRateBasedRuleMatchPredicateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsWafRegionalRateBasedRuleMatchPredicate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsWafWebAclDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafWebAclDetails, context: context)
        type = Types::AwsWafWebAclDetails.new
        type.name = params[:name]
        type.default_action = params[:default_action]
        type.rules = AwsWafWebAclRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.web_acl_id = params[:web_acl_id]
        type
      end
    end

    module AwsWafWebAclRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsWafWebAclRule, context: context)
        type = Types::AwsWafWebAclRule.new
        type.action = WafAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.excluded_rules = WafExcludedRuleList.build(params[:excluded_rules], context: "#{context}[:excluded_rules]") unless params[:excluded_rules].nil?
        type.override_action = WafOverrideAction.build(params[:override_action], context: "#{context}[:override_action]") unless params[:override_action].nil?
        type.priority = params[:priority]
        type.rule_id = params[:rule_id]
        type.type = params[:type]
        type
      end
    end

    module AwsWafWebAclRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsWafWebAclRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AwsXrayEncryptionConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsXrayEncryptionConfigDetails, context: context)
        type = Types::AwsXrayEncryptionConfigDetails.new
        type.key_id = params[:key_id]
        type.status = params[:status]
        type.type = params[:type]
        type
      end
    end

    module BatchDisableStandardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisableStandardsInput, context: context)
        type = Types::BatchDisableStandardsInput.new
        type.standards_subscription_arns = StandardsSubscriptionArns.build(params[:standards_subscription_arns], context: "#{context}[:standards_subscription_arns]") unless params[:standards_subscription_arns].nil?
        type
      end
    end

    module BatchDisableStandardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisableStandardsOutput, context: context)
        type = Types::BatchDisableStandardsOutput.new
        type.standards_subscriptions = StandardsSubscriptions.build(params[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless params[:standards_subscriptions].nil?
        type
      end
    end

    module BatchEnableStandardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEnableStandardsInput, context: context)
        type = Types::BatchEnableStandardsInput.new
        type.standards_subscription_requests = StandardsSubscriptionRequests.build(params[:standards_subscription_requests], context: "#{context}[:standards_subscription_requests]") unless params[:standards_subscription_requests].nil?
        type
      end
    end

    module BatchEnableStandardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEnableStandardsOutput, context: context)
        type = Types::BatchEnableStandardsOutput.new
        type.standards_subscriptions = StandardsSubscriptions.build(params[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless params[:standards_subscriptions].nil?
        type
      end
    end

    module BatchImportFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImportFindingsInput, context: context)
        type = Types::BatchImportFindingsInput.new
        type.findings = BatchImportFindingsRequestFindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type
      end
    end

    module BatchImportFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImportFindingsOutput, context: context)
        type = Types::BatchImportFindingsOutput.new
        type.failed_count = params[:failed_count]
        type.success_count = params[:success_count]
        type.failed_findings = ImportFindingsErrorList.build(params[:failed_findings], context: "#{context}[:failed_findings]") unless params[:failed_findings].nil?
        type
      end
    end

    module BatchImportFindingsRequestFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AwsSecurityFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdateFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateFindingsInput, context: context)
        type = Types::BatchUpdateFindingsInput.new
        type.finding_identifiers = AwsSecurityFindingIdentifierList.build(params[:finding_identifiers], context: "#{context}[:finding_identifiers]") unless params[:finding_identifiers].nil?
        type.note = NoteUpdate.build(params[:note], context: "#{context}[:note]") unless params[:note].nil?
        type.severity = SeverityUpdate.build(params[:severity], context: "#{context}[:severity]") unless params[:severity].nil?
        type.verification_state = params[:verification_state]
        type.confidence = params[:confidence]
        type.criticality = params[:criticality]
        type.types = TypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.user_defined_fields = FieldMap.build(params[:user_defined_fields], context: "#{context}[:user_defined_fields]") unless params[:user_defined_fields].nil?
        type.workflow = WorkflowUpdate.build(params[:workflow], context: "#{context}[:workflow]") unless params[:workflow].nil?
        type.related_findings = RelatedFindingList.build(params[:related_findings], context: "#{context}[:related_findings]") unless params[:related_findings].nil?
        type
      end
    end

    module BatchUpdateFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateFindingsOutput, context: context)
        type = Types::BatchUpdateFindingsOutput.new
        type.processed_findings = AwsSecurityFindingIdentifierList.build(params[:processed_findings], context: "#{context}[:processed_findings]") unless params[:processed_findings].nil?
        type.unprocessed_findings = BatchUpdateFindingsUnprocessedFindingsList.build(params[:unprocessed_findings], context: "#{context}[:unprocessed_findings]") unless params[:unprocessed_findings].nil?
        type
      end
    end

    module BatchUpdateFindingsUnprocessedFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateFindingsUnprocessedFinding, context: context)
        type = Types::BatchUpdateFindingsUnprocessedFinding.new
        type.finding_identifier = AwsSecurityFindingIdentifier.build(params[:finding_identifier], context: "#{context}[:finding_identifier]") unless params[:finding_identifier].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchUpdateFindingsUnprocessedFindingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchUpdateFindingsUnprocessedFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BooleanFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BooleanFilter, context: context)
        type = Types::BooleanFilter.new
        type.value = params[:value]
        type
      end
    end

    module BooleanFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BooleanFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Cell
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cell, context: context)
        type = Types::Cell.new
        type.column = params[:column]
        type.row = params[:row]
        type.column_name = params[:column_name]
        type.cell_reference = params[:cell_reference]
        type
      end
    end

    module Cells
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cell.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CidrBlockAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrBlockAssociation, context: context)
        type = Types::CidrBlockAssociation.new
        type.association_id = params[:association_id]
        type.cidr_block = params[:cidr_block]
        type.cidr_block_state = params[:cidr_block_state]
        type
      end
    end

    module CidrBlockAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CidrBlockAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module City
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::City, context: context)
        type = Types::City.new
        type.city_name = params[:city_name]
        type
      end
    end

    module ClassificationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationResult, context: context)
        type = Types::ClassificationResult.new
        type.mime_type = params[:mime_type]
        type.size_classified = params[:size_classified]
        type.additional_occurrences = params[:additional_occurrences]
        type.status = ClassificationStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.sensitive_data = SensitiveDataResultList.build(params[:sensitive_data], context: "#{context}[:sensitive_data]") unless params[:sensitive_data].nil?
        type.custom_data_identifiers = CustomDataIdentifiersResult.build(params[:custom_data_identifiers], context: "#{context}[:custom_data_identifiers]") unless params[:custom_data_identifiers].nil?
        type
      end
    end

    module ClassificationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassificationStatus, context: context)
        type = Types::ClassificationStatus.new
        type.code = params[:code]
        type.reason = params[:reason]
        type
      end
    end

    module Compliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Compliance, context: context)
        type = Types::Compliance.new
        type.status = params[:status]
        type.related_requirements = RelatedRequirementsList.build(params[:related_requirements], context: "#{context}[:related_requirements]") unless params[:related_requirements].nil?
        type.status_reasons = StatusReasonsList.build(params[:status_reasons], context: "#{context}[:status_reasons]") unless params[:status_reasons].nil?
        type
      end
    end

    module ContainerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDetails, context: context)
        type = Types::ContainerDetails.new
        type.name = params[:name]
        type.image_id = params[:image_id]
        type.image_name = params[:image_name]
        type.launched_at = params[:launched_at]
        type
      end
    end

    module Country
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Country, context: context)
        type = Types::Country.new
        type.country_code = params[:country_code]
        type.country_name = params[:country_name]
        type
      end
    end

    module CreateActionTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActionTargetInput, context: context)
        type = Types::CreateActionTargetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.id = params[:id]
        type
      end
    end

    module CreateActionTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActionTargetOutput, context: context)
        type = Types::CreateActionTargetOutput.new
        type.action_target_arn = params[:action_target_arn]
        type
      end
    end

    module CreateFindingAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingAggregatorInput, context: context)
        type = Types::CreateFindingAggregatorInput.new
        type.region_linking_mode = params[:region_linking_mode]
        type.regions = StringList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module CreateFindingAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFindingAggregatorOutput, context: context)
        type = Types::CreateFindingAggregatorOutput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type.finding_aggregation_region = params[:finding_aggregation_region]
        type.region_linking_mode = params[:region_linking_mode]
        type.regions = StringList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module CreateInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInsightInput, context: context)
        type = Types::CreateInsightInput.new
        type.name = params[:name]
        type.filters = AwsSecurityFindingFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_attribute = params[:group_by_attribute]
        type
      end
    end

    module CreateInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInsightOutput, context: context)
        type = Types::CreateInsightOutput.new
        type.insight_arn = params[:insight_arn]
        type
      end
    end

    module CreateMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersInput, context: context)
        type = Types::CreateMembersInput.new
        type.account_details = AccountDetailsList.build(params[:account_details], context: "#{context}[:account_details]") unless params[:account_details].nil?
        type
      end
    end

    module CreateMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersOutput, context: context)
        type = Types::CreateMembersOutput.new
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module CustomDataIdentifiersDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDataIdentifiersDetections, context: context)
        type = Types::CustomDataIdentifiersDetections.new
        type.count = params[:count]
        type.arn = params[:arn]
        type.name = params[:name]
        type.occurrences = Occurrences.build(params[:occurrences], context: "#{context}[:occurrences]") unless params[:occurrences].nil?
        type
      end
    end

    module CustomDataIdentifiersDetectionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomDataIdentifiersDetections.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomDataIdentifiersResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDataIdentifiersResult, context: context)
        type = Types::CustomDataIdentifiersResult.new
        type.detections = CustomDataIdentifiersDetectionsList.build(params[:detections], context: "#{context}[:detections]") unless params[:detections].nil?
        type.total_count = params[:total_count]
        type
      end
    end

    module Cvss
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cvss, context: context)
        type = Types::Cvss.new
        type.version = params[:version]
        type.base_score = params[:base_score]
        type.base_vector = params[:base_vector]
        type.source = params[:source]
        type.adjustments = AdjustmentList.build(params[:adjustments], context: "#{context}[:adjustments]") unless params[:adjustments].nil?
        type
      end
    end

    module CvssList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cvss.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataClassificationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataClassificationDetails, context: context)
        type = Types::DataClassificationDetails.new
        type.detailed_results_location = params[:detailed_results_location]
        type.result = ClassificationResult.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module DateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateFilter, context: context)
        type = Types::DateFilter.new
        type.start = params[:start]
        type.end = params[:end]
        type.date_range = DateRange.build(params[:date_range], context: "#{context}[:date_range]") unless params[:date_range].nil?
        type
      end
    end

    module DateFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DateRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateRange, context: context)
        type = Types::DateRange.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
      end
    end

    module DeclineInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsInput, context: context)
        type = Types::DeclineInvitationsInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeclineInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeclineInvitationsOutput, context: context)
        type = Types::DeclineInvitationsOutput.new
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeleteActionTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActionTargetInput, context: context)
        type = Types::DeleteActionTargetInput.new
        type.action_target_arn = params[:action_target_arn]
        type
      end
    end

    module DeleteActionTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActionTargetOutput, context: context)
        type = Types::DeleteActionTargetOutput.new
        type.action_target_arn = params[:action_target_arn]
        type
      end
    end

    module DeleteFindingAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFindingAggregatorInput, context: context)
        type = Types::DeleteFindingAggregatorInput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type
      end
    end

    module DeleteFindingAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFindingAggregatorOutput, context: context)
        type = Types::DeleteFindingAggregatorOutput.new
        type
      end
    end

    module DeleteInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInsightInput, context: context)
        type = Types::DeleteInsightInput.new
        type.insight_arn = params[:insight_arn]
        type
      end
    end

    module DeleteInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInsightOutput, context: context)
        type = Types::DeleteInsightOutput.new
        type.insight_arn = params[:insight_arn]
        type
      end
    end

    module DeleteInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsInput, context: context)
        type = Types::DeleteInvitationsInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInvitationsOutput, context: context)
        type = Types::DeleteInvitationsOutput.new
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeleteMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersInput, context: context)
        type = Types::DeleteMembersInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersOutput, context: context)
        type = Types::DeleteMembersOutput.new
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DescribeActionTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActionTargetsInput, context: context)
        type = Types::DescribeActionTargetsInput.new
        type.action_target_arns = ArnList.build(params[:action_target_arns], context: "#{context}[:action_target_arns]") unless params[:action_target_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeActionTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActionTargetsOutput, context: context)
        type = Types::DescribeActionTargetsOutput.new
        type.action_targets = ActionTargetList.build(params[:action_targets], context: "#{context}[:action_targets]") unless params[:action_targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeHubInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHubInput, context: context)
        type = Types::DescribeHubInput.new
        type.hub_arn = params[:hub_arn]
        type
      end
    end

    module DescribeHubOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHubOutput, context: context)
        type = Types::DescribeHubOutput.new
        type.hub_arn = params[:hub_arn]
        type.subscribed_at = params[:subscribed_at]
        type.auto_enable_controls = params[:auto_enable_controls]
        type
      end
    end

    module DescribeOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationInput, context: context)
        type = Types::DescribeOrganizationConfigurationInput.new
        type
      end
    end

    module DescribeOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationOutput, context: context)
        type = Types::DescribeOrganizationConfigurationOutput.new
        type.auto_enable = params[:auto_enable]
        type.member_account_limit_reached = params[:member_account_limit_reached]
        type.auto_enable_standards = params[:auto_enable_standards]
        type
      end
    end

    module DescribeProductsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductsInput, context: context)
        type = Types::DescribeProductsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.product_arn = params[:product_arn]
        type
      end
    end

    module DescribeProductsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProductsOutput, context: context)
        type = Types::DescribeProductsOutput.new
        type.products = ProductsList.build(params[:products], context: "#{context}[:products]") unless params[:products].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStandardsControlsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStandardsControlsInput, context: context)
        type = Types::DescribeStandardsControlsInput.new
        type.standards_subscription_arn = params[:standards_subscription_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeStandardsControlsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStandardsControlsOutput, context: context)
        type = Types::DescribeStandardsControlsOutput.new
        type.controls = StandardsControls.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeStandardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStandardsInput, context: context)
        type = Types::DescribeStandardsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeStandardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStandardsOutput, context: context)
        type = Types::DescribeStandardsOutput.new
        type.standards = Standards.build(params[:standards], context: "#{context}[:standards]") unless params[:standards].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DisableImportFindingsForProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableImportFindingsForProductInput, context: context)
        type = Types::DisableImportFindingsForProductInput.new
        type.product_subscription_arn = params[:product_subscription_arn]
        type
      end
    end

    module DisableImportFindingsForProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableImportFindingsForProductOutput, context: context)
        type = Types::DisableImportFindingsForProductOutput.new
        type
      end
    end

    module DisableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountInput, context: context)
        type = Types::DisableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module DisableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountOutput, context: context)
        type = Types::DisableOrganizationAdminAccountOutput.new
        type
      end
    end

    module DisableSecurityHubInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSecurityHubInput, context: context)
        type = Types::DisableSecurityHubInput.new
        type
      end
    end

    module DisableSecurityHubOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSecurityHubOutput, context: context)
        type = Types::DisableSecurityHubOutput.new
        type
      end
    end

    module DisassociateFromAdministratorAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromAdministratorAccountInput, context: context)
        type = Types::DisassociateFromAdministratorAccountInput.new
        type
      end
    end

    module DisassociateFromAdministratorAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromAdministratorAccountOutput, context: context)
        type = Types::DisassociateFromAdministratorAccountOutput.new
        type
      end
    end

    module DisassociateFromMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountInput, context: context)
        type = Types::DisassociateFromMasterAccountInput.new
        type
      end
    end

    module DisassociateFromMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateFromMasterAccountOutput, context: context)
        type = Types::DisassociateFromMasterAccountOutput.new
        type
      end
    end

    module DisassociateMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembersInput, context: context)
        type = Types::DisassociateMembersInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DisassociateMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembersOutput, context: context)
        type = Types::DisassociateMembersOutput.new
        type
      end
    end

    module DnsRequestAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DnsRequestAction, context: context)
        type = Types::DnsRequestAction.new
        type.domain = params[:domain]
        type.protocol = params[:protocol]
        type.blocked = params[:blocked]
        type
      end
    end

    module EnableImportFindingsForProductInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableImportFindingsForProductInput, context: context)
        type = Types::EnableImportFindingsForProductInput.new
        type.product_arn = params[:product_arn]
        type
      end
    end

    module EnableImportFindingsForProductOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableImportFindingsForProductOutput, context: context)
        type = Types::EnableImportFindingsForProductOutput.new
        type.product_subscription_arn = params[:product_subscription_arn]
        type
      end
    end

    module EnableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountInput, context: context)
        type = Types::EnableOrganizationAdminAccountInput.new
        type.admin_account_id = params[:admin_account_id]
        type
      end
    end

    module EnableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountOutput, context: context)
        type = Types::EnableOrganizationAdminAccountOutput.new
        type
      end
    end

    module EnableSecurityHubInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSecurityHubInput, context: context)
        type = Types::EnableSecurityHubInput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_default_standards = params[:enable_default_standards]
        type
      end
    end

    module EnableSecurityHubOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSecurityHubOutput, context: context)
        type = Types::EnableSecurityHubOutput.new
        type
      end
    end

    module FieldMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FindingAggregator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingAggregator, context: context)
        type = Types::FindingAggregator.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type
      end
    end

    module FindingAggregatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FindingAggregator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingProviderFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingProviderFields, context: context)
        type = Types::FindingProviderFields.new
        type.confidence = params[:confidence]
        type.criticality = params[:criticality]
        type.related_findings = RelatedFindingList.build(params[:related_findings], context: "#{context}[:related_findings]") unless params[:related_findings].nil?
        type.severity = FindingProviderSeverity.build(params[:severity], context: "#{context}[:severity]") unless params[:severity].nil?
        type.types = TypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type
      end
    end

    module FindingProviderSeverity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingProviderSeverity, context: context)
        type = Types::FindingProviderSeverity.new
        type.label = params[:label]
        type.original = params[:original]
        type
      end
    end

    module FirewallPolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyDetails, context: context)
        type = Types::FirewallPolicyDetails.new
        type.stateful_rule_group_references = FirewallPolicyStatefulRuleGroupReferencesList.build(params[:stateful_rule_group_references], context: "#{context}[:stateful_rule_group_references]") unless params[:stateful_rule_group_references].nil?
        type.stateless_custom_actions = FirewallPolicyStatelessCustomActionsList.build(params[:stateless_custom_actions], context: "#{context}[:stateless_custom_actions]") unless params[:stateless_custom_actions].nil?
        type.stateless_default_actions = NonEmptyStringList.build(params[:stateless_default_actions], context: "#{context}[:stateless_default_actions]") unless params[:stateless_default_actions].nil?
        type.stateless_fragment_default_actions = NonEmptyStringList.build(params[:stateless_fragment_default_actions], context: "#{context}[:stateless_fragment_default_actions]") unless params[:stateless_fragment_default_actions].nil?
        type.stateless_rule_group_references = FirewallPolicyStatelessRuleGroupReferencesList.build(params[:stateless_rule_group_references], context: "#{context}[:stateless_rule_group_references]") unless params[:stateless_rule_group_references].nil?
        type
      end
    end

    module FirewallPolicyStatefulRuleGroupReferencesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyStatefulRuleGroupReferencesDetails, context: context)
        type = Types::FirewallPolicyStatefulRuleGroupReferencesDetails.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module FirewallPolicyStatefulRuleGroupReferencesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallPolicyStatefulRuleGroupReferencesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallPolicyStatelessCustomActionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyStatelessCustomActionsDetails, context: context)
        type = Types::FirewallPolicyStatelessCustomActionsDetails.new
        type.action_definition = StatelessCustomActionDefinition.build(params[:action_definition], context: "#{context}[:action_definition]") unless params[:action_definition].nil?
        type.action_name = params[:action_name]
        type
      end
    end

    module FirewallPolicyStatelessCustomActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallPolicyStatelessCustomActionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirewallPolicyStatelessRuleGroupReferencesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirewallPolicyStatelessRuleGroupReferencesDetails, context: context)
        type = Types::FirewallPolicyStatelessRuleGroupReferencesDetails.new
        type.priority = params[:priority]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module FirewallPolicyStatelessRuleGroupReferencesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FirewallPolicyStatelessRuleGroupReferencesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeoLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoLocation, context: context)
        type = Types::GeoLocation.new
        type.lon = params[:lon]
        type.lat = params[:lat]
        type
      end
    end

    module GetAdministratorAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdministratorAccountInput, context: context)
        type = Types::GetAdministratorAccountInput.new
        type
      end
    end

    module GetAdministratorAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAdministratorAccountOutput, context: context)
        type = Types::GetAdministratorAccountOutput.new
        type.administrator = Invitation.build(params[:administrator], context: "#{context}[:administrator]") unless params[:administrator].nil?
        type
      end
    end

    module GetEnabledStandardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnabledStandardsInput, context: context)
        type = Types::GetEnabledStandardsInput.new
        type.standards_subscription_arns = StandardsSubscriptionArns.build(params[:standards_subscription_arns], context: "#{context}[:standards_subscription_arns]") unless params[:standards_subscription_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEnabledStandardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnabledStandardsOutput, context: context)
        type = Types::GetEnabledStandardsOutput.new
        type.standards_subscriptions = StandardsSubscriptions.build(params[:standards_subscriptions], context: "#{context}[:standards_subscriptions]") unless params[:standards_subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetFindingAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingAggregatorInput, context: context)
        type = Types::GetFindingAggregatorInput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type
      end
    end

    module GetFindingAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingAggregatorOutput, context: context)
        type = Types::GetFindingAggregatorOutput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type.finding_aggregation_region = params[:finding_aggregation_region]
        type.region_linking_mode = params[:region_linking_mode]
        type.regions = StringList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module GetFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsInput, context: context)
        type = Types::GetFindingsInput.new
        type.filters = AwsSecurityFindingFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsOutput, context: context)
        type = Types::GetFindingsOutput.new
        type.findings = AwsSecurityFindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInsightResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightResultsInput, context: context)
        type = Types::GetInsightResultsInput.new
        type.insight_arn = params[:insight_arn]
        type
      end
    end

    module GetInsightResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightResultsOutput, context: context)
        type = Types::GetInsightResultsOutput.new
        type.insight_results = InsightResults.build(params[:insight_results], context: "#{context}[:insight_results]") unless params[:insight_results].nil?
        type
      end
    end

    module GetInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsInput, context: context)
        type = Types::GetInsightsInput.new
        type.insight_arns = ArnList.build(params[:insight_arns], context: "#{context}[:insight_arns]") unless params[:insight_arns].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInsightsOutput, context: context)
        type = Types::GetInsightsOutput.new
        type.insights = InsightList.build(params[:insights], context: "#{context}[:insights]") unless params[:insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInvitationsCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountInput, context: context)
        type = Types::GetInvitationsCountInput.new
        type
      end
    end

    module GetInvitationsCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInvitationsCountOutput, context: context)
        type = Types::GetInvitationsCountOutput.new
        type.invitations_count = params[:invitations_count]
        type
      end
    end

    module GetMasterAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountInput, context: context)
        type = Types::GetMasterAccountInput.new
        type
      end
    end

    module GetMasterAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMasterAccountOutput, context: context)
        type = Types::GetMasterAccountOutput.new
        type.master = Invitation.build(params[:master], context: "#{context}[:master]") unless params[:master].nil?
        type
      end
    end

    module GetMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersInput, context: context)
        type = Types::GetMembersInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module GetMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersOutput, context: context)
        type = Types::GetMembersOutput.new
        type.members = MemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module IcmpTypeCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IcmpTypeCode, context: context)
        type = Types::IcmpTypeCode.new
        type.code = params[:code]
        type.type = params[:type]
        type
      end
    end

    module ImportFindingsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportFindingsError, context: context)
        type = Types::ImportFindingsError.new
        type.id = params[:id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module ImportFindingsErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportFindingsError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Insight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Insight, context: context)
        type = Types::Insight.new
        type.insight_arn = params[:insight_arn]
        type.name = params[:name]
        type.filters = AwsSecurityFindingFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_attribute = params[:group_by_attribute]
        type
      end
    end

    module InsightList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Insight.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightResultValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightResultValue, context: context)
        type = Types::InsightResultValue.new
        type.group_by_attribute_value = params[:group_by_attribute_value]
        type.count = params[:count]
        type
      end
    end

    module InsightResultValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InsightResultValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsightResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightResults, context: context)
        type = Types::InsightResults.new
        type.insight_arn = params[:insight_arn]
        type.group_by_attribute = params[:group_by_attribute]
        type.result_values = InsightResultValueList.build(params[:result_values], context: "#{context}[:result_values]") unless params[:result_values].nil?
        type
      end
    end

    module IntegerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IntegrationTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAccessException, context: context)
        type = Types::InvalidAccessException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Invitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Invitation, context: context)
        type = Types::Invitation.new
        type.account_id = params[:account_id]
        type.invitation_id = params[:invitation_id]
        type.invited_at = params[:invited_at]
        type.member_status = params[:member_status]
        type
      end
    end

    module InvitationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Invitation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InviteMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteMembersInput, context: context)
        type = Types::InviteMembersInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module InviteMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteMembersOutput, context: context)
        type = Types::InviteMembersOutput.new
        type.unprocessed_accounts = ResultList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module IpFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpFilter, context: context)
        type = Types::IpFilter.new
        type.cidr = params[:cidr]
        type
      end
    end

    module IpFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IpOrganizationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpOrganizationDetails, context: context)
        type = Types::IpOrganizationDetails.new
        type.asn = params[:asn]
        type.asn_org = params[:asn_org]
        type.isp = params[:isp]
        type.org = params[:org]
        type
      end
    end

    module Ipv6CidrBlockAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ipv6CidrBlockAssociation, context: context)
        type = Types::Ipv6CidrBlockAssociation.new
        type.association_id = params[:association_id]
        type.ipv6_cidr_block = params[:ipv6_cidr_block]
        type.cidr_block_state = params[:cidr_block_state]
        type
      end
    end

    module Ipv6CidrBlockAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ipv6CidrBlockAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeywordFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeywordFilter, context: context)
        type = Types::KeywordFilter.new
        type.value = params[:value]
        type
      end
    end

    module KeywordFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeywordFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module ListEnabledProductsForImportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnabledProductsForImportInput, context: context)
        type = Types::ListEnabledProductsForImportInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnabledProductsForImportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnabledProductsForImportOutput, context: context)
        type = Types::ListEnabledProductsForImportOutput.new
        type.product_subscriptions = ProductSubscriptionArnList.build(params[:product_subscriptions], context: "#{context}[:product_subscriptions]") unless params[:product_subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingAggregatorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingAggregatorsInput, context: context)
        type = Types::ListFindingAggregatorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFindingAggregatorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingAggregatorsOutput, context: context)
        type = Types::ListFindingAggregatorsOutput.new
        type.finding_aggregators = FindingAggregatorList.build(params[:finding_aggregators], context: "#{context}[:finding_aggregators]") unless params[:finding_aggregators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsInput, context: context)
        type = Types::ListInvitationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsOutput, context: context)
        type = Types::ListInvitationsOutput.new
        type.invitations = InvitationList.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.only_associated = params[:only_associated]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.members = MemberList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsInput, context: context)
        type = Types::ListOrganizationAdminAccountsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsOutput, context: context)
        type = Types::ListOrganizationAdminAccountsOutput.new
        type.admin_accounts = AdminAccounts.build(params[:admin_accounts], context: "#{context}[:admin_accounts]") unless params[:admin_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoadBalancerState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerState, context: context)
        type = Types::LoadBalancerState.new
        type.code = params[:code]
        type.reason = params[:reason]
        type
      end
    end

    module Malware
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Malware, context: context)
        type = Types::Malware.new
        type.name = params[:name]
        type.type = params[:type]
        type.path = params[:path]
        type.state = params[:state]
        type
      end
    end

    module MalwareList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Malware.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MapFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MapFilter, context: context)
        type = Types::MapFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type.comparison = params[:comparison]
        type
      end
    end

    module MapFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MapFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.account_id = params[:account_id]
        type.email = params[:email]
        type.master_id = params[:master_id]
        type.administrator_id = params[:administrator_id]
        type.member_status = params[:member_status]
        type.invited_at = params[:invited_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module MemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Member.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Network
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Network, context: context)
        type = Types::Network.new
        type.direction = params[:direction]
        type.protocol = params[:protocol]
        type.open_port_range = PortRange.build(params[:open_port_range], context: "#{context}[:open_port_range]") unless params[:open_port_range].nil?
        type.source_ip_v4 = params[:source_ip_v4]
        type.source_ip_v6 = params[:source_ip_v6]
        type.source_port = params[:source_port]
        type.source_domain = params[:source_domain]
        type.source_mac = params[:source_mac]
        type.destination_ip_v4 = params[:destination_ip_v4]
        type.destination_ip_v6 = params[:destination_ip_v6]
        type.destination_port = params[:destination_port]
        type.destination_domain = params[:destination_domain]
        type
      end
    end

    module NetworkConnectionAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConnectionAction, context: context)
        type = Types::NetworkConnectionAction.new
        type.connection_direction = params[:connection_direction]
        type.remote_ip_details = ActionRemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type.remote_port_details = ActionRemotePortDetails.build(params[:remote_port_details], context: "#{context}[:remote_port_details]") unless params[:remote_port_details].nil?
        type.local_port_details = ActionLocalPortDetails.build(params[:local_port_details], context: "#{context}[:local_port_details]") unless params[:local_port_details].nil?
        type.protocol = params[:protocol]
        type.blocked = params[:blocked]
        type
      end
    end

    module NetworkHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkHeader, context: context)
        type = Types::NetworkHeader.new
        type.protocol = params[:protocol]
        type.destination = NetworkPathComponentDetails.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.source = NetworkPathComponentDetails.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module NetworkPathComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkPathComponent, context: context)
        type = Types::NetworkPathComponent.new
        type.component_id = params[:component_id]
        type.component_type = params[:component_type]
        type.egress = NetworkHeader.build(params[:egress], context: "#{context}[:egress]") unless params[:egress].nil?
        type.ingress = NetworkHeader.build(params[:ingress], context: "#{context}[:ingress]") unless params[:ingress].nil?
        type
      end
    end

    module NetworkPathComponentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkPathComponentDetails, context: context)
        type = Types::NetworkPathComponentDetails.new
        type.address = StringList.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type.port_ranges = PortRangeList.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type
      end
    end

    module NetworkPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkPathComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NonEmptyStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Note
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Note, context: context)
        type = Types::Note.new
        type.text = params[:text]
        type.updated_by = params[:updated_by]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module NoteUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoteUpdate, context: context)
        type = Types::NoteUpdate.new
        type.text = params[:text]
        type.updated_by = params[:updated_by]
        type
      end
    end

    module NumberFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberFilter, context: context)
        type = Types::NumberFilter.new
        type.gte = params[:gte]
        type.lte = params[:lte]
        type.eq = params[:eq]
        type
      end
    end

    module NumberFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NumberFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Occurrences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Occurrences, context: context)
        type = Types::Occurrences.new
        type.line_ranges = Ranges.build(params[:line_ranges], context: "#{context}[:line_ranges]") unless params[:line_ranges].nil?
        type.offset_ranges = Ranges.build(params[:offset_ranges], context: "#{context}[:offset_ranges]") unless params[:offset_ranges].nil?
        type.pages = Pages.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type.records = Records.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.cells = Cells.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type
      end
    end

    module Page
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Page, context: context)
        type = Types::Page.new
        type.page_number = params[:page_number]
        type.line_range = Range.build(params[:line_range], context: "#{context}[:line_range]") unless params[:line_range].nil?
        type.offset_range = Range.build(params[:offset_range], context: "#{context}[:offset_range]") unless params[:offset_range].nil?
        type
      end
    end

    module Pages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Page.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchSummary, context: context)
        type = Types::PatchSummary.new
        type.id = params[:id]
        type.installed_count = params[:installed_count]
        type.missing_count = params[:missing_count]
        type.failed_count = params[:failed_count]
        type.installed_other_count = params[:installed_other_count]
        type.installed_rejected_count = params[:installed_rejected_count]
        type.installed_pending_reboot = params[:installed_pending_reboot]
        type.operation_start_time = params[:operation_start_time]
        type.operation_end_time = params[:operation_end_time]
        type.reboot_option = params[:reboot_option]
        type.operation = params[:operation]
        type
      end
    end

    module PortProbeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortProbeAction, context: context)
        type = Types::PortProbeAction.new
        type.port_probe_details = PortProbeDetailList.build(params[:port_probe_details], context: "#{context}[:port_probe_details]") unless params[:port_probe_details].nil?
        type.blocked = params[:blocked]
        type
      end
    end

    module PortProbeDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortProbeDetail, context: context)
        type = Types::PortProbeDetail.new
        type.local_port_details = ActionLocalPortDetails.build(params[:local_port_details], context: "#{context}[:local_port_details]") unless params[:local_port_details].nil?
        type.local_ip_details = ActionLocalIpDetails.build(params[:local_ip_details], context: "#{context}[:local_ip_details]") unless params[:local_ip_details].nil?
        type.remote_ip_details = ActionRemoteIpDetails.build(params[:remote_ip_details], context: "#{context}[:remote_ip_details]") unless params[:remote_ip_details].nil?
        type
      end
    end

    module PortProbeDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortProbeDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.begin = params[:begin]
        type.end = params[:end]
        type
      end
    end

    module PortRangeFromTo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRangeFromTo, context: context)
        type = Types::PortRangeFromTo.new
        type.from = params[:from]
        type.to = params[:to]
        type
      end
    end

    module PortRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessDetails, context: context)
        type = Types::ProcessDetails.new
        type.name = params[:name]
        type.path = params[:path]
        type.pid = params[:pid]
        type.parent_pid = params[:parent_pid]
        type.launched_at = params[:launched_at]
        type.terminated_at = params[:terminated_at]
        type
      end
    end

    module Product
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Product, context: context)
        type = Types::Product.new
        type.product_arn = params[:product_arn]
        type.product_name = params[:product_name]
        type.company_name = params[:company_name]
        type.description = params[:description]
        type.categories = CategoryList.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type.integration_types = IntegrationTypeList.build(params[:integration_types], context: "#{context}[:integration_types]") unless params[:integration_types].nil?
        type.marketplace_url = params[:marketplace_url]
        type.activation_url = params[:activation_url]
        type.product_subscription_resource_policy = params[:product_subscription_resource_policy]
        type
      end
    end

    module ProductSubscriptionArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProductsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Product.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        type.start = params[:start]
        type.end = params[:end]
        type.start_column = params[:start_column]
        type
      end
    end

    module Ranges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Range.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.text = params[:text]
        type.url = params[:url]
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.json_path = params[:json_path]
        type.record_index = params[:record_index]
        type
      end
    end

    module Records
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedFinding, context: context)
        type = Types::RelatedFinding.new
        type.product_arn = params[:product_arn]
        type.id = params[:id]
        type
      end
    end

    module RelatedFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelatedFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedRequirementsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Remediation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Remediation, context: context)
        type = Types::Remediation.new
        type.recommendation = Recommendation.build(params[:recommendation], context: "#{context}[:recommendation]") unless params[:recommendation].nil?
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.type = params[:type]
        type.id = params[:id]
        type.partition = params[:partition]
        type.region = params[:region]
        type.resource_role = params[:resource_role]
        type.tags = FieldMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.data_classification = DataClassificationDetails.build(params[:data_classification], context: "#{context}[:data_classification]") unless params[:data_classification].nil?
        type.details = ResourceDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDetails, context: context)
        type = Types::ResourceDetails.new
        type.aws_auto_scaling_auto_scaling_group = AwsAutoScalingAutoScalingGroupDetails.build(params[:aws_auto_scaling_auto_scaling_group], context: "#{context}[:aws_auto_scaling_auto_scaling_group]") unless params[:aws_auto_scaling_auto_scaling_group].nil?
        type.aws_code_build_project = AwsCodeBuildProjectDetails.build(params[:aws_code_build_project], context: "#{context}[:aws_code_build_project]") unless params[:aws_code_build_project].nil?
        type.aws_cloud_front_distribution = AwsCloudFrontDistributionDetails.build(params[:aws_cloud_front_distribution], context: "#{context}[:aws_cloud_front_distribution]") unless params[:aws_cloud_front_distribution].nil?
        type.aws_ec2_instance = AwsEc2InstanceDetails.build(params[:aws_ec2_instance], context: "#{context}[:aws_ec2_instance]") unless params[:aws_ec2_instance].nil?
        type.aws_ec2_network_interface = AwsEc2NetworkInterfaceDetails.build(params[:aws_ec2_network_interface], context: "#{context}[:aws_ec2_network_interface]") unless params[:aws_ec2_network_interface].nil?
        type.aws_ec2_security_group = AwsEc2SecurityGroupDetails.build(params[:aws_ec2_security_group], context: "#{context}[:aws_ec2_security_group]") unless params[:aws_ec2_security_group].nil?
        type.aws_ec2_volume = AwsEc2VolumeDetails.build(params[:aws_ec2_volume], context: "#{context}[:aws_ec2_volume]") unless params[:aws_ec2_volume].nil?
        type.aws_ec2_vpc = AwsEc2VpcDetails.build(params[:aws_ec2_vpc], context: "#{context}[:aws_ec2_vpc]") unless params[:aws_ec2_vpc].nil?
        type.aws_ec2_eip = AwsEc2EipDetails.build(params[:aws_ec2_eip], context: "#{context}[:aws_ec2_eip]") unless params[:aws_ec2_eip].nil?
        type.aws_ec2_subnet = AwsEc2SubnetDetails.build(params[:aws_ec2_subnet], context: "#{context}[:aws_ec2_subnet]") unless params[:aws_ec2_subnet].nil?
        type.aws_ec2_network_acl = AwsEc2NetworkAclDetails.build(params[:aws_ec2_network_acl], context: "#{context}[:aws_ec2_network_acl]") unless params[:aws_ec2_network_acl].nil?
        type.aws_elbv2_load_balancer = AwsElbv2LoadBalancerDetails.build(params[:aws_elbv2_load_balancer], context: "#{context}[:aws_elbv2_load_balancer]") unless params[:aws_elbv2_load_balancer].nil?
        type.aws_elastic_beanstalk_environment = AwsElasticBeanstalkEnvironmentDetails.build(params[:aws_elastic_beanstalk_environment], context: "#{context}[:aws_elastic_beanstalk_environment]") unless params[:aws_elastic_beanstalk_environment].nil?
        type.aws_elasticsearch_domain = AwsElasticsearchDomainDetails.build(params[:aws_elasticsearch_domain], context: "#{context}[:aws_elasticsearch_domain]") unless params[:aws_elasticsearch_domain].nil?
        type.aws_s3_bucket = AwsS3BucketDetails.build(params[:aws_s3_bucket], context: "#{context}[:aws_s3_bucket]") unless params[:aws_s3_bucket].nil?
        type.aws_s3_account_public_access_block = AwsS3AccountPublicAccessBlockDetails.build(params[:aws_s3_account_public_access_block], context: "#{context}[:aws_s3_account_public_access_block]") unless params[:aws_s3_account_public_access_block].nil?
        type.aws_s3_object = AwsS3ObjectDetails.build(params[:aws_s3_object], context: "#{context}[:aws_s3_object]") unless params[:aws_s3_object].nil?
        type.aws_secrets_manager_secret = AwsSecretsManagerSecretDetails.build(params[:aws_secrets_manager_secret], context: "#{context}[:aws_secrets_manager_secret]") unless params[:aws_secrets_manager_secret].nil?
        type.aws_iam_access_key = AwsIamAccessKeyDetails.build(params[:aws_iam_access_key], context: "#{context}[:aws_iam_access_key]") unless params[:aws_iam_access_key].nil?
        type.aws_iam_user = AwsIamUserDetails.build(params[:aws_iam_user], context: "#{context}[:aws_iam_user]") unless params[:aws_iam_user].nil?
        type.aws_iam_policy = AwsIamPolicyDetails.build(params[:aws_iam_policy], context: "#{context}[:aws_iam_policy]") unless params[:aws_iam_policy].nil?
        type.aws_api_gateway_v2_stage = AwsApiGatewayV2StageDetails.build(params[:aws_api_gateway_v2_stage], context: "#{context}[:aws_api_gateway_v2_stage]") unless params[:aws_api_gateway_v2_stage].nil?
        type.aws_api_gateway_v2_api = AwsApiGatewayV2ApiDetails.build(params[:aws_api_gateway_v2_api], context: "#{context}[:aws_api_gateway_v2_api]") unless params[:aws_api_gateway_v2_api].nil?
        type.aws_dynamo_db_table = AwsDynamoDbTableDetails.build(params[:aws_dynamo_db_table], context: "#{context}[:aws_dynamo_db_table]") unless params[:aws_dynamo_db_table].nil?
        type.aws_api_gateway_stage = AwsApiGatewayStageDetails.build(params[:aws_api_gateway_stage], context: "#{context}[:aws_api_gateway_stage]") unless params[:aws_api_gateway_stage].nil?
        type.aws_api_gateway_rest_api = AwsApiGatewayRestApiDetails.build(params[:aws_api_gateway_rest_api], context: "#{context}[:aws_api_gateway_rest_api]") unless params[:aws_api_gateway_rest_api].nil?
        type.aws_cloud_trail_trail = AwsCloudTrailTrailDetails.build(params[:aws_cloud_trail_trail], context: "#{context}[:aws_cloud_trail_trail]") unless params[:aws_cloud_trail_trail].nil?
        type.aws_ssm_patch_compliance = AwsSsmPatchComplianceDetails.build(params[:aws_ssm_patch_compliance], context: "#{context}[:aws_ssm_patch_compliance]") unless params[:aws_ssm_patch_compliance].nil?
        type.aws_certificate_manager_certificate = AwsCertificateManagerCertificateDetails.build(params[:aws_certificate_manager_certificate], context: "#{context}[:aws_certificate_manager_certificate]") unless params[:aws_certificate_manager_certificate].nil?
        type.aws_redshift_cluster = AwsRedshiftClusterDetails.build(params[:aws_redshift_cluster], context: "#{context}[:aws_redshift_cluster]") unless params[:aws_redshift_cluster].nil?
        type.aws_elb_load_balancer = AwsElbLoadBalancerDetails.build(params[:aws_elb_load_balancer], context: "#{context}[:aws_elb_load_balancer]") unless params[:aws_elb_load_balancer].nil?
        type.aws_iam_group = AwsIamGroupDetails.build(params[:aws_iam_group], context: "#{context}[:aws_iam_group]") unless params[:aws_iam_group].nil?
        type.aws_iam_role = AwsIamRoleDetails.build(params[:aws_iam_role], context: "#{context}[:aws_iam_role]") unless params[:aws_iam_role].nil?
        type.aws_kms_key = AwsKmsKeyDetails.build(params[:aws_kms_key], context: "#{context}[:aws_kms_key]") unless params[:aws_kms_key].nil?
        type.aws_lambda_function = AwsLambdaFunctionDetails.build(params[:aws_lambda_function], context: "#{context}[:aws_lambda_function]") unless params[:aws_lambda_function].nil?
        type.aws_lambda_layer_version = AwsLambdaLayerVersionDetails.build(params[:aws_lambda_layer_version], context: "#{context}[:aws_lambda_layer_version]") unless params[:aws_lambda_layer_version].nil?
        type.aws_rds_db_instance = AwsRdsDbInstanceDetails.build(params[:aws_rds_db_instance], context: "#{context}[:aws_rds_db_instance]") unless params[:aws_rds_db_instance].nil?
        type.aws_sns_topic = AwsSnsTopicDetails.build(params[:aws_sns_topic], context: "#{context}[:aws_sns_topic]") unless params[:aws_sns_topic].nil?
        type.aws_sqs_queue = AwsSqsQueueDetails.build(params[:aws_sqs_queue], context: "#{context}[:aws_sqs_queue]") unless params[:aws_sqs_queue].nil?
        type.aws_waf_web_acl = AwsWafWebAclDetails.build(params[:aws_waf_web_acl], context: "#{context}[:aws_waf_web_acl]") unless params[:aws_waf_web_acl].nil?
        type.aws_rds_db_snapshot = AwsRdsDbSnapshotDetails.build(params[:aws_rds_db_snapshot], context: "#{context}[:aws_rds_db_snapshot]") unless params[:aws_rds_db_snapshot].nil?
        type.aws_rds_db_cluster_snapshot = AwsRdsDbClusterSnapshotDetails.build(params[:aws_rds_db_cluster_snapshot], context: "#{context}[:aws_rds_db_cluster_snapshot]") unless params[:aws_rds_db_cluster_snapshot].nil?
        type.aws_rds_db_cluster = AwsRdsDbClusterDetails.build(params[:aws_rds_db_cluster], context: "#{context}[:aws_rds_db_cluster]") unless params[:aws_rds_db_cluster].nil?
        type.aws_ecs_cluster = AwsEcsClusterDetails.build(params[:aws_ecs_cluster], context: "#{context}[:aws_ecs_cluster]") unless params[:aws_ecs_cluster].nil?
        type.aws_ecs_task_definition = AwsEcsTaskDefinitionDetails.build(params[:aws_ecs_task_definition], context: "#{context}[:aws_ecs_task_definition]") unless params[:aws_ecs_task_definition].nil?
        type.container = ContainerDetails.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type.other = FieldMap.build(params[:other], context: "#{context}[:other]") unless params[:other].nil?
        type.aws_rds_event_subscription = AwsRdsEventSubscriptionDetails.build(params[:aws_rds_event_subscription], context: "#{context}[:aws_rds_event_subscription]") unless params[:aws_rds_event_subscription].nil?
        type.aws_ecs_service = AwsEcsServiceDetails.build(params[:aws_ecs_service], context: "#{context}[:aws_ecs_service]") unless params[:aws_ecs_service].nil?
        type.aws_auto_scaling_launch_configuration = AwsAutoScalingLaunchConfigurationDetails.build(params[:aws_auto_scaling_launch_configuration], context: "#{context}[:aws_auto_scaling_launch_configuration]") unless params[:aws_auto_scaling_launch_configuration].nil?
        type.aws_ec2_vpn_connection = AwsEc2VpnConnectionDetails.build(params[:aws_ec2_vpn_connection], context: "#{context}[:aws_ec2_vpn_connection]") unless params[:aws_ec2_vpn_connection].nil?
        type.aws_ecr_container_image = AwsEcrContainerImageDetails.build(params[:aws_ecr_container_image], context: "#{context}[:aws_ecr_container_image]") unless params[:aws_ecr_container_image].nil?
        type.aws_open_search_service_domain = AwsOpenSearchServiceDomainDetails.build(params[:aws_open_search_service_domain], context: "#{context}[:aws_open_search_service_domain]") unless params[:aws_open_search_service_domain].nil?
        type.aws_ec2_vpc_endpoint_service = AwsEc2VpcEndpointServiceDetails.build(params[:aws_ec2_vpc_endpoint_service], context: "#{context}[:aws_ec2_vpc_endpoint_service]") unless params[:aws_ec2_vpc_endpoint_service].nil?
        type.aws_xray_encryption_config = AwsXrayEncryptionConfigDetails.build(params[:aws_xray_encryption_config], context: "#{context}[:aws_xray_encryption_config]") unless params[:aws_xray_encryption_config].nil?
        type.aws_waf_rate_based_rule = AwsWafRateBasedRuleDetails.build(params[:aws_waf_rate_based_rule], context: "#{context}[:aws_waf_rate_based_rule]") unless params[:aws_waf_rate_based_rule].nil?
        type.aws_waf_regional_rate_based_rule = AwsWafRegionalRateBasedRuleDetails.build(params[:aws_waf_regional_rate_based_rule], context: "#{context}[:aws_waf_regional_rate_based_rule]") unless params[:aws_waf_regional_rate_based_rule].nil?
        type.aws_ecr_repository = AwsEcrRepositoryDetails.build(params[:aws_ecr_repository], context: "#{context}[:aws_ecr_repository]") unless params[:aws_ecr_repository].nil?
        type.aws_eks_cluster = AwsEksClusterDetails.build(params[:aws_eks_cluster], context: "#{context}[:aws_eks_cluster]") unless params[:aws_eks_cluster].nil?
        type.aws_network_firewall_firewall_policy = AwsNetworkFirewallFirewallPolicyDetails.build(params[:aws_network_firewall_firewall_policy], context: "#{context}[:aws_network_firewall_firewall_policy]") unless params[:aws_network_firewall_firewall_policy].nil?
        type.aws_network_firewall_firewall = AwsNetworkFirewallFirewallDetails.build(params[:aws_network_firewall_firewall], context: "#{context}[:aws_network_firewall_firewall]") unless params[:aws_network_firewall_firewall].nil?
        type.aws_network_firewall_rule_group = AwsNetworkFirewallRuleGroupDetails.build(params[:aws_network_firewall_rule_group], context: "#{context}[:aws_network_firewall_rule_group]") unless params[:aws_network_firewall_rule_group].nil?
        type.aws_rds_db_security_group = AwsRdsDbSecurityGroupDetails.build(params[:aws_rds_db_security_group], context: "#{context}[:aws_rds_db_security_group]") unless params[:aws_rds_db_security_group].nil?
        type
      end
    end

    module ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Result
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Result, context: context)
        type = Types::Result.new
        type.account_id = params[:account_id]
        type.processing_result = params[:processing_result]
        type
      end
    end

    module ResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Result.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupDetails, context: context)
        type = Types::RuleGroupDetails.new
        type.rule_variables = RuleGroupVariables.build(params[:rule_variables], context: "#{context}[:rule_variables]") unless params[:rule_variables].nil?
        type.rules_source = RuleGroupSource.build(params[:rules_source], context: "#{context}[:rules_source]") unless params[:rules_source].nil?
        type
      end
    end

    module RuleGroupSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSource, context: context)
        type = Types::RuleGroupSource.new
        type.rules_source_list = RuleGroupSourceListDetails.build(params[:rules_source_list], context: "#{context}[:rules_source_list]") unless params[:rules_source_list].nil?
        type.rules_string = params[:rules_string]
        type.stateful_rules = RuleGroupSourceStatefulRulesList.build(params[:stateful_rules], context: "#{context}[:stateful_rules]") unless params[:stateful_rules].nil?
        type.stateless_rules_and_custom_actions = RuleGroupSourceStatelessRulesAndCustomActionsDetails.build(params[:stateless_rules_and_custom_actions], context: "#{context}[:stateless_rules_and_custom_actions]") unless params[:stateless_rules_and_custom_actions].nil?
        type
      end
    end

    module RuleGroupSourceCustomActionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceCustomActionsDetails, context: context)
        type = Types::RuleGroupSourceCustomActionsDetails.new
        type.action_definition = StatelessCustomActionDefinition.build(params[:action_definition], context: "#{context}[:action_definition]") unless params[:action_definition].nil?
        type.action_name = params[:action_name]
        type
      end
    end

    module RuleGroupSourceCustomActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceCustomActionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceListDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceListDetails, context: context)
        type = Types::RuleGroupSourceListDetails.new
        type.generated_rules_type = params[:generated_rules_type]
        type.target_types = NonEmptyStringList.build(params[:target_types], context: "#{context}[:target_types]") unless params[:target_types].nil?
        type.targets = NonEmptyStringList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type
      end
    end

    module RuleGroupSourceStatefulRulesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatefulRulesDetails, context: context)
        type = Types::RuleGroupSourceStatefulRulesDetails.new
        type.action = params[:action]
        type.header = RuleGroupSourceStatefulRulesHeaderDetails.build(params[:header], context: "#{context}[:header]") unless params[:header].nil?
        type.rule_options = RuleGroupSourceStatefulRulesOptionsList.build(params[:rule_options], context: "#{context}[:rule_options]") unless params[:rule_options].nil?
        type
      end
    end

    module RuleGroupSourceStatefulRulesHeaderDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatefulRulesHeaderDetails, context: context)
        type = Types::RuleGroupSourceStatefulRulesHeaderDetails.new
        type.destination = params[:destination]
        type.destination_port = params[:destination_port]
        type.direction = params[:direction]
        type.protocol = params[:protocol]
        type.source = params[:source]
        type.source_port = params[:source_port]
        type
      end
    end

    module RuleGroupSourceStatefulRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatefulRulesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatefulRulesOptionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatefulRulesOptionsDetails, context: context)
        type = Types::RuleGroupSourceStatefulRulesOptionsDetails.new
        type.keyword = params[:keyword]
        type.settings = RuleGroupSourceStatefulRulesRuleOptionsSettingsList.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module RuleGroupSourceStatefulRulesOptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatefulRulesOptionsDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatefulRulesRuleOptionsSettingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleDefinition, context: context)
        type = Types::RuleGroupSourceStatelessRuleDefinition.new
        type.actions = NonEmptyStringList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.match_attributes = RuleGroupSourceStatelessRuleMatchAttributes.build(params[:match_attributes], context: "#{context}[:match_attributes]") unless params[:match_attributes].nil?
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributes, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributes.new
        type.destination_ports = RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList.build(params[:destination_ports], context: "#{context}[:destination_ports]") unless params[:destination_ports].nil?
        type.destinations = RuleGroupSourceStatelessRuleMatchAttributesDestinationsList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.protocols = RuleGroupSourceStatelessRuleMatchAttributesProtocolsList.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.source_ports = RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList.build(params[:source_ports], context: "#{context}[:source_ports]") unless params[:source_ports].nil?
        type.sources = RuleGroupSourceStatelessRuleMatchAttributesSourcesList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.tcp_flags = RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList.build(params[:tcp_flags], context: "#{context}[:tcp_flags]") unless params[:tcp_flags].nil?
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesDestinationPortsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRuleMatchAttributesDestinationPorts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributesDestinations.new
        type.address_definition = params[:address_definition]
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesDestinationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRuleMatchAttributesDestinations.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesProtocolsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesSourcePorts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesSourcePortsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRuleMatchAttributesSourcePorts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributesSources, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributesSources.new
        type.address_definition = params[:address_definition]
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesSourcesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRuleMatchAttributesSources.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesTcpFlags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags, context: context)
        type = Types::RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.new
        type.flags = NonEmptyStringList.build(params[:flags], context: "#{context}[:flags]") unless params[:flags].nil?
        type.masks = NonEmptyStringList.build(params[:masks], context: "#{context}[:masks]") unless params[:masks].nil?
        type
      end
    end

    module RuleGroupSourceStatelessRuleMatchAttributesTcpFlagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRuleMatchAttributesTcpFlags.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupSourceStatelessRulesAndCustomActionsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails, context: context)
        type = Types::RuleGroupSourceStatelessRulesAndCustomActionsDetails.new
        type.custom_actions = RuleGroupSourceCustomActionsList.build(params[:custom_actions], context: "#{context}[:custom_actions]") unless params[:custom_actions].nil?
        type.stateless_rules = RuleGroupSourceStatelessRulesList.build(params[:stateless_rules], context: "#{context}[:stateless_rules]") unless params[:stateless_rules].nil?
        type
      end
    end

    module RuleGroupSourceStatelessRulesDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupSourceStatelessRulesDetails, context: context)
        type = Types::RuleGroupSourceStatelessRulesDetails.new
        type.priority = params[:priority]
        type.rule_definition = RuleGroupSourceStatelessRuleDefinition.build(params[:rule_definition], context: "#{context}[:rule_definition]") unless params[:rule_definition].nil?
        type
      end
    end

    module RuleGroupSourceStatelessRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupSourceStatelessRulesDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleGroupVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupVariables, context: context)
        type = Types::RuleGroupVariables.new
        type.ip_sets = RuleGroupVariablesIpSetsDetails.build(params[:ip_sets], context: "#{context}[:ip_sets]") unless params[:ip_sets].nil?
        type.port_sets = RuleGroupVariablesPortSetsDetails.build(params[:port_sets], context: "#{context}[:port_sets]") unless params[:port_sets].nil?
        type
      end
    end

    module RuleGroupVariablesIpSetsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupVariablesIpSetsDetails, context: context)
        type = Types::RuleGroupVariablesIpSetsDetails.new
        type.definition = NonEmptyStringList.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module RuleGroupVariablesPortSetsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupVariablesPortSetsDetails, context: context)
        type = Types::RuleGroupVariablesPortSetsDetails.new
        type.definition = NonEmptyStringList.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SensitiveDataDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SensitiveDataDetections, context: context)
        type = Types::SensitiveDataDetections.new
        type.count = params[:count]
        type.type = params[:type]
        type.occurrences = Occurrences.build(params[:occurrences], context: "#{context}[:occurrences]") unless params[:occurrences].nil?
        type
      end
    end

    module SensitiveDataDetectionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SensitiveDataDetections.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SensitiveDataResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SensitiveDataResult, context: context)
        type = Types::SensitiveDataResult.new
        type.category = params[:category]
        type.detections = SensitiveDataDetectionsList.build(params[:detections], context: "#{context}[:detections]") unless params[:detections].nil?
        type.total_count = params[:total_count]
        type
      end
    end

    module SensitiveDataResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SensitiveDataResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Severity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Severity, context: context)
        type = Types::Severity.new
        type.product = params[:product]
        type.label = params[:label]
        type.normalized = params[:normalized]
        type.original = params[:original]
        type
      end
    end

    module SeverityUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeverityUpdate, context: context)
        type = Types::SeverityUpdate.new
        type.normalized = params[:normalized]
        type.product = params[:product]
        type.label = params[:label]
        type
      end
    end

    module SoftwarePackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SoftwarePackage, context: context)
        type = Types::SoftwarePackage.new
        type.name = params[:name]
        type.version = params[:version]
        type.epoch = params[:epoch]
        type.release = params[:release]
        type.architecture = params[:architecture]
        type.package_manager = params[:package_manager]
        type.file_path = params[:file_path]
        type
      end
    end

    module SoftwarePackageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SoftwarePackage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SortCriterion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SortCriterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriterion, context: context)
        type = Types::SortCriterion.new
        type.field = params[:field]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module Standard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Standard, context: context)
        type = Types::Standard.new
        type.standards_arn = params[:standards_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.enabled_by_default = params[:enabled_by_default]
        type
      end
    end

    module Standards
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Standard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StandardsControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StandardsControl, context: context)
        type = Types::StandardsControl.new
        type.standards_control_arn = params[:standards_control_arn]
        type.control_status = params[:control_status]
        type.disabled_reason = params[:disabled_reason]
        type.control_status_updated_at = params[:control_status_updated_at]
        type.control_id = params[:control_id]
        type.title = params[:title]
        type.description = params[:description]
        type.remediation_url = params[:remediation_url]
        type.severity_rating = params[:severity_rating]
        type.related_requirements = RelatedRequirementsList.build(params[:related_requirements], context: "#{context}[:related_requirements]") unless params[:related_requirements].nil?
        type
      end
    end

    module StandardsControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StandardsControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StandardsInputParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StandardsStatusReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StandardsStatusReason, context: context)
        type = Types::StandardsStatusReason.new
        type.status_reason_code = params[:status_reason_code]
        type
      end
    end

    module StandardsSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StandardsSubscription, context: context)
        type = Types::StandardsSubscription.new
        type.standards_subscription_arn = params[:standards_subscription_arn]
        type.standards_arn = params[:standards_arn]
        type.standards_input = StandardsInputParameterMap.build(params[:standards_input], context: "#{context}[:standards_input]") unless params[:standards_input].nil?
        type.standards_status = params[:standards_status]
        type.standards_status_reason = StandardsStatusReason.build(params[:standards_status_reason], context: "#{context}[:standards_status_reason]") unless params[:standards_status_reason].nil?
        type
      end
    end

    module StandardsSubscriptionArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StandardsSubscriptionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StandardsSubscriptionRequest, context: context)
        type = Types::StandardsSubscriptionRequest.new
        type.standards_arn = params[:standards_arn]
        type.standards_input = StandardsInputParameterMap.build(params[:standards_input], context: "#{context}[:standards_input]") unless params[:standards_input].nil?
        type
      end
    end

    module StandardsSubscriptionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StandardsSubscriptionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StandardsSubscriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StandardsSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatelessCustomActionDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessCustomActionDefinition, context: context)
        type = Types::StatelessCustomActionDefinition.new
        type.publish_metric_action = StatelessCustomPublishMetricAction.build(params[:publish_metric_action], context: "#{context}[:publish_metric_action]") unless params[:publish_metric_action].nil?
        type
      end
    end

    module StatelessCustomPublishMetricAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessCustomPublishMetricAction, context: context)
        type = Types::StatelessCustomPublishMetricAction.new
        type.dimensions = StatelessCustomPublishMetricActionDimensionsList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module StatelessCustomPublishMetricActionDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatelessCustomPublishMetricActionDimension, context: context)
        type = Types::StatelessCustomPublishMetricActionDimension.new
        type.value = params[:value]
        type
      end
    end

    module StatelessCustomPublishMetricActionDimensionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatelessCustomPublishMetricActionDimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatusReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusReason, context: context)
        type = Types::StatusReason.new
        type.reason_code = params[:reason_code]
        type.description = params[:description]
        type
      end
    end

    module StatusReasonsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatusReason.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringFilter, context: context)
        type = Types::StringFilter.new
        type.value = params[:value]
        type.comparison = params[:comparison]
        type
      end
    end

    module StringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThreatIntelIndicator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThreatIntelIndicator, context: context)
        type = Types::ThreatIntelIndicator.new
        type.type = params[:type]
        type.value = params[:value]
        type.category = params[:category]
        type.last_observed_at = params[:last_observed_at]
        type.source = params[:source]
        type.source_url = params[:source_url]
        type
      end
    end

    module ThreatIntelIndicatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThreatIntelIndicator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateActionTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionTargetInput, context: context)
        type = Types::UpdateActionTargetInput.new
        type.action_target_arn = params[:action_target_arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateActionTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionTargetOutput, context: context)
        type = Types::UpdateActionTargetOutput.new
        type
      end
    end

    module UpdateFindingAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingAggregatorInput, context: context)
        type = Types::UpdateFindingAggregatorInput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type.region_linking_mode = params[:region_linking_mode]
        type.regions = StringList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module UpdateFindingAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingAggregatorOutput, context: context)
        type = Types::UpdateFindingAggregatorOutput.new
        type.finding_aggregator_arn = params[:finding_aggregator_arn]
        type.finding_aggregation_region = params[:finding_aggregation_region]
        type.region_linking_mode = params[:region_linking_mode]
        type.regions = StringList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type
      end
    end

    module UpdateFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsInput, context: context)
        type = Types::UpdateFindingsInput.new
        type.filters = AwsSecurityFindingFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.note = NoteUpdate.build(params[:note], context: "#{context}[:note]") unless params[:note].nil?
        type.record_state = params[:record_state]
        type
      end
    end

    module UpdateFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsOutput, context: context)
        type = Types::UpdateFindingsOutput.new
        type
      end
    end

    module UpdateInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInsightInput, context: context)
        type = Types::UpdateInsightInput.new
        type.insight_arn = params[:insight_arn]
        type.name = params[:name]
        type.filters = AwsSecurityFindingFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_attribute = params[:group_by_attribute]
        type
      end
    end

    module UpdateInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInsightOutput, context: context)
        type = Types::UpdateInsightOutput.new
        type
      end
    end

    module UpdateOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationInput, context: context)
        type = Types::UpdateOrganizationConfigurationInput.new
        type.auto_enable = params[:auto_enable]
        type.auto_enable_standards = params[:auto_enable_standards]
        type
      end
    end

    module UpdateOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationOutput, context: context)
        type = Types::UpdateOrganizationConfigurationOutput.new
        type
      end
    end

    module UpdateSecurityHubConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityHubConfigurationInput, context: context)
        type = Types::UpdateSecurityHubConfigurationInput.new
        type.auto_enable_controls = params[:auto_enable_controls]
        type
      end
    end

    module UpdateSecurityHubConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSecurityHubConfigurationOutput, context: context)
        type = Types::UpdateSecurityHubConfigurationOutput.new
        type
      end
    end

    module UpdateStandardsControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStandardsControlInput, context: context)
        type = Types::UpdateStandardsControlInput.new
        type.standards_control_arn = params[:standards_control_arn]
        type.control_status = params[:control_status]
        type.disabled_reason = params[:disabled_reason]
        type
      end
    end

    module UpdateStandardsControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStandardsControlOutput, context: context)
        type = Types::UpdateStandardsControlOutput.new
        type
      end
    end

    module Vulnerability
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vulnerability, context: context)
        type = Types::Vulnerability.new
        type.id = params[:id]
        type.vulnerable_packages = SoftwarePackageList.build(params[:vulnerable_packages], context: "#{context}[:vulnerable_packages]") unless params[:vulnerable_packages].nil?
        type.cvss = CvssList.build(params[:cvss], context: "#{context}[:cvss]") unless params[:cvss].nil?
        type.related_vulnerabilities = StringList.build(params[:related_vulnerabilities], context: "#{context}[:related_vulnerabilities]") unless params[:related_vulnerabilities].nil?
        type.vendor = VulnerabilityVendor.build(params[:vendor], context: "#{context}[:vendor]") unless params[:vendor].nil?
        type.reference_urls = StringList.build(params[:reference_urls], context: "#{context}[:reference_urls]") unless params[:reference_urls].nil?
        type
      end
    end

    module VulnerabilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Vulnerability.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VulnerabilityVendor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VulnerabilityVendor, context: context)
        type = Types::VulnerabilityVendor.new
        type.name = params[:name]
        type.url = params[:url]
        type.vendor_severity = params[:vendor_severity]
        type.vendor_created_at = params[:vendor_created_at]
        type.vendor_updated_at = params[:vendor_updated_at]
        type
      end
    end

    module WafAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WafAction, context: context)
        type = Types::WafAction.new
        type.type = params[:type]
        type
      end
    end

    module WafExcludedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WafExcludedRule, context: context)
        type = Types::WafExcludedRule.new
        type.rule_id = params[:rule_id]
        type
      end
    end

    module WafExcludedRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WafExcludedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WafOverrideAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WafOverrideAction, context: context)
        type = Types::WafOverrideAction.new
        type.type = params[:type]
        type
      end
    end

    module Workflow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workflow, context: context)
        type = Types::Workflow.new
        type.status = params[:status]
        type
      end
    end

    module WorkflowUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowUpdate, context: context)
        type = Types::WorkflowUpdate.new
        type.status = params[:status]
        type
      end
    end

  end
end
