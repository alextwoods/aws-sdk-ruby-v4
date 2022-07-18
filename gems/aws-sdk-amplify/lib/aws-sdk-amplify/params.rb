# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amplify
  module Params

    module App
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::App, context: context)
        type = Types::App.new
        type.app_id = params[:app_id]
        type.app_arn = params[:app_arn]
        type.name = params[:name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.description = params[:description]
        type.repository = params[:repository]
        type.platform = params[:platform]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.iam_service_role_arn = params[:iam_service_role_arn]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.default_domain = params[:default_domain]
        type.enable_branch_auto_build = params[:enable_branch_auto_build]
        type.enable_branch_auto_deletion = params[:enable_branch_auto_deletion]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.custom_rules = CustomRules.build(params[:custom_rules], context: "#{context}[:custom_rules]") unless params[:custom_rules].nil?
        type.production_branch = ProductionBranch.build(params[:production_branch], context: "#{context}[:production_branch]") unless params[:production_branch].nil?
        type.build_spec = params[:build_spec]
        type.custom_headers = params[:custom_headers]
        type.enable_auto_branch_creation = params[:enable_auto_branch_creation]
        type.auto_branch_creation_patterns = AutoBranchCreationPatterns.build(params[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless params[:auto_branch_creation_patterns].nil?
        type.auto_branch_creation_config = AutoBranchCreationConfig.build(params[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless params[:auto_branch_creation_config].nil?
        type.repository_clone_method = params[:repository_clone_method]
        type
      end
    end

    module Apps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << App.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Artifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Artifact, context: context)
        type = Types::Artifact.new
        type.artifact_file_name = params[:artifact_file_name]
        type.artifact_id = params[:artifact_id]
        type
      end
    end

    module Artifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Artifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatedResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoBranchCreationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoBranchCreationConfig, context: context)
        type = Types::AutoBranchCreationConfig.new
        type.stage = params[:stage]
        type.framework = params[:framework]
        type.enable_auto_build = params[:enable_auto_build]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.enable_performance_mode = params[:enable_performance_mode]
        type.build_spec = params[:build_spec]
        type.enable_pull_request_preview = params[:enable_pull_request_preview]
        type.pull_request_environment_name = params[:pull_request_environment_name]
        type
      end
    end

    module AutoBranchCreationPatterns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoSubDomainCreationPatterns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BackendEnvironment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendEnvironment, context: context)
        type = Types::BackendEnvironment.new
        type.backend_environment_arn = params[:backend_environment_arn]
        type.environment_name = params[:environment_name]
        type.stack_name = params[:stack_name]
        type.deployment_artifacts = params[:deployment_artifacts]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module BackendEnvironments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackendEnvironment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Branch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Branch, context: context)
        type = Types::Branch.new
        type.branch_arn = params[:branch_arn]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.stage = params[:stage]
        type.display_name = params[:display_name]
        type.enable_notification = params[:enable_notification]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.enable_auto_build = params[:enable_auto_build]
        type.custom_domains = CustomDomains.build(params[:custom_domains], context: "#{context}[:custom_domains]") unless params[:custom_domains].nil?
        type.framework = params[:framework]
        type.active_job_id = params[:active_job_id]
        type.total_number_of_jobs = params[:total_number_of_jobs]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.enable_performance_mode = params[:enable_performance_mode]
        type.thumbnail_url = params[:thumbnail_url]
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.build_spec = params[:build_spec]
        type.ttl = params[:ttl]
        type.associated_resources = AssociatedResources.build(params[:associated_resources], context: "#{context}[:associated_resources]") unless params[:associated_resources].nil?
        type.enable_pull_request_preview = params[:enable_pull_request_preview]
        type.pull_request_environment_name = params[:pull_request_environment_name]
        type.destination_branch = params[:destination_branch]
        type.source_branch = params[:source_branch]
        type.backend_environment_arn = params[:backend_environment_arn]
        type
      end
    end

    module Branches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Branch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.repository = params[:repository]
        type.platform = params[:platform]
        type.iam_service_role_arn = params[:iam_service_role_arn]
        type.oauth_token = params[:oauth_token]
        type.access_token = params[:access_token]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.enable_branch_auto_build = params[:enable_branch_auto_build]
        type.enable_branch_auto_deletion = params[:enable_branch_auto_deletion]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.custom_rules = CustomRules.build(params[:custom_rules], context: "#{context}[:custom_rules]") unless params[:custom_rules].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.build_spec = params[:build_spec]
        type.custom_headers = params[:custom_headers]
        type.enable_auto_branch_creation = params[:enable_auto_branch_creation]
        type.auto_branch_creation_patterns = AutoBranchCreationPatterns.build(params[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless params[:auto_branch_creation_patterns].nil?
        type.auto_branch_creation_config = AutoBranchCreationConfig.build(params[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless params[:auto_branch_creation_config].nil?
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module CreateBackendEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendEnvironmentInput, context: context)
        type = Types::CreateBackendEnvironmentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.stack_name = params[:stack_name]
        type.deployment_artifacts = params[:deployment_artifacts]
        type
      end
    end

    module CreateBackendEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendEnvironmentOutput, context: context)
        type = Types::CreateBackendEnvironmentOutput.new
        type.backend_environment = BackendEnvironment.build(params[:backend_environment], context: "#{context}[:backend_environment]") unless params[:backend_environment].nil?
        type
      end
    end

    module CreateBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBranchInput, context: context)
        type = Types::CreateBranchInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type.stage = params[:stage]
        type.framework = params[:framework]
        type.enable_notification = params[:enable_notification]
        type.enable_auto_build = params[:enable_auto_build]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.enable_performance_mode = params[:enable_performance_mode]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.build_spec = params[:build_spec]
        type.ttl = params[:ttl]
        type.display_name = params[:display_name]
        type.enable_pull_request_preview = params[:enable_pull_request_preview]
        type.pull_request_environment_name = params[:pull_request_environment_name]
        type.backend_environment_arn = params[:backend_environment_arn]
        type
      end
    end

    module CreateBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBranchOutput, context: context)
        type = Types::CreateBranchOutput.new
        type.branch = Branch.build(params[:branch], context: "#{context}[:branch]") unless params[:branch].nil?
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.file_map = FileMap.build(params[:file_map], context: "#{context}[:file_map]") unless params[:file_map].nil?
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.job_id = params[:job_id]
        type.file_upload_urls = FileUploadUrls.build(params[:file_upload_urls], context: "#{context}[:file_upload_urls]") unless params[:file_upload_urls].nil?
        type.zip_upload_url = params[:zip_upload_url]
        type
      end
    end

    module CreateDomainAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainAssociationInput, context: context)
        type = Types::CreateDomainAssociationInput.new
        type.app_id = params[:app_id]
        type.domain_name = params[:domain_name]
        type.enable_auto_sub_domain = params[:enable_auto_sub_domain]
        type.sub_domain_settings = SubDomainSettings.build(params[:sub_domain_settings], context: "#{context}[:sub_domain_settings]") unless params[:sub_domain_settings].nil?
        type.auto_sub_domain_creation_patterns = AutoSubDomainCreationPatterns.build(params[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless params[:auto_sub_domain_creation_patterns].nil?
        type.auto_sub_domain_iam_role = params[:auto_sub_domain_iam_role]
        type
      end
    end

    module CreateDomainAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainAssociationOutput, context: context)
        type = Types::CreateDomainAssociationOutput.new
        type.domain_association = DomainAssociation.build(params[:domain_association], context: "#{context}[:domain_association]") unless params[:domain_association].nil?
        type
      end
    end

    module CreateWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebhookInput, context: context)
        type = Types::CreateWebhookInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type
      end
    end

    module CreateWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebhookOutput, context: context)
        type = Types::CreateWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module CustomDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRule, context: context)
        type = Types::CustomRule.new
        type.source = params[:source]
        type.target = params[:target]
        type.status = params[:status]
        type.condition = params[:condition]
        type
      end
    end

    module CustomRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module DeleteBackendEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendEnvironmentInput, context: context)
        type = Types::DeleteBackendEnvironmentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module DeleteBackendEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendEnvironmentOutput, context: context)
        type = Types::DeleteBackendEnvironmentOutput.new
        type.backend_environment = BackendEnvironment.build(params[:backend_environment], context: "#{context}[:backend_environment]") unless params[:backend_environment].nil?
        type
      end
    end

    module DeleteBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBranchInput, context: context)
        type = Types::DeleteBranchInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module DeleteBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBranchOutput, context: context)
        type = Types::DeleteBranchOutput.new
        type.branch = Branch.build(params[:branch], context: "#{context}[:branch]") unless params[:branch].nil?
        type
      end
    end

    module DeleteDomainAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainAssociationInput, context: context)
        type = Types::DeleteDomainAssociationInput.new
        type.app_id = params[:app_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainAssociationOutput, context: context)
        type = Types::DeleteDomainAssociationOutput.new
        type.domain_association = DomainAssociation.build(params[:domain_association], context: "#{context}[:domain_association]") unless params[:domain_association].nil?
        type
      end
    end

    module DeleteJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobInput, context: context)
        type = Types::DeleteJobInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module DeleteJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobOutput, context: context)
        type = Types::DeleteJobOutput.new
        type.job_summary = JobSummary.build(params[:job_summary], context: "#{context}[:job_summary]") unless params[:job_summary].nil?
        type
      end
    end

    module DeleteWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookInput, context: context)
        type = Types::DeleteWebhookInput.new
        type.webhook_id = params[:webhook_id]
        type
      end
    end

    module DeleteWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookOutput, context: context)
        type = Types::DeleteWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module DependentServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependentServiceFailureException, context: context)
        type = Types::DependentServiceFailureException.new
        type.message = params[:message]
        type
      end
    end

    module DomainAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainAssociation, context: context)
        type = Types::DomainAssociation.new
        type.domain_association_arn = params[:domain_association_arn]
        type.domain_name = params[:domain_name]
        type.enable_auto_sub_domain = params[:enable_auto_sub_domain]
        type.auto_sub_domain_creation_patterns = AutoSubDomainCreationPatterns.build(params[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless params[:auto_sub_domain_creation_patterns].nil?
        type.auto_sub_domain_iam_role = params[:auto_sub_domain_iam_role]
        type.domain_status = params[:domain_status]
        type.status_reason = params[:status_reason]
        type.certificate_verification_dns_record = params[:certificate_verification_dns_record]
        type.sub_domains = SubDomains.build(params[:sub_domains], context: "#{context}[:sub_domains]") unless params[:sub_domains].nil?
        type
      end
    end

    module DomainAssociations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FileMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FileUploadUrls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GenerateAccessLogsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateAccessLogsInput, context: context)
        type = Types::GenerateAccessLogsInput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.domain_name = params[:domain_name]
        type.app_id = params[:app_id]
        type
      end
    end

    module GenerateAccessLogsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateAccessLogsOutput, context: context)
        type = Types::GenerateAccessLogsOutput.new
        type.log_url = params[:log_url]
        type
      end
    end

    module GetAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInput, context: context)
        type = Types::GetAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module GetAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppOutput, context: context)
        type = Types::GetAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module GetArtifactUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArtifactUrlInput, context: context)
        type = Types::GetArtifactUrlInput.new
        type.artifact_id = params[:artifact_id]
        type
      end
    end

    module GetArtifactUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArtifactUrlOutput, context: context)
        type = Types::GetArtifactUrlOutput.new
        type.artifact_id = params[:artifact_id]
        type.artifact_url = params[:artifact_url]
        type
      end
    end

    module GetBackendEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendEnvironmentInput, context: context)
        type = Types::GetBackendEnvironmentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type
      end
    end

    module GetBackendEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendEnvironmentOutput, context: context)
        type = Types::GetBackendEnvironmentOutput.new
        type.backend_environment = BackendEnvironment.build(params[:backend_environment], context: "#{context}[:backend_environment]") unless params[:backend_environment].nil?
        type
      end
    end

    module GetBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBranchInput, context: context)
        type = Types::GetBranchInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module GetBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBranchOutput, context: context)
        type = Types::GetBranchOutput.new
        type.branch = Branch.build(params[:branch], context: "#{context}[:branch]") unless params[:branch].nil?
        type
      end
    end

    module GetDomainAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainAssociationInput, context: context)
        type = Types::GetDomainAssociationInput.new
        type.app_id = params[:app_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainAssociationOutput, context: context)
        type = Types::GetDomainAssociationOutput.new
        type.domain_association = DomainAssociation.build(params[:domain_association], context: "#{context}[:domain_association]") unless params[:domain_association].nil?
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module GetWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebhookInput, context: context)
        type = Types::GetWebhookInput.new
        type.webhook_id = params[:webhook_id]
        type
      end
    end

    module GetWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWebhookOutput, context: context)
        type = Types::GetWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.summary = JobSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.steps = Steps.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module JobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSummary, context: context)
        type = Types::JobSummary.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.commit_id = params[:commit_id]
        type.commit_message = params[:commit_message]
        type.commit_time = params[:commit_time]
        type.start_time = params[:start_time]
        type.status = params[:status]
        type.end_time = params[:end_time]
        type.job_type = params[:job_type]
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

    module ListAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsInput, context: context)
        type = Types::ListAppsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsOutput, context: context)
        type = Types::ListAppsOutput.new
        type.apps = Apps.build(params[:apps], context: "#{context}[:apps]") unless params[:apps].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsInput, context: context)
        type = Types::ListArtifactsInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsOutput, context: context)
        type = Types::ListArtifactsOutput.new
        type.artifacts = Artifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBackendEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackendEnvironmentsInput, context: context)
        type = Types::ListBackendEnvironmentsInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBackendEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackendEnvironmentsOutput, context: context)
        type = Types::ListBackendEnvironmentsOutput.new
        type.backend_environments = BackendEnvironments.build(params[:backend_environments], context: "#{context}[:backend_environments]") unless params[:backend_environments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBranchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBranchesInput, context: context)
        type = Types::ListBranchesInput.new
        type.app_id = params[:app_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListBranchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBranchesOutput, context: context)
        type = Types::ListBranchesOutput.new
        type.branches = Branches.build(params[:branches], context: "#{context}[:branches]") unless params[:branches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainAssociationsInput, context: context)
        type = Types::ListDomainAssociationsInput.new
        type.app_id = params[:app_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDomainAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainAssociationsOutput, context: context)
        type = Types::ListDomainAssociationsOutput.new
        type.domain_associations = DomainAssociations.build(params[:domain_associations], context: "#{context}[:domain_associations]") unless params[:domain_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.job_summaries = JobSummaries.build(params[:job_summaries], context: "#{context}[:job_summaries]") unless params[:job_summaries].nil?
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

    module ListWebhooksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebhooksInput, context: context)
        type = Types::ListWebhooksInput.new
        type.app_id = params[:app_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWebhooksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWebhooksOutput, context: context)
        type = Types::ListWebhooksOutput.new
        type.webhooks = Webhooks.build(params[:webhooks], context: "#{context}[:webhooks]") unless params[:webhooks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ProductionBranch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionBranch, context: context)
        type = Types::ProductionBranch.new
        type.last_deploy_time = params[:last_deploy_time]
        type.status = params[:status]
        type.thumbnail_url = params[:thumbnail_url]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Screenshots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StartDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentInput, context: context)
        type = Types::StartDeploymentInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type.source_url = params[:source_url]
        type
      end
    end

    module StartDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDeploymentOutput, context: context)
        type = Types::StartDeploymentOutput.new
        type.job_summary = JobSummary.build(params[:job_summary], context: "#{context}[:job_summary]") unless params[:job_summary].nil?
        type
      end
    end

    module StartJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobInput, context: context)
        type = Types::StartJobInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type.job_type = params[:job_type]
        type.job_reason = params[:job_reason]
        type.commit_id = params[:commit_id]
        type.commit_message = params[:commit_message]
        type.commit_time = params[:commit_time]
        type
      end
    end

    module StartJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobOutput, context: context)
        type = Types::StartJobOutput.new
        type.job_summary = JobSummary.build(params[:job_summary], context: "#{context}[:job_summary]") unless params[:job_summary].nil?
        type
      end
    end

    module Step
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Step, context: context)
        type = Types::Step.new
        type.step_name = params[:step_name]
        type.start_time = params[:start_time]
        type.status = params[:status]
        type.end_time = params[:end_time]
        type.log_url = params[:log_url]
        type.artifacts_url = params[:artifacts_url]
        type.test_artifacts_url = params[:test_artifacts_url]
        type.test_config_url = params[:test_config_url]
        type.screenshots = Screenshots.build(params[:screenshots], context: "#{context}[:screenshots]") unless params[:screenshots].nil?
        type.status_reason = params[:status_reason]
        type.context = params[:context]
        type
      end
    end

    module Steps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Step.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobInput, context: context)
        type = Types::StopJobInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module StopJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobOutput, context: context)
        type = Types::StopJobOutput.new
        type.job_summary = JobSummary.build(params[:job_summary], context: "#{context}[:job_summary]") unless params[:job_summary].nil?
        type
      end
    end

    module SubDomain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubDomain, context: context)
        type = Types::SubDomain.new
        type.sub_domain_setting = SubDomainSetting.build(params[:sub_domain_setting], context: "#{context}[:sub_domain_setting]") unless params[:sub_domain_setting].nil?
        type.verified = params[:verified]
        type.dns_record = params[:dns_record]
        type
      end
    end

    module SubDomainSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubDomainSetting, context: context)
        type = Types::SubDomainSetting.new
        type.prefix = params[:prefix]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module SubDomainSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubDomainSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubDomains
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubDomain.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
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

    module UpdateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInput, context: context)
        type = Types::UpdateAppInput.new
        type.app_id = params[:app_id]
        type.name = params[:name]
        type.description = params[:description]
        type.platform = params[:platform]
        type.iam_service_role_arn = params[:iam_service_role_arn]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.enable_branch_auto_build = params[:enable_branch_auto_build]
        type.enable_branch_auto_deletion = params[:enable_branch_auto_deletion]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.custom_rules = CustomRules.build(params[:custom_rules], context: "#{context}[:custom_rules]") unless params[:custom_rules].nil?
        type.build_spec = params[:build_spec]
        type.custom_headers = params[:custom_headers]
        type.enable_auto_branch_creation = params[:enable_auto_branch_creation]
        type.auto_branch_creation_patterns = AutoBranchCreationPatterns.build(params[:auto_branch_creation_patterns], context: "#{context}[:auto_branch_creation_patterns]") unless params[:auto_branch_creation_patterns].nil?
        type.auto_branch_creation_config = AutoBranchCreationConfig.build(params[:auto_branch_creation_config], context: "#{context}[:auto_branch_creation_config]") unless params[:auto_branch_creation_config].nil?
        type.repository = params[:repository]
        type.oauth_token = params[:oauth_token]
        type.access_token = params[:access_token]
        type
      end
    end

    module UpdateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppOutput, context: context)
        type = Types::UpdateAppOutput.new
        type.app = App.build(params[:app], context: "#{context}[:app]") unless params[:app].nil?
        type
      end
    end

    module UpdateBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBranchInput, context: context)
        type = Types::UpdateBranchInput.new
        type.app_id = params[:app_id]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type.framework = params[:framework]
        type.stage = params[:stage]
        type.enable_notification = params[:enable_notification]
        type.enable_auto_build = params[:enable_auto_build]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.basic_auth_credentials = params[:basic_auth_credentials]
        type.enable_basic_auth = params[:enable_basic_auth]
        type.enable_performance_mode = params[:enable_performance_mode]
        type.build_spec = params[:build_spec]
        type.ttl = params[:ttl]
        type.display_name = params[:display_name]
        type.enable_pull_request_preview = params[:enable_pull_request_preview]
        type.pull_request_environment_name = params[:pull_request_environment_name]
        type.backend_environment_arn = params[:backend_environment_arn]
        type
      end
    end

    module UpdateBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBranchOutput, context: context)
        type = Types::UpdateBranchOutput.new
        type.branch = Branch.build(params[:branch], context: "#{context}[:branch]") unless params[:branch].nil?
        type
      end
    end

    module UpdateDomainAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainAssociationInput, context: context)
        type = Types::UpdateDomainAssociationInput.new
        type.app_id = params[:app_id]
        type.domain_name = params[:domain_name]
        type.enable_auto_sub_domain = params[:enable_auto_sub_domain]
        type.sub_domain_settings = SubDomainSettings.build(params[:sub_domain_settings], context: "#{context}[:sub_domain_settings]") unless params[:sub_domain_settings].nil?
        type.auto_sub_domain_creation_patterns = AutoSubDomainCreationPatterns.build(params[:auto_sub_domain_creation_patterns], context: "#{context}[:auto_sub_domain_creation_patterns]") unless params[:auto_sub_domain_creation_patterns].nil?
        type.auto_sub_domain_iam_role = params[:auto_sub_domain_iam_role]
        type
      end
    end

    module UpdateDomainAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainAssociationOutput, context: context)
        type = Types::UpdateDomainAssociationOutput.new
        type.domain_association = DomainAssociation.build(params[:domain_association], context: "#{context}[:domain_association]") unless params[:domain_association].nil?
        type
      end
    end

    module UpdateWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebhookInput, context: context)
        type = Types::UpdateWebhookInput.new
        type.webhook_id = params[:webhook_id]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebhookOutput, context: context)
        type = Types::UpdateWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module Webhook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Webhook, context: context)
        type = Types::Webhook.new
        type.webhook_arn = params[:webhook_arn]
        type.webhook_id = params[:webhook_id]
        type.webhook_url = params[:webhook_url]
        type.branch_name = params[:branch_name]
        type.description = params[:description]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module Webhooks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Webhook.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
