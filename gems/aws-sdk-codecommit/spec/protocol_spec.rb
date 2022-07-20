# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codecommit'

module AWS::SDK::CodeCommit
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_approval_rule_template_with_repository' do

    end

    describe '#batch_associate_approval_rule_template_with_repositories' do

    end

    describe '#batch_describe_merge_conflicts' do

    end

    describe '#batch_disassociate_approval_rule_template_from_repositories' do

    end

    describe '#batch_get_commits' do

    end

    describe '#batch_get_repositories' do

    end

    describe '#create_approval_rule_template' do

    end

    describe '#create_branch' do

    end

    describe '#create_commit' do

    end

    describe '#create_pull_request' do

    end

    describe '#create_pull_request_approval_rule' do

    end

    describe '#create_repository' do

    end

    describe '#create_unreferenced_merge_commit' do

    end

    describe '#delete_approval_rule_template' do

    end

    describe '#delete_branch' do

    end

    describe '#delete_comment_content' do

    end

    describe '#delete_file' do

    end

    describe '#delete_pull_request_approval_rule' do

    end

    describe '#delete_repository' do

    end

    describe '#describe_merge_conflicts' do

    end

    describe '#describe_pull_request_events' do

    end

    describe '#disassociate_approval_rule_template_from_repository' do

    end

    describe '#evaluate_pull_request_approval_rules' do

    end

    describe '#get_approval_rule_template' do

    end

    describe '#get_blob' do

    end

    describe '#get_branch' do

    end

    describe '#get_comment' do

    end

    describe '#get_comment_reactions' do

    end

    describe '#get_comments_for_compared_commit' do

    end

    describe '#get_comments_for_pull_request' do

    end

    describe '#get_commit' do

    end

    describe '#get_differences' do

    end

    describe '#get_file' do

    end

    describe '#get_folder' do

    end

    describe '#get_merge_commit' do

    end

    describe '#get_merge_conflicts' do

    end

    describe '#get_merge_options' do

    end

    describe '#get_pull_request' do

    end

    describe '#get_pull_request_approval_states' do

    end

    describe '#get_pull_request_override_state' do

    end

    describe '#get_repository' do

    end

    describe '#get_repository_triggers' do

    end

    describe '#list_approval_rule_templates' do

    end

    describe '#list_associated_approval_rule_templates_for_repository' do

    end

    describe '#list_branches' do

    end

    describe '#list_pull_requests' do

    end

    describe '#list_repositories' do

    end

    describe '#list_repositories_for_approval_rule_template' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#merge_branches_by_fast_forward' do

    end

    describe '#merge_branches_by_squash' do

    end

    describe '#merge_branches_by_three_way' do

    end

    describe '#merge_pull_request_by_fast_forward' do

    end

    describe '#merge_pull_request_by_squash' do

    end

    describe '#merge_pull_request_by_three_way' do

    end

    describe '#override_pull_request_approval_rules' do

    end

    describe '#post_comment_for_compared_commit' do

    end

    describe '#post_comment_for_pull_request' do

    end

    describe '#post_comment_reply' do

    end

    describe '#put_comment_reaction' do

    end

    describe '#put_file' do

    end

    describe '#put_repository_triggers' do

    end

    describe '#tag_resource' do

    end

    describe '#test_repository_triggers' do

    end

    describe '#untag_resource' do

    end

    describe '#update_approval_rule_template_content' do

    end

    describe '#update_approval_rule_template_description' do

    end

    describe '#update_approval_rule_template_name' do

    end

    describe '#update_comment' do

    end

    describe '#update_default_branch' do

    end

    describe '#update_pull_request_approval_rule_content' do

    end

    describe '#update_pull_request_approval_state' do

    end

    describe '#update_pull_request_description' do

    end

    describe '#update_pull_request_status' do

    end

    describe '#update_pull_request_title' do

    end

    describe '#update_repository_description' do

    end

    describe '#update_repository_name' do

    end

  end
end
