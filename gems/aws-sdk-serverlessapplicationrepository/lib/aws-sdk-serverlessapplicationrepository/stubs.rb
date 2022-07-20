# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ServerlessApplicationRepository
  module Stubs

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          author: 'author',
          creation_time: 'creation_time',
          description: 'description',
          home_page_url: 'home_page_url',
          is_verified_author: false,
          labels: List____listOf__string.default(visited),
          license_url: 'license_url',
          name: 'name',
          readme_url: 'readme_url',
          spdx_license_id: 'spdx_license_id',
          verified_author_url: 'verified_author_url',
          version: Version.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['homePageUrl'] = stub[:home_page_url] unless stub[:home_page_url].nil?
        data['isVerifiedAuthor'] = stub[:is_verified_author] unless stub[:is_verified_author].nil?
        data['labels'] = List____listOf__string.stub(stub[:labels]) unless stub[:labels].nil?
        data['licenseUrl'] = stub[:license_url] unless stub[:license_url].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['readmeUrl'] = stub[:readme_url] unless stub[:readme_url].nil?
        data['spdxLicenseId'] = stub[:spdx_license_id] unless stub[:spdx_license_id].nil?
        data['verifiedAuthorUrl'] = stub[:verified_author_url] unless stub[:verified_author_url].nil?
        data['version'] = Version.stub(stub[:version]) unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Version
    class Version
      def self.default(visited=[])
        return nil if visited.include?('Version')
        visited = visited + ['Version']
        {
          application_id: 'application_id',
          creation_time: 'creation_time',
          parameter_definitions: List____listOfParameterDefinition.default(visited),
          required_capabilities: List____listOfCapability.default(visited),
          resources_supported: false,
          semantic_version: 'semantic_version',
          source_code_archive_url: 'source_code_archive_url',
          source_code_url: 'source_code_url',
          template_url: 'template_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Version.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['parameterDefinitions'] = List____listOfParameterDefinition.stub(stub[:parameter_definitions]) unless stub[:parameter_definitions].nil?
        data['requiredCapabilities'] = List____listOfCapability.stub(stub[:required_capabilities]) unless stub[:required_capabilities].nil?
        data['resourcesSupported'] = stub[:resources_supported] unless stub[:resources_supported].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['sourceCodeArchiveUrl'] = stub[:source_code_archive_url] unless stub[:source_code_archive_url].nil?
        data['sourceCodeUrl'] = stub[:source_code_url] unless stub[:source_code_url].nil?
        data['templateUrl'] = stub[:template_url] unless stub[:template_url].nil?
        data
      end
    end

    # List Stubber for __listOfCapability
    class List____listOfCapability
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCapability')
        visited = visited + ['List____listOfCapability']
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

    # List Stubber for __listOfParameterDefinition
    class List____listOfParameterDefinition
      def self.default(visited=[])
        return nil if visited.include?('List____listOfParameterDefinition')
        visited = visited + ['List____listOfParameterDefinition']
        [
          ParameterDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ParameterDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterDefinition
    class ParameterDefinition
      def self.default(visited=[])
        return nil if visited.include?('ParameterDefinition')
        visited = visited + ['ParameterDefinition']
        {
          allowed_pattern: 'allowed_pattern',
          allowed_values: List____listOf__string.default(visited),
          constraint_description: 'constraint_description',
          default_value: 'default_value',
          description: 'description',
          max_length: 1,
          max_value: 1,
          min_length: 1,
          min_value: 1,
          name: 'name',
          no_echo: false,
          referenced_by_resources: List____listOf__string.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterDefinition.new
        data = {}
        data['allowedPattern'] = stub[:allowed_pattern] unless stub[:allowed_pattern].nil?
        data['allowedValues'] = List____listOf__string.stub(stub[:allowed_values]) unless stub[:allowed_values].nil?
        data['constraintDescription'] = stub[:constraint_description] unless stub[:constraint_description].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['maxLength'] = stub[:max_length] unless stub[:max_length].nil?
        data['maxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['minLength'] = stub[:min_length] unless stub[:min_length].nil?
        data['minValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['noEcho'] = stub[:no_echo] unless stub[:no_echo].nil?
        data['referencedByResources'] = List____listOf__string.stub(stub[:referenced_by_resources]) unless stub[:referenced_by_resources].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
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

    # Operation Stubber for CreateApplicationVersion
    class CreateApplicationVersion
      def self.default(visited=[])
        {
          application_id: 'application_id',
          creation_time: 'creation_time',
          parameter_definitions: List____listOfParameterDefinition.default(visited),
          required_capabilities: List____listOfCapability.default(visited),
          resources_supported: false,
          semantic_version: 'semantic_version',
          source_code_archive_url: 'source_code_archive_url',
          source_code_url: 'source_code_url',
          template_url: 'template_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['parameterDefinitions'] = List____listOfParameterDefinition.stub(stub[:parameter_definitions]) unless stub[:parameter_definitions].nil?
        data['requiredCapabilities'] = List____listOfCapability.stub(stub[:required_capabilities]) unless stub[:required_capabilities].nil?
        data['resourcesSupported'] = stub[:resources_supported] unless stub[:resources_supported].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['sourceCodeArchiveUrl'] = stub[:source_code_archive_url] unless stub[:source_code_archive_url].nil?
        data['sourceCodeUrl'] = stub[:source_code_url] unless stub[:source_code_url].nil?
        data['templateUrl'] = stub[:template_url] unless stub[:template_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCloudFormationChangeSet
    class CreateCloudFormationChangeSet
      def self.default(visited=[])
        {
          application_id: 'application_id',
          change_set_id: 'change_set_id',
          semantic_version: 'semantic_version',
          stack_id: 'stack_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['changeSetId'] = stub[:change_set_id] unless stub[:change_set_id].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['stackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCloudFormationTemplate
    class CreateCloudFormationTemplate
      def self.default(visited=[])
        {
          application_id: 'application_id',
          creation_time: 'creation_time',
          expiration_time: 'expiration_time',
          semantic_version: 'semantic_version',
          status: 'status',
          template_id: 'template_id',
          template_url: 'template_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['expirationTime'] = stub[:expiration_time] unless stub[:expiration_time].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['templateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['templateUrl'] = stub[:template_url] unless stub[:template_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          author: 'author',
          creation_time: 'creation_time',
          description: 'description',
          home_page_url: 'home_page_url',
          is_verified_author: false,
          labels: List____listOf__string.default(visited),
          license_url: 'license_url',
          name: 'name',
          readme_url: 'readme_url',
          spdx_license_id: 'spdx_license_id',
          verified_author_url: 'verified_author_url',
          version: Version.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['homePageUrl'] = stub[:home_page_url] unless stub[:home_page_url].nil?
        data['isVerifiedAuthor'] = stub[:is_verified_author] unless stub[:is_verified_author].nil?
        data['labels'] = List____listOf__string.stub(stub[:labels]) unless stub[:labels].nil?
        data['licenseUrl'] = stub[:license_url] unless stub[:license_url].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['readmeUrl'] = stub[:readme_url] unless stub[:readme_url].nil?
        data['spdxLicenseId'] = stub[:spdx_license_id] unless stub[:spdx_license_id].nil?
        data['verifiedAuthorUrl'] = stub[:verified_author_url] unless stub[:verified_author_url].nil?
        data['version'] = Version.stub(stub[:version]) unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApplicationPolicy
    class GetApplicationPolicy
      def self.default(visited=[])
        {
          statements: List____listOfApplicationPolicyStatement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statements'] = List____listOfApplicationPolicyStatement.stub(stub[:statements]) unless stub[:statements].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfApplicationPolicyStatement
    class List____listOfApplicationPolicyStatement
      def self.default(visited=[])
        return nil if visited.include?('List____listOfApplicationPolicyStatement')
        visited = visited + ['List____listOfApplicationPolicyStatement']
        [
          ApplicationPolicyStatement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationPolicyStatement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationPolicyStatement
    class ApplicationPolicyStatement
      def self.default(visited=[])
        return nil if visited.include?('ApplicationPolicyStatement')
        visited = visited + ['ApplicationPolicyStatement']
        {
          actions: List____listOf__string.default(visited),
          principal_org_i_ds: List____listOf__string.default(visited),
          principals: List____listOf__string.default(visited),
          statement_id: 'statement_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationPolicyStatement.new
        data = {}
        data['actions'] = List____listOf__string.stub(stub[:actions]) unless stub[:actions].nil?
        data['principalOrgIDs'] = List____listOf__string.stub(stub[:principal_org_i_ds]) unless stub[:principal_org_i_ds].nil?
        data['principals'] = List____listOf__string.stub(stub[:principals]) unless stub[:principals].nil?
        data['statementId'] = stub[:statement_id] unless stub[:statement_id].nil?
        data
      end
    end

    # Operation Stubber for GetCloudFormationTemplate
    class GetCloudFormationTemplate
      def self.default(visited=[])
        {
          application_id: 'application_id',
          creation_time: 'creation_time',
          expiration_time: 'expiration_time',
          semantic_version: 'semantic_version',
          status: 'status',
          template_id: 'template_id',
          template_url: 'template_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['expirationTime'] = stub[:expiration_time] unless stub[:expiration_time].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['templateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['templateUrl'] = stub[:template_url] unless stub[:template_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListApplicationDependencies
    class ListApplicationDependencies
      def self.default(visited=[])
        {
          dependencies: List____listOfApplicationDependencySummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dependencies'] = List____listOfApplicationDependencySummary.stub(stub[:dependencies]) unless stub[:dependencies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfApplicationDependencySummary
    class List____listOfApplicationDependencySummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfApplicationDependencySummary')
        visited = visited + ['List____listOfApplicationDependencySummary']
        [
          ApplicationDependencySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationDependencySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationDependencySummary
    class ApplicationDependencySummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationDependencySummary')
        visited = visited + ['ApplicationDependencySummary']
        {
          application_id: 'application_id',
          semantic_version: 'semantic_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationDependencySummary.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data
      end
    end

    # Operation Stubber for ListApplicationVersions
    class ListApplicationVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          versions: List____listOfVersionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['versions'] = List____listOfVersionSummary.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfVersionSummary
    class List____listOfVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVersionSummary')
        visited = visited + ['List____listOfVersionSummary']
        [
          VersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VersionSummary
    class VersionSummary
      def self.default(visited=[])
        return nil if visited.include?('VersionSummary')
        visited = visited + ['VersionSummary']
        {
          application_id: 'application_id',
          creation_time: 'creation_time',
          semantic_version: 'semantic_version',
          source_code_url: 'source_code_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::VersionSummary.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['semanticVersion'] = stub[:semantic_version] unless stub[:semantic_version].nil?
        data['sourceCodeUrl'] = stub[:source_code_url] unless stub[:source_code_url].nil?
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          applications: List____listOfApplicationSummary.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applications'] = List____listOfApplicationSummary.stub(stub[:applications]) unless stub[:applications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfApplicationSummary
    class List____listOfApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('List____listOfApplicationSummary')
        visited = visited + ['List____listOfApplicationSummary']
        [
          ApplicationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSummary
    class ApplicationSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSummary')
        visited = visited + ['ApplicationSummary']
        {
          application_id: 'application_id',
          author: 'author',
          creation_time: 'creation_time',
          description: 'description',
          home_page_url: 'home_page_url',
          labels: List____listOf__string.default(visited),
          name: 'name',
          spdx_license_id: 'spdx_license_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSummary.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['homePageUrl'] = stub[:home_page_url] unless stub[:home_page_url].nil?
        data['labels'] = List____listOf__string.stub(stub[:labels]) unless stub[:labels].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['spdxLicenseId'] = stub[:spdx_license_id] unless stub[:spdx_license_id].nil?
        data
      end
    end

    # Operation Stubber for PutApplicationPolicy
    class PutApplicationPolicy
      def self.default(visited=[])
        {
          statements: List____listOfApplicationPolicyStatement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statements'] = List____listOfApplicationPolicyStatement.stub(stub[:statements]) unless stub[:statements].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UnshareApplication
    class UnshareApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
          author: 'author',
          creation_time: 'creation_time',
          description: 'description',
          home_page_url: 'home_page_url',
          is_verified_author: false,
          labels: List____listOf__string.default(visited),
          license_url: 'license_url',
          name: 'name',
          readme_url: 'readme_url',
          spdx_license_id: 'spdx_license_id',
          verified_author_url: 'verified_author_url',
          version: Version.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['author'] = stub[:author] unless stub[:author].nil?
        data['creationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['homePageUrl'] = stub[:home_page_url] unless stub[:home_page_url].nil?
        data['isVerifiedAuthor'] = stub[:is_verified_author] unless stub[:is_verified_author].nil?
        data['labels'] = List____listOf__string.stub(stub[:labels]) unless stub[:labels].nil?
        data['licenseUrl'] = stub[:license_url] unless stub[:license_url].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['readmeUrl'] = stub[:readme_url] unless stub[:readme_url].nil?
        data['spdxLicenseId'] = stub[:spdx_license_id] unless stub[:spdx_license_id].nil?
        data['verifiedAuthorUrl'] = stub[:verified_author_url] unless stub[:verified_author_url].nil?
        data['version'] = Version.stub(stub[:version]) unless stub[:version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
