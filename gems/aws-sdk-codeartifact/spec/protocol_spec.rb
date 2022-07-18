# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codeartifact'

module AWS::SDK::Codeartifact
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_external_connection' do

    end

    describe '#copy_package_versions' do

    end

    describe '#create_domain' do

    end

    describe '#create_repository' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_domain_permissions_policy' do

    end

    describe '#delete_package_versions' do

    end

    describe '#delete_repository' do

    end

    describe '#delete_repository_permissions_policy' do

    end

    describe '#describe_domain' do

    end

    describe '#describe_package_version' do

    end

    describe '#describe_repository' do

    end

    describe '#disassociate_external_connection' do

    end

    describe '#dispose_package_versions' do

    end

    describe '#get_authorization_token' do

    end

    describe '#get_domain_permissions_policy' do

    end

    describe '#get_package_version_asset' do

    end

    describe '#get_package_version_readme' do

    end

    describe '#get_repository_endpoint' do

    end

    describe '#get_repository_permissions_policy' do

    end

    describe '#list_domains' do

    end

    describe '#list_packages' do

    end

    describe '#list_package_version_assets' do

    end

    describe '#list_package_version_dependencies' do

    end

    describe '#list_package_versions' do

    end

    describe '#list_repositories' do

    end

    describe '#list_repositories_in_domain' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_domain_permissions_policy' do

    end

    describe '#put_repository_permissions_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_package_versions_status' do

    end

    describe '#update_repository' do

    end

  end
end
