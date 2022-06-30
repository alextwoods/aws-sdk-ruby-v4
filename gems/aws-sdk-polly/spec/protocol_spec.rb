# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-polly'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Polly
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#delete_lexicon' do

    end

    describe '#describe_voices' do

    end

    describe '#get_lexicon' do

    end

    describe '#get_speech_synthesis_task' do

    end

    describe '#list_lexicons' do

    end

    describe '#list_speech_synthesis_tasks' do

    end

    describe '#put_lexicon' do

    end

    describe '#start_speech_synthesis_task' do

    end

    describe '#synthesize_speech' do

    end

  end
end
