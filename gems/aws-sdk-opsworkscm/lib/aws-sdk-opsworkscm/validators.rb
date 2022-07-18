# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::OpsWorksCM
  module Validators

    class AccountAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:maximum], ::Integer, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:used], ::Integer, context: "#{context}[:used]")
      end
    end

    class AccountAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateNodeInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
      end
    end

    class AssociateNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateNodeOutput, context: context)
        Hearth::Validator.validate!(input[:node_association_status_token], ::String, context: "#{context}[:node_association_status_token]")
      end
    end

    class Backup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Backup, context: context)
        Hearth::Validator.validate!(input[:backup_arn], ::String, context: "#{context}[:backup_arn]")
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:backup_type], ::String, context: "#{context}[:backup_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_model], ::String, context: "#{context}[:engine_model]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:instance_profile_arn], ::String, context: "#{context}[:instance_profile_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:s3_data_size], ::Integer, context: "#{context}[:s3_data_size]")
        Hearth::Validator.validate!(input[:s3_data_url], ::String, context: "#{context}[:s3_data_url]")
        Hearth::Validator.validate!(input[:s3_log_url], ::String, context: "#{context}[:s3_log_url]")
        Strings.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_description], ::String, context: "#{context}[:status_description]")
        Strings.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:tools_version], ::String, context: "#{context}[:tools_version]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class Backups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Backup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackupOutput, context: context)
        Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class CreateServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServerInput, context: context)
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:custom_domain], ::String, context: "#{context}[:custom_domain]")
        Hearth::Validator.validate!(input[:custom_certificate], ::String, context: "#{context}[:custom_certificate]")
        Hearth::Validator.validate!(input[:custom_private_key], ::String, context: "#{context}[:custom_private_key]")
        Hearth::Validator.validate!(input[:disable_automated_backup], ::TrueClass, ::FalseClass, context: "#{context}[:disable_automated_backup]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_model], ::String, context: "#{context}[:engine_model]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
        Hearth::Validator.validate!(input[:backup_retention_count], ::Integer, context: "#{context}[:backup_retention_count]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:instance_profile_arn], ::String, context: "#{context}[:instance_profile_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Strings.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Strings.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class CreateServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServerOutput, context: context)
        Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class DeleteBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class DeleteBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupOutput, context: context)
      end
    end

    class DeleteServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
      end
    end

    class DeleteServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServerOutput, context: context)
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        AccountAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DescribeBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsOutput, context: context)
        Backups.validate!(input[:backups], context: "#{context}[:backups]") unless input[:backups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsOutput, context: context)
        ServerEvents.validate!(input[:server_events], context: "#{context}[:server_events]") unless input[:server_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeNodeAssociationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeAssociationStatusInput, context: context)
        Hearth::Validator.validate!(input[:node_association_status_token], ::String, context: "#{context}[:node_association_status_token]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
      end
    end

    class DescribeNodeAssociationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNodeAssociationStatusOutput, context: context)
        Hearth::Validator.validate!(input[:node_association_status], ::String, context: "#{context}[:node_association_status]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
      end
    end

    class DescribeServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServersInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServersOutput, context: context)
        Servers.validate!(input[:servers], context: "#{context}[:servers]") unless input[:servers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisassociateNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateNodeInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:node_name], ::String, context: "#{context}[:node_name]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
      end
    end

    class DisassociateNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateNodeOutput, context: context)
        Hearth::Validator.validate!(input[:node_association_status_token], ::String, context: "#{context}[:node_association_status_token]")
      end
    end

    class EngineAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class EngineAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EngineAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportServerEngineAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportServerEngineAttributeInput, context: context)
        Hearth::Validator.validate!(input[:export_attribute_name], ::String, context: "#{context}[:export_attribute_name]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        EngineAttributes.validate!(input[:input_attributes], context: "#{context}[:input_attributes]") unless input[:input_attributes].nil?
      end
    end

    class ExportServerEngineAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportServerEngineAttributeOutput, context: context)
        EngineAttribute.validate!(input[:engine_attribute], context: "#{context}[:engine_attribute]") unless input[:engine_attribute].nil?
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestoreServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreServerInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
      end
    end

    class RestoreServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreServerOutput, context: context)
        Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class Server
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Server, context: context)
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:backup_retention_count], ::Integer, context: "#{context}[:backup_retention_count]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:cloud_formation_stack_arn], ::String, context: "#{context}[:cloud_formation_stack_arn]")
        Hearth::Validator.validate!(input[:custom_domain], ::String, context: "#{context}[:custom_domain]")
        Hearth::Validator.validate!(input[:disable_automated_backup], ::TrueClass, ::FalseClass, context: "#{context}[:disable_automated_backup]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:engine_model], ::String, context: "#{context}[:engine_model]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:instance_profile_arn], ::String, context: "#{context}[:instance_profile_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:key_pair], ::String, context: "#{context}[:key_pair]")
        Hearth::Validator.validate!(input[:maintenance_status], ::String, context: "#{context}[:maintenance_status]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
        Strings.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Strings.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:server_arn], ::String, context: "#{context}[:server_arn]")
      end
    end

    class ServerEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerEvent, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:log_url], ::String, context: "#{context}[:log_url]")
      end
    end

    class ServerEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Servers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Server.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartMaintenanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMaintenanceInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        EngineAttributes.validate!(input[:engine_attributes], context: "#{context}[:engine_attributes]") unless input[:engine_attributes].nil?
      end
    end

    class StartMaintenanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMaintenanceOutput, context: context)
        Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class Strings
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateServerEngineAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerEngineAttributesInput, context: context)
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class UpdateServerEngineAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerEngineAttributesOutput, context: context)
        Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class UpdateServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerInput, context: context)
        Hearth::Validator.validate!(input[:disable_automated_backup], ::TrueClass, ::FalseClass, context: "#{context}[:disable_automated_backup]")
        Hearth::Validator.validate!(input[:backup_retention_count], ::Integer, context: "#{context}[:backup_retention_count]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:preferred_backup_window], ::String, context: "#{context}[:preferred_backup_window]")
      end
    end

    class UpdateServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerOutput, context: context)
        Server.validate!(input[:server], context: "#{context}[:server]") unless input[:server].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
