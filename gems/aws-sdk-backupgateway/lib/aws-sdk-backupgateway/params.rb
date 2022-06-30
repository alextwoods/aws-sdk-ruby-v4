# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::BackupGateway
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AssociateGatewayToServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateGatewayToServerInput, context: context)
        type = Types::AssociateGatewayToServerInput.new
        type.gateway_arn = params[:gateway_arn]
        type.server_arn = params[:server_arn]
        type
      end
    end

    module AssociateGatewayToServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateGatewayToServerOutput, context: context)
        type = Types::AssociateGatewayToServerOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module CreateGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayInput, context: context)
        type = Types::CreateGatewayInput.new
        type.activation_key = params[:activation_key]
        type.gateway_display_name = params[:gateway_display_name]
        type.gateway_type = params[:gateway_type]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGatewayOutput, context: context)
        type = Types::CreateGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayInput, context: context)
        type = Types::DeleteGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayOutput, context: context)
        type = Types::DeleteGatewayOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DeleteHypervisorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHypervisorInput, context: context)
        type = Types::DeleteHypervisorInput.new
        type.hypervisor_arn = params[:hypervisor_arn]
        type
      end
    end

    module DeleteHypervisorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHypervisorOutput, context: context)
        type = Types::DeleteHypervisorOutput.new
        type.hypervisor_arn = params[:hypervisor_arn]
        type
      end
    end

    module DisassociateGatewayFromServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateGatewayFromServerInput, context: context)
        type = Types::DisassociateGatewayFromServerInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module DisassociateGatewayFromServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateGatewayFromServerOutput, context: context)
        type = Types::DisassociateGatewayFromServerOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module Gateway
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Gateway, context: context)
        type = Types::Gateway.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_display_name = params[:gateway_display_name]
        type.gateway_type = params[:gateway_type]
        type.hypervisor_id = params[:hypervisor_id]
        type.last_seen_time = params[:last_seen_time]
        type
      end
    end

    module GatewayDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayDetails, context: context)
        type = Types::GatewayDetails.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_display_name = params[:gateway_display_name]
        type.gateway_type = params[:gateway_type]
        type.hypervisor_id = params[:hypervisor_id]
        type.last_seen_time = params[:last_seen_time]
        type.next_update_availability_time = params[:next_update_availability_time]
        type.vpc_endpoint = params[:vpc_endpoint]
        type
      end
    end

    module Gateways
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Gateway.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetGatewayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayInput, context: context)
        type = Types::GetGatewayInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module GetGatewayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayOutput, context: context)
        type = Types::GetGatewayOutput.new
        type.gateway = GatewayDetails.build(params[:gateway], context: "#{context}[:gateway]") unless params[:gateway].nil?
        type
      end
    end

    module Hypervisor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hypervisor, context: context)
        type = Types::Hypervisor.new
        type.host = params[:host]
        type.hypervisor_arn = params[:hypervisor_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.name = params[:name]
        type.state = params[:state]
        type
      end
    end

    module Hypervisors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Hypervisor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportHypervisorConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportHypervisorConfigurationInput, context: context)
        type = Types::ImportHypervisorConfigurationInput.new
        type.name = params[:name]
        type.host = params[:host]
        type.username = params[:username]
        type.password = params[:password]
        type.kms_key_arn = params[:kms_key_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportHypervisorConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportHypervisorConfigurationOutput, context: context)
        type = Types::ImportHypervisorConfigurationOutput.new
        type.hypervisor_arn = params[:hypervisor_arn]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ListGatewaysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysInput, context: context)
        type = Types::ListGatewaysInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGatewaysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGatewaysOutput, context: context)
        type = Types::ListGatewaysOutput.new
        type.gateways = Gateways.build(params[:gateways], context: "#{context}[:gateways]") unless params[:gateways].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHypervisorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHypervisorsInput, context: context)
        type = Types::ListHypervisorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHypervisorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHypervisorsOutput, context: context)
        type = Types::ListHypervisorsOutput.new
        type.hypervisors = Hypervisors.build(params[:hypervisors], context: "#{context}[:hypervisors]") unless params[:hypervisors].nil?
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
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVirtualMachinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualMachinesInput, context: context)
        type = Types::ListVirtualMachinesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVirtualMachinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualMachinesOutput, context: context)
        type = Types::ListVirtualMachinesOutput.new
        type.virtual_machines = VirtualMachines.build(params[:virtual_machines], context: "#{context}[:virtual_machines]") unless params[:virtual_machines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PutMaintenanceStartTimeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMaintenanceStartTimeInput, context: context)
        type = Types::PutMaintenanceStartTimeInput.new
        type.gateway_arn = params[:gateway_arn]
        type.hour_of_day = params[:hour_of_day]
        type.minute_of_hour = params[:minute_of_hour]
        type.day_of_week = params[:day_of_week]
        type.day_of_month = params[:day_of_month]
        type
      end
    end

    module PutMaintenanceStartTimeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMaintenanceStartTimeOutput, context: context)
        type = Types::PutMaintenanceStartTimeOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
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

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestHypervisorConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestHypervisorConfigurationInput, context: context)
        type = Types::TestHypervisorConfigurationInput.new
        type.gateway_arn = params[:gateway_arn]
        type.host = params[:host]
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module TestHypervisorConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestHypervisorConfigurationOutput, context: context)
        type = Types::TestHypervisorConfigurationOutput.new
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module UpdateGatewayInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInformationInput, context: context)
        type = Types::UpdateGatewayInformationInput.new
        type.gateway_arn = params[:gateway_arn]
        type.gateway_display_name = params[:gateway_display_name]
        type
      end
    end

    module UpdateGatewayInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayInformationOutput, context: context)
        type = Types::UpdateGatewayInformationOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateGatewaySoftwareNowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewaySoftwareNowInput, context: context)
        type = Types::UpdateGatewaySoftwareNowInput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateGatewaySoftwareNowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewaySoftwareNowOutput, context: context)
        type = Types::UpdateGatewaySoftwareNowOutput.new
        type.gateway_arn = params[:gateway_arn]
        type
      end
    end

    module UpdateHypervisorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHypervisorInput, context: context)
        type = Types::UpdateHypervisorInput.new
        type.hypervisor_arn = params[:hypervisor_arn]
        type.host = params[:host]
        type.username = params[:username]
        type.password = params[:password]
        type.name = params[:name]
        type
      end
    end

    module UpdateHypervisorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHypervisorOutput, context: context)
        type = Types::UpdateHypervisorOutput.new
        type.hypervisor_arn = params[:hypervisor_arn]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module VirtualMachine
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualMachine, context: context)
        type = Types::VirtualMachine.new
        type.host_name = params[:host_name]
        type.hypervisor_id = params[:hypervisor_id]
        type.name = params[:name]
        type.path = params[:path]
        type.resource_arn = params[:resource_arn]
        type.last_backup_date = params[:last_backup_date]
        type
      end
    end

    module VirtualMachines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualMachine.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
