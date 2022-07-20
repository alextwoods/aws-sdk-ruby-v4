# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Polly
  module Builders

    # Operation Builder for DeleteLexicon
    class DeleteLexicon
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/lexicons/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVoices
    class DescribeVoices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/voices')
        params = Hearth::Query::ParamList.new
        params['Engine'] = input[:engine].to_s unless input[:engine].nil?
        params['LanguageCode'] = input[:language_code].to_s unless input[:language_code].nil?
        params['IncludeAdditionalLanguageCodes'] = input[:include_additional_language_codes].to_s unless input[:include_additional_language_codes].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLexicon
    class GetLexicon
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/lexicons/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSpeechSynthesisTask
    class GetSpeechSynthesisTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/synthesisTasks/%<TaskId>s',
            TaskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLexicons
    class ListLexicons
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/lexicons')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSpeechSynthesisTasks
    class ListSpeechSynthesisTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/synthesisTasks')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['Status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutLexicon
    class PutLexicon
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/lexicons/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSpeechSynthesisTask
    class StartSpeechSynthesisTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/synthesisTasks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['LexiconNames'] = LexiconNameList.build(input[:lexicon_names]) unless input[:lexicon_names].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['OutputS3BucketName'] = input[:output_s3_bucket_name] unless input[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = input[:output_s3_key_prefix] unless input[:output_s3_key_prefix].nil?
        data['SampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SpeechMarkTypes'] = SpeechMarkTypeList.build(input[:speech_mark_types]) unless input[:speech_mark_types].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['TextType'] = input[:text_type] unless input[:text_type].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SpeechMarkTypeList
    class SpeechMarkTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LexiconNameList
    class LexiconNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SynthesizeSpeech
    class SynthesizeSpeech
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/speech')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['LexiconNames'] = LexiconNameList.build(input[:lexicon_names]) unless input[:lexicon_names].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['SampleRate'] = input[:sample_rate] unless input[:sample_rate].nil?
        data['SpeechMarkTypes'] = SpeechMarkTypeList.build(input[:speech_mark_types]) unless input[:speech_mark_types].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['TextType'] = input[:text_type] unless input[:text_type].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
