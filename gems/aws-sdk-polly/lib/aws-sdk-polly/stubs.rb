# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Polly
  module Stubs

    # Operation Stubber for DeleteLexicon
    class DeleteLexicon
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeVoices
    class DescribeVoices
      def self.default(visited=[])
        {
          voices: VoiceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Voices'] = VoiceList.stub(stub[:voices]) unless stub[:voices].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VoiceList
    class VoiceList
      def self.default(visited=[])
        return nil if visited.include?('VoiceList')
        visited = visited + ['VoiceList']
        [
          Voice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Voice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Voice
    class Voice
      def self.default(visited=[])
        return nil if visited.include?('Voice')
        visited = visited + ['Voice']
        {
          gender: 'gender',
          id: 'id',
          language_code: 'language_code',
          language_name: 'language_name',
          name: 'name',
          additional_language_codes: LanguageCodeList.default(visited),
          supported_engines: EngineList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Voice.new
        data = {}
        data['Gender'] = stub[:gender] unless stub[:gender].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LanguageName'] = stub[:language_name] unless stub[:language_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AdditionalLanguageCodes'] = LanguageCodeList.stub(stub[:additional_language_codes]) unless stub[:additional_language_codes].nil?
        data['SupportedEngines'] = EngineList.stub(stub[:supported_engines]) unless stub[:supported_engines].nil?
        data
      end
    end

    # List Stubber for EngineList
    class EngineList
      def self.default(visited=[])
        return nil if visited.include?('EngineList')
        visited = visited + ['EngineList']
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

    # List Stubber for LanguageCodeList
    class LanguageCodeList
      def self.default(visited=[])
        return nil if visited.include?('LanguageCodeList')
        visited = visited + ['LanguageCodeList']
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

    # Operation Stubber for GetLexicon
    class GetLexicon
      def self.default(visited=[])
        {
          lexicon: Lexicon.default(visited),
          lexicon_attributes: LexiconAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Lexicon'] = Lexicon.stub(stub[:lexicon]) unless stub[:lexicon].nil?
        data['LexiconAttributes'] = LexiconAttributes.stub(stub[:lexicon_attributes]) unless stub[:lexicon_attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LexiconAttributes
    class LexiconAttributes
      def self.default(visited=[])
        return nil if visited.include?('LexiconAttributes')
        visited = visited + ['LexiconAttributes']
        {
          alphabet: 'alphabet',
          language_code: 'language_code',
          last_modified: Time.now,
          lexicon_arn: 'lexicon_arn',
          lexemes_count: 1,
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LexiconAttributes.new
        data = {}
        data['Alphabet'] = stub[:alphabet] unless stub[:alphabet].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['LexiconArn'] = stub[:lexicon_arn] unless stub[:lexicon_arn].nil?
        data['LexemesCount'] = stub[:lexemes_count] unless stub[:lexemes_count].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # Structure Stubber for Lexicon
    class Lexicon
      def self.default(visited=[])
        return nil if visited.include?('Lexicon')
        visited = visited + ['Lexicon']
        {
          content: 'content',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Lexicon.new
        data = {}
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetSpeechSynthesisTask
    class GetSpeechSynthesisTask
      def self.default(visited=[])
        {
          synthesis_task: SynthesisTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SynthesisTask'] = SynthesisTask.stub(stub[:synthesis_task]) unless stub[:synthesis_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SynthesisTask
    class SynthesisTask
      def self.default(visited=[])
        return nil if visited.include?('SynthesisTask')
        visited = visited + ['SynthesisTask']
        {
          engine: 'engine',
          task_id: 'task_id',
          task_status: 'task_status',
          task_status_reason: 'task_status_reason',
          output_uri: 'output_uri',
          creation_time: Time.now,
          request_characters: 1,
          sns_topic_arn: 'sns_topic_arn',
          lexicon_names: LexiconNameList.default(visited),
          output_format: 'output_format',
          sample_rate: 'sample_rate',
          speech_mark_types: SpeechMarkTypeList.default(visited),
          text_type: 'text_type',
          voice_id: 'voice_id',
          language_code: 'language_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::SynthesisTask.new
        data = {}
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['TaskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['TaskStatus'] = stub[:task_status] unless stub[:task_status].nil?
        data['TaskStatusReason'] = stub[:task_status_reason] unless stub[:task_status_reason].nil?
        data['OutputUri'] = stub[:output_uri] unless stub[:output_uri].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['RequestCharacters'] = stub[:request_characters] unless stub[:request_characters].nil?
        data['SnsTopicArn'] = stub[:sns_topic_arn] unless stub[:sns_topic_arn].nil?
        data['LexiconNames'] = LexiconNameList.stub(stub[:lexicon_names]) unless stub[:lexicon_names].nil?
        data['OutputFormat'] = stub[:output_format] unless stub[:output_format].nil?
        data['SampleRate'] = stub[:sample_rate] unless stub[:sample_rate].nil?
        data['SpeechMarkTypes'] = SpeechMarkTypeList.stub(stub[:speech_mark_types]) unless stub[:speech_mark_types].nil?
        data['TextType'] = stub[:text_type] unless stub[:text_type].nil?
        data['VoiceId'] = stub[:voice_id] unless stub[:voice_id].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data
      end
    end

    # List Stubber for SpeechMarkTypeList
    class SpeechMarkTypeList
      def self.default(visited=[])
        return nil if visited.include?('SpeechMarkTypeList')
        visited = visited + ['SpeechMarkTypeList']
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

    # List Stubber for LexiconNameList
    class LexiconNameList
      def self.default(visited=[])
        return nil if visited.include?('LexiconNameList')
        visited = visited + ['LexiconNameList']
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

    # Operation Stubber for ListLexicons
    class ListLexicons
      def self.default(visited=[])
        {
          lexicons: LexiconDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Lexicons'] = LexiconDescriptionList.stub(stub[:lexicons]) unless stub[:lexicons].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LexiconDescriptionList
    class LexiconDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('LexiconDescriptionList')
        visited = visited + ['LexiconDescriptionList']
        [
          LexiconDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LexiconDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LexiconDescription
    class LexiconDescription
      def self.default(visited=[])
        return nil if visited.include?('LexiconDescription')
        visited = visited + ['LexiconDescription']
        {
          name: 'name',
          attributes: LexiconAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LexiconDescription.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Attributes'] = LexiconAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Operation Stubber for ListSpeechSynthesisTasks
    class ListSpeechSynthesisTasks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          synthesis_tasks: SynthesisTasks.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SynthesisTasks'] = SynthesisTasks.stub(stub[:synthesis_tasks]) unless stub[:synthesis_tasks].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SynthesisTasks
    class SynthesisTasks
      def self.default(visited=[])
        return nil if visited.include?('SynthesisTasks')
        visited = visited + ['SynthesisTasks']
        [
          SynthesisTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SynthesisTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PutLexicon
    class PutLexicon
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSpeechSynthesisTask
    class StartSpeechSynthesisTask
      def self.default(visited=[])
        {
          synthesis_task: SynthesisTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SynthesisTask'] = SynthesisTask.stub(stub[:synthesis_task]) unless stub[:synthesis_task].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SynthesizeSpeech
    class SynthesizeSpeech
      def self.default(visited=[])
        {
          audio_stream: 'audio_stream',
          content_type: 'content_type',
          request_characters: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amzn-RequestCharacters'] = stub[:request_characters].to_s unless stub[:request_characters].nil?
        IO.copy_stream(stub[:audio_stream], http_resp.body)
      end
    end
  end
end
