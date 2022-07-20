# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServerlessApplicationRepository
  module Parsers

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.author = map['author']
        data.creation_time = map['creationTime']
        data.description = map['description']
        data.home_page_url = map['homePageUrl']
        data.is_verified_author = map['isVerifiedAuthor']
        data.labels = (List____listOf__string.parse(map['labels']) unless map['labels'].nil?)
        data.license_url = map['licenseUrl']
        data.name = map['name']
        data.readme_url = map['readmeUrl']
        data.spdx_license_id = map['spdxLicenseId']
        data.verified_author_url = map['verifiedAuthorUrl']
        data.version = (Version.parse(map['version']) unless map['version'].nil?)
        data
      end
    end

    class Version
      def self.parse(map)
        data = Types::Version.new
        data.application_id = map['applicationId']
        data.creation_time = map['creationTime']
        data.parameter_definitions = (List____listOfParameterDefinition.parse(map['parameterDefinitions']) unless map['parameterDefinitions'].nil?)
        data.required_capabilities = (List____listOfCapability.parse(map['requiredCapabilities']) unless map['requiredCapabilities'].nil?)
        data.resources_supported = map['resourcesSupported']
        data.semantic_version = map['semanticVersion']
        data.source_code_archive_url = map['sourceCodeArchiveUrl']
        data.source_code_url = map['sourceCodeUrl']
        data.template_url = map['templateUrl']
        return data
      end
    end

    class List____listOfCapability
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class List____listOfParameterDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << ParameterDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ParameterDefinition
      def self.parse(map)
        data = Types::ParameterDefinition.new
        data.allowed_pattern = map['allowedPattern']
        data.allowed_values = (List____listOf__string.parse(map['allowedValues']) unless map['allowedValues'].nil?)
        data.constraint_description = map['constraintDescription']
        data.default_value = map['defaultValue']
        data.description = map['description']
        data.max_length = map['maxLength']
        data.max_value = map['maxValue']
        data.min_length = map['minLength']
        data.min_value = map['minValue']
        data.name = map['name']
        data.no_echo = map['noEcho']
        data.referenced_by_resources = (List____listOf__string.parse(map['referencedByResources']) unless map['referencedByResources'].nil?)
        data.type = map['type']
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApplicationVersion
    class CreateApplicationVersion
      def self.parse(http_resp)
        data = Types::CreateApplicationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.creation_time = map['creationTime']
        data.parameter_definitions = (List____listOfParameterDefinition.parse(map['parameterDefinitions']) unless map['parameterDefinitions'].nil?)
        data.required_capabilities = (List____listOfCapability.parse(map['requiredCapabilities']) unless map['requiredCapabilities'].nil?)
        data.resources_supported = map['resourcesSupported']
        data.semantic_version = map['semanticVersion']
        data.source_code_archive_url = map['sourceCodeArchiveUrl']
        data.source_code_url = map['sourceCodeUrl']
        data.template_url = map['templateUrl']
        data
      end
    end

    # Operation Parser for CreateCloudFormationChangeSet
    class CreateCloudFormationChangeSet
      def self.parse(http_resp)
        data = Types::CreateCloudFormationChangeSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.change_set_id = map['changeSetId']
        data.semantic_version = map['semanticVersion']
        data.stack_id = map['stackId']
        data
      end
    end

    # Operation Parser for CreateCloudFormationTemplate
    class CreateCloudFormationTemplate
      def self.parse(http_resp)
        data = Types::CreateCloudFormationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.creation_time = map['creationTime']
        data.expiration_time = map['expirationTime']
        data.semantic_version = map['semanticVersion']
        data.status = map['status']
        data.template_id = map['templateId']
        data.template_url = map['templateUrl']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['errorCode']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.author = map['author']
        data.creation_time = map['creationTime']
        data.description = map['description']
        data.home_page_url = map['homePageUrl']
        data.is_verified_author = map['isVerifiedAuthor']
        data.labels = (List____listOf__string.parse(map['labels']) unless map['labels'].nil?)
        data.license_url = map['licenseUrl']
        data.name = map['name']
        data.readme_url = map['readmeUrl']
        data.spdx_license_id = map['spdxLicenseId']
        data.verified_author_url = map['verifiedAuthorUrl']
        data.version = (Version.parse(map['version']) unless map['version'].nil?)
        data
      end
    end

    # Operation Parser for GetApplicationPolicy
    class GetApplicationPolicy
      def self.parse(http_resp)
        data = Types::GetApplicationPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.statements = (List____listOfApplicationPolicyStatement.parse(map['statements']) unless map['statements'].nil?)
        data
      end
    end

    class List____listOfApplicationPolicyStatement
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApplicationPolicyStatement.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationPolicyStatement
      def self.parse(map)
        data = Types::ApplicationPolicyStatement.new
        data.actions = (List____listOf__string.parse(map['actions']) unless map['actions'].nil?)
        data.principal_org_i_ds = (List____listOf__string.parse(map['principalOrgIDs']) unless map['principalOrgIDs'].nil?)
        data.principals = (List____listOf__string.parse(map['principals']) unless map['principals'].nil?)
        data.statement_id = map['statementId']
        return data
      end
    end

    # Operation Parser for GetCloudFormationTemplate
    class GetCloudFormationTemplate
      def self.parse(http_resp)
        data = Types::GetCloudFormationTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.creation_time = map['creationTime']
        data.expiration_time = map['expirationTime']
        data.semantic_version = map['semanticVersion']
        data.status = map['status']
        data.template_id = map['templateId']
        data.template_url = map['templateUrl']
        data
      end
    end

    # Operation Parser for ListApplicationDependencies
    class ListApplicationDependencies
      def self.parse(http_resp)
        data = Types::ListApplicationDependenciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dependencies = (List____listOfApplicationDependencySummary.parse(map['dependencies']) unless map['dependencies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfApplicationDependencySummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApplicationDependencySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationDependencySummary
      def self.parse(map)
        data = Types::ApplicationDependencySummary.new
        data.application_id = map['applicationId']
        data.semantic_version = map['semanticVersion']
        return data
      end
    end

    # Operation Parser for ListApplicationVersions
    class ListApplicationVersions
      def self.parse(http_resp)
        data = Types::ListApplicationVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.versions = (List____listOfVersionSummary.parse(map['versions']) unless map['versions'].nil?)
        data
      end
    end

    class List____listOfVersionSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << VersionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class VersionSummary
      def self.parse(map)
        data = Types::VersionSummary.new
        data.application_id = map['applicationId']
        data.creation_time = map['creationTime']
        data.semantic_version = map['semanticVersion']
        data.source_code_url = map['sourceCodeUrl']
        return data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.applications = (List____listOfApplicationSummary.parse(map['applications']) unless map['applications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfApplicationSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.application_id = map['applicationId']
        data.author = map['author']
        data.creation_time = map['creationTime']
        data.description = map['description']
        data.home_page_url = map['homePageUrl']
        data.labels = (List____listOf__string.parse(map['labels']) unless map['labels'].nil?)
        data.name = map['name']
        data.spdx_license_id = map['spdxLicenseId']
        return data
      end
    end

    # Operation Parser for PutApplicationPolicy
    class PutApplicationPolicy
      def self.parse(http_resp)
        data = Types::PutApplicationPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.statements = (List____listOfApplicationPolicyStatement.parse(map['statements']) unless map['statements'].nil?)
        data
      end
    end

    # Operation Parser for UnshareApplication
    class UnshareApplication
      def self.parse(http_resp)
        data = Types::UnshareApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_id = map['applicationId']
        data.author = map['author']
        data.creation_time = map['creationTime']
        data.description = map['description']
        data.home_page_url = map['homePageUrl']
        data.is_verified_author = map['isVerifiedAuthor']
        data.labels = (List____listOf__string.parse(map['labels']) unless map['labels'].nil?)
        data.license_url = map['licenseUrl']
        data.name = map['name']
        data.readme_url = map['readmeUrl']
        data.spdx_license_id = map['spdxLicenseId']
        data.verified_author_url = map['verifiedAuthorUrl']
        data.version = (Version.parse(map['version']) unless map['version'].nil?)
        data
      end
    end
  end
end
