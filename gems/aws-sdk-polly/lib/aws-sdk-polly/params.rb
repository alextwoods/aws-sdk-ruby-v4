# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Polly
  module Params

    module DeleteLexiconInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLexiconInput, context: context)
        type = Types::DeleteLexiconInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteLexiconOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLexiconOutput, context: context)
        type = Types::DeleteLexiconOutput.new
        type
      end
    end

    module DescribeVoicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVoicesInput, context: context)
        type = Types::DescribeVoicesInput.new
        type.engine = params[:engine]
        type.language_code = params[:language_code]
        type.include_additional_language_codes = params[:include_additional_language_codes]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeVoicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVoicesOutput, context: context)
        type = Types::DescribeVoicesOutput.new
        type.voices = VoiceList.build(params[:voices], context: "#{context}[:voices]") unless params[:voices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module EngineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EngineNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineNotSupportedException, context: context)
        type = Types::EngineNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module GetLexiconInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLexiconInput, context: context)
        type = Types::GetLexiconInput.new
        type.name = params[:name]
        type
      end
    end

    module GetLexiconOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLexiconOutput, context: context)
        type = Types::GetLexiconOutput.new
        type.lexicon = Lexicon.build(params[:lexicon], context: "#{context}[:lexicon]") unless params[:lexicon].nil?
        type.lexicon_attributes = LexiconAttributes.build(params[:lexicon_attributes], context: "#{context}[:lexicon_attributes]") unless params[:lexicon_attributes].nil?
        type
      end
    end

    module GetSpeechSynthesisTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSpeechSynthesisTaskInput, context: context)
        type = Types::GetSpeechSynthesisTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module GetSpeechSynthesisTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSpeechSynthesisTaskOutput, context: context)
        type = Types::GetSpeechSynthesisTaskOutput.new
        type.synthesis_task = SynthesisTask.build(params[:synthesis_task], context: "#{context}[:synthesis_task]") unless params[:synthesis_task].nil?
        type
      end
    end

    module InvalidLexiconException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLexiconException, context: context)
        type = Types::InvalidLexiconException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3BucketException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3BucketException, context: context)
        type = Types::InvalidS3BucketException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3KeyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3KeyException, context: context)
        type = Types::InvalidS3KeyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSampleRateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSampleRateException, context: context)
        type = Types::InvalidSampleRateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSnsTopicArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSnsTopicArnException, context: context)
        type = Types::InvalidSnsTopicArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSsmlException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSsmlException, context: context)
        type = Types::InvalidSsmlException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTaskIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTaskIdException, context: context)
        type = Types::InvalidTaskIdException.new
        type.message = params[:message]
        type
      end
    end

    module LanguageCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LanguageNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LanguageNotSupportedException, context: context)
        type = Types::LanguageNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module Lexicon
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Lexicon, context: context)
        type = Types::Lexicon.new
        type.content = params[:content]
        type.name = params[:name]
        type
      end
    end

    module LexiconAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexiconAttributes, context: context)
        type = Types::LexiconAttributes.new
        type.alphabet = params[:alphabet]
        type.language_code = params[:language_code]
        type.last_modified = params[:last_modified]
        type.lexicon_arn = params[:lexicon_arn]
        type.lexemes_count = params[:lexemes_count]
        type.size = params[:size]
        type
      end
    end

    module LexiconDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexiconDescription, context: context)
        type = Types::LexiconDescription.new
        type.name = params[:name]
        type.attributes = LexiconAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module LexiconDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LexiconDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LexiconNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LexiconNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexiconNotFoundException, context: context)
        type = Types::LexiconNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module LexiconSizeExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LexiconSizeExceededException, context: context)
        type = Types::LexiconSizeExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListLexiconsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLexiconsInput, context: context)
        type = Types::ListLexiconsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLexiconsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLexiconsOutput, context: context)
        type = Types::ListLexiconsOutput.new
        type.lexicons = LexiconDescriptionList.build(params[:lexicons], context: "#{context}[:lexicons]") unless params[:lexicons].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSpeechSynthesisTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeechSynthesisTasksInput, context: context)
        type = Types::ListSpeechSynthesisTasksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.status = params[:status]
        type
      end
    end

    module ListSpeechSynthesisTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeechSynthesisTasksOutput, context: context)
        type = Types::ListSpeechSynthesisTasksOutput.new
        type.next_token = params[:next_token]
        type.synthesis_tasks = SynthesisTasks.build(params[:synthesis_tasks], context: "#{context}[:synthesis_tasks]") unless params[:synthesis_tasks].nil?
        type
      end
    end

    module MarksNotSupportedForFormatException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarksNotSupportedForFormatException, context: context)
        type = Types::MarksNotSupportedForFormatException.new
        type.message = params[:message]
        type
      end
    end

    module MaxLexemeLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxLexemeLengthExceededException, context: context)
        type = Types::MaxLexemeLengthExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxLexiconsNumberExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxLexiconsNumberExceededException, context: context)
        type = Types::MaxLexiconsNumberExceededException.new
        type.message = params[:message]
        type
      end
    end

    module PutLexiconInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLexiconInput, context: context)
        type = Types::PutLexiconInput.new
        type.name = params[:name]
        type.content = params[:content]
        type
      end
    end

    module PutLexiconOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLexiconOutput, context: context)
        type = Types::PutLexiconOutput.new
        type
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.message = params[:message]
        type
      end
    end

    module SpeechMarkTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SsmlMarksNotSupportedForTextTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SsmlMarksNotSupportedForTextTypeException, context: context)
        type = Types::SsmlMarksNotSupportedForTextTypeException.new
        type.message = params[:message]
        type
      end
    end

    module StartSpeechSynthesisTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSpeechSynthesisTaskInput, context: context)
        type = Types::StartSpeechSynthesisTaskInput.new
        type.engine = params[:engine]
        type.language_code = params[:language_code]
        type.lexicon_names = LexiconNameList.build(params[:lexicon_names], context: "#{context}[:lexicon_names]") unless params[:lexicon_names].nil?
        type.output_format = params[:output_format]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type.sample_rate = params[:sample_rate]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.speech_mark_types = SpeechMarkTypeList.build(params[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless params[:speech_mark_types].nil?
        type.text = params[:text]
        type.text_type = params[:text_type]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module StartSpeechSynthesisTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSpeechSynthesisTaskOutput, context: context)
        type = Types::StartSpeechSynthesisTaskOutput.new
        type.synthesis_task = SynthesisTask.build(params[:synthesis_task], context: "#{context}[:synthesis_task]") unless params[:synthesis_task].nil?
        type
      end
    end

    module SynthesisTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SynthesisTask, context: context)
        type = Types::SynthesisTask.new
        type.engine = params[:engine]
        type.task_id = params[:task_id]
        type.task_status = params[:task_status]
        type.task_status_reason = params[:task_status_reason]
        type.output_uri = params[:output_uri]
        type.creation_time = params[:creation_time]
        type.request_characters = params[:request_characters]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.lexicon_names = LexiconNameList.build(params[:lexicon_names], context: "#{context}[:lexicon_names]") unless params[:lexicon_names].nil?
        type.output_format = params[:output_format]
        type.sample_rate = params[:sample_rate]
        type.speech_mark_types = SpeechMarkTypeList.build(params[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless params[:speech_mark_types].nil?
        type.text_type = params[:text_type]
        type.voice_id = params[:voice_id]
        type.language_code = params[:language_code]
        type
      end
    end

    module SynthesisTaskNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SynthesisTaskNotFoundException, context: context)
        type = Types::SynthesisTaskNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SynthesisTasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SynthesisTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SynthesizeSpeechInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SynthesizeSpeechInput, context: context)
        type = Types::SynthesizeSpeechInput.new
        type.engine = params[:engine]
        type.language_code = params[:language_code]
        type.lexicon_names = LexiconNameList.build(params[:lexicon_names], context: "#{context}[:lexicon_names]") unless params[:lexicon_names].nil?
        type.output_format = params[:output_format]
        type.sample_rate = params[:sample_rate]
        type.speech_mark_types = SpeechMarkTypeList.build(params[:speech_mark_types], context: "#{context}[:speech_mark_types]") unless params[:speech_mark_types].nil?
        type.text = params[:text]
        type.text_type = params[:text_type]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module SynthesizeSpeechOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SynthesizeSpeechOutput, context: context)
        type = Types::SynthesizeSpeechOutput.new
        io = params[:audio_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.audio_stream = io
        type.content_type = params[:content_type]
        type.request_characters = params[:request_characters]
        type
      end
    end

    module TextLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextLengthExceededException, context: context)
        type = Types::TextLengthExceededException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedPlsAlphabetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedPlsAlphabetException, context: context)
        type = Types::UnsupportedPlsAlphabetException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedPlsLanguageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedPlsLanguageException, context: context)
        type = Types::UnsupportedPlsLanguageException.new
        type.message = params[:message]
        type
      end
    end

    module Voice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Voice, context: context)
        type = Types::Voice.new
        type.gender = params[:gender]
        type.id = params[:id]
        type.language_code = params[:language_code]
        type.language_name = params[:language_name]
        type.name = params[:name]
        type.additional_language_codes = LanguageCodeList.build(params[:additional_language_codes], context: "#{context}[:additional_language_codes]") unless params[:additional_language_codes].nil?
        type.supported_engines = EngineList.build(params[:supported_engines], context: "#{context}[:supported_engines]") unless params[:supported_engines].nil?
        type
      end
    end

    module VoiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Voice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
