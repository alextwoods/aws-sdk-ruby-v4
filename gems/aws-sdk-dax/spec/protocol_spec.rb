# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-dax'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::DAX
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_cluster' do

    end

    describe '#create_parameter_group' do

    end

    describe '#create_subnet_group' do

    end

    describe '#decrease_replication_factor' do

    end

    describe '#delete_cluster' do

    end

    describe '#delete_parameter_group' do

    end

    describe '#delete_subnet_group' do

    end

    describe '#describe_clusters' do

    end

    describe '#describe_default_parameters' do

    end

    describe '#describe_events' do

    end

    describe '#describe_parameter_groups' do

    end

    describe '#describe_parameters' do

    end

    describe '#describe_subnet_groups' do

    end

    describe '#increase_replication_factor' do

    end

    describe '#list_tags' do

    end

    describe '#reboot_node' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_cluster' do

    end

    describe '#update_parameter_group' do

    end

    describe '#update_subnet_group' do

    end

  end
end
