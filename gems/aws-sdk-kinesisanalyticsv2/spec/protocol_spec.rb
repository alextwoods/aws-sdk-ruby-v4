# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kinesisanalyticsv2'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::KinesisAnalyticsV2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_application_cloud_watch_logging_option' do

    end

    describe '#add_application_input' do

    end

    describe '#add_application_input_processing_configuration' do

    end

    describe '#add_application_output' do

    end

    describe '#add_application_reference_data_source' do

    end

    describe '#add_application_vpc_configuration' do

    end

    describe '#create_application' do

    end

    describe '#create_application_presigned_url' do

    end

    describe '#create_application_snapshot' do

    end

    describe '#delete_application' do

    end

    describe '#delete_application_cloud_watch_logging_option' do

    end

    describe '#delete_application_input_processing_configuration' do

    end

    describe '#delete_application_output' do

    end

    describe '#delete_application_reference_data_source' do

    end

    describe '#delete_application_snapshot' do

    end

    describe '#delete_application_vpc_configuration' do

    end

    describe '#describe_application' do

    end

    describe '#describe_application_snapshot' do

    end

    describe '#describe_application_version' do

    end

    describe '#discover_input_schema' do

    end

    describe '#list_applications' do

    end

    describe '#list_application_snapshots' do

    end

    describe '#list_application_versions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#rollback_application' do

    end

    describe '#start_application' do

    end

    describe '#stop_application' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_application' do

    end

    describe '#update_application_maintenance_configuration' do

    end

  end
end
