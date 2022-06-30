# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ecr'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ECR
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_check_layer_availability' do

    end

    describe '#batch_delete_image' do

    end

    describe '#batch_get_image' do

    end

    describe '#batch_get_repository_scanning_configuration' do

    end

    describe '#complete_layer_upload' do

    end

    describe '#create_pull_through_cache_rule' do

    end

    describe '#create_repository' do

    end

    describe '#delete_lifecycle_policy' do

    end

    describe '#delete_pull_through_cache_rule' do

    end

    describe '#delete_registry_policy' do

    end

    describe '#delete_repository' do

    end

    describe '#delete_repository_policy' do

    end

    describe '#describe_image_replication_status' do

    end

    describe '#describe_images' do

    end

    describe '#describe_image_scan_findings' do

    end

    describe '#describe_pull_through_cache_rules' do

    end

    describe '#describe_registry' do

    end

    describe '#describe_repositories' do

    end

    describe '#get_authorization_token' do

    end

    describe '#get_download_url_for_layer' do

    end

    describe '#get_lifecycle_policy' do

    end

    describe '#get_lifecycle_policy_preview' do

    end

    describe '#get_registry_policy' do

    end

    describe '#get_registry_scanning_configuration' do

    end

    describe '#get_repository_policy' do

    end

    describe '#initiate_layer_upload' do

    end

    describe '#list_images' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_image' do

    end

    describe '#put_image_scanning_configuration' do

    end

    describe '#put_image_tag_mutability' do

    end

    describe '#put_lifecycle_policy' do

    end

    describe '#put_registry_policy' do

    end

    describe '#put_registry_scanning_configuration' do

    end

    describe '#put_replication_configuration' do

    end

    describe '#set_repository_policy' do

    end

    describe '#start_image_scan' do

    end

    describe '#start_lifecycle_policy_preview' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#upload_layer_part' do

    end

  end
end
