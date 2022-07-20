# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Amplify
  module Validators

    class App
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::App, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:iam_service_role_arn], ::String, context: "#{context}[:iam_service_role_arn]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:default_domain], ::String, context: "#{context}[:default_domain]")
        Hearth::Validator.validate!(input[:enable_branch_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_build]")
        Hearth::Validator.validate!(input[:enable_branch_auto_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_deletion]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        CustomRules.validate!(input[:custom_rules], context: "#{context}[:custom_rules]") unless input[:custom_rules].nil?
        ProductionBranch.validate!(input[:production_branch], context: "#{context}[:production_branch]") unless input[:production_branch].nil?
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:custom_headers], ::String, context: "#{context}[:custom_headers]")
        Hearth::Validator.validate!(input[:enable_auto_branch_creation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_branch_creation]")
        AutoBranchCreationPatterns.validate!(input[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless input[:auto_branch_creation_patterns].nil?
        AutoBranchCreationConfig.validate!(input[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless input[:auto_branch_creation_config].nil?
        Hearth::Validator.validate!(input[:repository_clone_method], ::String, context: "#{context}[:repository_clone_method]")
      end
    end

    class Apps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          App.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Artifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Artifact, context: context)
        Hearth::Validator.validate!(input[:artifact_file_name], ::String, context: "#{context}[:artifact_file_name]")
        Hearth::Validator.validate!(input[:artifact_id], ::String, context: "#{context}[:artifact_id]")
      end
    end

    class Artifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Artifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatedResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoBranchCreationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoBranchCreationConfig, context: context)
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:enable_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_build]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:enable_performance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_mode]")
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:enable_pull_request_preview], ::TrueClass, ::FalseClass, context: "#{context}[:enable_pull_request_preview]")
        Hearth::Validator.validate!(input[:pull_request_environment_name], ::String, context: "#{context}[:pull_request_environment_name]")
      end
    end

    class AutoBranchCreationPatterns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoSubDomainCreationPatterns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BackendEnvironment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendEnvironment, context: context)
        Hearth::Validator.validate!(input[:backend_environment_arn], ::String, context: "#{context}[:backend_environment_arn]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:deployment_artifacts], ::String, context: "#{context}[:deployment_artifacts]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class BackendEnvironments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackendEnvironment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Branch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Branch, context: context)
        Hearth::Validator.validate!(input[:branch_arn], ::String, context: "#{context}[:branch_arn]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:enable_notification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_notification]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:enable_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_build]")
        CustomDomains.validate!(input[:custom_domains], context: "#{context}[:custom_domains]") unless input[:custom_domains].nil?
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:active_job_id], ::String, context: "#{context}[:active_job_id]")
        Hearth::Validator.validate!(input[:total_number_of_jobs], ::String, context: "#{context}[:total_number_of_jobs]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:enable_performance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_mode]")
        Hearth::Validator.validate!(input[:thumbnail_url], ::String, context: "#{context}[:thumbnail_url]")
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:ttl], ::String, context: "#{context}[:ttl]")
        AssociatedResources.validate!(input[:associated_resources], context: "#{context}[:associated_resources]") unless input[:associated_resources].nil?
        Hearth::Validator.validate!(input[:enable_pull_request_preview], ::TrueClass, ::FalseClass, context: "#{context}[:enable_pull_request_preview]")
        Hearth::Validator.validate!(input[:pull_request_environment_name], ::String, context: "#{context}[:pull_request_environment_name]")
        Hearth::Validator.validate!(input[:destination_branch], ::String, context: "#{context}[:destination_branch]")
        Hearth::Validator.validate!(input[:source_branch], ::String, context: "#{context}[:source_branch]")
        Hearth::Validator.validate!(input[:backend_environment_arn], ::String, context: "#{context}[:backend_environment_arn]")
      end
    end

    class Branches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Branch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:iam_service_role_arn], ::String, context: "#{context}[:iam_service_role_arn]")
        Hearth::Validator.validate!(input[:oauth_token], ::String, context: "#{context}[:oauth_token]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:enable_branch_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_build]")
        Hearth::Validator.validate!(input[:enable_branch_auto_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_deletion]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        CustomRules.validate!(input[:custom_rules], context: "#{context}[:custom_rules]") unless input[:custom_rules].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:custom_headers], ::String, context: "#{context}[:custom_headers]")
        Hearth::Validator.validate!(input[:enable_auto_branch_creation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_branch_creation]")
        AutoBranchCreationPatterns.validate!(input[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless input[:auto_branch_creation_patterns].nil?
        AutoBranchCreationConfig.validate!(input[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless input[:auto_branch_creation_config].nil?
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class CreateBackendEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Hearth::Validator.validate!(input[:deployment_artifacts], ::String, context: "#{context}[:deployment_artifacts]")
      end
    end

    class CreateBackendEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendEnvironmentOutput, context: context)
        BackendEnvironment.validate!(input[:backend_environment], context: "#{context}[:backend_environment]") unless input[:backend_environment].nil?
      end
    end

    class CreateBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBranchInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:enable_notification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_notification]")
        Hearth::Validator.validate!(input[:enable_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_build]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:enable_performance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_mode]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:ttl], ::String, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:enable_pull_request_preview], ::TrueClass, ::FalseClass, context: "#{context}[:enable_pull_request_preview]")
        Hearth::Validator.validate!(input[:pull_request_environment_name], ::String, context: "#{context}[:pull_request_environment_name]")
        Hearth::Validator.validate!(input[:backend_environment_arn], ::String, context: "#{context}[:backend_environment_arn]")
      end
    end

    class CreateBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBranchOutput, context: context)
        Branch.validate!(input[:branch], context: "#{context}[:branch]") unless input[:branch].nil?
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        FileMap.validate!(input[:file_map], context: "#{context}[:file_map]") unless input[:file_map].nil?
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        FileUploadUrls.validate!(input[:file_upload_urls], context: "#{context}[:file_upload_urls]") unless input[:file_upload_urls].nil?
        Hearth::Validator.validate!(input[:zip_upload_url], ::String, context: "#{context}[:zip_upload_url]")
      end
    end

    class CreateDomainAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainAssociationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:enable_auto_sub_domain], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_sub_domain]")
        SubDomainSettings.validate!(input[:sub_domain_settings], context: "#{context}[:sub_domain_settings]") unless input[:sub_domain_settings].nil?
        AutoSubDomainCreationPatterns.validate!(input[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless input[:auto_sub_domain_creation_patterns].nil?
        Hearth::Validator.validate!(input[:auto_sub_domain_iam_role], ::String, context: "#{context}[:auto_sub_domain_iam_role]")
      end
    end

    class CreateDomainAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainAssociationOutput, context: context)
        DomainAssociation.validate!(input[:domain_association], context: "#{context}[:domain_association]") unless input[:domain_association].nil?
      end
    end

    class CreateWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebhookInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class CustomDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRule, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class CustomRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class DeleteBackendEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class DeleteBackendEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendEnvironmentOutput, context: context)
        BackendEnvironment.validate!(input[:backend_environment], context: "#{context}[:backend_environment]") unless input[:backend_environment].nil?
      end
    end

    class DeleteBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBranchInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class DeleteBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBranchOutput, context: context)
        Branch.validate!(input[:branch], context: "#{context}[:branch]") unless input[:branch].nil?
      end
    end

    class DeleteDomainAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainAssociationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainAssociationOutput, context: context)
        DomainAssociation.validate!(input[:domain_association], context: "#{context}[:domain_association]") unless input[:domain_association].nil?
      end
    end

    class DeleteJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DeleteJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobOutput, context: context)
        JobSummary.validate!(input[:job_summary], context: "#{context}[:job_summary]") unless input[:job_summary].nil?
      end
    end

    class DeleteWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookInput, context: context)
        Hearth::Validator.validate!(input[:webhook_id], ::String, context: "#{context}[:webhook_id]")
      end
    end

    class DeleteWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class DependentServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependentServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DomainAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainAssociation, context: context)
        Hearth::Validator.validate!(input[:domain_association_arn], ::String, context: "#{context}[:domain_association_arn]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:enable_auto_sub_domain], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_sub_domain]")
        AutoSubDomainCreationPatterns.validate!(input[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless input[:auto_sub_domain_creation_patterns].nil?
        Hearth::Validator.validate!(input[:auto_sub_domain_iam_role], ::String, context: "#{context}[:auto_sub_domain_iam_role]")
        Hearth::Validator.validate!(input[:domain_status], ::String, context: "#{context}[:domain_status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:certificate_verification_dns_record], ::String, context: "#{context}[:certificate_verification_dns_record]")
        SubDomains.validate!(input[:sub_domains], context: "#{context}[:sub_domains]") unless input[:sub_domains].nil?
      end
    end

    class DomainAssociations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FileMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FileUploadUrls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GenerateAccessLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateAccessLogsInput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GenerateAccessLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateAccessLogsOutput, context: context)
        Hearth::Validator.validate!(input[:log_url], ::String, context: "#{context}[:log_url]")
      end
    end

    class GetAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class GetAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class GetArtifactUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArtifactUrlInput, context: context)
        Hearth::Validator.validate!(input[:artifact_id], ::String, context: "#{context}[:artifact_id]")
      end
    end

    class GetArtifactUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArtifactUrlOutput, context: context)
        Hearth::Validator.validate!(input[:artifact_id], ::String, context: "#{context}[:artifact_id]")
        Hearth::Validator.validate!(input[:artifact_url], ::String, context: "#{context}[:artifact_url]")
      end
    end

    class GetBackendEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
      end
    end

    class GetBackendEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendEnvironmentOutput, context: context)
        BackendEnvironment.validate!(input[:backend_environment], context: "#{context}[:backend_environment]") unless input[:backend_environment].nil?
      end
    end

    class GetBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBranchInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class GetBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBranchOutput, context: context)
        Branch.validate!(input[:branch], context: "#{context}[:branch]") unless input[:branch].nil?
      end
    end

    class GetDomainAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainAssociationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainAssociationOutput, context: context)
        DomainAssociation.validate!(input[:domain_association], context: "#{context}[:domain_association]") unless input[:domain_association].nil?
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class GetWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebhookInput, context: context)
        Hearth::Validator.validate!(input[:webhook_id], ::String, context: "#{context}[:webhook_id]")
      end
    end

    class GetWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        JobSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        Steps.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class JobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSummary, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:commit_time], ::Time, context: "#{context}[:commit_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsOutput, context: context)
        Apps.validate!(input[:apps], context: "#{context}[:apps]") unless input[:apps].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsOutput, context: context)
        Artifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBackendEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackendEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBackendEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackendEnvironmentsOutput, context: context)
        BackendEnvironments.validate!(input[:backend_environments], context: "#{context}[:backend_environments]") unless input[:backend_environments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBranchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBranchesInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListBranchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBranchesOutput, context: context)
        Branches.validate!(input[:branches], context: "#{context}[:branches]") unless input[:branches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDomainAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainAssociationsOutput, context: context)
        DomainAssociations.validate!(input[:domain_associations], context: "#{context}[:domain_associations]") unless input[:domain_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        JobSummaries.validate!(input[:job_summaries], context: "#{context}[:job_summaries]") unless input[:job_summaries].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWebhooksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebhooksInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWebhooksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWebhooksOutput, context: context)
        Webhooks.validate!(input[:webhooks], context: "#{context}[:webhooks]") unless input[:webhooks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProductionBranch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionBranch, context: context)
        Hearth::Validator.validate!(input[:last_deploy_time], ::Time, context: "#{context}[:last_deploy_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:thumbnail_url], ::String, context: "#{context}[:thumbnail_url]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Screenshots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StartDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:source_url], ::String, context: "#{context}[:source_url]")
      end
    end

    class StartDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDeploymentOutput, context: context)
        JobSummary.validate!(input[:job_summary], context: "#{context}[:job_summary]") unless input[:job_summary].nil?
      end
    end

    class StartJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:job_reason], ::String, context: "#{context}[:job_reason]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:commit_time], ::Time, context: "#{context}[:commit_time]")
      end
    end

    class StartJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobOutput, context: context)
        JobSummary.validate!(input[:job_summary], context: "#{context}[:job_summary]") unless input[:job_summary].nil?
      end
    end

    class Step
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Step, context: context)
        Hearth::Validator.validate!(input[:step_name], ::String, context: "#{context}[:step_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:log_url], ::String, context: "#{context}[:log_url]")
        Hearth::Validator.validate!(input[:artifacts_url], ::String, context: "#{context}[:artifacts_url]")
        Hearth::Validator.validate!(input[:test_artifacts_url], ::String, context: "#{context}[:test_artifacts_url]")
        Hearth::Validator.validate!(input[:test_config_url], ::String, context: "#{context}[:test_config_url]")
        Screenshots.validate!(input[:screenshots], context: "#{context}[:screenshots]") unless input[:screenshots].nil?
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
      end
    end

    class Steps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Step.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobOutput, context: context)
        JobSummary.validate!(input[:job_summary], context: "#{context}[:job_summary]") unless input[:job_summary].nil?
      end
    end

    class SubDomain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubDomain, context: context)
        SubDomainSetting.validate!(input[:sub_domain_setting], context: "#{context}[:sub_domain_setting]") unless input[:sub_domain_setting].nil?
        Hearth::Validator.validate!(input[:verified], ::TrueClass, ::FalseClass, context: "#{context}[:verified]")
        Hearth::Validator.validate!(input[:dns_record], ::String, context: "#{context}[:dns_record]")
      end
    end

    class SubDomainSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubDomainSetting, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class SubDomainSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubDomainSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubDomains
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubDomain.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:iam_service_role_arn], ::String, context: "#{context}[:iam_service_role_arn]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:enable_branch_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_build]")
        Hearth::Validator.validate!(input[:enable_branch_auto_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:enable_branch_auto_deletion]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        CustomRules.validate!(input[:custom_rules], context: "#{context}[:custom_rules]") unless input[:custom_rules].nil?
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:custom_headers], ::String, context: "#{context}[:custom_headers]")
        Hearth::Validator.validate!(input[:enable_auto_branch_creation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_branch_creation]")
        AutoBranchCreationPatterns.validate!(input[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless input[:auto_branch_creation_patterns].nil?
        AutoBranchCreationConfig.validate!(input[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless input[:auto_branch_creation_config].nil?
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:oauth_token], ::String, context: "#{context}[:oauth_token]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class UpdateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppOutput, context: context)
        App.validate!(input[:app], context: "#{context}[:app]") unless input[:app].nil?
      end
    end

    class UpdateBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBranchInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:enable_notification], ::TrueClass, ::FalseClass, context: "#{context}[:enable_notification]")
        Hearth::Validator.validate!(input[:enable_auto_build], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_build]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:basic_auth_credentials], ::String, context: "#{context}[:basic_auth_credentials]")
        Hearth::Validator.validate!(input[:enable_basic_auth], ::TrueClass, ::FalseClass, context: "#{context}[:enable_basic_auth]")
        Hearth::Validator.validate!(input[:enable_performance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_performance_mode]")
        Hearth::Validator.validate!(input[:build_spec], ::String, context: "#{context}[:build_spec]")
        Hearth::Validator.validate!(input[:ttl], ::String, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:enable_pull_request_preview], ::TrueClass, ::FalseClass, context: "#{context}[:enable_pull_request_preview]")
        Hearth::Validator.validate!(input[:pull_request_environment_name], ::String, context: "#{context}[:pull_request_environment_name]")
        Hearth::Validator.validate!(input[:backend_environment_arn], ::String, context: "#{context}[:backend_environment_arn]")
      end
    end

    class UpdateBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBranchOutput, context: context)
        Branch.validate!(input[:branch], context: "#{context}[:branch]") unless input[:branch].nil?
      end
    end

    class UpdateDomainAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainAssociationInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:enable_auto_sub_domain], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_sub_domain]")
        SubDomainSettings.validate!(input[:sub_domain_settings], context: "#{context}[:sub_domain_settings]") unless input[:sub_domain_settings].nil?
        AutoSubDomainCreationPatterns.validate!(input[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless input[:auto_sub_domain_creation_patterns].nil?
        Hearth::Validator.validate!(input[:auto_sub_domain_iam_role], ::String, context: "#{context}[:auto_sub_domain_iam_role]")
      end
    end

    class UpdateDomainAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainAssociationOutput, context: context)
        DomainAssociation.validate!(input[:domain_association], context: "#{context}[:domain_association]") unless input[:domain_association].nil?
      end
    end

    class UpdateWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebhookInput, context: context)
        Hearth::Validator.validate!(input[:webhook_id], ::String, context: "#{context}[:webhook_id]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class Webhook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Webhook, context: context)
        Hearth::Validator.validate!(input[:webhook_arn], ::String, context: "#{context}[:webhook_arn]")
        Hearth::Validator.validate!(input[:webhook_id], ::String, context: "#{context}[:webhook_id]")
        Hearth::Validator.validate!(input[:webhook_url], ::String, context: "#{context}[:webhook_url]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class Webhooks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Webhook.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
