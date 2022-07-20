# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Polly
  module Parsers

    # Operation Parser for DeleteLexicon
    class DeleteLexicon
      def self.parse(http_resp)
        data = Types::DeleteLexiconOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for LexiconNotFoundException
    class LexiconNotFoundException
      def self.parse(http_resp)
        data = Types::LexiconNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeVoices
    class DescribeVoices
      def self.parse(http_resp)
        data = Types::DescribeVoicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voices = (VoiceList.parse(map['Voices']) unless map['Voices'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VoiceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Voice.parse(value) unless value.nil?
        end
        data
      end
    end

    class Voice
      def self.parse(map)
        data = Types::Voice.new
        data.gender = map['Gender']
        data.id = map['Id']
        data.language_code = map['LanguageCode']
        data.language_name = map['LanguageName']
        data.name = map['Name']
        data.additional_language_codes = (LanguageCodeList.parse(map['AdditionalLanguageCodes']) unless map['AdditionalLanguageCodes'].nil?)
        data.supported_engines = (EngineList.parse(map['SupportedEngines']) unless map['SupportedEngines'].nil?)
        return data
      end
    end

    class EngineList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LanguageCodeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetLexicon
    class GetLexicon
      def self.parse(http_resp)
        data = Types::GetLexiconOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lexicon = (Lexicon.parse(map['Lexicon']) unless map['Lexicon'].nil?)
        data.lexicon_attributes = (LexiconAttributes.parse(map['LexiconAttributes']) unless map['LexiconAttributes'].nil?)
        data
      end
    end

    class LexiconAttributes
      def self.parse(map)
        data = Types::LexiconAttributes.new
        data.alphabet = map['Alphabet']
        data.language_code = map['LanguageCode']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.lexicon_arn = map['LexiconArn']
        data.lexemes_count = map['LexemesCount']
        data.size = map['Size']
        return data
      end
    end

    class Lexicon
      def self.parse(map)
        data = Types::Lexicon.new
        data.content = map['Content']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for GetSpeechSynthesisTask
    class GetSpeechSynthesisTask
      def self.parse(http_resp)
        data = Types::GetSpeechSynthesisTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.synthesis_task = (SynthesisTask.parse(map['SynthesisTask']) unless map['SynthesisTask'].nil?)
        data
      end
    end

    class SynthesisTask
      def self.parse(map)
        data = Types::SynthesisTask.new
        data.engine = map['Engine']
        data.task_id = map['TaskId']
        data.task_status = map['TaskStatus']
        data.task_status_reason = map['TaskStatusReason']
        data.output_uri = map['OutputUri']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.request_characters = map['RequestCharacters']
        data.sns_topic_arn = map['SnsTopicArn']
        data.lexicon_names = (LexiconNameList.parse(map['LexiconNames']) unless map['LexiconNames'].nil?)
        data.output_format = map['OutputFormat']
        data.sample_rate = map['SampleRate']
        data.speech_mark_types = (SpeechMarkTypeList.parse(map['SpeechMarkTypes']) unless map['SpeechMarkTypes'].nil?)
        data.text_type = map['TextType']
        data.voice_id = map['VoiceId']
        data.language_code = map['LanguageCode']
        return data
      end
    end

    class SpeechMarkTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LexiconNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidTaskIdException
    class InvalidTaskIdException
      def self.parse(http_resp)
        data = Types::InvalidTaskIdException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for SynthesisTaskNotFoundException
    class SynthesisTaskNotFoundException
      def self.parse(http_resp)
        data = Types::SynthesisTaskNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListLexicons
    class ListLexicons
      def self.parse(http_resp)
        data = Types::ListLexiconsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lexicons = (LexiconDescriptionList.parse(map['Lexicons']) unless map['Lexicons'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LexiconDescriptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LexiconDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class LexiconDescription
      def self.parse(map)
        data = Types::LexiconDescription.new
        data.name = map['Name']
        data.attributes = (LexiconAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    # Operation Parser for ListSpeechSynthesisTasks
    class ListSpeechSynthesisTasks
      def self.parse(http_resp)
        data = Types::ListSpeechSynthesisTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.synthesis_tasks = (SynthesisTasks.parse(map['SynthesisTasks']) unless map['SynthesisTasks'].nil?)
        data
      end
    end

    class SynthesisTasks
      def self.parse(list)
        data = []
        list.map do |value|
          data << SynthesisTask.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutLexicon
    class PutLexicon
      def self.parse(http_resp)
        data = Types::PutLexiconOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidLexiconException
    class InvalidLexiconException
      def self.parse(http_resp)
        data = Types::InvalidLexiconException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LexiconSizeExceededException
    class LexiconSizeExceededException
      def self.parse(http_resp)
        data = Types::LexiconSizeExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MaxLexemeLengthExceededException
    class MaxLexemeLengthExceededException
      def self.parse(http_resp)
        data = Types::MaxLexemeLengthExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MaxLexiconsNumberExceededException
    class MaxLexiconsNumberExceededException
      def self.parse(http_resp)
        data = Types::MaxLexiconsNumberExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnsupportedPlsAlphabetException
    class UnsupportedPlsAlphabetException
      def self.parse(http_resp)
        data = Types::UnsupportedPlsAlphabetException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnsupportedPlsLanguageException
    class UnsupportedPlsLanguageException
      def self.parse(http_resp)
        data = Types::UnsupportedPlsLanguageException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartSpeechSynthesisTask
    class StartSpeechSynthesisTask
      def self.parse(http_resp)
        data = Types::StartSpeechSynthesisTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.synthesis_task = (SynthesisTask.parse(map['SynthesisTask']) unless map['SynthesisTask'].nil?)
        data
      end
    end

    # Error Parser for EngineNotSupportedException
    class EngineNotSupportedException
      def self.parse(http_resp)
        data = Types::EngineNotSupportedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidS3BucketException
    class InvalidS3BucketException
      def self.parse(http_resp)
        data = Types::InvalidS3BucketException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidS3KeyException
    class InvalidS3KeyException
      def self.parse(http_resp)
        data = Types::InvalidS3KeyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidSampleRateException
    class InvalidSampleRateException
      def self.parse(http_resp)
        data = Types::InvalidSampleRateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidSnsTopicArnException
    class InvalidSnsTopicArnException
      def self.parse(http_resp)
        data = Types::InvalidSnsTopicArnException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidSsmlException
    class InvalidSsmlException
      def self.parse(http_resp)
        data = Types::InvalidSsmlException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LanguageNotSupportedException
    class LanguageNotSupportedException
      def self.parse(http_resp)
        data = Types::LanguageNotSupportedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for MarksNotSupportedForFormatException
    class MarksNotSupportedForFormatException
      def self.parse(http_resp)
        data = Types::MarksNotSupportedForFormatException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for SsmlMarksNotSupportedForTextTypeException
    class SsmlMarksNotSupportedForTextTypeException
      def self.parse(http_resp)
        data = Types::SsmlMarksNotSupportedForTextTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TextLengthExceededException
    class TextLengthExceededException
      def self.parse(http_resp)
        data = Types::TextLengthExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for SynthesizeSpeech
    class SynthesizeSpeech
      def self.parse(http_resp)
        data = Types::SynthesizeSpeechOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.request_characters = http_resp.headers['x-amzn-RequestCharacters'].to_i unless http_resp.headers['x-amzn-RequestCharacters'].nil?
        data.audio_stream = http_resp.body
        data
      end
    end
  end
end
