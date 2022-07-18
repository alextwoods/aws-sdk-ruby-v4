# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Polly
  module Validators

    class DeleteLexiconInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLexiconInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteLexiconOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLexiconOutput, context: context)
      end
    end

    class DescribeVoicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVoicesInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:include_additional_language_codes], ::TrueClass, ::FalseClass, context: "#{context}[:include_additional_language_codes]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeVoicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVoicesOutput, context: context)
        VoiceList.validate!(input[:voices], context: "#{context}[:voices]") unless input[:voices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class EngineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EngineNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetLexiconInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLexiconInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetLexiconOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLexiconOutput, context: context)
        Lexicon.validate!(input[:lexicon], context: "#{context}[:lexicon]") unless input[:lexicon].nil?
        LexiconAttributes.validate!(input[:lexicon_attributes], context: "#{context}[:lexicon_attributes]") unless input[:lexicon_attributes].nil?
      end
    end

    class GetSpeechSynthesisTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSpeechSynthesisTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class GetSpeechSynthesisTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSpeechSynthesisTaskOutput, context: context)
        SynthesisTask.validate!(input[:synthesis_task], context: "#{context}[:synthesis_task]") unless input[:synthesis_task].nil?
      end
    end

    class InvalidLexiconException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLexiconException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3BucketException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3BucketException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3KeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3KeyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSampleRateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSampleRateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSnsTopicArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSnsTopicArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSsmlException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSsmlException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTaskIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTaskIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LanguageCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LanguageNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LanguageNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Lexicon
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Lexicon, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LexiconAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexiconAttributes, context: context)
        Hearth::Validator.validate!(input[:alphabet], ::String, context: "#{context}[:alphabet]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:lexicon_arn], ::String, context: "#{context}[:lexicon_arn]")
        Hearth::Validator.validate!(input[:lexemes_count], ::Integer, context: "#{context}[:lexemes_count]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class LexiconDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexiconDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LexiconAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class LexiconDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LexiconDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LexiconNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LexiconNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexiconNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LexiconSizeExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LexiconSizeExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListLexiconsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLexiconsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLexiconsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLexiconsOutput, context: context)
        LexiconDescriptionList.validate!(input[:lexicons], context: "#{context}[:lexicons]") unless input[:lexicons].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpeechSynthesisTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeechSynthesisTasksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListSpeechSynthesisTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeechSynthesisTasksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SynthesisTasks.validate!(input[:synthesis_tasks], context: "#{context}[:synthesis_tasks]") unless input[:synthesis_tasks].nil?
      end
    end

    class MarksNotSupportedForFormatException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarksNotSupportedForFormatException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxLexemeLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxLexemeLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxLexiconsNumberExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxLexiconsNumberExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutLexiconInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLexiconInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class PutLexiconOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLexiconOutput, context: context)
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SpeechMarkTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SsmlMarksNotSupportedForTextTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SsmlMarksNotSupportedForTextTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartSpeechSynthesisTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSpeechSynthesisTaskInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        LexiconNameList.validate!(input[:lexicon_names], context: "#{context}[:lexicon_names]") unless input[:lexicon_names].nil?
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
        Hearth::Validator.validate!(input[:sample_rate], ::String, context: "#{context}[:sample_rate]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        SpeechMarkTypeList.validate!(input[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless input[:speech_mark_types].nil?
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:text_type], ::String, context: "#{context}[:text_type]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class StartSpeechSynthesisTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSpeechSynthesisTaskOutput, context: context)
        SynthesisTask.validate!(input[:synthesis_task], context: "#{context}[:synthesis_task]") unless input[:synthesis_task].nil?
      end
    end

    class SynthesisTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SynthesisTask, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:task_status_reason], ::String, context: "#{context}[:task_status_reason]")
        Hearth::Validator.validate!(input[:output_uri], ::String, context: "#{context}[:output_uri]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:request_characters], ::Integer, context: "#{context}[:request_characters]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        LexiconNameList.validate!(input[:lexicon_names], context: "#{context}[:lexicon_names]") unless input[:lexicon_names].nil?
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:sample_rate], ::String, context: "#{context}[:sample_rate]")
        SpeechMarkTypeList.validate!(input[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless input[:speech_mark_types].nil?
        Hearth::Validator.validate!(input[:text_type], ::String, context: "#{context}[:text_type]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class SynthesisTaskNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SynthesisTaskNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SynthesisTasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SynthesisTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SynthesizeSpeechInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SynthesizeSpeechInput, context: context)
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        LexiconNameList.validate!(input[:lexicon_names], context: "#{context}[:lexicon_names]") unless input[:lexicon_names].nil?
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:sample_rate], ::String, context: "#{context}[:sample_rate]")
        SpeechMarkTypeList.validate!(input[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless input[:speech_mark_types].nil?
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:text_type], ::String, context: "#{context}[:text_type]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class SynthesizeSpeechOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SynthesizeSpeechOutput, context: context)
        unless input[:audio_stream].respond_to?(:read) || input[:audio_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:audio_stream].class}"
        end
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:request_characters], ::Integer, context: "#{context}[:request_characters]")
      end
    end

    class TextLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedPlsAlphabetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedPlsAlphabetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedPlsLanguageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedPlsLanguageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Voice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Voice, context: context)
        Hearth::Validator.validate!(input[:gender], ::String, context: "#{context}[:gender]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:language_name], ::String, context: "#{context}[:language_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LanguageCodeList.validate!(input[:additional_language_codes], context: "#{context}[:additional_language_codes]") unless input[:additional_language_codes].nil?
        EngineList.validate!(input[:supported_engines], context: "#{context}[:supported_engines]") unless input[:supported_engines].nil?
      end
    end

    class VoiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Voice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
