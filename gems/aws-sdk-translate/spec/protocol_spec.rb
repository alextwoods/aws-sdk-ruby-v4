# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-translate'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Translate
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_parallel_data' do

    end

    describe '#delete_parallel_data' do

    end

    describe '#delete_terminology' do

    end

    describe '#describe_text_translation_job' do

    end

    describe '#get_parallel_data' do

    end

    describe '#get_terminology' do

    end

    describe '#import_terminology' do

    end

    describe '#list_parallel_data' do

    end

    describe '#list_terminologies' do

    end

    describe '#list_text_translation_jobs' do

    end

    describe '#start_text_translation_job' do

    end

    describe '#stop_text_translation_job' do

    end

    describe '#translate_text' do

    end

    describe '#update_parallel_data' do

    end

  end
end
