# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorksCM
  module Params

    module AccountAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAttribute, context: context)
        type = Types::AccountAttribute.new
        type.name = params[:name]
        type.maximum = params[:maximum]
        type.used = params[:used]
        type
      end
    end

    module AccountAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateNodeInput, context: context)
        type = Types::AssociateNodeInput.new
        type.server_name = params[:server_name]
        type.node_name = params[:node_name]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type
      end
    end

    module AssociateNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateNodeOutput, context: context)
        type = Types::AssociateNodeOutput.new
        type.node_association_status_token = params[:node_association_status_token]
        type
      end
    end

    module Backup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Backup, context: context)
        type = Types::Backup.new
        type.backup_arn = params[:backup_arn]
        type.backup_id = params[:backup_id]
        type.backup_type = params[:backup_type]
        type.created_at = params[:created_at]
        type.description = params[:description]
        type.engine = params[:engine]
        type.engine_model = params[:engine_model]
        type.engine_version = params[:engine_version]
        type.instance_profile_arn = params[:instance_profile_arn]
        type.instance_type = params[:instance_type]
        type.key_pair = params[:key_pair]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.s3_data_size = params[:s3_data_size]
        type.s3_data_url = params[:s3_data_url]
        type.s3_log_url = params[:s3_log_url]
        type.security_group_ids = Strings.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.server_name = params[:server_name]
        type.service_role_arn = params[:service_role_arn]
        type.status = params[:status]
        type.status_description = params[:status_description]
        type.subnet_ids = Strings.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tools_version = params[:tools_version]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module Backups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Backup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupInput, context: context)
        type = Types::CreateBackupInput.new
        type.server_name = params[:server_name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackupOutput, context: context)
        type = Types::CreateBackupOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module CreateServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServerInput, context: context)
        type = Types::CreateServerInput.new
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.custom_domain = params[:custom_domain]
        type.custom_certificate = params[:custom_certificate]
        type.custom_private_key = params[:custom_private_key]
        type.disable_automated_backup = params[:disable_automated_backup]
        type.engine = params[:engine]
        type.engine_model = params[:engine_model]
        type.engine_version = params[:engine_version]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type.backup_retention_count = params[:backup_retention_count]
        type.server_name = params[:server_name]
        type.instance_profile_arn = params[:instance_profile_arn]
        type.instance_type = params[:instance_type]
        type.key_pair = params[:key_pair]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.security_group_ids = Strings.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.service_role_arn = params[:service_role_arn]
        type.subnet_ids = Strings.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.backup_id = params[:backup_id]
        type
      end
    end

    module CreateServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServerOutput, context: context)
        type = Types::CreateServerOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module DeleteBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupInput, context: context)
        type = Types::DeleteBackupInput.new
        type.backup_id = params[:backup_id]
        type
      end
    end

    module DeleteBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupOutput, context: context)
        type = Types::DeleteBackupOutput.new
        type
      end
    end

    module DeleteServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerInput, context: context)
        type = Types::DeleteServerInput.new
        type.server_name = params[:server_name]
        type
      end
    end

    module DeleteServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerOutput, context: context)
        type = Types::DeleteServerOutput.new
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.attributes = AccountAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DescribeBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsInput, context: context)
        type = Types::DescribeBackupsInput.new
        type.backup_id = params[:backup_id]
        type.server_name = params[:server_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeBackupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsOutput, context: context)
        type = Types::DescribeBackupsOutput.new
        type.backups = Backups.build(params[:backups], context: "#{context}[:backups]") unless params[:backups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsInput, context: context)
        type = Types::DescribeEventsInput.new
        type.server_name = params[:server_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsOutput, context: context)
        type = Types::DescribeEventsOutput.new
        type.server_events = ServerEvents.build(params[:server_events], context: "#{context}[:server_events]") unless params[:server_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeNodeAssociationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeAssociationStatusInput, context: context)
        type = Types::DescribeNodeAssociationStatusInput.new
        type.node_association_status_token = params[:node_association_status_token]
        type.server_name = params[:server_name]
        type
      end
    end

    module DescribeNodeAssociationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNodeAssociationStatusOutput, context: context)
        type = Types::DescribeNodeAssociationStatusOutput.new
        type.node_association_status = params[:node_association_status]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type
      end
    end

    module DescribeServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServersInput, context: context)
        type = Types::DescribeServersInput.new
        type.server_name = params[:server_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServersOutput, context: context)
        type = Types::DescribeServersOutput.new
        type.servers = Servers.build(params[:servers], context: "#{context}[:servers]") unless params[:servers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DisassociateNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateNodeInput, context: context)
        type = Types::DisassociateNodeInput.new
        type.server_name = params[:server_name]
        type.node_name = params[:node_name]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type
      end
    end

    module DisassociateNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateNodeOutput, context: context)
        type = Types::DisassociateNodeOutput.new
        type.node_association_status_token = params[:node_association_status_token]
        type
      end
    end

    module EngineAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineAttribute, context: context)
        type = Types::EngineAttribute.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module EngineAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EngineAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportServerEngineAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportServerEngineAttributeInput, context: context)
        type = Types::ExportServerEngineAttributeInput.new
        type.export_attribute_name = params[:export_attribute_name]
        type.server_name = params[:server_name]
        type.input_attributes = EngineAttributes.build(params[:input_attributes], context: "#{context}[:input_attributes]") unless params[:input_attributes].nil?
        type
      end
    end

    module ExportServerEngineAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportServerEngineAttributeOutput, context: context)
        type = Types::ExportServerEngineAttributeOutput.new
        type.engine_attribute = EngineAttribute.build(params[:engine_attribute], context: "#{context}[:engine_attribute]") unless params[:engine_attribute].nil?
        type.server_name = params[:server_name]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RestoreServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreServerInput, context: context)
        type = Types::RestoreServerInput.new
        type.backup_id = params[:backup_id]
        type.server_name = params[:server_name]
        type.instance_type = params[:instance_type]
        type.key_pair = params[:key_pair]
        type
      end
    end

    module RestoreServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreServerOutput, context: context)
        type = Types::RestoreServerOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module Server
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Server, context: context)
        type = Types::Server.new
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.backup_retention_count = params[:backup_retention_count]
        type.server_name = params[:server_name]
        type.created_at = params[:created_at]
        type.cloud_formation_stack_arn = params[:cloud_formation_stack_arn]
        type.custom_domain = params[:custom_domain]
        type.disable_automated_backup = params[:disable_automated_backup]
        type.endpoint = params[:endpoint]
        type.engine = params[:engine]
        type.engine_model = params[:engine_model]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type.engine_version = params[:engine_version]
        type.instance_profile_arn = params[:instance_profile_arn]
        type.instance_type = params[:instance_type]
        type.key_pair = params[:key_pair]
        type.maintenance_status = params[:maintenance_status]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.preferred_backup_window = params[:preferred_backup_window]
        type.security_group_ids = Strings.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.service_role_arn = params[:service_role_arn]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.subnet_ids = Strings.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.server_arn = params[:server_arn]
        type
      end
    end

    module ServerEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerEvent, context: context)
        type = Types::ServerEvent.new
        type.created_at = params[:created_at]
        type.server_name = params[:server_name]
        type.message = params[:message]
        type.log_url = params[:log_url]
        type
      end
    end

    module ServerEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Servers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Server.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartMaintenanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMaintenanceInput, context: context)
        type = Types::StartMaintenanceInput.new
        type.server_name = params[:server_name]
        type.engine_attributes = EngineAttributes.build(params[:engine_attributes], context: "#{context}[:engine_attributes]") unless params[:engine_attributes].nil?
        type
      end
    end

    module StartMaintenanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMaintenanceOutput, context: context)
        type = Types::StartMaintenanceOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module Strings
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
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UpdateServerEngineAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerEngineAttributesInput, context: context)
        type = Types::UpdateServerEngineAttributesInput.new
        type.server_name = params[:server_name]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module UpdateServerEngineAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerEngineAttributesOutput, context: context)
        type = Types::UpdateServerEngineAttributesOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module UpdateServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerInput, context: context)
        type = Types::UpdateServerInput.new
        type.disable_automated_backup = params[:disable_automated_backup]
        type.backup_retention_count = params[:backup_retention_count]
        type.server_name = params[:server_name]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.preferred_backup_window = params[:preferred_backup_window]
        type
      end
    end

    module UpdateServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerOutput, context: context)
        type = Types::UpdateServerOutput.new
        type.server = Server.build(params[:server], context: "#{context}[:server]") unless params[:server].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
