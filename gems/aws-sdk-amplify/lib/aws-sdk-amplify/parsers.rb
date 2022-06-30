# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Amplify
  module Parsers

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (Parsers::App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    class App
      def self.parse(map)
        data = Types::App.new
        data.app_id = map['appId']
        data.app_arn = map['appArn']
        data.name = map['name']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.description = map['description']
        data.repository = map['repository']
        data.platform = map['platform']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.update_time = Time.at(map['updateTime'].to_i) if map['updateTime']
        data.iam_service_role_arn = map['iamServiceRoleArn']
        data.environment_variables = (Parsers::EnvironmentVariables.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        data.default_domain = map['defaultDomain']
        data.enable_branch_auto_build = map['enableBranchAutoBuild']
        data.enable_branch_auto_deletion = map['enableBranchAutoDeletion']
        data.enable_basic_auth = map['enableBasicAuth']
        data.basic_auth_credentials = map['basicAuthCredentials']
        data.custom_rules = (Parsers::CustomRules.parse(map['customRules']) unless map['customRules'].nil?)
        data.production_branch = (Parsers::ProductionBranch.parse(map['productionBranch']) unless map['productionBranch'].nil?)
        data.build_spec = map['buildSpec']
        data.custom_headers = map['customHeaders']
        data.enable_auto_branch_creation = map['enableAutoBranchCreation']
        data.auto_branch_creation_patterns = (Parsers::AutoBranchCreationPatterns.parse(map['autoBranchCreationPatterns']) unless map['autoBranchCreationPatterns'].nil?)
        data.auto_branch_creation_config = (Parsers::AutoBranchCreationConfig.parse(map['autoBranchCreationConfig']) unless map['autoBranchCreationConfig'].nil?)
        data.repository_clone_method = map['repositoryCloneMethod']
        return data
      end
    end

    class AutoBranchCreationConfig
      def self.parse(map)
        data = Types::AutoBranchCreationConfig.new
        data.stage = map['stage']
        data.framework = map['framework']
        data.enable_auto_build = map['enableAutoBuild']
        data.environment_variables = (Parsers::EnvironmentVariables.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        data.basic_auth_credentials = map['basicAuthCredentials']
        data.enable_basic_auth = map['enableBasicAuth']
        data.enable_performance_mode = map['enablePerformanceMode']
        data.build_spec = map['buildSpec']
        data.enable_pull_request_preview = map['enablePullRequestPreview']
        data.pull_request_environment_name = map['pullRequestEnvironmentName']
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AutoBranchCreationPatterns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ProductionBranch
      def self.parse(map)
        data = Types::ProductionBranch.new
        data.last_deploy_time = Time.at(map['lastDeployTime'].to_i) if map['lastDeployTime']
        data.status = map['status']
        data.thumbnail_url = map['thumbnailUrl']
        data.branch_name = map['branchName']
        return data
      end
    end

    class CustomRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomRule
      def self.parse(map)
        data = Types::CustomRule.new
        data.source = map['source']
        data.target = map['target']
        data.status = map['status']
        data.condition = map['condition']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for DependentServiceFailureException
    class DependentServiceFailureException
      def self.parse(http_resp)
        data = Types::DependentServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateBackendEnvironment
    class CreateBackendEnvironment
      def self.parse(http_resp)
        data = Types::CreateBackendEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backend_environment = (Parsers::BackendEnvironment.parse(map['backendEnvironment']) unless map['backendEnvironment'].nil?)
        data
      end
    end

    class BackendEnvironment
      def self.parse(map)
        data = Types::BackendEnvironment.new
        data.backend_environment_arn = map['backendEnvironmentArn']
        data.environment_name = map['environmentName']
        data.stack_name = map['stackName']
        data.deployment_artifacts = map['deploymentArtifacts']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.update_time = Time.at(map['updateTime'].to_i) if map['updateTime']
        return data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateBranch
    class CreateBranch
      def self.parse(http_resp)
        data = Types::CreateBranchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.branch = (Parsers::Branch.parse(map['branch']) unless map['branch'].nil?)
        data
      end
    end

    class Branch
      def self.parse(map)
        data = Types::Branch.new
        data.branch_arn = map['branchArn']
        data.branch_name = map['branchName']
        data.description = map['description']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.stage = map['stage']
        data.display_name = map['displayName']
        data.enable_notification = map['enableNotification']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.update_time = Time.at(map['updateTime'].to_i) if map['updateTime']
        data.environment_variables = (Parsers::EnvironmentVariables.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        data.enable_auto_build = map['enableAutoBuild']
        data.custom_domains = (Parsers::CustomDomains.parse(map['customDomains']) unless map['customDomains'].nil?)
        data.framework = map['framework']
        data.active_job_id = map['activeJobId']
        data.total_number_of_jobs = map['totalNumberOfJobs']
        data.enable_basic_auth = map['enableBasicAuth']
        data.enable_performance_mode = map['enablePerformanceMode']
        data.thumbnail_url = map['thumbnailUrl']
        data.basic_auth_credentials = map['basicAuthCredentials']
        data.build_spec = map['buildSpec']
        data.ttl = map['ttl']
        data.associated_resources = (Parsers::AssociatedResources.parse(map['associatedResources']) unless map['associatedResources'].nil?)
        data.enable_pull_request_preview = map['enablePullRequestPreview']
        data.pull_request_environment_name = map['pullRequestEnvironmentName']
        data.destination_branch = map['destinationBranch']
        data.source_branch = map['sourceBranch']
        data.backend_environment_arn = map['backendEnvironmentArn']
        return data
      end
    end

    class AssociatedResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CustomDomains
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['jobId']
        data.file_upload_urls = (Parsers::FileUploadUrls.parse(map['fileUploadUrls']) unless map['fileUploadUrls'].nil?)
        data.zip_upload_url = map['zipUploadUrl']
        data
      end
    end

    class FileUploadUrls
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateDomainAssociation
    class CreateDomainAssociation
      def self.parse(http_resp)
        data = Types::CreateDomainAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_association = (Parsers::DomainAssociation.parse(map['domainAssociation']) unless map['domainAssociation'].nil?)
        data
      end
    end

    class DomainAssociation
      def self.parse(map)
        data = Types::DomainAssociation.new
        data.domain_association_arn = map['domainAssociationArn']
        data.domain_name = map['domainName']
        data.enable_auto_sub_domain = map['enableAutoSubDomain']
        data.auto_sub_domain_creation_patterns = (Parsers::AutoSubDomainCreationPatterns.parse(map['autoSubDomainCreationPatterns']) unless map['autoSubDomainCreationPatterns'].nil?)
        data.auto_sub_domain_iam_role = map['autoSubDomainIAMRole']
        data.domain_status = map['domainStatus']
        data.status_reason = map['statusReason']
        data.certificate_verification_dns_record = map['certificateVerificationDNSRecord']
        data.sub_domains = (Parsers::SubDomains.parse(map['subDomains']) unless map['subDomains'].nil?)
        return data
      end
    end

    class SubDomains
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SubDomain.parse(value) unless value.nil?
        end
        data
      end
    end

    class SubDomain
      def self.parse(map)
        data = Types::SubDomain.new
        data.sub_domain_setting = (Parsers::SubDomainSetting.parse(map['subDomainSetting']) unless map['subDomainSetting'].nil?)
        data.verified = map['verified']
        data.dns_record = map['dnsRecord']
        return data
      end
    end

    class SubDomainSetting
      def self.parse(map)
        data = Types::SubDomainSetting.new
        data.prefix = map['prefix']
        data.branch_name = map['branchName']
        return data
      end
    end

    class AutoSubDomainCreationPatterns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateWebhook
    class CreateWebhook
      def self.parse(http_resp)
        data = Types::CreateWebhookOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end

    class Webhook
      def self.parse(map)
        data = Types::Webhook.new
        data.webhook_arn = map['webhookArn']
        data.webhook_id = map['webhookId']
        data.webhook_url = map['webhookUrl']
        data.branch_name = map['branchName']
        data.description = map['description']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.update_time = Time.at(map['updateTime'].to_i) if map['updateTime']
        return data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (Parsers::App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBackendEnvironment
    class DeleteBackendEnvironment
      def self.parse(http_resp)
        data = Types::DeleteBackendEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backend_environment = (Parsers::BackendEnvironment.parse(map['backendEnvironment']) unless map['backendEnvironment'].nil?)
        data
      end
    end

    # Operation Parser for DeleteBranch
    class DeleteBranch
      def self.parse(http_resp)
        data = Types::DeleteBranchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.branch = (Parsers::Branch.parse(map['branch']) unless map['branch'].nil?)
        data
      end
    end

    # Operation Parser for DeleteDomainAssociation
    class DeleteDomainAssociation
      def self.parse(http_resp)
        data = Types::DeleteDomainAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_association = (Parsers::DomainAssociation.parse(map['domainAssociation']) unless map['domainAssociation'].nil?)
        data
      end
    end

    # Operation Parser for DeleteJob
    class DeleteJob
      def self.parse(http_resp)
        data = Types::DeleteJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summary = (Parsers::JobSummary.parse(map['jobSummary']) unless map['jobSummary'].nil?)
        data
      end
    end

    class JobSummary
      def self.parse(map)
        data = Types::JobSummary.new
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.commit_id = map['commitId']
        data.commit_message = map['commitMessage']
        data.commit_time = Time.at(map['commitTime'].to_i) if map['commitTime']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.status = map['status']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.job_type = map['jobType']
        return data
      end
    end

    # Operation Parser for DeleteWebhook
    class DeleteWebhook
      def self.parse(http_resp)
        data = Types::DeleteWebhookOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end

    # Operation Parser for GenerateAccessLogs
    class GenerateAccessLogs
      def self.parse(http_resp)
        data = Types::GenerateAccessLogsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.log_url = map['logUrl']
        data
      end
    end

    # Operation Parser for GetApp
    class GetApp
      def self.parse(http_resp)
        data = Types::GetAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (Parsers::App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    # Operation Parser for GetArtifactUrl
    class GetArtifactUrl
      def self.parse(http_resp)
        data = Types::GetArtifactUrlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.artifact_id = map['artifactId']
        data.artifact_url = map['artifactUrl']
        data
      end
    end

    # Operation Parser for GetBackendEnvironment
    class GetBackendEnvironment
      def self.parse(http_resp)
        data = Types::GetBackendEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backend_environment = (Parsers::BackendEnvironment.parse(map['backendEnvironment']) unless map['backendEnvironment'].nil?)
        data
      end
    end

    # Operation Parser for GetBranch
    class GetBranch
      def self.parse(http_resp)
        data = Types::GetBranchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.branch = (Parsers::Branch.parse(map['branch']) unless map['branch'].nil?)
        data
      end
    end

    # Operation Parser for GetDomainAssociation
    class GetDomainAssociation
      def self.parse(http_resp)
        data = Types::GetDomainAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_association = (Parsers::DomainAssociation.parse(map['domainAssociation']) unless map['domainAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.summary = (Parsers::JobSummary.parse(map['summary']) unless map['summary'].nil?)
        data.steps = (Parsers::Steps.parse(map['steps']) unless map['steps'].nil?)
        return data
      end
    end

    class Steps
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Step.parse(value) unless value.nil?
        end
        data
      end
    end

    class Step
      def self.parse(map)
        data = Types::Step.new
        data.step_name = map['stepName']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.status = map['status']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.log_url = map['logUrl']
        data.artifacts_url = map['artifactsUrl']
        data.test_artifacts_url = map['testArtifactsUrl']
        data.test_config_url = map['testConfigUrl']
        data.screenshots = (Parsers::Screenshots.parse(map['screenshots']) unless map['screenshots'].nil?)
        data.status_reason = map['statusReason']
        data.context = map['context']
        return data
      end
    end

    class Screenshots
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetWebhook
    class GetWebhook
      def self.parse(http_resp)
        data = Types::GetWebhookOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end

    # Operation Parser for ListApps
    class ListApps
      def self.parse(http_resp)
        data = Types::ListAppsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.apps = (Parsers::Apps.parse(map['apps']) unless map['apps'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Apps
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::App.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListArtifacts
    class ListArtifacts
      def self.parse(http_resp)
        data = Types::ListArtifactsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.artifacts = (Parsers::Artifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Artifacts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Artifact.parse(value) unless value.nil?
        end
        data
      end
    end

    class Artifact
      def self.parse(map)
        data = Types::Artifact.new
        data.artifact_file_name = map['artifactFileName']
        data.artifact_id = map['artifactId']
        return data
      end
    end

    # Operation Parser for ListBackendEnvironments
    class ListBackendEnvironments
      def self.parse(http_resp)
        data = Types::ListBackendEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backend_environments = (Parsers::BackendEnvironments.parse(map['backendEnvironments']) unless map['backendEnvironments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BackendEnvironments
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BackendEnvironment.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListBranches
    class ListBranches
      def self.parse(http_resp)
        data = Types::ListBranchesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.branches = (Parsers::Branches.parse(map['branches']) unless map['branches'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Branches
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Branch.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDomainAssociations
    class ListDomainAssociations
      def self.parse(http_resp)
        data = Types::ListDomainAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_associations = (Parsers::DomainAssociations.parse(map['domainAssociations']) unless map['domainAssociations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DomainAssociations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summaries = (Parsers::JobSummaries.parse(map['jobSummaries']) unless map['jobSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListWebhooks
    class ListWebhooks
      def self.parse(http_resp)
        data = Types::ListWebhooksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.webhooks = (Parsers::Webhooks.parse(map['webhooks']) unless map['webhooks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Webhooks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Webhook.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartDeployment
    class StartDeployment
      def self.parse(http_resp)
        data = Types::StartDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summary = (Parsers::JobSummary.parse(map['jobSummary']) unless map['jobSummary'].nil?)
        data
      end
    end

    # Operation Parser for StartJob
    class StartJob
      def self.parse(http_resp)
        data = Types::StartJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summary = (Parsers::JobSummary.parse(map['jobSummary']) unless map['jobSummary'].nil?)
        data
      end
    end

    # Operation Parser for StopJob
    class StopJob
      def self.parse(http_resp)
        data = Types::StopJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summary = (Parsers::JobSummary.parse(map['jobSummary']) unless map['jobSummary'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateApp
    class UpdateApp
      def self.parse(http_resp)
        data = Types::UpdateAppOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app = (Parsers::App.parse(map['app']) unless map['app'].nil?)
        data
      end
    end

    # Operation Parser for UpdateBranch
    class UpdateBranch
      def self.parse(http_resp)
        data = Types::UpdateBranchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.branch = (Parsers::Branch.parse(map['branch']) unless map['branch'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDomainAssociation
    class UpdateDomainAssociation
      def self.parse(http_resp)
        data = Types::UpdateDomainAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_association = (Parsers::DomainAssociation.parse(map['domainAssociation']) unless map['domainAssociation'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWebhook
    class UpdateWebhook
      def self.parse(http_resp)
        data = Types::UpdateWebhookOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end
  end
end
