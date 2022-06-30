# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::BackupGateway
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateGatewayToServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateGatewayToServerInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:server_arn], ::String, context: "#{context}[:server_arn]")
      end
    end

    class AssociateGatewayToServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateGatewayToServerOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayInput, context: context)
        Hearth::Validator.validate!(input[:activation_key], ::String, context: "#{context}[:activation_key]")
        Hearth::Validator.validate!(input[:gateway_display_name], ::String, context: "#{context}[:gateway_display_name]")
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DeleteHypervisorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHypervisorInput, context: context)
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
      end
    end

    class DeleteHypervisorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHypervisorOutput, context: context)
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
      end
    end

    class DisassociateGatewayFromServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateGatewayFromServerInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class DisassociateGatewayFromServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateGatewayFromServerOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class Gateway
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Gateway, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_display_name], ::String, context: "#{context}[:gateway_display_name]")
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Hearth::Validator.validate!(input[:hypervisor_id], ::String, context: "#{context}[:hypervisor_id]")
        Hearth::Validator.validate!(input[:last_seen_time], ::Time, context: "#{context}[:last_seen_time]")
      end
    end

    class GatewayDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayDetails, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_display_name], ::String, context: "#{context}[:gateway_display_name]")
        Hearth::Validator.validate!(input[:gateway_type], ::String, context: "#{context}[:gateway_type]")
        Hearth::Validator.validate!(input[:hypervisor_id], ::String, context: "#{context}[:hypervisor_id]")
        Hearth::Validator.validate!(input[:last_seen_time], ::Time, context: "#{context}[:last_seen_time]")
        Hearth::Validator.validate!(input[:next_update_availability_time], ::Time, context: "#{context}[:next_update_availability_time]")
        Hearth::Validator.validate!(input[:vpc_endpoint], ::String, context: "#{context}[:vpc_endpoint]")
      end
    end

    class Gateways
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Gateway.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetGatewayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class GetGatewayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayOutput, context: context)
        Validators::GatewayDetails.validate!(input[:gateway], context: "#{context}[:gateway]") unless input[:gateway].nil?
      end
    end

    class Hypervisor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hypervisor, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class Hypervisors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Hypervisor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportHypervisorConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportHypervisorConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportHypervisorConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportHypervisorConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListGatewaysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGatewaysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGatewaysOutput, context: context)
        Validators::Gateways.validate!(input[:gateways], context: "#{context}[:gateways]") unless input[:gateways].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHypervisorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHypervisorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHypervisorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHypervisorsOutput, context: context)
        Validators::Hypervisors.validate!(input[:hypervisors], context: "#{context}[:hypervisors]") unless input[:hypervisors].nil?
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVirtualMachinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualMachinesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVirtualMachinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVirtualMachinesOutput, context: context)
        Validators::VirtualMachines.validate!(input[:virtual_machines], context: "#{context}[:virtual_machines]") unless input[:virtual_machines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutMaintenanceStartTimeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMaintenanceStartTimeInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:hour_of_day], ::Integer, context: "#{context}[:hour_of_day]")
        Hearth::Validator.validate!(input[:minute_of_hour], ::Integer, context: "#{context}[:minute_of_hour]")
        Hearth::Validator.validate!(input[:day_of_week], ::Integer, context: "#{context}[:day_of_week]")
        Hearth::Validator.validate!(input[:day_of_month], ::Integer, context: "#{context}[:day_of_month]")
      end
    end

    class PutMaintenanceStartTimeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMaintenanceStartTimeOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestHypervisorConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestHypervisorConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class TestHypervisorConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestHypervisorConfigurationOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class UpdateGatewayInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInformationInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
        Hearth::Validator.validate!(input[:gateway_display_name], ::String, context: "#{context}[:gateway_display_name]")
      end
    end

    class UpdateGatewayInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayInformationOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateGatewaySoftwareNowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewaySoftwareNowInput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateGatewaySoftwareNowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewaySoftwareNowOutput, context: context)
        Hearth::Validator.validate!(input[:gateway_arn], ::String, context: "#{context}[:gateway_arn]")
      end
    end

    class UpdateHypervisorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHypervisorInput, context: context)
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateHypervisorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHypervisorOutput, context: context)
        Hearth::Validator.validate!(input[:hypervisor_arn], ::String, context: "#{context}[:hypervisor_arn]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VirtualMachine
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualMachine, context: context)
        Hearth::Validator.validate!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate!(input[:hypervisor_id], ::String, context: "#{context}[:hypervisor_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:last_backup_date], ::Time, context: "#{context}[:last_backup_date]")
      end
    end

    class VirtualMachines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VirtualMachine.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
