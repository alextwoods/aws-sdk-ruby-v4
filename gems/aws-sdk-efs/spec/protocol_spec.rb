# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-efs'

module AWS::SDK::EFS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_access_point' do

    end

    describe '#create_file_system' do

    end

    describe '#create_mount_target' do

    end

    describe '#create_replication_configuration' do

    end

    describe '#create_tags' do

    end

    describe '#delete_access_point' do

    end

    describe '#delete_file_system' do

    end

    describe '#delete_file_system_policy' do

    end

    describe '#delete_mount_target' do

    end

    describe '#delete_replication_configuration' do

    end

    describe '#delete_tags' do

    end

    describe '#describe_access_points' do

    end

    describe '#describe_account_preferences' do

    end

    describe '#describe_backup_policy' do

    end

    describe '#describe_file_system_policy' do

    end

    describe '#describe_file_systems' do

    end

    describe '#describe_lifecycle_configuration' do

    end

    describe '#describe_mount_targets' do

    end

    describe '#describe_mount_target_security_groups' do

    end

    describe '#describe_replication_configurations' do

    end

    describe '#describe_tags' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#modify_mount_target_security_groups' do

    end

    describe '#put_account_preferences' do

    end

    describe '#put_backup_policy' do

    end

    describe '#put_file_system_policy' do

    end

    describe '#put_lifecycle_configuration' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_file_system' do

    end

  end
end
