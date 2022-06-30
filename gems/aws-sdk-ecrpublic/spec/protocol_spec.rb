# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ecrpublic'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ECRPUBLIC
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_check_layer_availability' do

    end

    describe '#batch_delete_image' do

    end

    describe '#complete_layer_upload' do

    end

    describe '#create_repository' do

    end

    describe '#delete_repository' do

    end

    describe '#delete_repository_policy' do

    end

    describe '#describe_images' do

    end

    describe '#describe_image_tags' do

    end

    describe '#describe_registries' do

    end

    describe '#describe_repositories' do

    end

    describe '#get_authorization_token' do

    end

    describe '#get_registry_catalog_data' do

    end

    describe '#get_repository_catalog_data' do

    end

    describe '#get_repository_policy' do

    end

    describe '#initiate_layer_upload' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_image' do

    end

    describe '#put_registry_catalog_data' do

    end

    describe '#put_repository_catalog_data' do

    end

    describe '#set_repository_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#upload_layer_part' do

    end

  end
end
