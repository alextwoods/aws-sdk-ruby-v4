# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Connect
  module Stubs

    # Operation Stubber for AssociateApprovedOrigin
    class AssociateApprovedOrigin
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateBot
    class AssociateBot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateDefaultVocabulary
    class AssociateDefaultVocabulary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateInstanceStorageConfig
    class AssociateInstanceStorageConfig
      def self.default(visited=[])
        {
          association_id: 'association_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateLambdaFunction
    class AssociateLambdaFunction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateLexBot
    class AssociateLexBot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociatePhoneNumberContactFlow
    class AssociatePhoneNumberContactFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateQueueQuickConnects
    class AssociateQueueQuickConnects
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateRoutingProfileQueues
    class AssociateRoutingProfileQueues
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSecurityKey
    class AssociateSecurityKey
      def self.default(visited=[])
        {
          association_id: 'association_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ClaimPhoneNumber
    class ClaimPhoneNumber
      def self.default(visited=[])
        {
          phone_number_id: 'phone_number_id',
          phone_number_arn: 'phone_number_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAgentStatus
    class CreateAgentStatus
      def self.default(visited=[])
        {
          agent_status_arn: 'agent_status_arn',
          agent_status_id: 'agent_status_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AgentStatusARN'] = stub[:agent_status_arn] unless stub[:agent_status_arn].nil?
        data['AgentStatusId'] = stub[:agent_status_id] unless stub[:agent_status_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateContactFlow
    class CreateContactFlow
      def self.default(visited=[])
        {
          contact_flow_id: 'contact_flow_id',
          contact_flow_arn: 'contact_flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactFlowId'] = stub[:contact_flow_id] unless stub[:contact_flow_id].nil?
        data['ContactFlowArn'] = stub[:contact_flow_arn] unless stub[:contact_flow_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateContactFlowModule
    class CreateContactFlowModule
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateHoursOfOperation
    class CreateHoursOfOperation
      def self.default(visited=[])
        {
          hours_of_operation_id: 'hours_of_operation_id',
          hours_of_operation_arn: 'hours_of_operation_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HoursOfOperationId'] = stub[:hours_of_operation_id] unless stub[:hours_of_operation_id].nil?
        data['HoursOfOperationArn'] = stub[:hours_of_operation_arn] unless stub[:hours_of_operation_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateInstance
    class CreateInstance
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateIntegrationAssociation
    class CreateIntegrationAssociation
      def self.default(visited=[])
        {
          integration_association_id: 'integration_association_id',
          integration_association_arn: 'integration_association_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IntegrationAssociationId'] = stub[:integration_association_id] unless stub[:integration_association_id].nil?
        data['IntegrationAssociationArn'] = stub[:integration_association_arn] unless stub[:integration_association_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateQueue
    class CreateQueue
      def self.default(visited=[])
        {
          queue_arn: 'queue_arn',
          queue_id: 'queue_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QueueArn'] = stub[:queue_arn] unless stub[:queue_arn].nil?
        data['QueueId'] = stub[:queue_id] unless stub[:queue_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateQuickConnect
    class CreateQuickConnect
      def self.default(visited=[])
        {
          quick_connect_arn: 'quick_connect_arn',
          quick_connect_id: 'quick_connect_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QuickConnectARN'] = stub[:quick_connect_arn] unless stub[:quick_connect_arn].nil?
        data['QuickConnectId'] = stub[:quick_connect_id] unless stub[:quick_connect_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRoutingProfile
    class CreateRoutingProfile
      def self.default(visited=[])
        {
          routing_profile_arn: 'routing_profile_arn',
          routing_profile_id: 'routing_profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingProfileArn'] = stub[:routing_profile_arn] unless stub[:routing_profile_arn].nil?
        data['RoutingProfileId'] = stub[:routing_profile_id] unless stub[:routing_profile_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSecurityProfile
    class CreateSecurityProfile
      def self.default(visited=[])
        {
          security_profile_id: 'security_profile_id',
          security_profile_arn: 'security_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SecurityProfileId'] = stub[:security_profile_id] unless stub[:security_profile_id].nil?
        data['SecurityProfileArn'] = stub[:security_profile_arn] unless stub[:security_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTaskTemplate
    class CreateTaskTemplate
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateUseCase
    class CreateUseCase
      def self.default(visited=[])
        {
          use_case_id: 'use_case_id',
          use_case_arn: 'use_case_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UseCaseId'] = stub[:use_case_id] unless stub[:use_case_id].nil?
        data['UseCaseArn'] = stub[:use_case_arn] unless stub[:use_case_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          user_arn: 'user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['UserArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateUserHierarchyGroup
    class CreateUserHierarchyGroup
      def self.default(visited=[])
        {
          hierarchy_group_id: 'hierarchy_group_id',
          hierarchy_group_arn: 'hierarchy_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HierarchyGroupId'] = stub[:hierarchy_group_id] unless stub[:hierarchy_group_id].nil?
        data['HierarchyGroupArn'] = stub[:hierarchy_group_arn] unless stub[:hierarchy_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateVocabulary
    class CreateVocabulary
      def self.default(visited=[])
        {
          vocabulary_arn: 'vocabulary_arn',
          vocabulary_id: 'vocabulary_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VocabularyArn'] = stub[:vocabulary_arn] unless stub[:vocabulary_arn].nil?
        data['VocabularyId'] = stub[:vocabulary_id] unless stub[:vocabulary_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteContactFlow
    class DeleteContactFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContactFlowModule
    class DeleteContactFlowModule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHoursOfOperation
    class DeleteHoursOfOperation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstance
    class DeleteInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIntegrationAssociation
    class DeleteIntegrationAssociation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteQuickConnect
    class DeleteQuickConnect
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTaskTemplate
    class DeleteTaskTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUseCase
    class DeleteUseCase
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserHierarchyGroup
    class DeleteUserHierarchyGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVocabulary
    class DeleteVocabulary
      def self.default(visited=[])
        {
          vocabulary_arn: 'vocabulary_arn',
          vocabulary_id: 'vocabulary_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VocabularyArn'] = stub[:vocabulary_arn] unless stub[:vocabulary_arn].nil?
        data['VocabularyId'] = stub[:vocabulary_id] unless stub[:vocabulary_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAgentStatus
    class DescribeAgentStatus
      def self.default(visited=[])
        {
          agent_status: AgentStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AgentStatus'] = AgentStatus.stub(stub[:agent_status]) unless stub[:agent_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AgentStatus
    class AgentStatus
      def self.default(visited=[])
        return nil if visited.include?('AgentStatus')
        visited = visited + ['AgentStatus']
        {
          agent_status_arn: 'agent_status_arn',
          agent_status_id: 'agent_status_id',
          name: 'name',
          description: 'description',
          type: 'type',
          display_order: 1,
          state: 'state',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentStatus.new
        data = {}
        data['AgentStatusARN'] = stub[:agent_status_arn] unless stub[:agent_status_arn].nil?
        data['AgentStatusId'] = stub[:agent_status_id] unless stub[:agent_status_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DisplayOrder'] = stub[:display_order] unless stub[:display_order].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for DescribeContact
    class DescribeContact
      def self.default(visited=[])
        {
          contact: Contact.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Contact'] = Contact.stub(stub[:contact]) unless stub[:contact].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Contact
    class Contact
      def self.default(visited=[])
        return nil if visited.include?('Contact')
        visited = visited + ['Contact']
        {
          arn: 'arn',
          id: 'id',
          initial_contact_id: 'initial_contact_id',
          previous_contact_id: 'previous_contact_id',
          initiation_method: 'initiation_method',
          name: 'name',
          description: 'description',
          channel: 'channel',
          queue_info: QueueInfo.default(visited),
          agent_info: AgentInfo.default(visited),
          initiation_timestamp: Time.now,
          disconnect_timestamp: Time.now,
          last_update_timestamp: Time.now,
          scheduled_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Contact.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['InitialContactId'] = stub[:initial_contact_id] unless stub[:initial_contact_id].nil?
        data['PreviousContactId'] = stub[:previous_contact_id] unless stub[:previous_contact_id].nil?
        data['InitiationMethod'] = stub[:initiation_method] unless stub[:initiation_method].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Channel'] = stub[:channel] unless stub[:channel].nil?
        data['QueueInfo'] = QueueInfo.stub(stub[:queue_info]) unless stub[:queue_info].nil?
        data['AgentInfo'] = AgentInfo.stub(stub[:agent_info]) unless stub[:agent_info].nil?
        data['InitiationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:initiation_timestamp]).to_i unless stub[:initiation_timestamp].nil?
        data['DisconnectTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:disconnect_timestamp]).to_i unless stub[:disconnect_timestamp].nil?
        data['LastUpdateTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_timestamp]).to_i unless stub[:last_update_timestamp].nil?
        data['ScheduledTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_timestamp]).to_i unless stub[:scheduled_timestamp].nil?
        data
      end
    end

    # Structure Stubber for AgentInfo
    class AgentInfo
      def self.default(visited=[])
        return nil if visited.include?('AgentInfo')
        visited = visited + ['AgentInfo']
        {
          id: 'id',
          connected_to_agent_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentInfo.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ConnectedToAgentTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:connected_to_agent_timestamp]).to_i unless stub[:connected_to_agent_timestamp].nil?
        data
      end
    end

    # Structure Stubber for QueueInfo
    class QueueInfo
      def self.default(visited=[])
        return nil if visited.include?('QueueInfo')
        visited = visited + ['QueueInfo']
        {
          id: 'id',
          enqueue_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueInfo.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['EnqueueTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:enqueue_timestamp]).to_i unless stub[:enqueue_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeContactFlow
    class DescribeContactFlow
      def self.default(visited=[])
        {
          contact_flow: ContactFlow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactFlow'] = ContactFlow.stub(stub[:contact_flow]) unless stub[:contact_flow].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ContactFlow
    class ContactFlow
      def self.default(visited=[])
        return nil if visited.include?('ContactFlow')
        visited = visited + ['ContactFlow']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          type: 'type',
          state: 'state',
          description: 'description',
          content: 'content',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactFlow.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeContactFlowModule
    class DescribeContactFlowModule
      def self.default(visited=[])
        {
          contact_flow_module: ContactFlowModule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactFlowModule'] = ContactFlowModule.stub(stub[:contact_flow_module]) unless stub[:contact_flow_module].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ContactFlowModule
    class ContactFlowModule
      def self.default(visited=[])
        return nil if visited.include?('ContactFlowModule')
        visited = visited + ['ContactFlowModule']
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          content: 'content',
          description: 'description',
          state: 'state',
          status: 'status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactFlowModule.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeHoursOfOperation
    class DescribeHoursOfOperation
      def self.default(visited=[])
        {
          hours_of_operation: HoursOfOperation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HoursOfOperation'] = HoursOfOperation.stub(stub[:hours_of_operation]) unless stub[:hours_of_operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for HoursOfOperation
    class HoursOfOperation
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperation')
        visited = visited + ['HoursOfOperation']
        {
          hours_of_operation_id: 'hours_of_operation_id',
          hours_of_operation_arn: 'hours_of_operation_arn',
          name: 'name',
          description: 'description',
          time_zone: 'time_zone',
          config: HoursOfOperationConfigList.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HoursOfOperation.new
        data = {}
        data['HoursOfOperationId'] = stub[:hours_of_operation_id] unless stub[:hours_of_operation_id].nil?
        data['HoursOfOperationArn'] = stub[:hours_of_operation_arn] unless stub[:hours_of_operation_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['TimeZone'] = stub[:time_zone] unless stub[:time_zone].nil?
        data['Config'] = HoursOfOperationConfigList.stub(stub[:config]) unless stub[:config].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for HoursOfOperationConfigList
    class HoursOfOperationConfigList
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperationConfigList')
        visited = visited + ['HoursOfOperationConfigList']
        [
          HoursOfOperationConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HoursOfOperationConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HoursOfOperationConfig
    class HoursOfOperationConfig
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperationConfig')
        visited = visited + ['HoursOfOperationConfig']
        {
          day: 'day',
          start_time: HoursOfOperationTimeSlice.default(visited),
          end_time: HoursOfOperationTimeSlice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HoursOfOperationConfig.new
        data = {}
        data['Day'] = stub[:day] unless stub[:day].nil?
        data['StartTime'] = HoursOfOperationTimeSlice.stub(stub[:start_time]) unless stub[:start_time].nil?
        data['EndTime'] = HoursOfOperationTimeSlice.stub(stub[:end_time]) unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for HoursOfOperationTimeSlice
    class HoursOfOperationTimeSlice
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperationTimeSlice')
        visited = visited + ['HoursOfOperationTimeSlice']
        {
          hours: 1,
          minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HoursOfOperationTimeSlice.new
        data = {}
        data['Hours'] = stub[:hours] unless stub[:hours].nil?
        data['Minutes'] = stub[:minutes] unless stub[:minutes].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstance
    class DescribeInstance
      def self.default(visited=[])
        {
          instance: Instance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Instance'] = Instance.stub(stub[:instance]) unless stub[:instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          id: 'id',
          arn: 'arn',
          identity_management_type: 'identity_management_type',
          instance_alias: 'instance_alias',
          created_time: Time.now,
          service_role: 'service_role',
          instance_status: 'instance_status',
          status_reason: InstanceStatusReason.default(visited),
          inbound_calls_enabled: false,
          outbound_calls_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['IdentityManagementType'] = stub[:identity_management_type] unless stub[:identity_management_type].nil?
        data['InstanceAlias'] = stub[:instance_alias] unless stub[:instance_alias].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['InstanceStatus'] = stub[:instance_status] unless stub[:instance_status].nil?
        data['StatusReason'] = InstanceStatusReason.stub(stub[:status_reason]) unless stub[:status_reason].nil?
        data['InboundCallsEnabled'] = stub[:inbound_calls_enabled] unless stub[:inbound_calls_enabled].nil?
        data['OutboundCallsEnabled'] = stub[:outbound_calls_enabled] unless stub[:outbound_calls_enabled].nil?
        data
      end
    end

    # Structure Stubber for InstanceStatusReason
    class InstanceStatusReason
      def self.default(visited=[])
        return nil if visited.include?('InstanceStatusReason')
        visited = visited + ['InstanceStatusReason']
        {
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceStatusReason.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstanceAttribute
    class DescribeInstanceAttribute
      def self.default(visited=[])
        {
          attribute: Attribute.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attribute'] = Attribute.stub(stub[:attribute]) unless stub[:attribute].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          attribute_type: 'attribute_type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstanceStorageConfig
    class DescribeInstanceStorageConfig
      def self.default(visited=[])
        {
          storage_config: InstanceStorageConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StorageConfig'] = InstanceStorageConfig.stub(stub[:storage_config]) unless stub[:storage_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InstanceStorageConfig
    class InstanceStorageConfig
      def self.default(visited=[])
        return nil if visited.include?('InstanceStorageConfig')
        visited = visited + ['InstanceStorageConfig']
        {
          association_id: 'association_id',
          storage_type: 'storage_type',
          s3_config: S3Config.default(visited),
          kinesis_video_stream_config: KinesisVideoStreamConfig.default(visited),
          kinesis_stream_config: KinesisStreamConfig.default(visited),
          kinesis_firehose_config: KinesisFirehoseConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceStorageConfig.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data['S3Config'] = S3Config.stub(stub[:s3_config]) unless stub[:s3_config].nil?
        data['KinesisVideoStreamConfig'] = KinesisVideoStreamConfig.stub(stub[:kinesis_video_stream_config]) unless stub[:kinesis_video_stream_config].nil?
        data['KinesisStreamConfig'] = KinesisStreamConfig.stub(stub[:kinesis_stream_config]) unless stub[:kinesis_stream_config].nil?
        data['KinesisFirehoseConfig'] = KinesisFirehoseConfig.stub(stub[:kinesis_firehose_config]) unless stub[:kinesis_firehose_config].nil?
        data
      end
    end

    # Structure Stubber for KinesisFirehoseConfig
    class KinesisFirehoseConfig
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseConfig')
        visited = visited + ['KinesisFirehoseConfig']
        {
          firehose_arn: 'firehose_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseConfig.new
        data = {}
        data['FirehoseArn'] = stub[:firehose_arn] unless stub[:firehose_arn].nil?
        data
      end
    end

    # Structure Stubber for KinesisStreamConfig
    class KinesisStreamConfig
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamConfig')
        visited = visited + ['KinesisStreamConfig']
        {
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisStreamConfig.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data
      end
    end

    # Structure Stubber for KinesisVideoStreamConfig
    class KinesisVideoStreamConfig
      def self.default(visited=[])
        return nil if visited.include?('KinesisVideoStreamConfig')
        visited = visited + ['KinesisVideoStreamConfig']
        {
          prefix: 'prefix',
          retention_period_hours: 1,
          encryption_config: EncryptionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisVideoStreamConfig.new
        data = {}
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['RetentionPeriodHours'] = stub[:retention_period_hours] unless stub[:retention_period_hours].nil?
        data['EncryptionConfig'] = EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfig
    class EncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfig')
        visited = visited + ['EncryptionConfig']
        {
          encryption_type: 'encryption_type',
          key_id: 'key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfig.new
        data = {}
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data
      end
    end

    # Structure Stubber for S3Config
    class S3Config
      def self.default(visited=[])
        return nil if visited.include?('S3Config')
        visited = visited + ['S3Config']
        {
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          encryption_config: EncryptionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Config.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['BucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['EncryptionConfig'] = EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data
      end
    end

    # Operation Stubber for DescribePhoneNumber
    class DescribePhoneNumber
      def self.default(visited=[])
        {
          claimed_phone_number_summary: ClaimedPhoneNumberSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ClaimedPhoneNumberSummary'] = ClaimedPhoneNumberSummary.stub(stub[:claimed_phone_number_summary]) unless stub[:claimed_phone_number_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ClaimedPhoneNumberSummary
    class ClaimedPhoneNumberSummary
      def self.default(visited=[])
        return nil if visited.include?('ClaimedPhoneNumberSummary')
        visited = visited + ['ClaimedPhoneNumberSummary']
        {
          phone_number_id: 'phone_number_id',
          phone_number_arn: 'phone_number_arn',
          phone_number: 'phone_number',
          phone_number_country_code: 'phone_number_country_code',
          phone_number_type: 'phone_number_type',
          phone_number_description: 'phone_number_description',
          target_arn: 'target_arn',
          tags: TagMap.default(visited),
          phone_number_status: PhoneNumberStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClaimedPhoneNumberSummary.new
        data = {}
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumberCountryCode'] = stub[:phone_number_country_code] unless stub[:phone_number_country_code].nil?
        data['PhoneNumberType'] = stub[:phone_number_type] unless stub[:phone_number_type].nil?
        data['PhoneNumberDescription'] = stub[:phone_number_description] unless stub[:phone_number_description].nil?
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['PhoneNumberStatus'] = PhoneNumberStatus.stub(stub[:phone_number_status]) unless stub[:phone_number_status].nil?
        data
      end
    end

    # Structure Stubber for PhoneNumberStatus
    class PhoneNumberStatus
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberStatus')
        visited = visited + ['PhoneNumberStatus']
        {
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for DescribeQueue
    class DescribeQueue
      def self.default(visited=[])
        {
          queue: Queue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Queue'] = Queue.stub(stub[:queue]) unless stub[:queue].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Queue
    class Queue
      def self.default(visited=[])
        return nil if visited.include?('Queue')
        visited = visited + ['Queue']
        {
          name: 'name',
          queue_arn: 'queue_arn',
          queue_id: 'queue_id',
          description: 'description',
          outbound_caller_config: OutboundCallerConfig.default(visited),
          hours_of_operation_id: 'hours_of_operation_id',
          max_contacts: 1,
          status: 'status',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Queue.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['QueueArn'] = stub[:queue_arn] unless stub[:queue_arn].nil?
        data['QueueId'] = stub[:queue_id] unless stub[:queue_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['OutboundCallerConfig'] = OutboundCallerConfig.stub(stub[:outbound_caller_config]) unless stub[:outbound_caller_config].nil?
        data['HoursOfOperationId'] = stub[:hours_of_operation_id] unless stub[:hours_of_operation_id].nil?
        data['MaxContacts'] = stub[:max_contacts] unless stub[:max_contacts].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for OutboundCallerConfig
    class OutboundCallerConfig
      def self.default(visited=[])
        return nil if visited.include?('OutboundCallerConfig')
        visited = visited + ['OutboundCallerConfig']
        {
          outbound_caller_id_name: 'outbound_caller_id_name',
          outbound_caller_id_number_id: 'outbound_caller_id_number_id',
          outbound_flow_id: 'outbound_flow_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutboundCallerConfig.new
        data = {}
        data['OutboundCallerIdName'] = stub[:outbound_caller_id_name] unless stub[:outbound_caller_id_name].nil?
        data['OutboundCallerIdNumberId'] = stub[:outbound_caller_id_number_id] unless stub[:outbound_caller_id_number_id].nil?
        data['OutboundFlowId'] = stub[:outbound_flow_id] unless stub[:outbound_flow_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeQuickConnect
    class DescribeQuickConnect
      def self.default(visited=[])
        {
          quick_connect: QuickConnect.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QuickConnect'] = QuickConnect.stub(stub[:quick_connect]) unless stub[:quick_connect].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for QuickConnect
    class QuickConnect
      def self.default(visited=[])
        return nil if visited.include?('QuickConnect')
        visited = visited + ['QuickConnect']
        {
          quick_connect_arn: 'quick_connect_arn',
          quick_connect_id: 'quick_connect_id',
          name: 'name',
          description: 'description',
          quick_connect_config: QuickConnectConfig.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QuickConnect.new
        data = {}
        data['QuickConnectARN'] = stub[:quick_connect_arn] unless stub[:quick_connect_arn].nil?
        data['QuickConnectId'] = stub[:quick_connect_id] unless stub[:quick_connect_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['QuickConnectConfig'] = QuickConnectConfig.stub(stub[:quick_connect_config]) unless stub[:quick_connect_config].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for QuickConnectConfig
    class QuickConnectConfig
      def self.default(visited=[])
        return nil if visited.include?('QuickConnectConfig')
        visited = visited + ['QuickConnectConfig']
        {
          quick_connect_type: 'quick_connect_type',
          user_config: UserQuickConnectConfig.default(visited),
          queue_config: QueueQuickConnectConfig.default(visited),
          phone_config: PhoneNumberQuickConnectConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QuickConnectConfig.new
        data = {}
        data['QuickConnectType'] = stub[:quick_connect_type] unless stub[:quick_connect_type].nil?
        data['UserConfig'] = UserQuickConnectConfig.stub(stub[:user_config]) unless stub[:user_config].nil?
        data['QueueConfig'] = QueueQuickConnectConfig.stub(stub[:queue_config]) unless stub[:queue_config].nil?
        data['PhoneConfig'] = PhoneNumberQuickConnectConfig.stub(stub[:phone_config]) unless stub[:phone_config].nil?
        data
      end
    end

    # Structure Stubber for PhoneNumberQuickConnectConfig
    class PhoneNumberQuickConnectConfig
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberQuickConnectConfig')
        visited = visited + ['PhoneNumberQuickConnectConfig']
        {
          phone_number: 'phone_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberQuickConnectConfig.new
        data = {}
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data
      end
    end

    # Structure Stubber for QueueQuickConnectConfig
    class QueueQuickConnectConfig
      def self.default(visited=[])
        return nil if visited.include?('QueueQuickConnectConfig')
        visited = visited + ['QueueQuickConnectConfig']
        {
          queue_id: 'queue_id',
          contact_flow_id: 'contact_flow_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueQuickConnectConfig.new
        data = {}
        data['QueueId'] = stub[:queue_id] unless stub[:queue_id].nil?
        data['ContactFlowId'] = stub[:contact_flow_id] unless stub[:contact_flow_id].nil?
        data
      end
    end

    # Structure Stubber for UserQuickConnectConfig
    class UserQuickConnectConfig
      def self.default(visited=[])
        return nil if visited.include?('UserQuickConnectConfig')
        visited = visited + ['UserQuickConnectConfig']
        {
          user_id: 'user_id',
          contact_flow_id: 'contact_flow_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserQuickConnectConfig.new
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['ContactFlowId'] = stub[:contact_flow_id] unless stub[:contact_flow_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeRoutingProfile
    class DescribeRoutingProfile
      def self.default(visited=[])
        {
          routing_profile: RoutingProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingProfile'] = RoutingProfile.stub(stub[:routing_profile]) unless stub[:routing_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RoutingProfile
    class RoutingProfile
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfile')
        visited = visited + ['RoutingProfile']
        {
          instance_id: 'instance_id',
          name: 'name',
          routing_profile_arn: 'routing_profile_arn',
          routing_profile_id: 'routing_profile_id',
          description: 'description',
          media_concurrencies: MediaConcurrencies.default(visited),
          default_outbound_queue_id: 'default_outbound_queue_id',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingProfile.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RoutingProfileArn'] = stub[:routing_profile_arn] unless stub[:routing_profile_arn].nil?
        data['RoutingProfileId'] = stub[:routing_profile_id] unless stub[:routing_profile_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['MediaConcurrencies'] = MediaConcurrencies.stub(stub[:media_concurrencies]) unless stub[:media_concurrencies].nil?
        data['DefaultOutboundQueueId'] = stub[:default_outbound_queue_id] unless stub[:default_outbound_queue_id].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for MediaConcurrencies
    class MediaConcurrencies
      def self.default(visited=[])
        return nil if visited.include?('MediaConcurrencies')
        visited = visited + ['MediaConcurrencies']
        [
          MediaConcurrency.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MediaConcurrency.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MediaConcurrency
    class MediaConcurrency
      def self.default(visited=[])
        return nil if visited.include?('MediaConcurrency')
        visited = visited + ['MediaConcurrency']
        {
          channel: 'channel',
          concurrency: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaConcurrency.new
        data = {}
        data['Channel'] = stub[:channel] unless stub[:channel].nil?
        data['Concurrency'] = stub[:concurrency] unless stub[:concurrency].nil?
        data
      end
    end

    # Operation Stubber for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.default(visited=[])
        {
          security_profile: SecurityProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SecurityProfile'] = SecurityProfile.stub(stub[:security_profile]) unless stub[:security_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SecurityProfile
    class SecurityProfile
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfile')
        visited = visited + ['SecurityProfile']
        {
          id: 'id',
          organization_resource_id: 'organization_resource_id',
          arn: 'arn',
          security_profile_name: 'security_profile_name',
          description: 'description',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityProfile.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['OrganizationResourceId'] = stub[:organization_resource_id] unless stub[:organization_resource_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['SecurityProfileName'] = stub[:security_profile_name] unless stub[:security_profile_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          id: 'id',
          arn: 'arn',
          username: 'username',
          identity_info: UserIdentityInfo.default(visited),
          phone_config: UserPhoneConfig.default(visited),
          directory_user_id: 'directory_user_id',
          security_profile_ids: SecurityProfileIds.default(visited),
          routing_profile_id: 'routing_profile_id',
          hierarchy_group_id: 'hierarchy_group_id',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['IdentityInfo'] = UserIdentityInfo.stub(stub[:identity_info]) unless stub[:identity_info].nil?
        data['PhoneConfig'] = UserPhoneConfig.stub(stub[:phone_config]) unless stub[:phone_config].nil?
        data['DirectoryUserId'] = stub[:directory_user_id] unless stub[:directory_user_id].nil?
        data['SecurityProfileIds'] = SecurityProfileIds.stub(stub[:security_profile_ids]) unless stub[:security_profile_ids].nil?
        data['RoutingProfileId'] = stub[:routing_profile_id] unless stub[:routing_profile_id].nil?
        data['HierarchyGroupId'] = stub[:hierarchy_group_id] unless stub[:hierarchy_group_id].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for SecurityProfileIds
    class SecurityProfileIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileIds')
        visited = visited + ['SecurityProfileIds']
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

    # Structure Stubber for UserPhoneConfig
    class UserPhoneConfig
      def self.default(visited=[])
        return nil if visited.include?('UserPhoneConfig')
        visited = visited + ['UserPhoneConfig']
        {
          phone_type: 'phone_type',
          auto_accept: false,
          after_contact_work_time_limit: 1,
          desk_phone_number: 'desk_phone_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPhoneConfig.new
        data = {}
        data['PhoneType'] = stub[:phone_type] unless stub[:phone_type].nil?
        data['AutoAccept'] = stub[:auto_accept] unless stub[:auto_accept].nil?
        data['AfterContactWorkTimeLimit'] = stub[:after_contact_work_time_limit] unless stub[:after_contact_work_time_limit].nil?
        data['DeskPhoneNumber'] = stub[:desk_phone_number] unless stub[:desk_phone_number].nil?
        data
      end
    end

    # Structure Stubber for UserIdentityInfo
    class UserIdentityInfo
      def self.default(visited=[])
        return nil if visited.include?('UserIdentityInfo')
        visited = visited + ['UserIdentityInfo']
        {
          first_name: 'first_name',
          last_name: 'last_name',
          email: 'email',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentityInfo.new
        data = {}
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data
      end
    end

    # Operation Stubber for DescribeUserHierarchyGroup
    class DescribeUserHierarchyGroup
      def self.default(visited=[])
        {
          hierarchy_group: HierarchyGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HierarchyGroup'] = HierarchyGroup.stub(stub[:hierarchy_group]) unless stub[:hierarchy_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for HierarchyGroup
    class HierarchyGroup
      def self.default(visited=[])
        return nil if visited.include?('HierarchyGroup')
        visited = visited + ['HierarchyGroup']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          level_id: 'level_id',
          hierarchy_path: HierarchyPath.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyGroup.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LevelId'] = stub[:level_id] unless stub[:level_id].nil?
        data['HierarchyPath'] = HierarchyPath.stub(stub[:hierarchy_path]) unless stub[:hierarchy_path].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for HierarchyPath
    class HierarchyPath
      def self.default(visited=[])
        return nil if visited.include?('HierarchyPath')
        visited = visited + ['HierarchyPath']
        {
          level_one: HierarchyGroupSummary.default(visited),
          level_two: HierarchyGroupSummary.default(visited),
          level_three: HierarchyGroupSummary.default(visited),
          level_four: HierarchyGroupSummary.default(visited),
          level_five: HierarchyGroupSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyPath.new
        data = {}
        data['LevelOne'] = HierarchyGroupSummary.stub(stub[:level_one]) unless stub[:level_one].nil?
        data['LevelTwo'] = HierarchyGroupSummary.stub(stub[:level_two]) unless stub[:level_two].nil?
        data['LevelThree'] = HierarchyGroupSummary.stub(stub[:level_three]) unless stub[:level_three].nil?
        data['LevelFour'] = HierarchyGroupSummary.stub(stub[:level_four]) unless stub[:level_four].nil?
        data['LevelFive'] = HierarchyGroupSummary.stub(stub[:level_five]) unless stub[:level_five].nil?
        data
      end
    end

    # Structure Stubber for HierarchyGroupSummary
    class HierarchyGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('HierarchyGroupSummary')
        visited = visited + ['HierarchyGroupSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyGroupSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeUserHierarchyStructure
    class DescribeUserHierarchyStructure
      def self.default(visited=[])
        {
          hierarchy_structure: HierarchyStructure.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HierarchyStructure'] = HierarchyStructure.stub(stub[:hierarchy_structure]) unless stub[:hierarchy_structure].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for HierarchyStructure
    class HierarchyStructure
      def self.default(visited=[])
        return nil if visited.include?('HierarchyStructure')
        visited = visited + ['HierarchyStructure']
        {
          level_one: HierarchyLevel.default(visited),
          level_two: HierarchyLevel.default(visited),
          level_three: HierarchyLevel.default(visited),
          level_four: HierarchyLevel.default(visited),
          level_five: HierarchyLevel.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyStructure.new
        data = {}
        data['LevelOne'] = HierarchyLevel.stub(stub[:level_one]) unless stub[:level_one].nil?
        data['LevelTwo'] = HierarchyLevel.stub(stub[:level_two]) unless stub[:level_two].nil?
        data['LevelThree'] = HierarchyLevel.stub(stub[:level_three]) unless stub[:level_three].nil?
        data['LevelFour'] = HierarchyLevel.stub(stub[:level_four]) unless stub[:level_four].nil?
        data['LevelFive'] = HierarchyLevel.stub(stub[:level_five]) unless stub[:level_five].nil?
        data
      end
    end

    # Structure Stubber for HierarchyLevel
    class HierarchyLevel
      def self.default(visited=[])
        return nil if visited.include?('HierarchyLevel')
        visited = visited + ['HierarchyLevel']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyLevel.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeVocabulary
    class DescribeVocabulary
      def self.default(visited=[])
        {
          vocabulary: Vocabulary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Vocabulary'] = Vocabulary.stub(stub[:vocabulary]) unless stub[:vocabulary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Vocabulary
    class Vocabulary
      def self.default(visited=[])
        return nil if visited.include?('Vocabulary')
        visited = visited + ['Vocabulary']
        {
          name: 'name',
          id: 'id',
          arn: 'arn',
          language_code: 'language_code',
          state: 'state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          content: 'content',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Vocabulary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DisassociateApprovedOrigin
    class DisassociateApprovedOrigin
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateBot
    class DisassociateBot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateInstanceStorageConfig
    class DisassociateInstanceStorageConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateLambdaFunction
    class DisassociateLambdaFunction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateLexBot
    class DisassociateLexBot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociatePhoneNumberContactFlow
    class DisassociatePhoneNumberContactFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateQueueQuickConnects
    class DisassociateQueueQuickConnects
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateRoutingProfileQueues
    class DisassociateRoutingProfileQueues
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateSecurityKey
    class DisassociateSecurityKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetContactAttributes
    class GetContactAttributes
      def self.default(visited=[])
        {
          attributes: Attributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
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

    # Operation Stubber for GetCurrentMetricData
    class GetCurrentMetricData
      def self.default(visited=[])
        {
          next_token: 'next_token',
          metric_results: CurrentMetricResults.default(visited),
          data_snapshot_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MetricResults'] = CurrentMetricResults.stub(stub[:metric_results]) unless stub[:metric_results].nil?
        data['DataSnapshotTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_snapshot_time]).to_i unless stub[:data_snapshot_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CurrentMetricResults
    class CurrentMetricResults
      def self.default(visited=[])
        return nil if visited.include?('CurrentMetricResults')
        visited = visited + ['CurrentMetricResults']
        [
          CurrentMetricResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CurrentMetricResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CurrentMetricResult
    class CurrentMetricResult
      def self.default(visited=[])
        return nil if visited.include?('CurrentMetricResult')
        visited = visited + ['CurrentMetricResult']
        {
          dimensions: Dimensions.default(visited),
          collections: CurrentMetricDataCollections.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CurrentMetricResult.new
        data = {}
        data['Dimensions'] = Dimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Collections'] = CurrentMetricDataCollections.stub(stub[:collections]) unless stub[:collections].nil?
        data
      end
    end

    # List Stubber for CurrentMetricDataCollections
    class CurrentMetricDataCollections
      def self.default(visited=[])
        return nil if visited.include?('CurrentMetricDataCollections')
        visited = visited + ['CurrentMetricDataCollections']
        [
          CurrentMetricData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CurrentMetricData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CurrentMetricData
    class CurrentMetricData
      def self.default(visited=[])
        return nil if visited.include?('CurrentMetricData')
        visited = visited + ['CurrentMetricData']
        {
          metric: CurrentMetric.default(visited),
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CurrentMetricData.new
        data = {}
        data['Metric'] = CurrentMetric.stub(stub[:metric]) unless stub[:metric].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for CurrentMetric
    class CurrentMetric
      def self.default(visited=[])
        return nil if visited.include?('CurrentMetric')
        visited = visited + ['CurrentMetric']
        {
          name: 'name',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CurrentMetric.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for Dimensions
    class Dimensions
      def self.default(visited=[])
        return nil if visited.include?('Dimensions')
        visited = visited + ['Dimensions']
        {
          queue: QueueReference.default(visited),
          channel: 'channel',
        }
      end

      def self.stub(stub)
        stub ||= Types::Dimensions.new
        data = {}
        data['Queue'] = QueueReference.stub(stub[:queue]) unless stub[:queue].nil?
        data['Channel'] = stub[:channel] unless stub[:channel].nil?
        data
      end
    end

    # Structure Stubber for QueueReference
    class QueueReference
      def self.default(visited=[])
        return nil if visited.include?('QueueReference')
        visited = visited + ['QueueReference']
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueReference.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetCurrentUserData
    class GetCurrentUserData
      def self.default(visited=[])
        {
          next_token: 'next_token',
          user_data_list: UserDataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['UserDataList'] = UserDataList.stub(stub[:user_data_list]) unless stub[:user_data_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserDataList
    class UserDataList
      def self.default(visited=[])
        return nil if visited.include?('UserDataList')
        visited = visited + ['UserDataList']
        [
          UserData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserData
    class UserData
      def self.default(visited=[])
        return nil if visited.include?('UserData')
        visited = visited + ['UserData']
        {
          user: UserReference.default(visited),
          routing_profile: RoutingProfileReference.default(visited),
          hierarchy_path: HierarchyPathReference.default(visited),
          status: AgentStatusReference.default(visited),
          available_slots_by_channel: ChannelToCountMap.default(visited),
          max_slots_by_channel: ChannelToCountMap.default(visited),
          active_slots_by_channel: ChannelToCountMap.default(visited),
          contacts: AgentContactReferenceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserData.new
        data = {}
        data['User'] = UserReference.stub(stub[:user]) unless stub[:user].nil?
        data['RoutingProfile'] = RoutingProfileReference.stub(stub[:routing_profile]) unless stub[:routing_profile].nil?
        data['HierarchyPath'] = HierarchyPathReference.stub(stub[:hierarchy_path]) unless stub[:hierarchy_path].nil?
        data['Status'] = AgentStatusReference.stub(stub[:status]) unless stub[:status].nil?
        data['AvailableSlotsByChannel'] = ChannelToCountMap.stub(stub[:available_slots_by_channel]) unless stub[:available_slots_by_channel].nil?
        data['MaxSlotsByChannel'] = ChannelToCountMap.stub(stub[:max_slots_by_channel]) unless stub[:max_slots_by_channel].nil?
        data['ActiveSlotsByChannel'] = ChannelToCountMap.stub(stub[:active_slots_by_channel]) unless stub[:active_slots_by_channel].nil?
        data['Contacts'] = AgentContactReferenceList.stub(stub[:contacts]) unless stub[:contacts].nil?
        data
      end
    end

    # List Stubber for AgentContactReferenceList
    class AgentContactReferenceList
      def self.default(visited=[])
        return nil if visited.include?('AgentContactReferenceList')
        visited = visited + ['AgentContactReferenceList']
        [
          AgentContactReference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AgentContactReference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentContactReference
    class AgentContactReference
      def self.default(visited=[])
        return nil if visited.include?('AgentContactReference')
        visited = visited + ['AgentContactReference']
        {
          contact_id: 'contact_id',
          channel: 'channel',
          initiation_method: 'initiation_method',
          agent_contact_state: 'agent_contact_state',
          state_start_timestamp: Time.now,
          connected_to_agent_timestamp: Time.now,
          queue: QueueReference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentContactReference.new
        data = {}
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['Channel'] = stub[:channel] unless stub[:channel].nil?
        data['InitiationMethod'] = stub[:initiation_method] unless stub[:initiation_method].nil?
        data['AgentContactState'] = stub[:agent_contact_state] unless stub[:agent_contact_state].nil?
        data['StateStartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:state_start_timestamp]).to_i unless stub[:state_start_timestamp].nil?
        data['ConnectedToAgentTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:connected_to_agent_timestamp]).to_i unless stub[:connected_to_agent_timestamp].nil?
        data['Queue'] = QueueReference.stub(stub[:queue]) unless stub[:queue].nil?
        data
      end
    end

    # Map Stubber for ChannelToCountMap
    class ChannelToCountMap
      def self.default(visited=[])
        return nil if visited.include?('ChannelToCountMap')
        visited = visited + ['ChannelToCountMap']
        {
          test_key: 1
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

    # Structure Stubber for AgentStatusReference
    class AgentStatusReference
      def self.default(visited=[])
        return nil if visited.include?('AgentStatusReference')
        visited = visited + ['AgentStatusReference']
        {
          status_start_timestamp: Time.now,
          status_arn: 'status_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentStatusReference.new
        data = {}
        data['StatusStartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_start_timestamp]).to_i unless stub[:status_start_timestamp].nil?
        data['StatusArn'] = stub[:status_arn] unless stub[:status_arn].nil?
        data
      end
    end

    # Structure Stubber for HierarchyPathReference
    class HierarchyPathReference
      def self.default(visited=[])
        return nil if visited.include?('HierarchyPathReference')
        visited = visited + ['HierarchyPathReference']
        {
          level_one: HierarchyGroupSummaryReference.default(visited),
          level_two: HierarchyGroupSummaryReference.default(visited),
          level_three: HierarchyGroupSummaryReference.default(visited),
          level_four: HierarchyGroupSummaryReference.default(visited),
          level_five: HierarchyGroupSummaryReference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyPathReference.new
        data = {}
        data['LevelOne'] = HierarchyGroupSummaryReference.stub(stub[:level_one]) unless stub[:level_one].nil?
        data['LevelTwo'] = HierarchyGroupSummaryReference.stub(stub[:level_two]) unless stub[:level_two].nil?
        data['LevelThree'] = HierarchyGroupSummaryReference.stub(stub[:level_three]) unless stub[:level_three].nil?
        data['LevelFour'] = HierarchyGroupSummaryReference.stub(stub[:level_four]) unless stub[:level_four].nil?
        data['LevelFive'] = HierarchyGroupSummaryReference.stub(stub[:level_five]) unless stub[:level_five].nil?
        data
      end
    end

    # Structure Stubber for HierarchyGroupSummaryReference
    class HierarchyGroupSummaryReference
      def self.default(visited=[])
        return nil if visited.include?('HierarchyGroupSummaryReference')
        visited = visited + ['HierarchyGroupSummaryReference']
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::HierarchyGroupSummaryReference.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for RoutingProfileReference
    class RoutingProfileReference
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfileReference')
        visited = visited + ['RoutingProfileReference']
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingProfileReference.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for UserReference
    class UserReference
      def self.default(visited=[])
        return nil if visited.include?('UserReference')
        visited = visited + ['UserReference']
        {
          id: 'id',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserReference.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetFederationToken
    class GetFederationToken
      def self.default(visited=[])
        {
          credentials: Credentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Credentials'] = Credentials.stub(stub[:credentials]) unless stub[:credentials].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Credentials
    class Credentials
      def self.default(visited=[])
        return nil if visited.include?('Credentials')
        visited = visited + ['Credentials']
        {
          access_token: 'access_token',
          access_token_expiration: Time.now,
          refresh_token: 'refresh_token',
          refresh_token_expiration: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Credentials.new
        data = {}
        data['AccessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['AccessTokenExpiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:access_token_expiration]).to_i unless stub[:access_token_expiration].nil?
        data['RefreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        data['RefreshTokenExpiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:refresh_token_expiration]).to_i unless stub[:refresh_token_expiration].nil?
        data
      end
    end

    # Operation Stubber for GetMetricData
    class GetMetricData
      def self.default(visited=[])
        {
          next_token: 'next_token',
          metric_results: HistoricalMetricResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MetricResults'] = HistoricalMetricResults.stub(stub[:metric_results]) unless stub[:metric_results].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HistoricalMetricResults
    class HistoricalMetricResults
      def self.default(visited=[])
        return nil if visited.include?('HistoricalMetricResults')
        visited = visited + ['HistoricalMetricResults']
        [
          HistoricalMetricResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HistoricalMetricResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HistoricalMetricResult
    class HistoricalMetricResult
      def self.default(visited=[])
        return nil if visited.include?('HistoricalMetricResult')
        visited = visited + ['HistoricalMetricResult']
        {
          dimensions: Dimensions.default(visited),
          collections: HistoricalMetricDataCollections.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoricalMetricResult.new
        data = {}
        data['Dimensions'] = Dimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Collections'] = HistoricalMetricDataCollections.stub(stub[:collections]) unless stub[:collections].nil?
        data
      end
    end

    # List Stubber for HistoricalMetricDataCollections
    class HistoricalMetricDataCollections
      def self.default(visited=[])
        return nil if visited.include?('HistoricalMetricDataCollections')
        visited = visited + ['HistoricalMetricDataCollections']
        [
          HistoricalMetricData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HistoricalMetricData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HistoricalMetricData
    class HistoricalMetricData
      def self.default(visited=[])
        return nil if visited.include?('HistoricalMetricData')
        visited = visited + ['HistoricalMetricData']
        {
          metric: HistoricalMetric.default(visited),
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoricalMetricData.new
        data = {}
        data['Metric'] = HistoricalMetric.stub(stub[:metric]) unless stub[:metric].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for HistoricalMetric
    class HistoricalMetric
      def self.default(visited=[])
        return nil if visited.include?('HistoricalMetric')
        visited = visited + ['HistoricalMetric']
        {
          name: 'name',
          threshold: Threshold.default(visited),
          statistic: 'statistic',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::HistoricalMetric.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Threshold'] = Threshold.stub(stub[:threshold]) unless stub[:threshold].nil?
        data['Statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for Threshold
    class Threshold
      def self.default(visited=[])
        return nil if visited.include?('Threshold')
        visited = visited + ['Threshold']
        {
          comparison: 'comparison',
          threshold_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Threshold.new
        data = {}
        data['Comparison'] = stub[:comparison] unless stub[:comparison].nil?
        data['ThresholdValue'] = Hearth::NumberHelper.serialize(stub[:threshold_value])
        data
      end
    end

    # Operation Stubber for GetTaskTemplate
    class GetTaskTemplate
      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          contact_flow_id: 'contact_flow_id',
          constraints: TaskTemplateConstraints.default(visited),
          defaults: TaskTemplateDefaults.default(visited),
          fields: TaskTemplateFields.default(visited),
          status: 'status',
          last_modified_time: Time.now,
          created_time: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ContactFlowId'] = stub[:contact_flow_id] unless stub[:contact_flow_id].nil?
        data['Constraints'] = TaskTemplateConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data['Defaults'] = TaskTemplateDefaults.stub(stub[:defaults]) unless stub[:defaults].nil?
        data['Fields'] = TaskTemplateFields.stub(stub[:fields]) unless stub[:fields].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TaskTemplateFields
    class TaskTemplateFields
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateFields')
        visited = visited + ['TaskTemplateFields']
        [
          TaskTemplateField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TaskTemplateField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskTemplateField
    class TaskTemplateField
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateField')
        visited = visited + ['TaskTemplateField']
        {
          id: TaskTemplateFieldIdentifier.default(visited),
          description: 'description',
          type: 'type',
          single_select_options: SingleSelectOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateField.new
        data = {}
        data['Id'] = TaskTemplateFieldIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['SingleSelectOptions'] = SingleSelectOptions.stub(stub[:single_select_options]) unless stub[:single_select_options].nil?
        data
      end
    end

    # List Stubber for SingleSelectOptions
    class SingleSelectOptions
      def self.default(visited=[])
        return nil if visited.include?('SingleSelectOptions')
        visited = visited + ['SingleSelectOptions']
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

    # Structure Stubber for TaskTemplateFieldIdentifier
    class TaskTemplateFieldIdentifier
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateFieldIdentifier')
        visited = visited + ['TaskTemplateFieldIdentifier']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateFieldIdentifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for TaskTemplateDefaults
    class TaskTemplateDefaults
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateDefaults')
        visited = visited + ['TaskTemplateDefaults']
        {
          default_field_values: TaskTemplateDefaultFieldValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateDefaults.new
        data = {}
        data['DefaultFieldValues'] = TaskTemplateDefaultFieldValueList.stub(stub[:default_field_values]) unless stub[:default_field_values].nil?
        data
      end
    end

    # List Stubber for TaskTemplateDefaultFieldValueList
    class TaskTemplateDefaultFieldValueList
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateDefaultFieldValueList')
        visited = visited + ['TaskTemplateDefaultFieldValueList']
        [
          TaskTemplateDefaultFieldValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TaskTemplateDefaultFieldValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskTemplateDefaultFieldValue
    class TaskTemplateDefaultFieldValue
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateDefaultFieldValue')
        visited = visited + ['TaskTemplateDefaultFieldValue']
        {
          id: TaskTemplateFieldIdentifier.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateDefaultFieldValue.new
        data = {}
        data['Id'] = TaskTemplateFieldIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Structure Stubber for TaskTemplateConstraints
    class TaskTemplateConstraints
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateConstraints')
        visited = visited + ['TaskTemplateConstraints']
        {
          required_fields: RequiredTaskTemplateFields.default(visited),
          read_only_fields: ReadOnlyTaskTemplateFields.default(visited),
          invisible_fields: InvisibleTaskTemplateFields.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateConstraints.new
        data = {}
        data['RequiredFields'] = RequiredTaskTemplateFields.stub(stub[:required_fields]) unless stub[:required_fields].nil?
        data['ReadOnlyFields'] = ReadOnlyTaskTemplateFields.stub(stub[:read_only_fields]) unless stub[:read_only_fields].nil?
        data['InvisibleFields'] = InvisibleTaskTemplateFields.stub(stub[:invisible_fields]) unless stub[:invisible_fields].nil?
        data
      end
    end

    # List Stubber for InvisibleTaskTemplateFields
    class InvisibleTaskTemplateFields
      def self.default(visited=[])
        return nil if visited.include?('InvisibleTaskTemplateFields')
        visited = visited + ['InvisibleTaskTemplateFields']
        [
          InvisibleFieldInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InvisibleFieldInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InvisibleFieldInfo
    class InvisibleFieldInfo
      def self.default(visited=[])
        return nil if visited.include?('InvisibleFieldInfo')
        visited = visited + ['InvisibleFieldInfo']
        {
          id: TaskTemplateFieldIdentifier.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InvisibleFieldInfo.new
        data = {}
        data['Id'] = TaskTemplateFieldIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data
      end
    end

    # List Stubber for ReadOnlyTaskTemplateFields
    class ReadOnlyTaskTemplateFields
      def self.default(visited=[])
        return nil if visited.include?('ReadOnlyTaskTemplateFields')
        visited = visited + ['ReadOnlyTaskTemplateFields']
        [
          ReadOnlyFieldInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReadOnlyFieldInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReadOnlyFieldInfo
    class ReadOnlyFieldInfo
      def self.default(visited=[])
        return nil if visited.include?('ReadOnlyFieldInfo')
        visited = visited + ['ReadOnlyFieldInfo']
        {
          id: TaskTemplateFieldIdentifier.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReadOnlyFieldInfo.new
        data = {}
        data['Id'] = TaskTemplateFieldIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data
      end
    end

    # List Stubber for RequiredTaskTemplateFields
    class RequiredTaskTemplateFields
      def self.default(visited=[])
        return nil if visited.include?('RequiredTaskTemplateFields')
        visited = visited + ['RequiredTaskTemplateFields']
        [
          RequiredFieldInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RequiredFieldInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RequiredFieldInfo
    class RequiredFieldInfo
      def self.default(visited=[])
        return nil if visited.include?('RequiredFieldInfo')
        visited = visited + ['RequiredFieldInfo']
        {
          id: TaskTemplateFieldIdentifier.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RequiredFieldInfo.new
        data = {}
        data['Id'] = TaskTemplateFieldIdentifier.stub(stub[:id]) unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListAgentStatuses
    class ListAgentStatuses
      def self.default(visited=[])
        {
          next_token: 'next_token',
          agent_status_summary_list: AgentStatusSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AgentStatusSummaryList'] = AgentStatusSummaryList.stub(stub[:agent_status_summary_list]) unless stub[:agent_status_summary_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AgentStatusSummaryList
    class AgentStatusSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AgentStatusSummaryList')
        visited = visited + ['AgentStatusSummaryList']
        [
          AgentStatusSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AgentStatusSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentStatusSummary
    class AgentStatusSummary
      def self.default(visited=[])
        return nil if visited.include?('AgentStatusSummary')
        visited = visited + ['AgentStatusSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentStatusSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListApprovedOrigins
    class ListApprovedOrigins
      def self.default(visited=[])
        {
          origins: OriginsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Origins'] = OriginsList.stub(stub[:origins]) unless stub[:origins].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OriginsList
    class OriginsList
      def self.default(visited=[])
        return nil if visited.include?('OriginsList')
        visited = visited + ['OriginsList']
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

    # Operation Stubber for ListBots
    class ListBots
      def self.default(visited=[])
        {
          lex_bots: LexBotConfigList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LexBots'] = LexBotConfigList.stub(stub[:lex_bots]) unless stub[:lex_bots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LexBotConfigList
    class LexBotConfigList
      def self.default(visited=[])
        return nil if visited.include?('LexBotConfigList')
        visited = visited + ['LexBotConfigList']
        [
          LexBotConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LexBotConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LexBotConfig
    class LexBotConfig
      def self.default(visited=[])
        return nil if visited.include?('LexBotConfig')
        visited = visited + ['LexBotConfig']
        {
          lex_bot: LexBot.default(visited),
          lex_v2_bot: LexV2Bot.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LexBotConfig.new
        data = {}
        data['LexBot'] = LexBot.stub(stub[:lex_bot]) unless stub[:lex_bot].nil?
        data['LexV2Bot'] = LexV2Bot.stub(stub[:lex_v2_bot]) unless stub[:lex_v2_bot].nil?
        data
      end
    end

    # Structure Stubber for LexV2Bot
    class LexV2Bot
      def self.default(visited=[])
        return nil if visited.include?('LexV2Bot')
        visited = visited + ['LexV2Bot']
        {
          alias_arn: 'alias_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LexV2Bot.new
        data = {}
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data
      end
    end

    # Structure Stubber for LexBot
    class LexBot
      def self.default(visited=[])
        return nil if visited.include?('LexBot')
        visited = visited + ['LexBot']
        {
          name: 'name',
          lex_region: 'lex_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::LexBot.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LexRegion'] = stub[:lex_region] unless stub[:lex_region].nil?
        data
      end
    end

    # Operation Stubber for ListContactFlowModules
    class ListContactFlowModules
      def self.default(visited=[])
        {
          contact_flow_modules_summary_list: ContactFlowModulesSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactFlowModulesSummaryList'] = ContactFlowModulesSummaryList.stub(stub[:contact_flow_modules_summary_list]) unless stub[:contact_flow_modules_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ContactFlowModulesSummaryList
    class ContactFlowModulesSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ContactFlowModulesSummaryList')
        visited = visited + ['ContactFlowModulesSummaryList']
        [
          ContactFlowModuleSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContactFlowModuleSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactFlowModuleSummary
    class ContactFlowModuleSummary
      def self.default(visited=[])
        return nil if visited.include?('ContactFlowModuleSummary')
        visited = visited + ['ContactFlowModuleSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactFlowModuleSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListContactFlows
    class ListContactFlows
      def self.default(visited=[])
        {
          contact_flow_summary_list: ContactFlowSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactFlowSummaryList'] = ContactFlowSummaryList.stub(stub[:contact_flow_summary_list]) unless stub[:contact_flow_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ContactFlowSummaryList
    class ContactFlowSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ContactFlowSummaryList')
        visited = visited + ['ContactFlowSummaryList']
        [
          ContactFlowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContactFlowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactFlowSummary
    class ContactFlowSummary
      def self.default(visited=[])
        return nil if visited.include?('ContactFlowSummary')
        visited = visited + ['ContactFlowSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          contact_flow_type: 'contact_flow_type',
          contact_flow_state: 'contact_flow_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactFlowSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ContactFlowType'] = stub[:contact_flow_type] unless stub[:contact_flow_type].nil?
        data['ContactFlowState'] = stub[:contact_flow_state] unless stub[:contact_flow_state].nil?
        data
      end
    end

    # Operation Stubber for ListContactReferences
    class ListContactReferences
      def self.default(visited=[])
        {
          reference_summary_list: ReferenceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReferenceSummaryList'] = ReferenceSummaryList.stub(stub[:reference_summary_list]) unless stub[:reference_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReferenceSummaryList
    class ReferenceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ReferenceSummaryList')
        visited = visited + ['ReferenceSummaryList']
        [
          ReferenceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReferenceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for ReferenceSummary
    class ReferenceSummary
      def self.default(visited=[])
        return nil if visited.include?('ReferenceSummary')
        visited = visited + ['ReferenceSummary']
        {
          url: UrlReference.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ReferenceSummary::Url
          data['Url'] = (UrlReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ReferenceSummary::Attachment
          data['Attachment'] = (AttachmentReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ReferenceSummary::String
          data['String'] = (StringReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ReferenceSummary::Number
          data['Number'] = (NumberReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ReferenceSummary::Date
          data['Date'] = (DateReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ReferenceSummary::Email
          data['Email'] = (EmailReference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ReferenceSummary"
        end

        data
      end
    end

    # Structure Stubber for EmailReference
    class EmailReference
      def self.default(visited=[])
        return nil if visited.include?('EmailReference')
        visited = visited + ['EmailReference']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for DateReference
    class DateReference
      def self.default(visited=[])
        return nil if visited.include?('DateReference')
        visited = visited + ['DateReference']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DateReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for NumberReference
    class NumberReference
      def self.default(visited=[])
        return nil if visited.include?('NumberReference')
        visited = visited + ['NumberReference']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::NumberReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for StringReference
    class StringReference
      def self.default(visited=[])
        return nil if visited.include?('StringReference')
        visited = visited + ['StringReference']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::StringReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AttachmentReference
    class AttachmentReference
      def self.default(visited=[])
        return nil if visited.include?('AttachmentReference')
        visited = visited + ['AttachmentReference']
        {
          name: 'name',
          value: 'value',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachmentReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for UrlReference
    class UrlReference
      def self.default(visited=[])
        return nil if visited.include?('UrlReference')
        visited = visited + ['UrlReference']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::UrlReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListDefaultVocabularies
    class ListDefaultVocabularies
      def self.default(visited=[])
        {
          default_vocabulary_list: DefaultVocabularyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DefaultVocabularyList'] = DefaultVocabularyList.stub(stub[:default_vocabulary_list]) unless stub[:default_vocabulary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DefaultVocabularyList
    class DefaultVocabularyList
      def self.default(visited=[])
        return nil if visited.include?('DefaultVocabularyList')
        visited = visited + ['DefaultVocabularyList']
        [
          DefaultVocabulary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DefaultVocabulary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefaultVocabulary
    class DefaultVocabulary
      def self.default(visited=[])
        return nil if visited.include?('DefaultVocabulary')
        visited = visited + ['DefaultVocabulary']
        {
          instance_id: 'instance_id',
          language_code: 'language_code',
          vocabulary_id: 'vocabulary_id',
          vocabulary_name: 'vocabulary_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultVocabulary.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['VocabularyId'] = stub[:vocabulary_id] unless stub[:vocabulary_id].nil?
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data
      end
    end

    # Operation Stubber for ListHoursOfOperations
    class ListHoursOfOperations
      def self.default(visited=[])
        {
          hours_of_operation_summary_list: HoursOfOperationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HoursOfOperationSummaryList'] = HoursOfOperationSummaryList.stub(stub[:hours_of_operation_summary_list]) unless stub[:hours_of_operation_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HoursOfOperationSummaryList
    class HoursOfOperationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperationSummaryList')
        visited = visited + ['HoursOfOperationSummaryList']
        [
          HoursOfOperationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HoursOfOperationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HoursOfOperationSummary
    class HoursOfOperationSummary
      def self.default(visited=[])
        return nil if visited.include?('HoursOfOperationSummary')
        visited = visited + ['HoursOfOperationSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::HoursOfOperationSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListInstanceAttributes
    class ListInstanceAttributes
      def self.default(visited=[])
        {
          attributes: AttributesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attributes'] = AttributesList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AttributesList
    class AttributesList
      def self.default(visited=[])
        return nil if visited.include?('AttributesList')
        visited = visited + ['AttributesList']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInstanceStorageConfigs
    class ListInstanceStorageConfigs
      def self.default(visited=[])
        {
          storage_configs: InstanceStorageConfigs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StorageConfigs'] = InstanceStorageConfigs.stub(stub[:storage_configs]) unless stub[:storage_configs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstanceStorageConfigs
    class InstanceStorageConfigs
      def self.default(visited=[])
        return nil if visited.include?('InstanceStorageConfigs')
        visited = visited + ['InstanceStorageConfigs']
        [
          InstanceStorageConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceStorageConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInstances
    class ListInstances
      def self.default(visited=[])
        {
          instance_summary_list: InstanceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InstanceSummaryList'] = InstanceSummaryList.stub(stub[:instance_summary_list]) unless stub[:instance_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstanceSummaryList
    class InstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummaryList')
        visited = visited + ['InstanceSummaryList']
        [
          InstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceSummary
    class InstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummary')
        visited = visited + ['InstanceSummary']
        {
          id: 'id',
          arn: 'arn',
          identity_management_type: 'identity_management_type',
          instance_alias: 'instance_alias',
          created_time: Time.now,
          service_role: 'service_role',
          instance_status: 'instance_status',
          inbound_calls_enabled: false,
          outbound_calls_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['IdentityManagementType'] = stub[:identity_management_type] unless stub[:identity_management_type].nil?
        data['InstanceAlias'] = stub[:instance_alias] unless stub[:instance_alias].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['InstanceStatus'] = stub[:instance_status] unless stub[:instance_status].nil?
        data['InboundCallsEnabled'] = stub[:inbound_calls_enabled] unless stub[:inbound_calls_enabled].nil?
        data['OutboundCallsEnabled'] = stub[:outbound_calls_enabled] unless stub[:outbound_calls_enabled].nil?
        data
      end
    end

    # Operation Stubber for ListIntegrationAssociations
    class ListIntegrationAssociations
      def self.default(visited=[])
        {
          integration_association_summary_list: IntegrationAssociationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IntegrationAssociationSummaryList'] = IntegrationAssociationSummaryList.stub(stub[:integration_association_summary_list]) unless stub[:integration_association_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IntegrationAssociationSummaryList
    class IntegrationAssociationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IntegrationAssociationSummaryList')
        visited = visited + ['IntegrationAssociationSummaryList']
        [
          IntegrationAssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IntegrationAssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntegrationAssociationSummary
    class IntegrationAssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('IntegrationAssociationSummary')
        visited = visited + ['IntegrationAssociationSummary']
        {
          integration_association_id: 'integration_association_id',
          integration_association_arn: 'integration_association_arn',
          instance_id: 'instance_id',
          integration_type: 'integration_type',
          integration_arn: 'integration_arn',
          source_application_url: 'source_application_url',
          source_application_name: 'source_application_name',
          source_type: 'source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegrationAssociationSummary.new
        data = {}
        data['IntegrationAssociationId'] = stub[:integration_association_id] unless stub[:integration_association_id].nil?
        data['IntegrationAssociationArn'] = stub[:integration_association_arn] unless stub[:integration_association_arn].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['IntegrationType'] = stub[:integration_type] unless stub[:integration_type].nil?
        data['IntegrationArn'] = stub[:integration_arn] unless stub[:integration_arn].nil?
        data['SourceApplicationUrl'] = stub[:source_application_url] unless stub[:source_application_url].nil?
        data['SourceApplicationName'] = stub[:source_application_name] unless stub[:source_application_name].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data
      end
    end

    # Operation Stubber for ListLambdaFunctions
    class ListLambdaFunctions
      def self.default(visited=[])
        {
          lambda_functions: FunctionArnsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LambdaFunctions'] = FunctionArnsList.stub(stub[:lambda_functions]) unless stub[:lambda_functions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FunctionArnsList
    class FunctionArnsList
      def self.default(visited=[])
        return nil if visited.include?('FunctionArnsList')
        visited = visited + ['FunctionArnsList']
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

    # Operation Stubber for ListLexBots
    class ListLexBots
      def self.default(visited=[])
        {
          lex_bots: LexBotsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LexBots'] = LexBotsList.stub(stub[:lex_bots]) unless stub[:lex_bots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LexBotsList
    class LexBotsList
      def self.default(visited=[])
        return nil if visited.include?('LexBotsList')
        visited = visited + ['LexBotsList']
        [
          LexBot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LexBot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPhoneNumbers
    class ListPhoneNumbers
      def self.default(visited=[])
        {
          phone_number_summary_list: PhoneNumberSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberSummaryList'] = PhoneNumberSummaryList.stub(stub[:phone_number_summary_list]) unless stub[:phone_number_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhoneNumberSummaryList
    class PhoneNumberSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberSummaryList')
        visited = visited + ['PhoneNumberSummaryList']
        [
          PhoneNumberSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PhoneNumberSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumberSummary
    class PhoneNumberSummary
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberSummary')
        visited = visited + ['PhoneNumberSummary']
        {
          id: 'id',
          arn: 'arn',
          phone_number: 'phone_number',
          phone_number_type: 'phone_number_type',
          phone_number_country_code: 'phone_number_country_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumberType'] = stub[:phone_number_type] unless stub[:phone_number_type].nil?
        data['PhoneNumberCountryCode'] = stub[:phone_number_country_code] unless stub[:phone_number_country_code].nil?
        data
      end
    end

    # Operation Stubber for ListPhoneNumbersV2
    class ListPhoneNumbersV2
      def self.default(visited=[])
        {
          next_token: 'next_token',
          list_phone_numbers_summary_list: ListPhoneNumbersSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ListPhoneNumbersSummaryList'] = ListPhoneNumbersSummaryList.stub(stub[:list_phone_numbers_summary_list]) unless stub[:list_phone_numbers_summary_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListPhoneNumbersSummaryList
    class ListPhoneNumbersSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ListPhoneNumbersSummaryList')
        visited = visited + ['ListPhoneNumbersSummaryList']
        [
          ListPhoneNumbersSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListPhoneNumbersSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListPhoneNumbersSummary
    class ListPhoneNumbersSummary
      def self.default(visited=[])
        return nil if visited.include?('ListPhoneNumbersSummary')
        visited = visited + ['ListPhoneNumbersSummary']
        {
          phone_number_id: 'phone_number_id',
          phone_number_arn: 'phone_number_arn',
          phone_number: 'phone_number',
          phone_number_country_code: 'phone_number_country_code',
          phone_number_type: 'phone_number_type',
          target_arn: 'target_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListPhoneNumbersSummary.new
        data = {}
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumberCountryCode'] = stub[:phone_number_country_code] unless stub[:phone_number_country_code].nil?
        data['PhoneNumberType'] = stub[:phone_number_type] unless stub[:phone_number_type].nil?
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data
      end
    end

    # Operation Stubber for ListPrompts
    class ListPrompts
      def self.default(visited=[])
        {
          prompt_summary_list: PromptSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PromptSummaryList'] = PromptSummaryList.stub(stub[:prompt_summary_list]) unless stub[:prompt_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PromptSummaryList
    class PromptSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PromptSummaryList')
        visited = visited + ['PromptSummaryList']
        [
          PromptSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PromptSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PromptSummary
    class PromptSummary
      def self.default(visited=[])
        return nil if visited.include?('PromptSummary')
        visited = visited + ['PromptSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PromptSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListQueueQuickConnects
    class ListQueueQuickConnects
      def self.default(visited=[])
        {
          next_token: 'next_token',
          quick_connect_summary_list: QuickConnectSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QuickConnectSummaryList'] = QuickConnectSummaryList.stub(stub[:quick_connect_summary_list]) unless stub[:quick_connect_summary_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for QuickConnectSummaryList
    class QuickConnectSummaryList
      def self.default(visited=[])
        return nil if visited.include?('QuickConnectSummaryList')
        visited = visited + ['QuickConnectSummaryList']
        [
          QuickConnectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QuickConnectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QuickConnectSummary
    class QuickConnectSummary
      def self.default(visited=[])
        return nil if visited.include?('QuickConnectSummary')
        visited = visited + ['QuickConnectSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          quick_connect_type: 'quick_connect_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::QuickConnectSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['QuickConnectType'] = stub[:quick_connect_type] unless stub[:quick_connect_type].nil?
        data
      end
    end

    # Operation Stubber for ListQueues
    class ListQueues
      def self.default(visited=[])
        {
          queue_summary_list: QueueSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QueueSummaryList'] = QueueSummaryList.stub(stub[:queue_summary_list]) unless stub[:queue_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for QueueSummaryList
    class QueueSummaryList
      def self.default(visited=[])
        return nil if visited.include?('QueueSummaryList')
        visited = visited + ['QueueSummaryList']
        [
          QueueSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QueueSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueueSummary
    class QueueSummary
      def self.default(visited=[])
        return nil if visited.include?('QueueSummary')
        visited = visited + ['QueueSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          queue_type: 'queue_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueueSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['QueueType'] = stub[:queue_type] unless stub[:queue_type].nil?
        data
      end
    end

    # Operation Stubber for ListQuickConnects
    class ListQuickConnects
      def self.default(visited=[])
        {
          quick_connect_summary_list: QuickConnectSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QuickConnectSummaryList'] = QuickConnectSummaryList.stub(stub[:quick_connect_summary_list]) unless stub[:quick_connect_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListRoutingProfileQueues
    class ListRoutingProfileQueues
      def self.default(visited=[])
        {
          next_token: 'next_token',
          routing_profile_queue_config_summary_list: RoutingProfileQueueConfigSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RoutingProfileQueueConfigSummaryList'] = RoutingProfileQueueConfigSummaryList.stub(stub[:routing_profile_queue_config_summary_list]) unless stub[:routing_profile_queue_config_summary_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoutingProfileQueueConfigSummaryList
    class RoutingProfileQueueConfigSummaryList
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfileQueueConfigSummaryList')
        visited = visited + ['RoutingProfileQueueConfigSummaryList']
        [
          RoutingProfileQueueConfigSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RoutingProfileQueueConfigSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoutingProfileQueueConfigSummary
    class RoutingProfileQueueConfigSummary
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfileQueueConfigSummary')
        visited = visited + ['RoutingProfileQueueConfigSummary']
        {
          queue_id: 'queue_id',
          queue_arn: 'queue_arn',
          queue_name: 'queue_name',
          priority: 1,
          delay: 1,
          channel: 'channel',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingProfileQueueConfigSummary.new
        data = {}
        data['QueueId'] = stub[:queue_id] unless stub[:queue_id].nil?
        data['QueueArn'] = stub[:queue_arn] unless stub[:queue_arn].nil?
        data['QueueName'] = stub[:queue_name] unless stub[:queue_name].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Delay'] = stub[:delay] unless stub[:delay].nil?
        data['Channel'] = stub[:channel] unless stub[:channel].nil?
        data
      end
    end

    # Operation Stubber for ListRoutingProfiles
    class ListRoutingProfiles
      def self.default(visited=[])
        {
          routing_profile_summary_list: RoutingProfileSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingProfileSummaryList'] = RoutingProfileSummaryList.stub(stub[:routing_profile_summary_list]) unless stub[:routing_profile_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoutingProfileSummaryList
    class RoutingProfileSummaryList
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfileSummaryList')
        visited = visited + ['RoutingProfileSummaryList']
        [
          RoutingProfileSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RoutingProfileSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoutingProfileSummary
    class RoutingProfileSummary
      def self.default(visited=[])
        return nil if visited.include?('RoutingProfileSummary')
        visited = visited + ['RoutingProfileSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingProfileSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListSecurityKeys
    class ListSecurityKeys
      def self.default(visited=[])
        {
          security_keys: SecurityKeysList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SecurityKeys'] = SecurityKeysList.stub(stub[:security_keys]) unless stub[:security_keys].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityKeysList
    class SecurityKeysList
      def self.default(visited=[])
        return nil if visited.include?('SecurityKeysList')
        visited = visited + ['SecurityKeysList']
        [
          SecurityKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityKey
    class SecurityKey
      def self.default(visited=[])
        return nil if visited.include?('SecurityKey')
        visited = visited + ['SecurityKey']
        {
          association_id: 'association_id',
          key: 'key',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityKey.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for ListSecurityProfilePermissions
    class ListSecurityProfilePermissions
      def self.default(visited=[])
        {
          permissions: PermissionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Permissions'] = PermissionsList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PermissionsList
    class PermissionsList
      def self.default(visited=[])
        return nil if visited.include?('PermissionsList')
        visited = visited + ['PermissionsList']
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

    # Operation Stubber for ListSecurityProfiles
    class ListSecurityProfiles
      def self.default(visited=[])
        {
          security_profile_summary_list: SecurityProfileSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SecurityProfileSummaryList'] = SecurityProfileSummaryList.stub(stub[:security_profile_summary_list]) unless stub[:security_profile_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityProfileSummaryList
    class SecurityProfileSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileSummaryList')
        visited = visited + ['SecurityProfileSummaryList']
        [
          SecurityProfileSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityProfileSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityProfileSummary
    class SecurityProfileSummary
      def self.default(visited=[])
        return nil if visited.include?('SecurityProfileSummary')
        visited = visited + ['SecurityProfileSummary']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityProfileSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
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

    # Operation Stubber for ListTaskTemplates
    class ListTaskTemplates
      def self.default(visited=[])
        {
          task_templates: TaskTemplateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TaskTemplates'] = TaskTemplateList.stub(stub[:task_templates]) unless stub[:task_templates].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TaskTemplateList
    class TaskTemplateList
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateList')
        visited = visited + ['TaskTemplateList']
        [
          TaskTemplateMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TaskTemplateMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskTemplateMetadata
    class TaskTemplateMetadata
      def self.default(visited=[])
        return nil if visited.include?('TaskTemplateMetadata')
        visited = visited + ['TaskTemplateMetadata']
        {
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          status: 'status',
          last_modified_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskTemplateMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListUseCases
    class ListUseCases
      def self.default(visited=[])
        {
          use_case_summary_list: UseCaseSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UseCaseSummaryList'] = UseCaseSummaryList.stub(stub[:use_case_summary_list]) unless stub[:use_case_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UseCaseSummaryList
    class UseCaseSummaryList
      def self.default(visited=[])
        return nil if visited.include?('UseCaseSummaryList')
        visited = visited + ['UseCaseSummaryList']
        [
          UseCase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UseCase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UseCase
    class UseCase
      def self.default(visited=[])
        return nil if visited.include?('UseCase')
        visited = visited + ['UseCase']
        {
          use_case_id: 'use_case_id',
          use_case_arn: 'use_case_arn',
          use_case_type: 'use_case_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UseCase.new
        data = {}
        data['UseCaseId'] = stub[:use_case_id] unless stub[:use_case_id].nil?
        data['UseCaseArn'] = stub[:use_case_arn] unless stub[:use_case_arn].nil?
        data['UseCaseType'] = stub[:use_case_type] unless stub[:use_case_type].nil?
        data
      end
    end

    # Operation Stubber for ListUserHierarchyGroups
    class ListUserHierarchyGroups
      def self.default(visited=[])
        {
          user_hierarchy_group_summary_list: HierarchyGroupSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserHierarchyGroupSummaryList'] = HierarchyGroupSummaryList.stub(stub[:user_hierarchy_group_summary_list]) unless stub[:user_hierarchy_group_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for HierarchyGroupSummaryList
    class HierarchyGroupSummaryList
      def self.default(visited=[])
        return nil if visited.include?('HierarchyGroupSummaryList')
        visited = visited + ['HierarchyGroupSummaryList']
        [
          HierarchyGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HierarchyGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          user_summary_list: UserSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserSummaryList'] = UserSummaryList.stub(stub[:user_summary_list]) unless stub[:user_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserSummaryList
    class UserSummaryList
      def self.default(visited=[])
        return nil if visited.include?('UserSummaryList')
        visited = visited + ['UserSummaryList']
        [
          UserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserSummary
    class UserSummary
      def self.default(visited=[])
        return nil if visited.include?('UserSummary')
        visited = visited + ['UserSummary']
        {
          id: 'id',
          arn: 'arn',
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Operation Stubber for PutUserStatus
    class PutUserStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeContactRecording
    class ResumeContactRecording
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.default(visited=[])
        {
          next_token: 'next_token',
          available_numbers_list: AvailableNumbersList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['AvailableNumbersList'] = AvailableNumbersList.stub(stub[:available_numbers_list]) unless stub[:available_numbers_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AvailableNumbersList
    class AvailableNumbersList
      def self.default(visited=[])
        return nil if visited.include?('AvailableNumbersList')
        visited = visited + ['AvailableNumbersList']
        [
          AvailableNumberSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AvailableNumberSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailableNumberSummary
    class AvailableNumberSummary
      def self.default(visited=[])
        return nil if visited.include?('AvailableNumberSummary')
        visited = visited + ['AvailableNumberSummary']
        {
          phone_number: 'phone_number',
          phone_number_country_code: 'phone_number_country_code',
          phone_number_type: 'phone_number_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailableNumberSummary.new
        data = {}
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['PhoneNumberCountryCode'] = stub[:phone_number_country_code] unless stub[:phone_number_country_code].nil?
        data['PhoneNumberType'] = stub[:phone_number_type] unless stub[:phone_number_type].nil?
        data
      end
    end

    # Operation Stubber for SearchUsers
    class SearchUsers
      def self.default(visited=[])
        {
          users: UserSearchSummaryList.default(visited),
          next_token: 'next_token',
          approximate_total_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Users'] = UserSearchSummaryList.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ApproximateTotalCount'] = stub[:approximate_total_count] unless stub[:approximate_total_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserSearchSummaryList
    class UserSearchSummaryList
      def self.default(visited=[])
        return nil if visited.include?('UserSearchSummaryList')
        visited = visited + ['UserSearchSummaryList']
        [
          UserSearchSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserSearchSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserSearchSummary
    class UserSearchSummary
      def self.default(visited=[])
        return nil if visited.include?('UserSearchSummary')
        visited = visited + ['UserSearchSummary']
        {
          arn: 'arn',
          directory_user_id: 'directory_user_id',
          hierarchy_group_id: 'hierarchy_group_id',
          id: 'id',
          identity_info: UserIdentityInfoLite.default(visited),
          phone_config: UserPhoneConfig.default(visited),
          routing_profile_id: 'routing_profile_id',
          security_profile_ids: SecurityProfileIds.default(visited),
          tags: TagMap.default(visited),
          username: 'username',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSearchSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['DirectoryUserId'] = stub[:directory_user_id] unless stub[:directory_user_id].nil?
        data['HierarchyGroupId'] = stub[:hierarchy_group_id] unless stub[:hierarchy_group_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IdentityInfo'] = UserIdentityInfoLite.stub(stub[:identity_info]) unless stub[:identity_info].nil?
        data['PhoneConfig'] = UserPhoneConfig.stub(stub[:phone_config]) unless stub[:phone_config].nil?
        data['RoutingProfileId'] = stub[:routing_profile_id] unless stub[:routing_profile_id].nil?
        data['SecurityProfileIds'] = SecurityProfileIds.stub(stub[:security_profile_ids]) unless stub[:security_profile_ids].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data
      end
    end

    # Structure Stubber for UserIdentityInfoLite
    class UserIdentityInfoLite
      def self.default(visited=[])
        return nil if visited.include?('UserIdentityInfoLite')
        visited = visited + ['UserIdentityInfoLite']
        {
          first_name: 'first_name',
          last_name: 'last_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentityInfoLite.new
        data = {}
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data
      end
    end

    # Operation Stubber for SearchVocabularies
    class SearchVocabularies
      def self.default(visited=[])
        {
          vocabulary_summary_list: VocabularySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VocabularySummaryList'] = VocabularySummaryList.stub(stub[:vocabulary_summary_list]) unless stub[:vocabulary_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VocabularySummaryList
    class VocabularySummaryList
      def self.default(visited=[])
        return nil if visited.include?('VocabularySummaryList')
        visited = visited + ['VocabularySummaryList']
        [
          VocabularySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VocabularySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VocabularySummary
    class VocabularySummary
      def self.default(visited=[])
        return nil if visited.include?('VocabularySummary')
        visited = visited + ['VocabularySummary']
        {
          name: 'name',
          id: 'id',
          arn: 'arn',
          language_code: 'language_code',
          state: 'state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::VocabularySummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for StartChatContact
    class StartChatContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
          participant_id: 'participant_id',
          participant_token: 'participant_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['ParticipantId'] = stub[:participant_id] unless stub[:participant_id].nil?
        data['ParticipantToken'] = stub[:participant_token] unless stub[:participant_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartContactRecording
    class StartContactRecording
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartContactStreaming
    class StartContactStreaming
      def self.default(visited=[])
        {
          streaming_id: 'streaming_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamingId'] = stub[:streaming_id] unless stub[:streaming_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartOutboundVoiceContact
    class StartOutboundVoiceContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartTaskContact
    class StartTaskContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopContact
    class StopContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopContactRecording
    class StopContactRecording
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopContactStreaming
    class StopContactStreaming
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SuspendContactRecording
    class SuspendContactRecording
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for TransferContact
    class TransferContact
      def self.default(visited=[])
        {
          contact_id: 'contact_id',
          contact_arn: 'contact_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ContactId'] = stub[:contact_id] unless stub[:contact_id].nil?
        data['ContactArn'] = stub[:contact_arn] unless stub[:contact_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateAgentStatus
    class UpdateAgentStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContact
    class UpdateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactAttributes
    class UpdateContactAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactFlowContent
    class UpdateContactFlowContent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactFlowMetadata
    class UpdateContactFlowMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactFlowModuleContent
    class UpdateContactFlowModuleContent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactFlowModuleMetadata
    class UpdateContactFlowModuleMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactFlowName
    class UpdateContactFlowName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContactSchedule
    class UpdateContactSchedule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateHoursOfOperation
    class UpdateHoursOfOperation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstanceAttribute
    class UpdateInstanceAttribute
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstanceStorageConfig
    class UpdateInstanceStorageConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.default(visited=[])
        {
          phone_number_id: 'phone_number_id',
          phone_number_arn: 'phone_number_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateQueueHoursOfOperation
    class UpdateQueueHoursOfOperation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQueueMaxContacts
    class UpdateQueueMaxContacts
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQueueName
    class UpdateQueueName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQueueOutboundCallerConfig
    class UpdateQueueOutboundCallerConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQueueStatus
    class UpdateQueueStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQuickConnectConfig
    class UpdateQuickConnectConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQuickConnectName
    class UpdateQuickConnectName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoutingProfileConcurrency
    class UpdateRoutingProfileConcurrency
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoutingProfileDefaultOutboundQueue
    class UpdateRoutingProfileDefaultOutboundQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoutingProfileName
    class UpdateRoutingProfileName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoutingProfileQueues
    class UpdateRoutingProfileQueues
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTaskTemplate
    class UpdateTaskTemplate
      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          id: 'id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          contact_flow_id: 'contact_flow_id',
          constraints: TaskTemplateConstraints.default(visited),
          defaults: TaskTemplateDefaults.default(visited),
          fields: TaskTemplateFields.default(visited),
          status: 'status',
          last_modified_time: Time.now,
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ContactFlowId'] = stub[:contact_flow_id] unless stub[:contact_flow_id].nil?
        data['Constraints'] = TaskTemplateConstraints.stub(stub[:constraints]) unless stub[:constraints].nil?
        data['Defaults'] = TaskTemplateDefaults.stub(stub[:defaults]) unless stub[:defaults].nil?
        data['Fields'] = TaskTemplateFields.stub(stub[:fields]) unless stub[:fields].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUserHierarchy
    class UpdateUserHierarchy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserHierarchyGroupName
    class UpdateUserHierarchyGroupName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserHierarchyStructure
    class UpdateUserHierarchyStructure
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserIdentityInfo
    class UpdateUserIdentityInfo
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserPhoneConfig
    class UpdateUserPhoneConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserRoutingProfile
    class UpdateUserRoutingProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserSecurityProfiles
    class UpdateUserSecurityProfiles
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
