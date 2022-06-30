# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-applicationinsights'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ApplicationInsights
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_application' do

    end

    describe '#create_component' do

    end

    describe '#create_log_pattern' do

    end

    describe '#delete_application' do

    end

    describe '#delete_component' do

    end

    describe '#delete_log_pattern' do

    end

    describe '#describe_application' do

    end

    describe '#describe_component' do

    end

    describe '#describe_component_configuration' do

    end

    describe '#describe_component_configuration_recommendation' do

    end

    describe '#describe_log_pattern' do

    end

    describe '#describe_observation' do

    end

    describe '#describe_problem' do

    end

    describe '#describe_problem_observations' do

    end

    describe '#list_applications' do

    end

    describe '#list_components' do

    end

    describe '#list_configuration_history' do

    end

    describe '#list_log_patterns' do

    end

    describe '#list_log_pattern_sets' do

    end

    describe '#list_problems' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_application' do

    end

    describe '#update_component' do

    end

    describe '#update_component_configuration' do

    end

    describe '#update_log_pattern' do

    end

  end
end
