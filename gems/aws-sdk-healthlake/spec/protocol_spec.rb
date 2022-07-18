# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-healthlake'

module AWS::SDK::HealthLake
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_fhir_datastore' do

    end

    describe '#delete_fhir_datastore' do

    end

    describe '#describe_fhir_datastore' do

    end

    describe '#describe_fhir_export_job' do

    end

    describe '#describe_fhir_import_job' do

    end

    describe '#list_fhir_datastores' do

    end

    describe '#list_fhir_export_jobs' do

    end

    describe '#list_fhir_import_jobs' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_fhir_export_job' do

    end

    describe '#start_fhir_import_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
