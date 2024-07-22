# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::TranscribeStreaming
  # @api private
  module Builders

    class AudioEvent
      def self.build(input)
        data = {}
        data['AudioChunk'] = ::Base64::strict_encode64(input.audio_chunk).strip unless input.audio_chunk.nil?
        data
      end
    end

    class ChannelDefinition
      def self.build(input)
        data = {}
        data['ChannelId'] = input.channel_id unless input.channel_id.nil?
        data['ParticipantRole'] = input.participant_role unless input.participant_role.nil?
        data
      end
    end

    class ChannelDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << ChannelDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    class ConfigurationEvent
      def self.build(input)
        data = {}
        data['ChannelDefinitions'] = ChannelDefinitions.build(input.channel_definitions) unless input.channel_definitions.nil?
        data['PostCallAnalyticsSettings'] = PostCallAnalyticsSettings.build(input.post_call_analytics_settings) unless input.post_call_analytics_settings.nil?
        data
      end
    end

    class PostCallAnalyticsSettings
      def self.build(input)
        data = {}
        data['OutputLocation'] = input.output_location unless input.output_location.nil?
        data['DataAccessRoleArn'] = input.data_access_role_arn unless input.data_access_role_arn.nil?
        data['ContentRedactionOutput'] = input.content_redaction_output unless input.content_redaction_output.nil?
        data['OutputEncryptionKMSKeyId'] = input.output_encryption_kms_key_id unless input.output_encryption_kms_key_id.nil?
        data
      end
    end

    class StartCallAnalyticsStreamTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/call-analytics-stream-transcription')
        http_req.headers['Content-Type'] = 'application/vnd.amazon.eventstream'
        http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'
        http_req.headers['x-amzn-transcribe-language-code'] = input.language_code unless input.language_code.nil? || input.language_code.empty?
        http_req.headers['x-amzn-transcribe-sample-rate'] = input.media_sample_rate_hertz.to_s unless input.media_sample_rate_hertz.nil?
        http_req.headers['x-amzn-transcribe-media-encoding'] = input.media_encoding unless input.media_encoding.nil? || input.media_encoding.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-name'] = input.vocabulary_name unless input.vocabulary_name.nil? || input.vocabulary_name.empty?
        http_req.headers['x-amzn-transcribe-session-id'] = input.session_id unless input.session_id.nil? || input.session_id.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-filter-name'] = input.vocabulary_filter_name unless input.vocabulary_filter_name.nil? || input.vocabulary_filter_name.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-filter-method'] = input.vocabulary_filter_method unless input.vocabulary_filter_method.nil? || input.vocabulary_filter_method.empty?
        http_req.headers['x-amzn-transcribe-language-model-name'] = input.language_model_name unless input.language_model_name.nil? || input.language_model_name.empty?
        http_req.headers['x-amzn-transcribe-enable-partial-results-stabilization'] = input.enable_partial_results_stabilization.to_s unless input.enable_partial_results_stabilization.nil?
        http_req.headers['x-amzn-transcribe-partial-results-stability'] = input.partial_results_stability unless input.partial_results_stability.nil? || input.partial_results_stability.empty?
        http_req.headers['x-amzn-transcribe-content-identification-type'] = input.content_identification_type unless input.content_identification_type.nil? || input.content_identification_type.empty?
        http_req.headers['x-amzn-transcribe-content-redaction-type'] = input.content_redaction_type unless input.content_redaction_type.nil? || input.content_redaction_type.empty?
        http_req.headers['x-amzn-transcribe-pii-entity-types'] = input.pii_entity_types unless input.pii_entity_types.nil? || input.pii_entity_types.empty?
      end
    end

    class StartMedicalStreamTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/medical-stream-transcription')
        http_req.headers['Content-Type'] = 'application/vnd.amazon.eventstream'
        http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'
        http_req.headers['x-amzn-transcribe-language-code'] = input.language_code unless input.language_code.nil? || input.language_code.empty?
        http_req.headers['x-amzn-transcribe-sample-rate'] = input.media_sample_rate_hertz.to_s unless input.media_sample_rate_hertz.nil?
        http_req.headers['x-amzn-transcribe-media-encoding'] = input.media_encoding unless input.media_encoding.nil? || input.media_encoding.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-name'] = input.vocabulary_name unless input.vocabulary_name.nil? || input.vocabulary_name.empty?
        http_req.headers['x-amzn-transcribe-specialty'] = input.specialty unless input.specialty.nil? || input.specialty.empty?
        http_req.headers['x-amzn-transcribe-type'] = input.type unless input.type.nil? || input.type.empty?
        http_req.headers['x-amzn-transcribe-show-speaker-label'] = input.show_speaker_label.to_s unless input.show_speaker_label.nil?
        http_req.headers['x-amzn-transcribe-session-id'] = input.session_id unless input.session_id.nil? || input.session_id.empty?
        http_req.headers['x-amzn-transcribe-enable-channel-identification'] = input.enable_channel_identification.to_s unless input.enable_channel_identification.nil?
        http_req.headers['x-amzn-transcribe-number-of-channels'] = input.number_of_channels.to_s unless input.number_of_channels.nil?
        http_req.headers['x-amzn-transcribe-content-identification-type'] = input.content_identification_type unless input.content_identification_type.nil? || input.content_identification_type.empty?
      end
    end

    class StartStreamTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/stream-transcription')
        http_req.headers['Content-Type'] = 'application/vnd.amazon.eventstream'
        http_req.headers['Accept'] = 'application/vnd.amazon.eventstream'
        http_req.headers['x-amzn-transcribe-language-code'] = input.language_code unless input.language_code.nil? || input.language_code.empty?
        http_req.headers['x-amzn-transcribe-sample-rate'] = input.media_sample_rate_hertz.to_s unless input.media_sample_rate_hertz.nil?
        http_req.headers['x-amzn-transcribe-media-encoding'] = input.media_encoding unless input.media_encoding.nil? || input.media_encoding.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-name'] = input.vocabulary_name unless input.vocabulary_name.nil? || input.vocabulary_name.empty?
        http_req.headers['x-amzn-transcribe-session-id'] = input.session_id unless input.session_id.nil? || input.session_id.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-filter-name'] = input.vocabulary_filter_name unless input.vocabulary_filter_name.nil? || input.vocabulary_filter_name.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-filter-method'] = input.vocabulary_filter_method unless input.vocabulary_filter_method.nil? || input.vocabulary_filter_method.empty?
        http_req.headers['x-amzn-transcribe-show-speaker-label'] = input.show_speaker_label.to_s unless input.show_speaker_label.nil?
        http_req.headers['x-amzn-transcribe-enable-channel-identification'] = input.enable_channel_identification.to_s unless input.enable_channel_identification.nil?
        http_req.headers['x-amzn-transcribe-number-of-channels'] = input.number_of_channels.to_s unless input.number_of_channels.nil?
        http_req.headers['x-amzn-transcribe-enable-partial-results-stabilization'] = input.enable_partial_results_stabilization.to_s unless input.enable_partial_results_stabilization.nil?
        http_req.headers['x-amzn-transcribe-partial-results-stability'] = input.partial_results_stability unless input.partial_results_stability.nil? || input.partial_results_stability.empty?
        http_req.headers['x-amzn-transcribe-content-identification-type'] = input.content_identification_type unless input.content_identification_type.nil? || input.content_identification_type.empty?
        http_req.headers['x-amzn-transcribe-content-redaction-type'] = input.content_redaction_type unless input.content_redaction_type.nil? || input.content_redaction_type.empty?
        http_req.headers['x-amzn-transcribe-pii-entity-types'] = input.pii_entity_types unless input.pii_entity_types.nil? || input.pii_entity_types.empty?
        http_req.headers['x-amzn-transcribe-language-model-name'] = input.language_model_name unless input.language_model_name.nil? || input.language_model_name.empty?
        http_req.headers['x-amzn-transcribe-identify-language'] = input.identify_language.to_s unless input.identify_language.nil?
        http_req.headers['x-amzn-transcribe-language-options'] = input.language_options unless input.language_options.nil? || input.language_options.empty?
        http_req.headers['x-amzn-transcribe-preferred-language'] = input.preferred_language unless input.preferred_language.nil? || input.preferred_language.empty?
        http_req.headers['x-amzn-transcribe-identify-multiple-languages'] = input.identify_multiple_languages.to_s unless input.identify_multiple_languages.nil?
        http_req.headers['x-amzn-transcribe-vocabulary-names'] = input.vocabulary_names unless input.vocabulary_names.nil? || input.vocabulary_names.empty?
        http_req.headers['x-amzn-transcribe-vocabulary-filter-names'] = input.vocabulary_filter_names unless input.vocabulary_filter_names.nil? || input.vocabulary_filter_names.empty?
      end
    end

    module EventStream
      class AudioEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'AudioEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/octet-stream', type: 'string')
          message.payload = ::StringIO.new(input.audio_chunk)
          message
        end
      end
      class ConfigurationEvent
        def self.build(input:)
          message = Hearth::EventStream::Message.new
          message.headers[':message-type'] = Hearth::EventStream::HeaderValue.new(value: 'event', type: 'string')
          message.headers[':event-type'] = Hearth::EventStream::HeaderValue.new(value: 'ConfigurationEvent', type: 'string')
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/cbor', type: 'string')
          payload_input = input
          message.headers[':content-type'] = Hearth::EventStream::HeaderValue.new(value: 'application/json', type: 'string')
          data = {}
          data['ChannelDefinitions'] = ChannelDefinitions.build(payload_input.channel_definitions) unless payload_input.channel_definitions.nil?
          data['PostCallAnalyticsSettings'] = PostCallAnalyticsSettings.build(payload_input.post_call_analytics_settings) unless payload_input.post_call_analytics_settings.nil?
          message.payload = ::StringIO.new(Hearth::JSON.dump(data))
          message
        end
      end
    end
  end
end
