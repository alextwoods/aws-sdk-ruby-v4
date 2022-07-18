# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServerlessApplicationRepository
  module Validators

    class ApplicationDependencySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDependencySummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
      end
    end

    class ApplicationPolicyStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationPolicyStatement, context: context)
        List____listOf__string.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        List____listOf__string.validate!(input[:principal_org_i_ds], context: "#{context}[:principal_org_i_ds]") unless input[:principal_org_i_ds].nil?
        List____listOf__string.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:spdx_license_id], ::String, context: "#{context}[:spdx_license_id]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:license_body], ::String, context: "#{context}[:license_body]")
        Hearth::Validator.validate!(input[:license_url], ::String, context: "#{context}[:license_url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:readme_body], ::String, context: "#{context}[:readme_body]")
        Hearth::Validator.validate!(input[:readme_url], ::String, context: "#{context}[:readme_url]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:source_code_archive_url], ::String, context: "#{context}[:source_code_archive_url]")
        Hearth::Validator.validate!(input[:source_code_url], ::String, context: "#{context}[:source_code_url]")
        Hearth::Validator.validate!(input[:spdx_license_id], ::String, context: "#{context}[:spdx_license_id]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        Hearth::Validator.validate!(input[:is_verified_author], ::TrueClass, ::FalseClass, context: "#{context}[:is_verified_author]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:license_url], ::String, context: "#{context}[:license_url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:readme_url], ::String, context: "#{context}[:readme_url]")
        Hearth::Validator.validate!(input[:spdx_license_id], ::String, context: "#{context}[:spdx_license_id]")
        Hearth::Validator.validate!(input[:verified_author_url], ::String, context: "#{context}[:verified_author_url]")
        Version.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
      end
    end

    class CreateApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:source_code_archive_url], ::String, context: "#{context}[:source_code_archive_url]")
        Hearth::Validator.validate!(input[:source_code_url], ::String, context: "#{context}[:source_code_url]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class CreateApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        List____listOfParameterDefinition.validate!(input[:parameter_definitions], context: "#{context}[:parameter_definitions]") unless input[:parameter_definitions].nil?
        List____listOfCapability.validate!(input[:required_capabilities], context: "#{context}[:required_capabilities]") unless input[:required_capabilities].nil?
        Hearth::Validator.validate!(input[:resources_supported], ::TrueClass, ::FalseClass, context: "#{context}[:resources_supported]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:source_code_archive_url], ::String, context: "#{context}[:source_code_archive_url]")
        Hearth::Validator.validate!(input[:source_code_url], ::String, context: "#{context}[:source_code_url]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class CreateCloudFormationChangeSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationChangeSetInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        List____listOf__string.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:change_set_name], ::String, context: "#{context}[:change_set_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        List____listOf__string.validate!(input[:notification_arns], context: "#{context}[:notification_arns]") unless input[:notification_arns].nil?
        List____listOfParameterValue.validate!(input[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless input[:parameter_overrides].nil?
        List____listOf__string.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        RollbackConfiguration.validate!(input[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless input[:rollback_configuration].nil?
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        List____listOfTag.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class CreateCloudFormationChangeSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationChangeSetOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:change_set_id], ::String, context: "#{context}[:change_set_id]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class CreateCloudFormationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
      end
    end

    class CreateCloudFormationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCloudFormationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::String, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        Hearth::Validator.validate!(input[:is_verified_author], ::TrueClass, ::FalseClass, context: "#{context}[:is_verified_author]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:license_url], ::String, context: "#{context}[:license_url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:readme_url], ::String, context: "#{context}[:readme_url]")
        Hearth::Validator.validate!(input[:spdx_license_id], ::String, context: "#{context}[:spdx_license_id]")
        Hearth::Validator.validate!(input[:verified_author_url], ::String, context: "#{context}[:verified_author_url]")
        Version.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
      end
    end

    class GetApplicationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApplicationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationPolicyOutput, context: context)
        List____listOfApplicationPolicyStatement.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
      end
    end

    class GetCloudFormationTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFormationTemplateInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class GetCloudFormationTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCloudFormationTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::String, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class InternalServerErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerErrorException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationDependenciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationDependenciesInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
      end
    end

    class ListApplicationDependenciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationDependenciesOutput, context: context)
        List____listOfApplicationDependencySummary.validate!(input[:dependencies], context: "#{context}[:dependencies]") unless input[:dependencies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfVersionSummary.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        List____listOfApplicationSummary.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterDefinition, context: context)
        Hearth::Validator.validate!(input[:allowed_pattern], ::String, context: "#{context}[:allowed_pattern]")
        List____listOf__string.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
        Hearth::Validator.validate!(input[:constraint_description], ::String, context: "#{context}[:constraint_description]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:max_length], ::Integer, context: "#{context}[:max_length]")
        Hearth::Validator.validate!(input[:max_value], ::Integer, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:min_length], ::Integer, context: "#{context}[:min_length]")
        Hearth::Validator.validate!(input[:min_value], ::Integer, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:no_echo], ::TrueClass, ::FalseClass, context: "#{context}[:no_echo]")
        List____listOf__string.validate!(input[:referenced_by_resources], context: "#{context}[:referenced_by_resources]") unless input[:referenced_by_resources].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ParameterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterValue, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PutApplicationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutApplicationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        List____listOfApplicationPolicyStatement.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
      end
    end

    class PutApplicationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutApplicationPolicyOutput, context: context)
        List____listOfApplicationPolicyStatement.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
      end
    end

    class RollbackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackConfiguration, context: context)
        Hearth::Validator.validate!(input[:monitoring_time_in_minutes], ::Integer, context: "#{context}[:monitoring_time_in_minutes]")
        List____listOfRollbackTrigger.validate!(input[:rollback_triggers], context: "#{context}[:rollback_triggers]") unless input[:rollback_triggers].nil?
      end
    end

    class RollbackTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackTrigger, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnshareApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnshareApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class UnshareApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnshareApplicationOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:readme_body], ::String, context: "#{context}[:readme_body]")
        Hearth::Validator.validate!(input[:readme_url], ::String, context: "#{context}[:readme_url]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:home_page_url], ::String, context: "#{context}[:home_page_url]")
        Hearth::Validator.validate!(input[:is_verified_author], ::TrueClass, ::FalseClass, context: "#{context}[:is_verified_author]")
        List____listOf__string.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:license_url], ::String, context: "#{context}[:license_url]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:readme_url], ::String, context: "#{context}[:readme_url]")
        Hearth::Validator.validate!(input[:spdx_license_id], ::String, context: "#{context}[:spdx_license_id]")
        Hearth::Validator.validate!(input[:verified_author_url], ::String, context: "#{context}[:verified_author_url]")
        Version.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
      end
    end

    class Version
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Version, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        List____listOfParameterDefinition.validate!(input[:parameter_definitions], context: "#{context}[:parameter_definitions]") unless input[:parameter_definitions].nil?
        List____listOfCapability.validate!(input[:required_capabilities], context: "#{context}[:required_capabilities]") unless input[:required_capabilities].nil?
        Hearth::Validator.validate!(input[:resources_supported], ::TrueClass, ::FalseClass, context: "#{context}[:resources_supported]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:source_code_archive_url], ::String, context: "#{context}[:source_code_archive_url]")
        Hearth::Validator.validate!(input[:source_code_url], ::String, context: "#{context}[:source_code_url]")
        Hearth::Validator.validate!(input[:template_url], ::String, context: "#{context}[:template_url]")
      end
    end

    class VersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:semantic_version], ::String, context: "#{context}[:semantic_version]")
        Hearth::Validator.validate!(input[:source_code_url], ::String, context: "#{context}[:source_code_url]")
      end
    end

    class List____listOfApplicationDependencySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationDependencySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfApplicationPolicyStatement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationPolicyStatement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCapability
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfParameterDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfParameterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRollbackTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RollbackTrigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
