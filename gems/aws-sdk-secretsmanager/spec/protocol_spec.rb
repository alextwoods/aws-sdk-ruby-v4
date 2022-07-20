# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-secretsmanager'

module AWS::SDK::SecretsManager
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_rotate_secret' do

    end

    describe '#create_secret' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_secret' do

    end

    describe '#describe_secret' do

    end

    describe '#get_random_password' do

    end

    describe '#get_resource_policy' do

    end

    describe '#get_secret_value' do

    end

    describe '#list_secrets' do

    end

    describe '#list_secret_version_ids' do

    end

    describe '#put_resource_policy' do

    end

    describe '#put_secret_value' do

    end

    describe '#remove_regions_from_replication' do

    end

    describe '#replicate_secret_to_regions' do

    end

    describe '#restore_secret' do

    end

    describe '#rotate_secret' do

    end

    describe '#stop_replication_to_replica' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_secret' do

    end

    describe '#update_secret_version_stage' do

    end

    describe '#validate_resource_policy' do

    end

  end
end
