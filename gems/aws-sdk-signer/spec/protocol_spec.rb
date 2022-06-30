# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-signer'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Signer
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_profile_permission' do

    end

    describe '#cancel_signing_profile' do

    end

    describe '#describe_signing_job' do

    end

    describe '#get_signing_platform' do

    end

    describe '#get_signing_profile' do

    end

    describe '#list_profile_permissions' do

    end

    describe '#list_signing_jobs' do

    end

    describe '#list_signing_platforms' do

    end

    describe '#list_signing_profiles' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_signing_profile' do

    end

    describe '#remove_profile_permission' do

    end

    describe '#revoke_signature' do

    end

    describe '#revoke_signing_profile' do

    end

    describe '#start_signing_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
