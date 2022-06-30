# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-robomaker'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::RoboMaker
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_delete_worlds' do

    end

    describe '#batch_describe_simulation_job' do

    end

    describe '#cancel_deployment_job' do

    end

    describe '#cancel_simulation_job' do

    end

    describe '#cancel_simulation_job_batch' do

    end

    describe '#cancel_world_export_job' do

    end

    describe '#cancel_world_generation_job' do

    end

    describe '#create_deployment_job' do

    end

    describe '#create_fleet' do

    end

    describe '#create_robot' do

    end

    describe '#create_robot_application' do

    end

    describe '#create_robot_application_version' do

    end

    describe '#create_simulation_application' do

    end

    describe '#create_simulation_application_version' do

    end

    describe '#create_simulation_job' do

    end

    describe '#create_world_export_job' do

    end

    describe '#create_world_generation_job' do

    end

    describe '#create_world_template' do

    end

    describe '#delete_fleet' do

    end

    describe '#delete_robot' do

    end

    describe '#delete_robot_application' do

    end

    describe '#delete_simulation_application' do

    end

    describe '#delete_world_template' do

    end

    describe '#deregister_robot' do

    end

    describe '#describe_deployment_job' do

    end

    describe '#describe_fleet' do

    end

    describe '#describe_robot' do

    end

    describe '#describe_robot_application' do

    end

    describe '#describe_simulation_application' do

    end

    describe '#describe_simulation_job' do

    end

    describe '#describe_simulation_job_batch' do

    end

    describe '#describe_world' do

    end

    describe '#describe_world_export_job' do

    end

    describe '#describe_world_generation_job' do

    end

    describe '#describe_world_template' do

    end

    describe '#get_world_template_body' do

    end

    describe '#list_deployment_jobs' do

    end

    describe '#list_fleets' do

    end

    describe '#list_robot_applications' do

    end

    describe '#list_robots' do

    end

    describe '#list_simulation_applications' do

    end

    describe '#list_simulation_job_batches' do

    end

    describe '#list_simulation_jobs' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_world_export_jobs' do

    end

    describe '#list_world_generation_jobs' do

    end

    describe '#list_worlds' do

    end

    describe '#list_world_templates' do

    end

    describe '#register_robot' do

    end

    describe '#restart_simulation_job' do

    end

    describe '#start_simulation_job_batch' do

    end

    describe '#sync_deployment_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_robot_application' do

    end

    describe '#update_simulation_application' do

    end

    describe '#update_world_template' do

    end

  end
end
