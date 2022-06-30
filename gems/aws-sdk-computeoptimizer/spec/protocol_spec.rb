# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-computeoptimizer'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ComputeOptimizer
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#delete_recommendation_preferences' do

    end

    describe '#describe_recommendation_export_jobs' do

    end

    describe '#export_auto_scaling_group_recommendations' do

    end

    describe '#export_ebs_volume_recommendations' do

    end

    describe '#export_ec2_instance_recommendations' do

    end

    describe '#export_lambda_function_recommendations' do

    end

    describe '#get_auto_scaling_group_recommendations' do

    end

    describe '#get_ebs_volume_recommendations' do

    end

    describe '#get_ec2_instance_recommendations' do

    end

    describe '#get_ec2_recommendation_projected_metrics' do

    end

    describe '#get_effective_recommendation_preferences' do

    end

    describe '#get_enrollment_status' do

    end

    describe '#get_enrollment_statuses_for_organization' do

    end

    describe '#get_lambda_function_recommendations' do

    end

    describe '#get_recommendation_preferences' do

    end

    describe '#get_recommendation_summaries' do

    end

    describe '#put_recommendation_preferences' do

    end

    describe '#update_enrollment_status' do

    end

  end
end
