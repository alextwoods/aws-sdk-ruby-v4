# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iotjobsdataplane'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::IoTJobsDataPlane
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#describe_job_execution' do

    end

    describe '#get_pending_job_executions' do

    end

    describe '#start_next_pending_job_execution' do

    end

    describe '#update_job_execution' do

    end

  end
end
