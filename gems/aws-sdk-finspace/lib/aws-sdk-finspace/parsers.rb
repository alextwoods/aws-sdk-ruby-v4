# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Finspace
  module Parsers

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment_id = map['environmentId']
        data.environment_arn = map['environmentArn']
        data.environment_url = map['environmentUrl']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end

    class Environment
      def self.parse(map)
        data = Types::Environment.new
        data.name = map['name']
        data.environment_id = map['environmentId']
        data.aws_account_id = map['awsAccountId']
        data.status = map['status']
        data.environment_url = map['environmentUrl']
        data.description = map['description']
        data.environment_arn = map['environmentArn']
        data.sage_maker_studio_domain_url = map['sageMakerStudioDomainUrl']
        data.kms_key_id = map['kmsKeyId']
        data.dedicated_service_account_id = map['dedicatedServiceAccountId']
        data.federation_mode = map['federationMode']
        data.federation_parameters = (Parsers::FederationParameters.parse(map['federationParameters']) unless map['federationParameters'].nil?)
        return data
      end
    end

    class FederationParameters
      def self.parse(map)
        data = Types::FederationParameters.new
        data.saml_metadata_document = map['samlMetadataDocument']
        data.saml_metadata_url = map['samlMetadataURL']
        data.application_call_back_url = map['applicationCallBackURL']
        data.federation_urn = map['federationURN']
        data.federation_provider_name = map['federationProviderName']
        data.attribute_map = (Parsers::AttributeMap.parse(map['attributeMap']) unless map['attributeMap'].nil?)
        return data
      end
    end

    class AttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environments = (Parsers::EnvironmentList.parse(map['environments']) unless map['environments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EnvironmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Environment.parse(value) unless value.nil?
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

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for UpdateEnvironment
    class UpdateEnvironment
      def self.parse(http_resp)
        data = Types::UpdateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment = (Parsers::Environment.parse(map['environment']) unless map['environment'].nil?)
        data
      end
    end
  end
end
