# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-comprehend'

module AWS::SDK::Comprehend
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_detect_dominant_language' do

    end

    describe '#batch_detect_entities' do

    end

    describe '#batch_detect_key_phrases' do

    end

    describe '#batch_detect_sentiment' do

    end

    describe '#batch_detect_syntax' do

    end

    describe '#classify_document' do

    end

    describe '#contains_pii_entities' do

    end

    describe '#create_document_classifier' do

    end

    describe '#create_endpoint' do

    end

    describe '#create_entity_recognizer' do

    end

    describe '#delete_document_classifier' do

    end

    describe '#delete_endpoint' do

    end

    describe '#delete_entity_recognizer' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#describe_document_classification_job' do

    end

    describe '#describe_document_classifier' do

    end

    describe '#describe_dominant_language_detection_job' do

    end

    describe '#describe_endpoint' do

    end

    describe '#describe_entities_detection_job' do

    end

    describe '#describe_entity_recognizer' do

    end

    describe '#describe_events_detection_job' do

    end

    describe '#describe_key_phrases_detection_job' do

    end

    describe '#describe_pii_entities_detection_job' do

    end

    describe '#describe_resource_policy' do

    end

    describe '#describe_sentiment_detection_job' do

    end

    describe '#describe_targeted_sentiment_detection_job' do

    end

    describe '#describe_topics_detection_job' do

    end

    describe '#detect_dominant_language' do

    end

    describe '#detect_entities' do

    end

    describe '#detect_key_phrases' do

    end

    describe '#detect_pii_entities' do

    end

    describe '#detect_sentiment' do

    end

    describe '#detect_syntax' do

    end

    describe '#import_model' do

    end

    describe '#list_document_classification_jobs' do

    end

    describe '#list_document_classifiers' do

    end

    describe '#list_document_classifier_summaries' do

    end

    describe '#list_dominant_language_detection_jobs' do

    end

    describe '#list_endpoints' do

    end

    describe '#list_entities_detection_jobs' do

    end

    describe '#list_entity_recognizers' do

    end

    describe '#list_entity_recognizer_summaries' do

    end

    describe '#list_events_detection_jobs' do

    end

    describe '#list_key_phrases_detection_jobs' do

    end

    describe '#list_pii_entities_detection_jobs' do

    end

    describe '#list_sentiment_detection_jobs' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_targeted_sentiment_detection_jobs' do

    end

    describe '#list_topics_detection_jobs' do

    end

    describe '#put_resource_policy' do

    end

    describe '#start_document_classification_job' do

    end

    describe '#start_dominant_language_detection_job' do

    end

    describe '#start_entities_detection_job' do

    end

    describe '#start_events_detection_job' do

    end

    describe '#start_key_phrases_detection_job' do

    end

    describe '#start_pii_entities_detection_job' do

    end

    describe '#start_sentiment_detection_job' do

    end

    describe '#start_targeted_sentiment_detection_job' do

    end

    describe '#start_topics_detection_job' do

    end

    describe '#stop_dominant_language_detection_job' do

    end

    describe '#stop_entities_detection_job' do

    end

    describe '#stop_events_detection_job' do

    end

    describe '#stop_key_phrases_detection_job' do

    end

    describe '#stop_pii_entities_detection_job' do

    end

    describe '#stop_sentiment_detection_job' do

    end

    describe '#stop_targeted_sentiment_detection_job' do

    end

    describe '#stop_training_document_classifier' do

    end

    describe '#stop_training_entity_recognizer' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_endpoint' do

    end

  end
end
