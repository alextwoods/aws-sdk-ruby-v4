# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelBuildingService
  module Stubs

    # Operation Stubber for CreateBotVersion
    class CreateBotVersion
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          intents: Stubs::IntentList.default(visited),
          clarification_prompt: Stubs::Prompt.default(visited),
          abort_statement: Stubs::Statement.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          last_updated_date: Time.now,
          created_date: Time.now,
          idle_session_ttl_in_seconds: 1,
          voice_id: 'voice_id',
          checksum: 'checksum',
          version: 'version',
          locale: 'locale',
          child_directed: false,
          enable_model_improvements: false,
          detect_sentiment: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['intents'] = Stubs::IntentList.stub(stub[:intents]) unless stub[:intents].nil?
        data['clarificationPrompt'] = Stubs::Prompt.stub(stub[:clarification_prompt]) unless stub[:clarification_prompt].nil?
        data['abortStatement'] = Stubs::Statement.stub(stub[:abort_statement]) unless stub[:abort_statement].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['voiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['locale'] = stub[:locale] unless stub[:locale].nil?
        data['childDirected'] = stub[:child_directed] unless stub[:child_directed].nil?
        data['enableModelImprovements'] = stub[:enable_model_improvements] unless stub[:enable_model_improvements].nil?
        data['detectSentiment'] = stub[:detect_sentiment] unless stub[:detect_sentiment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Statement
    class Statement
      def self.default(visited=[])
        return nil if visited.include?('Statement')
        visited = visited + ['Statement']
        {
          messages: Stubs::MessageList.default(visited),
          response_card: 'response_card',
        }
      end

      def self.stub(stub)
        stub ||= Types::Statement.new
        data = {}
        data['messages'] = Stubs::MessageList.stub(stub[:messages]) unless stub[:messages].nil?
        data['responseCard'] = stub[:response_card] unless stub[:response_card].nil?
        data
      end
    end

    # List Stubber for MessageList
    class MessageList
      def self.default(visited=[])
        return nil if visited.include?('MessageList')
        visited = visited + ['MessageList']
        [
          Stubs::Message.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Message.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Message
    class Message
      def self.default(visited=[])
        return nil if visited.include?('Message')
        visited = visited + ['Message']
        {
          content_type: 'content_type',
          content: 'content',
          group_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Message.new
        data = {}
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['content'] = stub[:content] unless stub[:content].nil?
        data['groupNumber'] = stub[:group_number] unless stub[:group_number].nil?
        data
      end
    end

    # Structure Stubber for Prompt
    class Prompt
      def self.default(visited=[])
        return nil if visited.include?('Prompt')
        visited = visited + ['Prompt']
        {
          messages: Stubs::MessageList.default(visited),
          max_attempts: 1,
          response_card: 'response_card',
        }
      end

      def self.stub(stub)
        stub ||= Types::Prompt.new
        data = {}
        data['messages'] = Stubs::MessageList.stub(stub[:messages]) unless stub[:messages].nil?
        data['maxAttempts'] = stub[:max_attempts] unless stub[:max_attempts].nil?
        data['responseCard'] = stub[:response_card] unless stub[:response_card].nil?
        data
      end
    end

    # List Stubber for IntentList
    class IntentList
      def self.default(visited=[])
        return nil if visited.include?('IntentList')
        visited = visited + ['IntentList']
        [
          Stubs::Intent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Intent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Intent
    class Intent
      def self.default(visited=[])
        return nil if visited.include?('Intent')
        visited = visited + ['Intent']
        {
          intent_name: 'intent_name',
          intent_version: 'intent_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Intent.new
        data = {}
        data['intentName'] = stub[:intent_name] unless stub[:intent_name].nil?
        data['intentVersion'] = stub[:intent_version] unless stub[:intent_version].nil?
        data
      end
    end

    # Operation Stubber for CreateIntentVersion
    class CreateIntentVersion
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          slots: Stubs::SlotList.default(visited),
          sample_utterances: Stubs::IntentUtteranceList.default(visited),
          confirmation_prompt: Stubs::Prompt.default(visited),
          rejection_statement: Stubs::Statement.default(visited),
          follow_up_prompt: Stubs::FollowUpPrompt.default(visited),
          conclusion_statement: Stubs::Statement.default(visited),
          dialog_code_hook: Stubs::CodeHook.default(visited),
          fulfillment_activity: Stubs::FulfillmentActivity.default(visited),
          parent_intent_signature: 'parent_intent_signature',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          kendra_configuration: Stubs::KendraConfiguration.default(visited),
          input_contexts: Stubs::InputContextList.default(visited),
          output_contexts: Stubs::OutputContextList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slots'] = Stubs::SlotList.stub(stub[:slots]) unless stub[:slots].nil?
        data['sampleUtterances'] = Stubs::IntentUtteranceList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['confirmationPrompt'] = Stubs::Prompt.stub(stub[:confirmation_prompt]) unless stub[:confirmation_prompt].nil?
        data['rejectionStatement'] = Stubs::Statement.stub(stub[:rejection_statement]) unless stub[:rejection_statement].nil?
        data['followUpPrompt'] = Stubs::FollowUpPrompt.stub(stub[:follow_up_prompt]) unless stub[:follow_up_prompt].nil?
        data['conclusionStatement'] = Stubs::Statement.stub(stub[:conclusion_statement]) unless stub[:conclusion_statement].nil?
        data['dialogCodeHook'] = Stubs::CodeHook.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentActivity'] = Stubs::FulfillmentActivity.stub(stub[:fulfillment_activity]) unless stub[:fulfillment_activity].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['inputContexts'] = Stubs::InputContextList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OutputContextList
    class OutputContextList
      def self.default(visited=[])
        return nil if visited.include?('OutputContextList')
        visited = visited + ['OutputContextList']
        [
          Stubs::OutputContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OutputContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputContext
    class OutputContext
      def self.default(visited=[])
        return nil if visited.include?('OutputContext')
        visited = visited + ['OutputContext']
        {
          name: 'name',
          time_to_live_in_seconds: 1,
          turns_to_live: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['timeToLiveInSeconds'] = stub[:time_to_live_in_seconds] unless stub[:time_to_live_in_seconds].nil?
        data['turnsToLive'] = stub[:turns_to_live] unless stub[:turns_to_live].nil?
        data
      end
    end

    # List Stubber for InputContextList
    class InputContextList
      def self.default(visited=[])
        return nil if visited.include?('InputContextList')
        visited = visited + ['InputContextList']
        [
          Stubs::InputContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InputContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputContext
    class InputContext
      def self.default(visited=[])
        return nil if visited.include?('InputContext')
        visited = visited + ['InputContext']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputContext.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for KendraConfiguration
    class KendraConfiguration
      def self.default(visited=[])
        return nil if visited.include?('KendraConfiguration')
        visited = visited + ['KendraConfiguration']
        {
          kendra_index: 'kendra_index',
          query_filter_string: 'query_filter_string',
          role: 'role',
        }
      end

      def self.stub(stub)
        stub ||= Types::KendraConfiguration.new
        data = {}
        data['kendraIndex'] = stub[:kendra_index] unless stub[:kendra_index].nil?
        data['queryFilterString'] = stub[:query_filter_string] unless stub[:query_filter_string].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data
      end
    end

    # Structure Stubber for FulfillmentActivity
    class FulfillmentActivity
      def self.default(visited=[])
        return nil if visited.include?('FulfillmentActivity')
        visited = visited + ['FulfillmentActivity']
        {
          type: 'type',
          code_hook: Stubs::CodeHook.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FulfillmentActivity.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['codeHook'] = Stubs::CodeHook.stub(stub[:code_hook]) unless stub[:code_hook].nil?
        data
      end
    end

    # Structure Stubber for CodeHook
    class CodeHook
      def self.default(visited=[])
        return nil if visited.include?('CodeHook')
        visited = visited + ['CodeHook']
        {
          uri: 'uri',
          message_version: 'message_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeHook.new
        data = {}
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['messageVersion'] = stub[:message_version] unless stub[:message_version].nil?
        data
      end
    end

    # Structure Stubber for FollowUpPrompt
    class FollowUpPrompt
      def self.default(visited=[])
        return nil if visited.include?('FollowUpPrompt')
        visited = visited + ['FollowUpPrompt']
        {
          prompt: Stubs::Prompt.default(visited),
          rejection_statement: Stubs::Statement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FollowUpPrompt.new
        data = {}
        data['prompt'] = Stubs::Prompt.stub(stub[:prompt]) unless stub[:prompt].nil?
        data['rejectionStatement'] = Stubs::Statement.stub(stub[:rejection_statement]) unless stub[:rejection_statement].nil?
        data
      end
    end

    # List Stubber for IntentUtteranceList
    class IntentUtteranceList
      def self.default(visited=[])
        return nil if visited.include?('IntentUtteranceList')
        visited = visited + ['IntentUtteranceList']
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

    # List Stubber for SlotList
    class SlotList
      def self.default(visited=[])
        return nil if visited.include?('SlotList')
        visited = visited + ['SlotList']
        [
          Stubs::Slot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Slot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Slot
    class Slot
      def self.default(visited=[])
        return nil if visited.include?('Slot')
        visited = visited + ['Slot']
        {
          name: 'name',
          description: 'description',
          slot_constraint: 'slot_constraint',
          slot_type: 'slot_type',
          slot_type_version: 'slot_type_version',
          value_elicitation_prompt: Stubs::Prompt.default(visited),
          priority: 1,
          sample_utterances: Stubs::SlotUtteranceList.default(visited),
          response_card: 'response_card',
          obfuscation_setting: 'obfuscation_setting',
          default_value_spec: Stubs::SlotDefaultValueSpec.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Slot.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slotConstraint'] = stub[:slot_constraint] unless stub[:slot_constraint].nil?
        data['slotType'] = stub[:slot_type] unless stub[:slot_type].nil?
        data['slotTypeVersion'] = stub[:slot_type_version] unless stub[:slot_type_version].nil?
        data['valueElicitationPrompt'] = Stubs::Prompt.stub(stub[:value_elicitation_prompt]) unless stub[:value_elicitation_prompt].nil?
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['sampleUtterances'] = Stubs::SlotUtteranceList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['responseCard'] = stub[:response_card] unless stub[:response_card].nil?
        data['obfuscationSetting'] = stub[:obfuscation_setting] unless stub[:obfuscation_setting].nil?
        data['defaultValueSpec'] = Stubs::SlotDefaultValueSpec.stub(stub[:default_value_spec]) unless stub[:default_value_spec].nil?
        data
      end
    end

    # Structure Stubber for SlotDefaultValueSpec
    class SlotDefaultValueSpec
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValueSpec')
        visited = visited + ['SlotDefaultValueSpec']
        {
          default_value_list: Stubs::SlotDefaultValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotDefaultValueSpec.new
        data = {}
        data['defaultValueList'] = Stubs::SlotDefaultValueList.stub(stub[:default_value_list]) unless stub[:default_value_list].nil?
        data
      end
    end

    # List Stubber for SlotDefaultValueList
    class SlotDefaultValueList
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValueList')
        visited = visited + ['SlotDefaultValueList']
        [
          Stubs::SlotDefaultValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotDefaultValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotDefaultValue
    class SlotDefaultValue
      def self.default(visited=[])
        return nil if visited.include?('SlotDefaultValue')
        visited = visited + ['SlotDefaultValue']
        {
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotDefaultValue.new
        data = {}
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for SlotUtteranceList
    class SlotUtteranceList
      def self.default(visited=[])
        return nil if visited.include?('SlotUtteranceList')
        visited = visited + ['SlotUtteranceList']
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

    # Operation Stubber for CreateSlotTypeVersion
    class CreateSlotTypeVersion
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          enumeration_values: Stubs::EnumerationValues.default(visited),
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          value_selection_strategy: 'value_selection_strategy',
          parent_slot_type_signature: 'parent_slot_type_signature',
          slot_type_configurations: Stubs::SlotTypeConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enumerationValues'] = Stubs::EnumerationValues.stub(stub[:enumeration_values]) unless stub[:enumeration_values].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['valueSelectionStrategy'] = stub[:value_selection_strategy] unless stub[:value_selection_strategy].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['slotTypeConfigurations'] = Stubs::SlotTypeConfigurations.stub(stub[:slot_type_configurations]) unless stub[:slot_type_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SlotTypeConfigurations
    class SlotTypeConfigurations
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeConfigurations')
        visited = visited + ['SlotTypeConfigurations']
        [
          Stubs::SlotTypeConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotTypeConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotTypeConfiguration
    class SlotTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeConfiguration')
        visited = visited + ['SlotTypeConfiguration']
        {
          regex_configuration: Stubs::SlotTypeRegexConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeConfiguration.new
        data = {}
        data['regexConfiguration'] = Stubs::SlotTypeRegexConfiguration.stub(stub[:regex_configuration]) unless stub[:regex_configuration].nil?
        data
      end
    end

    # Structure Stubber for SlotTypeRegexConfiguration
    class SlotTypeRegexConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeRegexConfiguration')
        visited = visited + ['SlotTypeRegexConfiguration']
        {
          pattern: 'pattern',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeRegexConfiguration.new
        data = {}
        data['pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data
      end
    end

    # List Stubber for EnumerationValues
    class EnumerationValues
      def self.default(visited=[])
        return nil if visited.include?('EnumerationValues')
        visited = visited + ['EnumerationValues']
        [
          Stubs::EnumerationValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnumerationValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnumerationValue
    class EnumerationValue
      def self.default(visited=[])
        return nil if visited.include?('EnumerationValue')
        visited = visited + ['EnumerationValue']
        {
          value: 'value',
          synonyms: Stubs::SynonymList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnumerationValue.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['synonyms'] = Stubs::SynonymList.stub(stub[:synonyms]) unless stub[:synonyms].nil?
        data
      end
    end

    # List Stubber for SynonymList
    class SynonymList
      def self.default(visited=[])
        return nil if visited.include?('SynonymList')
        visited = visited + ['SynonymList']
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

    # Operation Stubber for DeleteBot
    class DeleteBot
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBotAlias
    class DeleteBotAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBotChannelAssociation
    class DeleteBotChannelAssociation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteBotVersion
    class DeleteBotVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteIntent
    class DeleteIntent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteIntentVersion
    class DeleteIntentVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSlotType
    class DeleteSlotType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSlotTypeVersion
    class DeleteSlotTypeVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteUtterances
    class DeleteUtterances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetBot
    class GetBot
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          intents: Stubs::IntentList.default(visited),
          enable_model_improvements: false,
          nlu_intent_confidence_threshold: 1.0,
          clarification_prompt: Stubs::Prompt.default(visited),
          abort_statement: Stubs::Statement.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          last_updated_date: Time.now,
          created_date: Time.now,
          idle_session_ttl_in_seconds: 1,
          voice_id: 'voice_id',
          checksum: 'checksum',
          version: 'version',
          locale: 'locale',
          child_directed: false,
          detect_sentiment: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['intents'] = Stubs::IntentList.stub(stub[:intents]) unless stub[:intents].nil?
        data['enableModelImprovements'] = stub[:enable_model_improvements] unless stub[:enable_model_improvements].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['clarificationPrompt'] = Stubs::Prompt.stub(stub[:clarification_prompt]) unless stub[:clarification_prompt].nil?
        data['abortStatement'] = Stubs::Statement.stub(stub[:abort_statement]) unless stub[:abort_statement].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['voiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['locale'] = stub[:locale] unless stub[:locale].nil?
        data['childDirected'] = stub[:child_directed] unless stub[:child_directed].nil?
        data['detectSentiment'] = stub[:detect_sentiment] unless stub[:detect_sentiment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBotAlias
    class GetBotAlias
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          bot_version: 'bot_version',
          bot_name: 'bot_name',
          last_updated_date: Time.now,
          created_date: Time.now,
          checksum: 'checksum',
          conversation_logs: Stubs::ConversationLogsResponse.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['conversationLogs'] = Stubs::ConversationLogsResponse.stub(stub[:conversation_logs]) unless stub[:conversation_logs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConversationLogsResponse
    class ConversationLogsResponse
      def self.default(visited=[])
        return nil if visited.include?('ConversationLogsResponse')
        visited = visited + ['ConversationLogsResponse']
        {
          log_settings: Stubs::LogSettingsResponseList.default(visited),
          iam_role_arn: 'iam_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConversationLogsResponse.new
        data = {}
        data['logSettings'] = Stubs::LogSettingsResponseList.stub(stub[:log_settings]) unless stub[:log_settings].nil?
        data['iamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data
      end
    end

    # List Stubber for LogSettingsResponseList
    class LogSettingsResponseList
      def self.default(visited=[])
        return nil if visited.include?('LogSettingsResponseList')
        visited = visited + ['LogSettingsResponseList']
        [
          Stubs::LogSettingsResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LogSettingsResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogSettingsResponse
    class LogSettingsResponse
      def self.default(visited=[])
        return nil if visited.include?('LogSettingsResponse')
        visited = visited + ['LogSettingsResponse']
        {
          log_type: 'log_type',
          destination: 'destination',
          kms_key_arn: 'kms_key_arn',
          resource_arn: 'resource_arn',
          resource_prefix: 'resource_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogSettingsResponse.new
        data = {}
        data['logType'] = stub[:log_type] unless stub[:log_type].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['resourcePrefix'] = stub[:resource_prefix] unless stub[:resource_prefix].nil?
        data
      end
    end

    # Operation Stubber for GetBotAliases
    class GetBotAliases
      def self.default(visited=[])
        {
          bot_aliases: Stubs::BotAliasMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BotAliases'] = Stubs::BotAliasMetadataList.stub(stub[:bot_aliases]) unless stub[:bot_aliases].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotAliasMetadataList
    class BotAliasMetadataList
      def self.default(visited=[])
        return nil if visited.include?('BotAliasMetadataList')
        visited = visited + ['BotAliasMetadataList']
        [
          Stubs::BotAliasMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotAliasMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotAliasMetadata
    class BotAliasMetadata
      def self.default(visited=[])
        return nil if visited.include?('BotAliasMetadata')
        visited = visited + ['BotAliasMetadata']
        {
          name: 'name',
          description: 'description',
          bot_version: 'bot_version',
          bot_name: 'bot_name',
          last_updated_date: Time.now,
          created_date: Time.now,
          checksum: 'checksum',
          conversation_logs: Stubs::ConversationLogsResponse.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BotAliasMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['conversationLogs'] = Stubs::ConversationLogsResponse.stub(stub[:conversation_logs]) unless stub[:conversation_logs].nil?
        data
      end
    end

    # Operation Stubber for GetBotChannelAssociation
    class GetBotChannelAssociation
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          bot_alias: 'bot_alias',
          bot_name: 'bot_name',
          created_date: Time.now,
          type: 'type',
          bot_configuration: Stubs::ChannelConfigurationMap.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botAlias'] = stub[:bot_alias] unless stub[:bot_alias].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['botConfiguration'] = Stubs::ChannelConfigurationMap.stub(stub[:bot_configuration]) unless stub[:bot_configuration].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ChannelConfigurationMap
    class ChannelConfigurationMap
      def self.default(visited=[])
        return nil if visited.include?('ChannelConfigurationMap')
        visited = visited + ['ChannelConfigurationMap']
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

    # Operation Stubber for GetBotChannelAssociations
    class GetBotChannelAssociations
      def self.default(visited=[])
        {
          bot_channel_associations: Stubs::BotChannelAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botChannelAssociations'] = Stubs::BotChannelAssociationList.stub(stub[:bot_channel_associations]) unless stub[:bot_channel_associations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotChannelAssociationList
    class BotChannelAssociationList
      def self.default(visited=[])
        return nil if visited.include?('BotChannelAssociationList')
        visited = visited + ['BotChannelAssociationList']
        [
          Stubs::BotChannelAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotChannelAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotChannelAssociation
    class BotChannelAssociation
      def self.default(visited=[])
        return nil if visited.include?('BotChannelAssociation')
        visited = visited + ['BotChannelAssociation']
        {
          name: 'name',
          description: 'description',
          bot_alias: 'bot_alias',
          bot_name: 'bot_name',
          created_date: Time.now,
          type: 'type',
          bot_configuration: Stubs::ChannelConfigurationMap.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::BotChannelAssociation.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botAlias'] = stub[:bot_alias] unless stub[:bot_alias].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['botConfiguration'] = Stubs::ChannelConfigurationMap.stub(stub[:bot_configuration]) unless stub[:bot_configuration].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for GetBotVersions
    class GetBotVersions
      def self.default(visited=[])
        {
          bots: Stubs::BotMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['bots'] = Stubs::BotMetadataList.stub(stub[:bots]) unless stub[:bots].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotMetadataList
    class BotMetadataList
      def self.default(visited=[])
        return nil if visited.include?('BotMetadataList')
        visited = visited + ['BotMetadataList']
        [
          Stubs::BotMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BotMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BotMetadata
    class BotMetadata
      def self.default(visited=[])
        return nil if visited.include?('BotMetadata')
        visited = visited + ['BotMetadata']
        {
          name: 'name',
          description: 'description',
          status: 'status',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::BotMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetBots
    class GetBots
      def self.default(visited=[])
        {
          bots: Stubs::BotMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['bots'] = Stubs::BotMetadataList.stub(stub[:bots]) unless stub[:bots].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBuiltinIntent
    class GetBuiltinIntent
      def self.default(visited=[])
        {
          signature: 'signature',
          supported_locales: Stubs::LocaleList.default(visited),
          slots: Stubs::BuiltinIntentSlotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['signature'] = stub[:signature] unless stub[:signature].nil?
        data['supportedLocales'] = Stubs::LocaleList.stub(stub[:supported_locales]) unless stub[:supported_locales].nil?
        data['slots'] = Stubs::BuiltinIntentSlotList.stub(stub[:slots]) unless stub[:slots].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BuiltinIntentSlotList
    class BuiltinIntentSlotList
      def self.default(visited=[])
        return nil if visited.include?('BuiltinIntentSlotList')
        visited = visited + ['BuiltinIntentSlotList']
        [
          Stubs::BuiltinIntentSlot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BuiltinIntentSlot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuiltinIntentSlot
    class BuiltinIntentSlot
      def self.default(visited=[])
        return nil if visited.include?('BuiltinIntentSlot')
        visited = visited + ['BuiltinIntentSlot']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuiltinIntentSlot.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for LocaleList
    class LocaleList
      def self.default(visited=[])
        return nil if visited.include?('LocaleList')
        visited = visited + ['LocaleList']
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

    # Operation Stubber for GetBuiltinIntents
    class GetBuiltinIntents
      def self.default(visited=[])
        {
          intents: Stubs::BuiltinIntentMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intents'] = Stubs::BuiltinIntentMetadataList.stub(stub[:intents]) unless stub[:intents].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BuiltinIntentMetadataList
    class BuiltinIntentMetadataList
      def self.default(visited=[])
        return nil if visited.include?('BuiltinIntentMetadataList')
        visited = visited + ['BuiltinIntentMetadataList']
        [
          Stubs::BuiltinIntentMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BuiltinIntentMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuiltinIntentMetadata
    class BuiltinIntentMetadata
      def self.default(visited=[])
        return nil if visited.include?('BuiltinIntentMetadata')
        visited = visited + ['BuiltinIntentMetadata']
        {
          signature: 'signature',
          supported_locales: Stubs::LocaleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuiltinIntentMetadata.new
        data = {}
        data['signature'] = stub[:signature] unless stub[:signature].nil?
        data['supportedLocales'] = Stubs::LocaleList.stub(stub[:supported_locales]) unless stub[:supported_locales].nil?
        data
      end
    end

    # Operation Stubber for GetBuiltinSlotTypes
    class GetBuiltinSlotTypes
      def self.default(visited=[])
        {
          slot_types: Stubs::BuiltinSlotTypeMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypes'] = Stubs::BuiltinSlotTypeMetadataList.stub(stub[:slot_types]) unless stub[:slot_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BuiltinSlotTypeMetadataList
    class BuiltinSlotTypeMetadataList
      def self.default(visited=[])
        return nil if visited.include?('BuiltinSlotTypeMetadataList')
        visited = visited + ['BuiltinSlotTypeMetadataList']
        [
          Stubs::BuiltinSlotTypeMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BuiltinSlotTypeMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuiltinSlotTypeMetadata
    class BuiltinSlotTypeMetadata
      def self.default(visited=[])
        return nil if visited.include?('BuiltinSlotTypeMetadata')
        visited = visited + ['BuiltinSlotTypeMetadata']
        {
          signature: 'signature',
          supported_locales: Stubs::LocaleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuiltinSlotTypeMetadata.new
        data = {}
        data['signature'] = stub[:signature] unless stub[:signature].nil?
        data['supportedLocales'] = Stubs::LocaleList.stub(stub[:supported_locales]) unless stub[:supported_locales].nil?
        data
      end
    end

    # Operation Stubber for GetExport
    class GetExport
      def self.default(visited=[])
        {
          name: 'name',
          version: 'version',
          resource_type: 'resource_type',
          export_type: 'export_type',
          export_status: 'export_status',
          failure_reason: 'failure_reason',
          url: 'url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['exportType'] = stub[:export_type] unless stub[:export_type].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetImport
    class GetImport
      def self.default(visited=[])
        {
          name: 'name',
          resource_type: 'resource_type',
          merge_strategy: 'merge_strategy',
          import_id: 'import_id',
          import_status: 'import_status',
          failure_reason: Stubs::StringList.default(visited),
          created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['mergeStrategy'] = stub[:merge_strategy] unless stub[:merge_strategy].nil?
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        data['failureReason'] = Stubs::StringList.stub(stub[:failure_reason]) unless stub[:failure_reason].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for GetIntent
    class GetIntent
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          slots: Stubs::SlotList.default(visited),
          sample_utterances: Stubs::IntentUtteranceList.default(visited),
          confirmation_prompt: Stubs::Prompt.default(visited),
          rejection_statement: Stubs::Statement.default(visited),
          follow_up_prompt: Stubs::FollowUpPrompt.default(visited),
          conclusion_statement: Stubs::Statement.default(visited),
          dialog_code_hook: Stubs::CodeHook.default(visited),
          fulfillment_activity: Stubs::FulfillmentActivity.default(visited),
          parent_intent_signature: 'parent_intent_signature',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          kendra_configuration: Stubs::KendraConfiguration.default(visited),
          input_contexts: Stubs::InputContextList.default(visited),
          output_contexts: Stubs::OutputContextList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slots'] = Stubs::SlotList.stub(stub[:slots]) unless stub[:slots].nil?
        data['sampleUtterances'] = Stubs::IntentUtteranceList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['confirmationPrompt'] = Stubs::Prompt.stub(stub[:confirmation_prompt]) unless stub[:confirmation_prompt].nil?
        data['rejectionStatement'] = Stubs::Statement.stub(stub[:rejection_statement]) unless stub[:rejection_statement].nil?
        data['followUpPrompt'] = Stubs::FollowUpPrompt.stub(stub[:follow_up_prompt]) unless stub[:follow_up_prompt].nil?
        data['conclusionStatement'] = Stubs::Statement.stub(stub[:conclusion_statement]) unless stub[:conclusion_statement].nil?
        data['dialogCodeHook'] = Stubs::CodeHook.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentActivity'] = Stubs::FulfillmentActivity.stub(stub[:fulfillment_activity]) unless stub[:fulfillment_activity].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['inputContexts'] = Stubs::InputContextList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetIntentVersions
    class GetIntentVersions
      def self.default(visited=[])
        {
          intents: Stubs::IntentMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intents'] = Stubs::IntentMetadataList.stub(stub[:intents]) unless stub[:intents].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IntentMetadataList
    class IntentMetadataList
      def self.default(visited=[])
        return nil if visited.include?('IntentMetadataList')
        visited = visited + ['IntentMetadataList']
        [
          Stubs::IntentMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IntentMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntentMetadata
    class IntentMetadata
      def self.default(visited=[])
        return nil if visited.include?('IntentMetadata')
        visited = visited + ['IntentMetadata']
        {
          name: 'name',
          description: 'description',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntentMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetIntents
    class GetIntents
      def self.default(visited=[])
        {
          intents: Stubs::IntentMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['intents'] = Stubs::IntentMetadataList.stub(stub[:intents]) unless stub[:intents].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMigration
    class GetMigration
      def self.default(visited=[])
        {
          migration_id: 'migration_id',
          v1_bot_name: 'v1_bot_name',
          v1_bot_version: 'v1_bot_version',
          v1_bot_locale: 'v1_bot_locale',
          v2_bot_id: 'v2_bot_id',
          v2_bot_role: 'v2_bot_role',
          migration_status: 'migration_status',
          migration_strategy: 'migration_strategy',
          migration_timestamp: Time.now,
          alerts: Stubs::MigrationAlerts.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['migrationId'] = stub[:migration_id] unless stub[:migration_id].nil?
        data['v1BotName'] = stub[:v1_bot_name] unless stub[:v1_bot_name].nil?
        data['v1BotVersion'] = stub[:v1_bot_version] unless stub[:v1_bot_version].nil?
        data['v1BotLocale'] = stub[:v1_bot_locale] unless stub[:v1_bot_locale].nil?
        data['v2BotId'] = stub[:v2_bot_id] unless stub[:v2_bot_id].nil?
        data['v2BotRole'] = stub[:v2_bot_role] unless stub[:v2_bot_role].nil?
        data['migrationStatus'] = stub[:migration_status] unless stub[:migration_status].nil?
        data['migrationStrategy'] = stub[:migration_strategy] unless stub[:migration_strategy].nil?
        data['migrationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:migration_timestamp]).to_i unless stub[:migration_timestamp].nil?
        data['alerts'] = Stubs::MigrationAlerts.stub(stub[:alerts]) unless stub[:alerts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MigrationAlerts
    class MigrationAlerts
      def self.default(visited=[])
        return nil if visited.include?('MigrationAlerts')
        visited = visited + ['MigrationAlerts']
        [
          Stubs::MigrationAlert.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MigrationAlert.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MigrationAlert
    class MigrationAlert
      def self.default(visited=[])
        return nil if visited.include?('MigrationAlert')
        visited = visited + ['MigrationAlert']
        {
          type: 'type',
          message: 'message',
          details: Stubs::MigrationAlertDetails.default(visited),
          reference_ur_ls: Stubs::MigrationAlertReferenceURLs.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MigrationAlert.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['details'] = Stubs::MigrationAlertDetails.stub(stub[:details]) unless stub[:details].nil?
        data['referenceURLs'] = Stubs::MigrationAlertReferenceURLs.stub(stub[:reference_ur_ls]) unless stub[:reference_ur_ls].nil?
        data
      end
    end

    # List Stubber for MigrationAlertReferenceURLs
    class MigrationAlertReferenceURLs
      def self.default(visited=[])
        return nil if visited.include?('MigrationAlertReferenceURLs')
        visited = visited + ['MigrationAlertReferenceURLs']
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

    # List Stubber for MigrationAlertDetails
    class MigrationAlertDetails
      def self.default(visited=[])
        return nil if visited.include?('MigrationAlertDetails')
        visited = visited + ['MigrationAlertDetails']
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

    # Operation Stubber for GetMigrations
    class GetMigrations
      def self.default(visited=[])
        {
          migration_summaries: Stubs::MigrationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['migrationSummaries'] = Stubs::MigrationSummaryList.stub(stub[:migration_summaries]) unless stub[:migration_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MigrationSummaryList
    class MigrationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MigrationSummaryList')
        visited = visited + ['MigrationSummaryList']
        [
          Stubs::MigrationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MigrationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MigrationSummary
    class MigrationSummary
      def self.default(visited=[])
        return nil if visited.include?('MigrationSummary')
        visited = visited + ['MigrationSummary']
        {
          migration_id: 'migration_id',
          v1_bot_name: 'v1_bot_name',
          v1_bot_version: 'v1_bot_version',
          v1_bot_locale: 'v1_bot_locale',
          v2_bot_id: 'v2_bot_id',
          v2_bot_role: 'v2_bot_role',
          migration_status: 'migration_status',
          migration_strategy: 'migration_strategy',
          migration_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MigrationSummary.new
        data = {}
        data['migrationId'] = stub[:migration_id] unless stub[:migration_id].nil?
        data['v1BotName'] = stub[:v1_bot_name] unless stub[:v1_bot_name].nil?
        data['v1BotVersion'] = stub[:v1_bot_version] unless stub[:v1_bot_version].nil?
        data['v1BotLocale'] = stub[:v1_bot_locale] unless stub[:v1_bot_locale].nil?
        data['v2BotId'] = stub[:v2_bot_id] unless stub[:v2_bot_id].nil?
        data['v2BotRole'] = stub[:v2_bot_role] unless stub[:v2_bot_role].nil?
        data['migrationStatus'] = stub[:migration_status] unless stub[:migration_status].nil?
        data['migrationStrategy'] = stub[:migration_strategy] unless stub[:migration_strategy].nil?
        data['migrationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:migration_timestamp]).to_i unless stub[:migration_timestamp].nil?
        data
      end
    end

    # Operation Stubber for GetSlotType
    class GetSlotType
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          enumeration_values: Stubs::EnumerationValues.default(visited),
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          value_selection_strategy: 'value_selection_strategy',
          parent_slot_type_signature: 'parent_slot_type_signature',
          slot_type_configurations: Stubs::SlotTypeConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enumerationValues'] = Stubs::EnumerationValues.stub(stub[:enumeration_values]) unless stub[:enumeration_values].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['valueSelectionStrategy'] = stub[:value_selection_strategy] unless stub[:value_selection_strategy].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['slotTypeConfigurations'] = Stubs::SlotTypeConfigurations.stub(stub[:slot_type_configurations]) unless stub[:slot_type_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSlotTypeVersions
    class GetSlotTypeVersions
      def self.default(visited=[])
        {
          slot_types: Stubs::SlotTypeMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypes'] = Stubs::SlotTypeMetadataList.stub(stub[:slot_types]) unless stub[:slot_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SlotTypeMetadataList
    class SlotTypeMetadataList
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeMetadataList')
        visited = visited + ['SlotTypeMetadataList']
        [
          Stubs::SlotTypeMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SlotTypeMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SlotTypeMetadata
    class SlotTypeMetadata
      def self.default(visited=[])
        return nil if visited.include?('SlotTypeMetadata')
        visited = visited + ['SlotTypeMetadata']
        {
          name: 'name',
          description: 'description',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlotTypeMetadata.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetSlotTypes
    class GetSlotTypes
      def self.default(visited=[])
        {
          slot_types: Stubs::SlotTypeMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['slotTypes'] = Stubs::SlotTypeMetadataList.stub(stub[:slot_types]) unless stub[:slot_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUtterancesView
    class GetUtterancesView
      def self.default(visited=[])
        {
          bot_name: 'bot_name',
          utterances: Stubs::ListsOfUtterances.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['utterances'] = Stubs::ListsOfUtterances.stub(stub[:utterances]) unless stub[:utterances].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListsOfUtterances
    class ListsOfUtterances
      def self.default(visited=[])
        return nil if visited.include?('ListsOfUtterances')
        visited = visited + ['ListsOfUtterances']
        [
          Stubs::UtteranceList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UtteranceList.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UtteranceList
    class UtteranceList
      def self.default(visited=[])
        return nil if visited.include?('UtteranceList')
        visited = visited + ['UtteranceList']
        {
          bot_version: 'bot_version',
          utterances: Stubs::ListOfUtterance.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UtteranceList.new
        data = {}
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['utterances'] = Stubs::ListOfUtterance.stub(stub[:utterances]) unless stub[:utterances].nil?
        data
      end
    end

    # List Stubber for ListOfUtterance
    class ListOfUtterance
      def self.default(visited=[])
        return nil if visited.include?('ListOfUtterance')
        visited = visited + ['ListOfUtterance']
        [
          Stubs::UtteranceData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UtteranceData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UtteranceData
    class UtteranceData
      def self.default(visited=[])
        return nil if visited.include?('UtteranceData')
        visited = visited + ['UtteranceData']
        {
          utterance_string: 'utterance_string',
          count: 1,
          distinct_users: 1,
          first_uttered_date: Time.now,
          last_uttered_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::UtteranceData.new
        data = {}
        data['utteranceString'] = stub[:utterance_string] unless stub[:utterance_string].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data['distinctUsers'] = stub[:distinct_users] unless stub[:distinct_users].nil?
        data['firstUtteredDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_uttered_date]).to_i unless stub[:first_uttered_date].nil?
        data['lastUtteredDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_uttered_date]).to_i unless stub[:last_uttered_date].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutBot
    class PutBot
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          intents: Stubs::IntentList.default(visited),
          enable_model_improvements: false,
          nlu_intent_confidence_threshold: 1.0,
          clarification_prompt: Stubs::Prompt.default(visited),
          abort_statement: Stubs::Statement.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          last_updated_date: Time.now,
          created_date: Time.now,
          idle_session_ttl_in_seconds: 1,
          voice_id: 'voice_id',
          checksum: 'checksum',
          version: 'version',
          locale: 'locale',
          child_directed: false,
          create_version: false,
          detect_sentiment: false,
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['intents'] = Stubs::IntentList.stub(stub[:intents]) unless stub[:intents].nil?
        data['enableModelImprovements'] = stub[:enable_model_improvements] unless stub[:enable_model_improvements].nil?
        data['nluIntentConfidenceThreshold'] = Hearth::NumberHelper.serialize(stub[:nlu_intent_confidence_threshold])
        data['clarificationPrompt'] = Stubs::Prompt.stub(stub[:clarification_prompt]) unless stub[:clarification_prompt].nil?
        data['abortStatement'] = Stubs::Statement.stub(stub[:abort_statement]) unless stub[:abort_statement].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['idleSessionTTLInSeconds'] = stub[:idle_session_ttl_in_seconds] unless stub[:idle_session_ttl_in_seconds].nil?
        data['voiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['locale'] = stub[:locale] unless stub[:locale].nil?
        data['childDirected'] = stub[:child_directed] unless stub[:child_directed].nil?
        data['createVersion'] = stub[:create_version] unless stub[:create_version].nil?
        data['detectSentiment'] = stub[:detect_sentiment] unless stub[:detect_sentiment].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutBotAlias
    class PutBotAlias
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          bot_version: 'bot_version',
          bot_name: 'bot_name',
          last_updated_date: Time.now,
          created_date: Time.now,
          checksum: 'checksum',
          conversation_logs: Stubs::ConversationLogsResponse.default(visited),
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['botVersion'] = stub[:bot_version] unless stub[:bot_version].nil?
        data['botName'] = stub[:bot_name] unless stub[:bot_name].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['conversationLogs'] = Stubs::ConversationLogsResponse.stub(stub[:conversation_logs]) unless stub[:conversation_logs].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutIntent
    class PutIntent
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          slots: Stubs::SlotList.default(visited),
          sample_utterances: Stubs::IntentUtteranceList.default(visited),
          confirmation_prompt: Stubs::Prompt.default(visited),
          rejection_statement: Stubs::Statement.default(visited),
          follow_up_prompt: Stubs::FollowUpPrompt.default(visited),
          conclusion_statement: Stubs::Statement.default(visited),
          dialog_code_hook: Stubs::CodeHook.default(visited),
          fulfillment_activity: Stubs::FulfillmentActivity.default(visited),
          parent_intent_signature: 'parent_intent_signature',
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          create_version: false,
          kendra_configuration: Stubs::KendraConfiguration.default(visited),
          input_contexts: Stubs::InputContextList.default(visited),
          output_contexts: Stubs::OutputContextList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['slots'] = Stubs::SlotList.stub(stub[:slots]) unless stub[:slots].nil?
        data['sampleUtterances'] = Stubs::IntentUtteranceList.stub(stub[:sample_utterances]) unless stub[:sample_utterances].nil?
        data['confirmationPrompt'] = Stubs::Prompt.stub(stub[:confirmation_prompt]) unless stub[:confirmation_prompt].nil?
        data['rejectionStatement'] = Stubs::Statement.stub(stub[:rejection_statement]) unless stub[:rejection_statement].nil?
        data['followUpPrompt'] = Stubs::FollowUpPrompt.stub(stub[:follow_up_prompt]) unless stub[:follow_up_prompt].nil?
        data['conclusionStatement'] = Stubs::Statement.stub(stub[:conclusion_statement]) unless stub[:conclusion_statement].nil?
        data['dialogCodeHook'] = Stubs::CodeHook.stub(stub[:dialog_code_hook]) unless stub[:dialog_code_hook].nil?
        data['fulfillmentActivity'] = Stubs::FulfillmentActivity.stub(stub[:fulfillment_activity]) unless stub[:fulfillment_activity].nil?
        data['parentIntentSignature'] = stub[:parent_intent_signature] unless stub[:parent_intent_signature].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['createVersion'] = stub[:create_version] unless stub[:create_version].nil?
        data['kendraConfiguration'] = Stubs::KendraConfiguration.stub(stub[:kendra_configuration]) unless stub[:kendra_configuration].nil?
        data['inputContexts'] = Stubs::InputContextList.stub(stub[:input_contexts]) unless stub[:input_contexts].nil?
        data['outputContexts'] = Stubs::OutputContextList.stub(stub[:output_contexts]) unless stub[:output_contexts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutSlotType
    class PutSlotType
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          enumeration_values: Stubs::EnumerationValues.default(visited),
          last_updated_date: Time.now,
          created_date: Time.now,
          version: 'version',
          checksum: 'checksum',
          value_selection_strategy: 'value_selection_strategy',
          create_version: false,
          parent_slot_type_signature: 'parent_slot_type_signature',
          slot_type_configurations: Stubs::SlotTypeConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enumerationValues'] = Stubs::EnumerationValues.stub(stub[:enumeration_values]) unless stub[:enumeration_values].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['checksum'] = stub[:checksum] unless stub[:checksum].nil?
        data['valueSelectionStrategy'] = stub[:value_selection_strategy] unless stub[:value_selection_strategy].nil?
        data['createVersion'] = stub[:create_version] unless stub[:create_version].nil?
        data['parentSlotTypeSignature'] = stub[:parent_slot_type_signature] unless stub[:parent_slot_type_signature].nil?
        data['slotTypeConfigurations'] = Stubs::SlotTypeConfigurations.stub(stub[:slot_type_configurations]) unless stub[:slot_type_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartImport
    class StartImport
      def self.default(visited=[])
        {
          name: 'name',
          resource_type: 'resource_type',
          merge_strategy: 'merge_strategy',
          import_id: 'import_id',
          import_status: 'import_status',
          tags: Stubs::TagList.default(visited),
          created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['mergeStrategy'] = stub[:merge_strategy] unless stub[:merge_strategy].nil?
        data['importId'] = stub[:import_id] unless stub[:import_id].nil?
        data['importStatus'] = stub[:import_status] unless stub[:import_status].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartMigration
    class StartMigration
      def self.default(visited=[])
        {
          v1_bot_name: 'v1_bot_name',
          v1_bot_version: 'v1_bot_version',
          v1_bot_locale: 'v1_bot_locale',
          v2_bot_id: 'v2_bot_id',
          v2_bot_role: 'v2_bot_role',
          migration_id: 'migration_id',
          migration_strategy: 'migration_strategy',
          migration_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['v1BotName'] = stub[:v1_bot_name] unless stub[:v1_bot_name].nil?
        data['v1BotVersion'] = stub[:v1_bot_version] unless stub[:v1_bot_version].nil?
        data['v1BotLocale'] = stub[:v1_bot_locale] unless stub[:v1_bot_locale].nil?
        data['v2BotId'] = stub[:v2_bot_id] unless stub[:v2_bot_id].nil?
        data['v2BotRole'] = stub[:v2_bot_role] unless stub[:v2_bot_role].nil?
        data['migrationId'] = stub[:migration_id] unless stub[:migration_id].nil?
        data['migrationStrategy'] = stub[:migration_strategy] unless stub[:migration_strategy].nil?
        data['migrationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:migration_timestamp]).to_i unless stub[:migration_timestamp].nil?
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end
  end
end
