# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ServerlessApplicationRepository
  module Builders

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['author'] = input[:author] unless input[:author].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['homePageUrl'] = input[:home_page_url] unless input[:home_page_url].nil?
        data['labels'] = List____listOf__string.build(input[:labels]) unless input[:labels].nil?
        data['licenseBody'] = input[:license_body] unless input[:license_body].nil?
        data['licenseUrl'] = input[:license_url] unless input[:license_url].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['readmeBody'] = input[:readme_body] unless input[:readme_body].nil?
        data['readmeUrl'] = input[:readme_url] unless input[:readme_url].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['sourceCodeArchiveUrl'] = input[:source_code_archive_url] unless input[:source_code_archive_url].nil?
        data['sourceCodeUrl'] = input[:source_code_url] unless input[:source_code_url].nil?
        data['spdxLicenseId'] = input[:spdx_license_id] unless input[:spdx_license_id].nil?
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['templateUrl'] = input[:template_url] unless input[:template_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApplicationVersion
    class CreateApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:semantic_version].to_s.empty?
          raise ArgumentError, "HTTP label :semantic_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/versions/%<SemanticVersion>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            SemanticVersion: Hearth::HTTP.uri_escape(input[:semantic_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sourceCodeArchiveUrl'] = input[:source_code_archive_url] unless input[:source_code_archive_url].nil?
        data['sourceCodeUrl'] = input[:source_code_url] unless input[:source_code_url].nil?
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['templateUrl'] = input[:template_url] unless input[:template_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCloudFormationChangeSet
    class CreateCloudFormationChangeSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/changesets',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['capabilities'] = List____listOf__string.build(input[:capabilities]) unless input[:capabilities].nil?
        data['changeSetName'] = input[:change_set_name] unless input[:change_set_name].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['notificationArns'] = List____listOf__string.build(input[:notification_arns]) unless input[:notification_arns].nil?
        data['parameterOverrides'] = List____listOfParameterValue.build(input[:parameter_overrides]) unless input[:parameter_overrides].nil?
        data['resourceTypes'] = List____listOf__string.build(input[:resource_types]) unless input[:resource_types].nil?
        data['rollbackConfiguration'] = RollbackConfiguration.build(input[:rollback_configuration]) unless input[:rollback_configuration].nil?
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        data['stackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['tags'] = List____listOfTag.build(input[:tags]) unless input[:tags].nil?
        data['templateId'] = input[:template_id] unless input[:template_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfTag
    class List____listOfTag
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for RollbackConfiguration
    class RollbackConfiguration
      def self.build(input)
        data = {}
        data['monitoringTimeInMinutes'] = input[:monitoring_time_in_minutes] unless input[:monitoring_time_in_minutes].nil?
        data['rollbackTriggers'] = List____listOfRollbackTrigger.build(input[:rollback_triggers]) unless input[:rollback_triggers].nil?
        data
      end
    end

    # List Builder for __listOfRollbackTrigger
    class List____listOfRollbackTrigger
      def self.build(input)
        data = []
        input.each do |element|
          data << RollbackTrigger.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RollbackTrigger
    class RollbackTrigger
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for __listOfParameterValue
    class List____listOfParameterValue
      def self.build(input)
        data = []
        input.each do |element|
          data << ParameterValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterValue
    class ParameterValue
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateCloudFormationTemplate
    class CreateCloudFormationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/templates',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['semanticVersion'] = input[:semantic_version] unless input[:semantic_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['semanticVersion'] = input[:semantic_version].to_s unless input[:semantic_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplicationPolicy
    class GetApplicationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/policy',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCloudFormationTemplate
    class GetCloudFormationTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/templates/%<TemplateId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationDependencies
    class ListApplicationDependencies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/dependencies',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['semanticVersion'] = input[:semantic_version].to_s unless input[:semantic_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationVersions
    class ListApplicationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/versions',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        params['maxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutApplicationPolicy
    class PutApplicationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/policy',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['statements'] = List____listOfApplicationPolicyStatement.build(input[:statements]) unless input[:statements].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfApplicationPolicyStatement
    class List____listOfApplicationPolicyStatement
      def self.build(input)
        data = []
        input.each do |element|
          data << ApplicationPolicyStatement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApplicationPolicyStatement
    class ApplicationPolicyStatement
      def self.build(input)
        data = {}
        data['actions'] = List____listOf__string.build(input[:actions]) unless input[:actions].nil?
        data['principalOrgIDs'] = List____listOf__string.build(input[:principal_org_i_ds]) unless input[:principal_org_i_ds].nil?
        data['principals'] = List____listOf__string.build(input[:principals]) unless input[:principals].nil?
        data['statementId'] = input[:statement_id] unless input[:statement_id].nil?
        data
      end
    end

    # Operation Builder for UnshareApplication
    class UnshareApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s/unshare',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['organizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<ApplicationId>s',
            ApplicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['author'] = input[:author] unless input[:author].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['homePageUrl'] = input[:home_page_url] unless input[:home_page_url].nil?
        data['labels'] = List____listOf__string.build(input[:labels]) unless input[:labels].nil?
        data['readmeBody'] = input[:readme_body] unless input[:readme_body].nil?
        data['readmeUrl'] = input[:readme_url] unless input[:readme_url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
