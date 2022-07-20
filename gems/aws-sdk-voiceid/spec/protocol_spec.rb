# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-voiceid'

module AWS::SDK::VoiceID
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_domain' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_fraudster' do

    end

    describe '#delete_speaker' do

    end

    describe '#describe_domain' do

    end

    describe '#describe_fraudster' do

    end

    describe '#describe_fraudster_registration_job' do

    end

    describe '#describe_speaker' do

    end

    describe '#describe_speaker_enrollment_job' do

    end

    describe '#evaluate_session' do

    end

    describe '#list_domains' do

    end

    describe '#list_fraudster_registration_jobs' do

    end

    describe '#list_speaker_enrollment_jobs' do

    end

    describe '#list_speakers' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#opt_out_speaker' do

    end

    describe '#start_fraudster_registration_job' do

    end

    describe '#start_speaker_enrollment_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_domain' do

    end

  end
end
