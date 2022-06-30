# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amplify
  module Stubs

    # Operation Stubber for CreateApp
    class CreateApp
      def self.default(visited=[])
        {
          app: Stubs::App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for App
    class App
      def self.default(visited=[])
        return nil if visited.include?('App')
        visited = visited + ['App']
        {
          app_id: 'app_id',
          app_arn: 'app_arn',
          name: 'name',
          tags: Stubs::TagMap.default(visited),
          description: 'description',
          repository: 'repository',
          platform: 'platform',
          create_time: Time.now,
          update_time: Time.now,
          iam_service_role_arn: 'iam_service_role_arn',
          environment_variables: Stubs::EnvironmentVariables.default(visited),
          default_domain: 'default_domain',
          enable_branch_auto_build: false,
          enable_branch_auto_deletion: false,
          enable_basic_auth: false,
          basic_auth_credentials: 'basic_auth_credentials',
          custom_rules: Stubs::CustomRules.default(visited),
          production_branch: Stubs::ProductionBranch.default(visited),
          build_spec: 'build_spec',
          custom_headers: 'custom_headers',
          enable_auto_branch_creation: false,
          auto_branch_creation_patterns: Stubs::AutoBranchCreationPatterns.default(visited),
          auto_branch_creation_config: Stubs::AutoBranchCreationConfig.default(visited),
          repository_clone_method: 'repository_clone_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::App.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['appArn'] = stub[:app_arn] unless stub[:app_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data['iamServiceRoleArn'] = stub[:iam_service_role_arn] unless stub[:iam_service_role_arn].nil?
        data['environmentVariables'] = Stubs::EnvironmentVariables.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['defaultDomain'] = stub[:default_domain] unless stub[:default_domain].nil?
        data['enableBranchAutoBuild'] = stub[:enable_branch_auto_build] unless stub[:enable_branch_auto_build].nil?
        data['enableBranchAutoDeletion'] = stub[:enable_branch_auto_deletion] unless stub[:enable_branch_auto_deletion].nil?
        data['enableBasicAuth'] = stub[:enable_basic_auth] unless stub[:enable_basic_auth].nil?
        data['basicAuthCredentials'] = stub[:basic_auth_credentials] unless stub[:basic_auth_credentials].nil?
        data['customRules'] = Stubs::CustomRules.stub(stub[:custom_rules]) unless stub[:custom_rules].nil?
        data['productionBranch'] = Stubs::ProductionBranch.stub(stub[:production_branch]) unless stub[:production_branch].nil?
        data['buildSpec'] = stub[:build_spec] unless stub[:build_spec].nil?
        data['customHeaders'] = stub[:custom_headers] unless stub[:custom_headers].nil?
        data['enableAutoBranchCreation'] = stub[:enable_auto_branch_creation] unless stub[:enable_auto_branch_creation].nil?
        data['autoBranchCreationPatterns'] = Stubs::AutoBranchCreationPatterns.stub(stub[:auto_branch_creation_patterns]) unless stub[:auto_branch_creation_patterns].nil?
        data['autoBranchCreationConfig'] = Stubs::AutoBranchCreationConfig.stub(stub[:auto_branch_creation_config]) unless stub[:auto_branch_creation_config].nil?
        data['repositoryCloneMethod'] = stub[:repository_clone_method] unless stub[:repository_clone_method].nil?
        data
      end
    end

    # Structure Stubber for AutoBranchCreationConfig
    class AutoBranchCreationConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoBranchCreationConfig')
        visited = visited + ['AutoBranchCreationConfig']
        {
          stage: 'stage',
          framework: 'framework',
          enable_auto_build: false,
          environment_variables: Stubs::EnvironmentVariables.default(visited),
          basic_auth_credentials: 'basic_auth_credentials',
          enable_basic_auth: false,
          enable_performance_mode: false,
          build_spec: 'build_spec',
          enable_pull_request_preview: false,
          pull_request_environment_name: 'pull_request_environment_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoBranchCreationConfig.new
        data = {}
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data['framework'] = stub[:framework] unless stub[:framework].nil?
        data['enableAutoBuild'] = stub[:enable_auto_build] unless stub[:enable_auto_build].nil?
        data['environmentVariables'] = Stubs::EnvironmentVariables.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['basicAuthCredentials'] = stub[:basic_auth_credentials] unless stub[:basic_auth_credentials].nil?
        data['enableBasicAuth'] = stub[:enable_basic_auth] unless stub[:enable_basic_auth].nil?
        data['enablePerformanceMode'] = stub[:enable_performance_mode] unless stub[:enable_performance_mode].nil?
        data['buildSpec'] = stub[:build_spec] unless stub[:build_spec].nil?
        data['enablePullRequestPreview'] = stub[:enable_pull_request_preview] unless stub[:enable_pull_request_preview].nil?
        data['pullRequestEnvironmentName'] = stub[:pull_request_environment_name] unless stub[:pull_request_environment_name].nil?
        data
      end
    end

    # Map Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for AutoBranchCreationPatterns
    class AutoBranchCreationPatterns
      def self.default(visited=[])
        return nil if visited.include?('AutoBranchCreationPatterns')
        visited = visited + ['AutoBranchCreationPatterns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProductionBranch
    class ProductionBranch
      def self.default(visited=[])
        return nil if visited.include?('ProductionBranch')
        visited = visited + ['ProductionBranch']
        {
          last_deploy_time: Time.now,
          status: 'status',
          thumbnail_url: 'thumbnail_url',
          branch_name: 'branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProductionBranch.new
        data = {}
        data['lastDeployTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_deploy_time]).to_i unless stub[:last_deploy_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['thumbnailUrl'] = stub[:thumbnail_url] unless stub[:thumbnail_url].nil?
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data
      end
    end

    # List Stubber for CustomRules
    class CustomRules
      def self.default(visited=[])
        return nil if visited.include?('CustomRules')
        visited = visited + ['CustomRules']
        [
          Stubs::CustomRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomRule
    class CustomRule
      def self.default(visited=[])
        return nil if visited.include?('CustomRule')
        visited = visited + ['CustomRule']
        {
          source: 'source',
          target: 'target',
          status: 'status',
          condition: 'condition',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRule.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['condition'] = stub[:condition] unless stub[:condition].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateBackendEnvironment
    class CreateBackendEnvironment
      def self.default(visited=[])
        {
          backend_environment: Stubs::BackendEnvironment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['backendEnvironment'] = Stubs::BackendEnvironment.stub(stub[:backend_environment]) unless stub[:backend_environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BackendEnvironment
    class BackendEnvironment
      def self.default(visited=[])
        return nil if visited.include?('BackendEnvironment')
        visited = visited + ['BackendEnvironment']
        {
          backend_environment_arn: 'backend_environment_arn',
          environment_name: 'environment_name',
          stack_name: 'stack_name',
          deployment_artifacts: 'deployment_artifacts',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendEnvironment.new
        data = {}
        data['backendEnvironmentArn'] = stub[:backend_environment_arn] unless stub[:backend_environment_arn].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['stackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['deploymentArtifacts'] = stub[:deployment_artifacts] unless stub[:deployment_artifacts].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for CreateBranch
    class CreateBranch
      def self.default(visited=[])
        {
          branch: Stubs::Branch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['branch'] = Stubs::Branch.stub(stub[:branch]) unless stub[:branch].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Branch
    class Branch
      def self.default(visited=[])
        return nil if visited.include?('Branch')
        visited = visited + ['Branch']
        {
          branch_arn: 'branch_arn',
          branch_name: 'branch_name',
          description: 'description',
          tags: Stubs::TagMap.default(visited),
          stage: 'stage',
          display_name: 'display_name',
          enable_notification: false,
          create_time: Time.now,
          update_time: Time.now,
          environment_variables: Stubs::EnvironmentVariables.default(visited),
          enable_auto_build: false,
          custom_domains: Stubs::CustomDomains.default(visited),
          framework: 'framework',
          active_job_id: 'active_job_id',
          total_number_of_jobs: 'total_number_of_jobs',
          enable_basic_auth: false,
          enable_performance_mode: false,
          thumbnail_url: 'thumbnail_url',
          basic_auth_credentials: 'basic_auth_credentials',
          build_spec: 'build_spec',
          ttl: 'ttl',
          associated_resources: Stubs::AssociatedResources.default(visited),
          enable_pull_request_preview: false,
          pull_request_environment_name: 'pull_request_environment_name',
          destination_branch: 'destination_branch',
          source_branch: 'source_branch',
          backend_environment_arn: 'backend_environment_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Branch.new
        data = {}
        data['branchArn'] = stub[:branch_arn] unless stub[:branch_arn].nil?
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['enableNotification'] = stub[:enable_notification] unless stub[:enable_notification].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data['environmentVariables'] = Stubs::EnvironmentVariables.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['enableAutoBuild'] = stub[:enable_auto_build] unless stub[:enable_auto_build].nil?
        data['customDomains'] = Stubs::CustomDomains.stub(stub[:custom_domains]) unless stub[:custom_domains].nil?
        data['framework'] = stub[:framework] unless stub[:framework].nil?
        data['activeJobId'] = stub[:active_job_id] unless stub[:active_job_id].nil?
        data['totalNumberOfJobs'] = stub[:total_number_of_jobs] unless stub[:total_number_of_jobs].nil?
        data['enableBasicAuth'] = stub[:enable_basic_auth] unless stub[:enable_basic_auth].nil?
        data['enablePerformanceMode'] = stub[:enable_performance_mode] unless stub[:enable_performance_mode].nil?
        data['thumbnailUrl'] = stub[:thumbnail_url] unless stub[:thumbnail_url].nil?
        data['basicAuthCredentials'] = stub[:basic_auth_credentials] unless stub[:basic_auth_credentials].nil?
        data['buildSpec'] = stub[:build_spec] unless stub[:build_spec].nil?
        data['ttl'] = stub[:ttl] unless stub[:ttl].nil?
        data['associatedResources'] = Stubs::AssociatedResources.stub(stub[:associated_resources]) unless stub[:associated_resources].nil?
        data['enablePullRequestPreview'] = stub[:enable_pull_request_preview] unless stub[:enable_pull_request_preview].nil?
        data['pullRequestEnvironmentName'] = stub[:pull_request_environment_name] unless stub[:pull_request_environment_name].nil?
        data['destinationBranch'] = stub[:destination_branch] unless stub[:destination_branch].nil?
        data['sourceBranch'] = stub[:source_branch] unless stub[:source_branch].nil?
        data['backendEnvironmentArn'] = stub[:backend_environment_arn] unless stub[:backend_environment_arn].nil?
        data
      end
    end

    # List Stubber for AssociatedResources
    class AssociatedResources
      def self.default(visited=[])
        return nil if visited.include?('AssociatedResources')
        visited = visited + ['AssociatedResources']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CustomDomains
    class CustomDomains
      def self.default(visited=[])
        return nil if visited.include?('CustomDomains')
        visited = visited + ['CustomDomains']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          job_id: 'job_id',
          file_upload_urls: Stubs::FileUploadUrls.default(visited),
          zip_upload_url: 'zip_upload_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['fileUploadUrls'] = Stubs::FileUploadUrls.stub(stub[:file_upload_urls]) unless stub[:file_upload_urls].nil?
        data['zipUploadUrl'] = stub[:zip_upload_url] unless stub[:zip_upload_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for FileUploadUrls
    class FileUploadUrls
      def self.default(visited=[])
        return nil if visited.include?('FileUploadUrls')
        visited = visited + ['FileUploadUrls']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDomainAssociation
    class CreateDomainAssociation
      def self.default(visited=[])
        {
          domain_association: Stubs::DomainAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainAssociation'] = Stubs::DomainAssociation.stub(stub[:domain_association]) unless stub[:domain_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainAssociation
    class DomainAssociation
      def self.default(visited=[])
        return nil if visited.include?('DomainAssociation')
        visited = visited + ['DomainAssociation']
        {
          domain_association_arn: 'domain_association_arn',
          domain_name: 'domain_name',
          enable_auto_sub_domain: false,
          auto_sub_domain_creation_patterns: Stubs::AutoSubDomainCreationPatterns.default(visited),
          auto_sub_domain_iam_role: 'auto_sub_domain_iam_role',
          domain_status: 'domain_status',
          status_reason: 'status_reason',
          certificate_verification_dns_record: 'certificate_verification_dns_record',
          sub_domains: Stubs::SubDomains.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainAssociation.new
        data = {}
        data['domainAssociationArn'] = stub[:domain_association_arn] unless stub[:domain_association_arn].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['enableAutoSubDomain'] = stub[:enable_auto_sub_domain] unless stub[:enable_auto_sub_domain].nil?
        data['autoSubDomainCreationPatterns'] = Stubs::AutoSubDomainCreationPatterns.stub(stub[:auto_sub_domain_creation_patterns]) unless stub[:auto_sub_domain_creation_patterns].nil?
        data['autoSubDomainIAMRole'] = stub[:auto_sub_domain_iam_role] unless stub[:auto_sub_domain_iam_role].nil?
        data['domainStatus'] = stub[:domain_status] unless stub[:domain_status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['certificateVerificationDNSRecord'] = stub[:certificate_verification_dns_record] unless stub[:certificate_verification_dns_record].nil?
        data['subDomains'] = Stubs::SubDomains.stub(stub[:sub_domains]) unless stub[:sub_domains].nil?
        data
      end
    end

    # List Stubber for SubDomains
    class SubDomains
      def self.default(visited=[])
        return nil if visited.include?('SubDomains')
        visited = visited + ['SubDomains']
        [
          Stubs::SubDomain.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SubDomain.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubDomain
    class SubDomain
      def self.default(visited=[])
        return nil if visited.include?('SubDomain')
        visited = visited + ['SubDomain']
        {
          sub_domain_setting: Stubs::SubDomainSetting.default(visited),
          verified: false,
          dns_record: 'dns_record',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubDomain.new
        data = {}
        data['subDomainSetting'] = Stubs::SubDomainSetting.stub(stub[:sub_domain_setting]) unless stub[:sub_domain_setting].nil?
        data['verified'] = stub[:verified] unless stub[:verified].nil?
        data['dnsRecord'] = stub[:dns_record] unless stub[:dns_record].nil?
        data
      end
    end

    # Structure Stubber for SubDomainSetting
    class SubDomainSetting
      def self.default(visited=[])
        return nil if visited.include?('SubDomainSetting')
        visited = visited + ['SubDomainSetting']
        {
          prefix: 'prefix',
          branch_name: 'branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubDomainSetting.new
        data = {}
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data
      end
    end

    # List Stubber for AutoSubDomainCreationPatterns
    class AutoSubDomainCreationPatterns
      def self.default(visited=[])
        return nil if visited.include?('AutoSubDomainCreationPatterns')
        visited = visited + ['AutoSubDomainCreationPatterns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateWebhook
    class CreateWebhook
      def self.default(visited=[])
        {
          webhook: Stubs::Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['webhook'] = Stubs::Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Webhook
    class Webhook
      def self.default(visited=[])
        return nil if visited.include?('Webhook')
        visited = visited + ['Webhook']
        {
          webhook_arn: 'webhook_arn',
          webhook_id: 'webhook_id',
          webhook_url: 'webhook_url',
          branch_name: 'branch_name',
          description: 'description',
          create_time: Time.now,
          update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Webhook.new
        data = {}
        data['webhookArn'] = stub[:webhook_arn] unless stub[:webhook_arn].nil?
        data['webhookId'] = stub[:webhook_id] unless stub[:webhook_id].nil?
        data['webhookUrl'] = stub[:webhook_url] unless stub[:webhook_url].nil?
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['updateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for DeleteApp
    class DeleteApp
      def self.default(visited=[])
        {
          app: Stubs::App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackendEnvironment
    class DeleteBackendEnvironment
      def self.default(visited=[])
        {
          backend_environment: Stubs::BackendEnvironment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['backendEnvironment'] = Stubs::BackendEnvironment.stub(stub[:backend_environment]) unless stub[:backend_environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBranch
    class DeleteBranch
      def self.default(visited=[])
        {
          branch: Stubs::Branch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['branch'] = Stubs::Branch.stub(stub[:branch]) unless stub[:branch].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDomainAssociation
    class DeleteDomainAssociation
      def self.default(visited=[])
        {
          domain_association: Stubs::DomainAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainAssociation'] = Stubs::DomainAssociation.stub(stub[:domain_association]) unless stub[:domain_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteJob
    class DeleteJob
      def self.default(visited=[])
        {
          job_summary: Stubs::JobSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummary'] = Stubs::JobSummary.stub(stub[:job_summary]) unless stub[:job_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobSummary
    class JobSummary
      def self.default(visited=[])
        return nil if visited.include?('JobSummary')
        visited = visited + ['JobSummary']
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          commit_id: 'commit_id',
          commit_message: 'commit_message',
          commit_time: Time.now,
          start_time: Time.now,
          status: 'status',
          end_time: Time.now,
          job_type: 'job_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSummary.new
        data = {}
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['commitMessage'] = stub[:commit_message] unless stub[:commit_message].nil?
        data['commitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:commit_time]).to_i unless stub[:commit_time].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['jobType'] = stub[:job_type] unless stub[:job_type].nil?
        data
      end
    end

    # Operation Stubber for DeleteWebhook
    class DeleteWebhook
      def self.default(visited=[])
        {
          webhook: Stubs::Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['webhook'] = Stubs::Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GenerateAccessLogs
    class GenerateAccessLogs
      def self.default(visited=[])
        {
          log_url: 'log_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['logUrl'] = stub[:log_url] unless stub[:log_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApp
    class GetApp
      def self.default(visited=[])
        {
          app: Stubs::App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetArtifactUrl
    class GetArtifactUrl
      def self.default(visited=[])
        {
          artifact_id: 'artifact_id',
          artifact_url: 'artifact_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['artifactId'] = stub[:artifact_id] unless stub[:artifact_id].nil?
        data['artifactUrl'] = stub[:artifact_url] unless stub[:artifact_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackendEnvironment
    class GetBackendEnvironment
      def self.default(visited=[])
        {
          backend_environment: Stubs::BackendEnvironment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['backendEnvironment'] = Stubs::BackendEnvironment.stub(stub[:backend_environment]) unless stub[:backend_environment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBranch
    class GetBranch
      def self.default(visited=[])
        {
          branch: Stubs::Branch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['branch'] = Stubs::Branch.stub(stub[:branch]) unless stub[:branch].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomainAssociation
    class GetDomainAssociation
      def self.default(visited=[])
        {
          domain_association: Stubs::DomainAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainAssociation'] = Stubs::DomainAssociation.stub(stub[:domain_association]) unless stub[:domain_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          job: Stubs::Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['job'] = Stubs::Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          summary: Stubs::JobSummary.default(visited),
          steps: Stubs::Steps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['summary'] = Stubs::JobSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['steps'] = Stubs::Steps.stub(stub[:steps]) unless stub[:steps].nil?
        data
      end
    end

    # List Stubber for Steps
    class Steps
      def self.default(visited=[])
        return nil if visited.include?('Steps')
        visited = visited + ['Steps']
        [
          Stubs::Step.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Step.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Step
    class Step
      def self.default(visited=[])
        return nil if visited.include?('Step')
        visited = visited + ['Step']
        {
          step_name: 'step_name',
          start_time: Time.now,
          status: 'status',
          end_time: Time.now,
          log_url: 'log_url',
          artifacts_url: 'artifacts_url',
          test_artifacts_url: 'test_artifacts_url',
          test_config_url: 'test_config_url',
          screenshots: Stubs::Screenshots.default(visited),
          status_reason: 'status_reason',
          context: 'context',
        }
      end

      def self.stub(stub)
        stub ||= Types::Step.new
        data = {}
        data['stepName'] = stub[:step_name] unless stub[:step_name].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['logUrl'] = stub[:log_url] unless stub[:log_url].nil?
        data['artifactsUrl'] = stub[:artifacts_url] unless stub[:artifacts_url].nil?
        data['testArtifactsUrl'] = stub[:test_artifacts_url] unless stub[:test_artifacts_url].nil?
        data['testConfigUrl'] = stub[:test_config_url] unless stub[:test_config_url].nil?
        data['screenshots'] = Stubs::Screenshots.stub(stub[:screenshots]) unless stub[:screenshots].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['context'] = stub[:context] unless stub[:context].nil?
        data
      end
    end

    # Map Stubber for Screenshots
    class Screenshots
      def self.default(visited=[])
        return nil if visited.include?('Screenshots')
        visited = visited + ['Screenshots']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetWebhook
    class GetWebhook
      def self.default(visited=[])
        {
          webhook: Stubs::Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['webhook'] = Stubs::Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListApps
    class ListApps
      def self.default(visited=[])
        {
          apps: Stubs::Apps.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apps'] = Stubs::Apps.stub(stub[:apps]) unless stub[:apps].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Apps
    class Apps
      def self.default(visited=[])
        return nil if visited.include?('Apps')
        visited = visited + ['Apps']
        [
          Stubs::App.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::App.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListArtifacts
    class ListArtifacts
      def self.default(visited=[])
        {
          artifacts: Stubs::Artifacts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['artifacts'] = Stubs::Artifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Artifacts
    class Artifacts
      def self.default(visited=[])
        return nil if visited.include?('Artifacts')
        visited = visited + ['Artifacts']
        [
          Stubs::Artifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Artifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Artifact
    class Artifact
      def self.default(visited=[])
        return nil if visited.include?('Artifact')
        visited = visited + ['Artifact']
        {
          artifact_file_name: 'artifact_file_name',
          artifact_id: 'artifact_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Artifact.new
        data = {}
        data['artifactFileName'] = stub[:artifact_file_name] unless stub[:artifact_file_name].nil?
        data['artifactId'] = stub[:artifact_id] unless stub[:artifact_id].nil?
        data
      end
    end

    # Operation Stubber for ListBackendEnvironments
    class ListBackendEnvironments
      def self.default(visited=[])
        {
          backend_environments: Stubs::BackendEnvironments.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['backendEnvironments'] = Stubs::BackendEnvironments.stub(stub[:backend_environments]) unless stub[:backend_environments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BackendEnvironments
    class BackendEnvironments
      def self.default(visited=[])
        return nil if visited.include?('BackendEnvironments')
        visited = visited + ['BackendEnvironments']
        [
          Stubs::BackendEnvironment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BackendEnvironment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBranches
    class ListBranches
      def self.default(visited=[])
        {
          branches: Stubs::Branches.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['branches'] = Stubs::Branches.stub(stub[:branches]) unless stub[:branches].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Branches
    class Branches
      def self.default(visited=[])
        return nil if visited.include?('Branches')
        visited = visited + ['Branches']
        [
          Stubs::Branch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Branch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDomainAssociations
    class ListDomainAssociations
      def self.default(visited=[])
        {
          domain_associations: Stubs::DomainAssociations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainAssociations'] = Stubs::DomainAssociations.stub(stub[:domain_associations]) unless stub[:domain_associations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainAssociations
    class DomainAssociations
      def self.default(visited=[])
        return nil if visited.include?('DomainAssociations')
        visited = visited + ['DomainAssociations']
        [
          Stubs::DomainAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          job_summaries: Stubs::JobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummaries'] = Stubs::JobSummaries.stub(stub[:job_summaries]) unless stub[:job_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobSummaries
    class JobSummaries
      def self.default(visited=[])
        return nil if visited.include?('JobSummaries')
        visited = visited + ['JobSummaries']
        [
          Stubs::JobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWebhooks
    class ListWebhooks
      def self.default(visited=[])
        {
          webhooks: Stubs::Webhooks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['webhooks'] = Stubs::Webhooks.stub(stub[:webhooks]) unless stub[:webhooks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Webhooks
    class Webhooks
      def self.default(visited=[])
        return nil if visited.include?('Webhooks')
        visited = visited + ['Webhooks']
        [
          Stubs::Webhook.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Webhook.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StartDeployment
    class StartDeployment
      def self.default(visited=[])
        {
          job_summary: Stubs::JobSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummary'] = Stubs::JobSummary.stub(stub[:job_summary]) unless stub[:job_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartJob
    class StartJob
      def self.default(visited=[])
        {
          job_summary: Stubs::JobSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummary'] = Stubs::JobSummary.stub(stub[:job_summary]) unless stub[:job_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopJob
    class StopJob
      def self.default(visited=[])
        {
          job_summary: Stubs::JobSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummary'] = Stubs::JobSummary.stub(stub[:job_summary]) unless stub[:job_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApp
    class UpdateApp
      def self.default(visited=[])
        {
          app: Stubs::App.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['app'] = Stubs::App.stub(stub[:app]) unless stub[:app].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBranch
    class UpdateBranch
      def self.default(visited=[])
        {
          branch: Stubs::Branch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['branch'] = Stubs::Branch.stub(stub[:branch]) unless stub[:branch].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainAssociation
    class UpdateDomainAssociation
      def self.default(visited=[])
        {
          domain_association: Stubs::DomainAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainAssociation'] = Stubs::DomainAssociation.stub(stub[:domain_association]) unless stub[:domain_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateWebhook
    class UpdateWebhook
      def self.default(visited=[])
        {
          webhook: Stubs::Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['webhook'] = Stubs::Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
