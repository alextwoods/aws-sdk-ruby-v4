# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Finspace
  module Stubs

    # Operation Stubber for CreateEnvironment
    class CreateEnvironment
      def self.default(visited=[])
        {
          environment_id: 'environment_id',
          environment_arn: 'environment_arn',
          environment_url: 'environment_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['environmentArn'] = stub[:environment_arn] unless stub[:environment_arn].nil?
        data['environmentUrl'] = stub[:environment_url] unless stub[:environment_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEnvironment
    class GetEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          name: 'name',
          environment_id: 'environment_id',
          aws_account_id: 'aws_account_id',
          status: 'status',
          environment_url: 'environment_url',
          description: 'description',
          environment_arn: 'environment_arn',
          sage_maker_studio_domain_url: 'sage_maker_studio_domain_url',
          kms_key_id: 'kms_key_id',
          dedicated_service_account_id: 'dedicated_service_account_id',
          federation_mode: 'federation_mode',
          federation_parameters: FederationParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['awsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['environmentUrl'] = stub[:environment_url] unless stub[:environment_url].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['environmentArn'] = stub[:environment_arn] unless stub[:environment_arn].nil?
        data['sageMakerStudioDomainUrl'] = stub[:sage_maker_studio_domain_url] unless stub[:sage_maker_studio_domain_url].nil?
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['dedicatedServiceAccountId'] = stub[:dedicated_service_account_id] unless stub[:dedicated_service_account_id].nil?
        data['federationMode'] = stub[:federation_mode] unless stub[:federation_mode].nil?
        data['federationParameters'] = FederationParameters.stub(stub[:federation_parameters]) unless stub[:federation_parameters].nil?
        data
      end
    end

    # Structure Stubber for FederationParameters
    class FederationParameters
      def self.default(visited=[])
        return nil if visited.include?('FederationParameters')
        visited = visited + ['FederationParameters']
        {
          saml_metadata_document: 'saml_metadata_document',
          saml_metadata_url: 'saml_metadata_url',
          application_call_back_url: 'application_call_back_url',
          federation_urn: 'federation_urn',
          federation_provider_name: 'federation_provider_name',
          attribute_map: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FederationParameters.new
        data = {}
        data['samlMetadataDocument'] = stub[:saml_metadata_document] unless stub[:saml_metadata_document].nil?
        data['samlMetadataURL'] = stub[:saml_metadata_url] unless stub[:saml_metadata_url].nil?
        data['applicationCallBackURL'] = stub[:application_call_back_url] unless stub[:application_call_back_url].nil?
        data['federationURN'] = stub[:federation_urn] unless stub[:federation_urn].nil?
        data['federationProviderName'] = stub[:federation_provider_name] unless stub[:federation_provider_name].nil?
        data['attributeMap'] = AttributeMap.stub(stub[:attribute_map]) unless stub[:attribute_map].nil?
        data
      end
    end

    # Map Stubber for AttributeMap
    class AttributeMap
      def self.default(visited=[])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
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

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          environments: EnvironmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environments'] = EnvironmentList.stub(stub[:environments]) unless stub[:environments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EnvironmentList
    class EnvironmentList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentList')
        visited = visited + ['EnvironmentList']
        [
          Environment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Environment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
          environment: Environment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
