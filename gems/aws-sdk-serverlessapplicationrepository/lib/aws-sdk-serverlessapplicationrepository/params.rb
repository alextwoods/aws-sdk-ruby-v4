# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServerlessApplicationRepository
  module Params

    module ApplicationDependencySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDependencySummary, context: context)
        type = Types::ApplicationDependencySummary.new
        type.application_id = params[:application_id]
        type.semantic_version = params[:semantic_version]
        type
      end
    end

    module ApplicationPolicyStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationPolicyStatement, context: context)
        type = Types::ApplicationPolicyStatement.new
        type.actions = List____listOf__string.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.principal_org_i_ds = List____listOf__string.build(params[:principal_org_i_ds], context: "#{context}[:principal_org_i_ds]") unless params[:principal_org_i_ds].nil?
        type.principals = List____listOf__string.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.statement_id = params[:statement_id]
        type
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.application_id = params[:application_id]
        type.author = params[:author]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.name = params[:name]
        type.spdx_license_id = params[:spdx_license_id]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
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

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.author = params[:author]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.license_body = params[:license_body]
        type.license_url = params[:license_url]
        type.name = params[:name]
        type.readme_body = params[:readme_body]
        type.readme_url = params[:readme_url]
        type.semantic_version = params[:semantic_version]
        type.source_code_archive_url = params[:source_code_archive_url]
        type.source_code_url = params[:source_code_url]
        type.spdx_license_id = params[:spdx_license_id]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_id = params[:application_id]
        type.author = params[:author]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.is_verified_author = params[:is_verified_author]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.license_url = params[:license_url]
        type.name = params[:name]
        type.readme_url = params[:readme_url]
        type.spdx_license_id = params[:spdx_license_id]
        type.verified_author_url = params[:verified_author_url]
        type.version = Version.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type
      end
    end

    module CreateApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationVersionInput, context: context)
        type = Types::CreateApplicationVersionInput.new
        type.application_id = params[:application_id]
        type.semantic_version = params[:semantic_version]
        type.source_code_archive_url = params[:source_code_archive_url]
        type.source_code_url = params[:source_code_url]
        type.template_body = params[:template_body]
        type.template_url = params[:template_url]
        type
      end
    end

    module CreateApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationVersionOutput, context: context)
        type = Types::CreateApplicationVersionOutput.new
        type.application_id = params[:application_id]
        type.creation_time = params[:creation_time]
        type.parameter_definitions = List____listOfParameterDefinition.build(params[:parameter_definitions], context: "#{context}[:parameter_definitions]") unless params[:parameter_definitions].nil?
        type.required_capabilities = List____listOfCapability.build(params[:required_capabilities], context: "#{context}[:required_capabilities]") unless params[:required_capabilities].nil?
        type.resources_supported = params[:resources_supported]
        type.semantic_version = params[:semantic_version]
        type.source_code_archive_url = params[:source_code_archive_url]
        type.source_code_url = params[:source_code_url]
        type.template_url = params[:template_url]
        type
      end
    end

    module CreateCloudFormationChangeSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationChangeSetInput, context: context)
        type = Types::CreateCloudFormationChangeSetInput.new
        type.application_id = params[:application_id]
        type.capabilities = List____listOf__string.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.change_set_name = params[:change_set_name]
        type.client_token = params[:client_token]
        type.description = params[:description]
        type.notification_arns = List____listOf__string.build(params[:notification_arns], context: "#{context}[:notification_arns]") unless params[:notification_arns].nil?
        type.parameter_overrides = List____listOfParameterValue.build(params[:parameter_overrides], context: "#{context}[:parameter_overrides]") unless params[:parameter_overrides].nil?
        type.resource_types = List____listOf__string.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.rollback_configuration = RollbackConfiguration.build(params[:rollback_configuration], context: "#{context}[:rollback_configuration]") unless params[:rollback_configuration].nil?
        type.semantic_version = params[:semantic_version]
        type.stack_name = params[:stack_name]
        type.tags = List____listOfTag.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.template_id = params[:template_id]
        type
      end
    end

    module CreateCloudFormationChangeSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationChangeSetOutput, context: context)
        type = Types::CreateCloudFormationChangeSetOutput.new
        type.application_id = params[:application_id]
        type.change_set_id = params[:change_set_id]
        type.semantic_version = params[:semantic_version]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module CreateCloudFormationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationTemplateInput, context: context)
        type = Types::CreateCloudFormationTemplateInput.new
        type.application_id = params[:application_id]
        type.semantic_version = params[:semantic_version]
        type
      end
    end

    module CreateCloudFormationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCloudFormationTemplateOutput, context: context)
        type = Types::CreateCloudFormationTemplateOutput.new
        type.application_id = params[:application_id]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type.semantic_version = params[:semantic_version]
        type.status = params[:status]
        type.template_id = params[:template_id]
        type.template_url = params[:template_url]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.application_id = params[:application_id]
        type.semantic_version = params[:semantic_version]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.application_id = params[:application_id]
        type.author = params[:author]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.is_verified_author = params[:is_verified_author]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.license_url = params[:license_url]
        type.name = params[:name]
        type.readme_url = params[:readme_url]
        type.spdx_license_id = params[:spdx_license_id]
        type.verified_author_url = params[:verified_author_url]
        type.version = Version.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type
      end
    end

    module GetApplicationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationPolicyInput, context: context)
        type = Types::GetApplicationPolicyInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApplicationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationPolicyOutput, context: context)
        type = Types::GetApplicationPolicyOutput.new
        type.statements = List____listOfApplicationPolicyStatement.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type
      end
    end

    module GetCloudFormationTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCloudFormationTemplateInput, context: context)
        type = Types::GetCloudFormationTemplateInput.new
        type.application_id = params[:application_id]
        type.template_id = params[:template_id]
        type
      end
    end

    module GetCloudFormationTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCloudFormationTemplateOutput, context: context)
        type = Types::GetCloudFormationTemplateOutput.new
        type.application_id = params[:application_id]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type.semantic_version = params[:semantic_version]
        type.status = params[:status]
        type.template_id = params[:template_id]
        type.template_url = params[:template_url]
        type
      end
    end

    module InternalServerErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerErrorException, context: context)
        type = Types::InternalServerErrorException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ListApplicationDependenciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationDependenciesInput, context: context)
        type = Types::ListApplicationDependenciesInput.new
        type.application_id = params[:application_id]
        type.max_items = params[:max_items]
        type.next_token = params[:next_token]
        type.semantic_version = params[:semantic_version]
        type
      end
    end

    module ListApplicationDependenciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationDependenciesOutput, context: context)
        type = Types::ListApplicationDependenciesOutput.new
        type.dependencies = List____listOfApplicationDependencySummary.build(params[:dependencies], context: "#{context}[:dependencies]") unless params[:dependencies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsInput, context: context)
        type = Types::ListApplicationVersionsInput.new
        type.application_id = params[:application_id]
        type.max_items = params[:max_items]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsOutput, context: context)
        type = Types::ListApplicationVersionsOutput.new
        type.next_token = params[:next_token]
        type.versions = List____listOfVersionSummary.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.max_items = params[:max_items]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.applications = List____listOfApplicationSummary.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ParameterDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterDefinition, context: context)
        type = Types::ParameterDefinition.new
        type.allowed_pattern = params[:allowed_pattern]
        type.allowed_values = List____listOf__string.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type.constraint_description = params[:constraint_description]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.max_length = params[:max_length]
        type.max_value = params[:max_value]
        type.min_length = params[:min_length]
        type.min_value = params[:min_value]
        type.name = params[:name]
        type.no_echo = params[:no_echo]
        type.referenced_by_resources = List____listOf__string.build(params[:referenced_by_resources], context: "#{context}[:referenced_by_resources]") unless params[:referenced_by_resources].nil?
        type.type = params[:type]
        type
      end
    end

    module ParameterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterValue, context: context)
        type = Types::ParameterValue.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module PutApplicationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutApplicationPolicyInput, context: context)
        type = Types::PutApplicationPolicyInput.new
        type.application_id = params[:application_id]
        type.statements = List____listOfApplicationPolicyStatement.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type
      end
    end

    module PutApplicationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutApplicationPolicyOutput, context: context)
        type = Types::PutApplicationPolicyOutput.new
        type.statements = List____listOfApplicationPolicyStatement.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type
      end
    end

    module RollbackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackConfiguration, context: context)
        type = Types::RollbackConfiguration.new
        type.monitoring_time_in_minutes = params[:monitoring_time_in_minutes]
        type.rollback_triggers = List____listOfRollbackTrigger.build(params[:rollback_triggers], context: "#{context}[:rollback_triggers]") unless params[:rollback_triggers].nil?
        type
      end
    end

    module RollbackTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackTrigger, context: context)
        type = Types::RollbackTrigger.new
        type.arn = params[:arn]
        type.type = params[:type]
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module UnshareApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnshareApplicationInput, context: context)
        type = Types::UnshareApplicationInput.new
        type.application_id = params[:application_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module UnshareApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnshareApplicationOutput, context: context)
        type = Types::UnshareApplicationOutput.new
        type
      end
    end

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_id = params[:application_id]
        type.author = params[:author]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.readme_body = params[:readme_body]
        type.readme_url = params[:readme_url]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application_id = params[:application_id]
        type.author = params[:author]
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.home_page_url = params[:home_page_url]
        type.is_verified_author = params[:is_verified_author]
        type.labels = List____listOf__string.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.license_url = params[:license_url]
        type.name = params[:name]
        type.readme_url = params[:readme_url]
        type.spdx_license_id = params[:spdx_license_id]
        type.verified_author_url = params[:verified_author_url]
        type.version = Version.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type
      end
    end

    module Version
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Version, context: context)
        type = Types::Version.new
        type.application_id = params[:application_id]
        type.creation_time = params[:creation_time]
        type.parameter_definitions = List____listOfParameterDefinition.build(params[:parameter_definitions], context: "#{context}[:parameter_definitions]") unless params[:parameter_definitions].nil?
        type.required_capabilities = List____listOfCapability.build(params[:required_capabilities], context: "#{context}[:required_capabilities]") unless params[:required_capabilities].nil?
        type.resources_supported = params[:resources_supported]
        type.semantic_version = params[:semantic_version]
        type.source_code_archive_url = params[:source_code_archive_url]
        type.source_code_url = params[:source_code_url]
        type.template_url = params[:template_url]
        type
      end
    end

    module VersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionSummary, context: context)
        type = Types::VersionSummary.new
        type.application_id = params[:application_id]
        type.creation_time = params[:creation_time]
        type.semantic_version = params[:semantic_version]
        type.source_code_url = params[:source_code_url]
        type
      end
    end

    module List____listOfApplicationDependencySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationDependencySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfApplicationPolicyStatement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationPolicyStatement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCapability
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfParameterDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfParameterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRollbackTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RollbackTrigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
