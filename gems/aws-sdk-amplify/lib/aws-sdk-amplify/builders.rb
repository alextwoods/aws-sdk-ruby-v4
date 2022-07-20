# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Amplify
  module Builders

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/apps')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['repository'] = input[:repository] unless input[:repository].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['iamServiceRoleArn'] = input[:iam_service_role_arn] unless input[:iam_service_role_arn].nil?
        data['oauthToken'] = input[:oauth_token] unless input[:oauth_token].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['enableBranchAutoBuild'] = input[:enable_branch_auto_build] unless input[:enable_branch_auto_build].nil?
        data['enableBranchAutoDeletion'] = input[:enable_branch_auto_deletion] unless input[:enable_branch_auto_deletion].nil?
        data['enableBasicAuth'] = input[:enable_basic_auth] unless input[:enable_basic_auth].nil?
        data['basicAuthCredentials'] = input[:basic_auth_credentials] unless input[:basic_auth_credentials].nil?
        data['customRules'] = CustomRules.build(input[:custom_rules]) unless input[:custom_rules].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['buildSpec'] = input[:build_spec] unless input[:build_spec].nil?
        data['customHeaders'] = input[:custom_headers] unless input[:custom_headers].nil?
        data['enableAutoBranchCreation'] = input[:enable_auto_branch_creation] unless input[:enable_auto_branch_creation].nil?
        data['autoBranchCreationPatterns'] = AutoBranchCreationPatterns.build(input[:auto_branch_creation_patterns]) unless input[:auto_branch_creation_patterns].nil?
        data['autoBranchCreationConfig'] = AutoBranchCreationConfig.build(input[:auto_branch_creation_config]) unless input[:auto_branch_creation_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoBranchCreationConfig
    class AutoBranchCreationConfig
      def self.build(input)
        data = {}
        data['stage'] = input[:stage] unless input[:stage].nil?
        data['framework'] = input[:framework] unless input[:framework].nil?
        data['enableAutoBuild'] = input[:enable_auto_build] unless input[:enable_auto_build].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['basicAuthCredentials'] = input[:basic_auth_credentials] unless input[:basic_auth_credentials].nil?
        data['enableBasicAuth'] = input[:enable_basic_auth] unless input[:enable_basic_auth].nil?
        data['enablePerformanceMode'] = input[:enable_performance_mode] unless input[:enable_performance_mode].nil?
        data['buildSpec'] = input[:build_spec] unless input[:build_spec].nil?
        data['enablePullRequestPreview'] = input[:enable_pull_request_preview] unless input[:enable_pull_request_preview].nil?
        data['pullRequestEnvironmentName'] = input[:pull_request_environment_name] unless input[:pull_request_environment_name].nil?
        data
      end
    end

    # Map Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for AutoBranchCreationPatterns
    class AutoBranchCreationPatterns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for CustomRules
    class CustomRules
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomRule
    class CustomRule
      def self.build(input)
        data = {}
        data['source'] = input[:source] unless input[:source].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Operation Builder for CreateBackendEnvironment
    class CreateBackendEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/backendenvironments',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['environmentName'] = input[:environment_name] unless input[:environment_name].nil?
        data['stackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['deploymentArtifacts'] = input[:deployment_artifacts] unless input[:deployment_artifacts].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBranch
    class CreateBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        data['framework'] = input[:framework] unless input[:framework].nil?
        data['enableNotification'] = input[:enable_notification] unless input[:enable_notification].nil?
        data['enableAutoBuild'] = input[:enable_auto_build] unless input[:enable_auto_build].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['basicAuthCredentials'] = input[:basic_auth_credentials] unless input[:basic_auth_credentials].nil?
        data['enableBasicAuth'] = input[:enable_basic_auth] unless input[:enable_basic_auth].nil?
        data['enablePerformanceMode'] = input[:enable_performance_mode] unless input[:enable_performance_mode].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['buildSpec'] = input[:build_spec] unless input[:build_spec].nil?
        data['ttl'] = input[:ttl] unless input[:ttl].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['enablePullRequestPreview'] = input[:enable_pull_request_preview] unless input[:enable_pull_request_preview].nil?
        data['pullRequestEnvironmentName'] = input[:pull_request_environment_name] unless input[:pull_request_environment_name].nil?
        data['backendEnvironmentArn'] = input[:backend_environment_arn] unless input[:backend_environment_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/deployments',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fileMap'] = FileMap.build(input[:file_map]) unless input[:file_map].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FileMap
    class FileMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDomainAssociation
    class CreateDomainAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/domains',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['enableAutoSubDomain'] = input[:enable_auto_sub_domain] unless input[:enable_auto_sub_domain].nil?
        data['subDomainSettings'] = SubDomainSettings.build(input[:sub_domain_settings]) unless input[:sub_domain_settings].nil?
        data['autoSubDomainCreationPatterns'] = AutoSubDomainCreationPatterns.build(input[:auto_sub_domain_creation_patterns]) unless input[:auto_sub_domain_creation_patterns].nil?
        data['autoSubDomainIAMRole'] = input[:auto_sub_domain_iam_role] unless input[:auto_sub_domain_iam_role].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AutoSubDomainCreationPatterns
    class AutoSubDomainCreationPatterns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubDomainSettings
    class SubDomainSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << SubDomainSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SubDomainSetting
    class SubDomainSetting
      def self.build(input)
        data = {}
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data
      end
    end

    # Operation Builder for CreateWebhook
    class CreateWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/webhooks',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackendEnvironment
    class DeleteBackendEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/backendenvironments/%<environmentName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBranch
    class DeleteBranch
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDomainAssociation
    class DeleteDomainAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/domains/%<domainName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJob
    class DeleteJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs/%<jobId>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWebhook
    class DeleteWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:webhook_id].to_s.empty?
          raise ArgumentError, "HTTP label :webhook_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/webhooks/%<webhookId>s',
            webhookId: Hearth::HTTP.uri_escape(input[:webhook_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GenerateAccessLogs
    class GenerateAccessLogs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/accesslogs',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetApp
    class GetApp
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetArtifactUrl
    class GetArtifactUrl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:artifact_id].to_s.empty?
          raise ArgumentError, "HTTP label :artifact_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/artifacts/%<artifactId>s',
            artifactId: Hearth::HTTP.uri_escape(input[:artifact_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackendEnvironment
    class GetBackendEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/backendenvironments/%<environmentName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBranch
    class GetBranch
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainAssociation
    class GetDomainAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/domains/%<domainName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs/%<jobId>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWebhook
    class GetWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:webhook_id].to_s.empty?
          raise ArgumentError, "HTTP label :webhook_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/webhooks/%<webhookId>s',
            webhookId: Hearth::HTTP.uri_escape(input[:webhook_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApps
    class ListApps
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/apps')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListArtifacts
    class ListArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs/%<jobId>s/artifacts',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBackendEnvironments
    class ListBackendEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/backendenvironments',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['environmentName'] = input[:environment_name].to_s unless input[:environment_name].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBranches
    class ListBranches
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainAssociations
    class ListDomainAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/domains',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWebhooks
    class ListWebhooks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/webhooks',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartDeployment
    class StartDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/deployments/start',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['sourceUrl'] = input[:source_url] unless input[:source_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartJob
    class StartJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['jobType'] = input[:job_type] unless input[:job_type].nil?
        data['jobReason'] = input[:job_reason] unless input[:job_reason].nil?
        data['commitId'] = input[:commit_id] unless input[:commit_id].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['commitTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:commit_time]).to_i unless input[:commit_time].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopJob
    class StopJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s/jobs/%<jobId>s/stop',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApp
    class UpdateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['iamServiceRoleArn'] = input[:iam_service_role_arn] unless input[:iam_service_role_arn].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['enableBranchAutoBuild'] = input[:enable_branch_auto_build] unless input[:enable_branch_auto_build].nil?
        data['enableBranchAutoDeletion'] = input[:enable_branch_auto_deletion] unless input[:enable_branch_auto_deletion].nil?
        data['enableBasicAuth'] = input[:enable_basic_auth] unless input[:enable_basic_auth].nil?
        data['basicAuthCredentials'] = input[:basic_auth_credentials] unless input[:basic_auth_credentials].nil?
        data['customRules'] = CustomRules.build(input[:custom_rules]) unless input[:custom_rules].nil?
        data['buildSpec'] = input[:build_spec] unless input[:build_spec].nil?
        data['customHeaders'] = input[:custom_headers] unless input[:custom_headers].nil?
        data['enableAutoBranchCreation'] = input[:enable_auto_branch_creation] unless input[:enable_auto_branch_creation].nil?
        data['autoBranchCreationPatterns'] = AutoBranchCreationPatterns.build(input[:auto_branch_creation_patterns]) unless input[:auto_branch_creation_patterns].nil?
        data['autoBranchCreationConfig'] = AutoBranchCreationConfig.build(input[:auto_branch_creation_config]) unless input[:auto_branch_creation_config].nil?
        data['repository'] = input[:repository] unless input[:repository].nil?
        data['oauthToken'] = input[:oauth_token] unless input[:oauth_token].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBranch
    class UpdateBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:branch_name].to_s.empty?
          raise ArgumentError, "HTTP label :branch_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/branches/%<branchName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            branchName: Hearth::HTTP.uri_escape(input[:branch_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['framework'] = input[:framework] unless input[:framework].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        data['enableNotification'] = input[:enable_notification] unless input[:enable_notification].nil?
        data['enableAutoBuild'] = input[:enable_auto_build] unless input[:enable_auto_build].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['basicAuthCredentials'] = input[:basic_auth_credentials] unless input[:basic_auth_credentials].nil?
        data['enableBasicAuth'] = input[:enable_basic_auth] unless input[:enable_basic_auth].nil?
        data['enablePerformanceMode'] = input[:enable_performance_mode] unless input[:enable_performance_mode].nil?
        data['buildSpec'] = input[:build_spec] unless input[:build_spec].nil?
        data['ttl'] = input[:ttl] unless input[:ttl].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['enablePullRequestPreview'] = input[:enable_pull_request_preview] unless input[:enable_pull_request_preview].nil?
        data['pullRequestEnvironmentName'] = input[:pull_request_environment_name] unless input[:pull_request_environment_name].nil?
        data['backendEnvironmentArn'] = input[:backend_environment_arn] unless input[:backend_environment_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainAssociation
    class UpdateDomainAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apps/%<appId>s/domains/%<domainName>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['enableAutoSubDomain'] = input[:enable_auto_sub_domain] unless input[:enable_auto_sub_domain].nil?
        data['subDomainSettings'] = SubDomainSettings.build(input[:sub_domain_settings]) unless input[:sub_domain_settings].nil?
        data['autoSubDomainCreationPatterns'] = AutoSubDomainCreationPatterns.build(input[:auto_sub_domain_creation_patterns]) unless input[:auto_sub_domain_creation_patterns].nil?
        data['autoSubDomainIAMRole'] = input[:auto_sub_domain_iam_role] unless input[:auto_sub_domain_iam_role].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWebhook
    class UpdateWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:webhook_id].to_s.empty?
          raise ArgumentError, "HTTP label :webhook_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/webhooks/%<webhookId>s',
            webhookId: Hearth::HTTP.uri_escape(input[:webhook_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
