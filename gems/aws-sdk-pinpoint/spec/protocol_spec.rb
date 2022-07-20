# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-pinpoint'

module AWS::SDK::Pinpoint
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_app' do

    end

    describe '#create_campaign' do

    end

    describe '#create_email_template' do

    end

    describe '#create_export_job' do

    end

    describe '#create_import_job' do

    end

    describe '#create_in_app_template' do

    end

    describe '#create_journey' do

    end

    describe '#create_push_template' do

    end

    describe '#create_recommender_configuration' do

    end

    describe '#create_segment' do

    end

    describe '#create_sms_template' do

    end

    describe '#create_voice_template' do

    end

    describe '#delete_adm_channel' do

    end

    describe '#delete_apns_channel' do

    end

    describe '#delete_apns_sandbox_channel' do

    end

    describe '#delete_apns_voip_channel' do

    end

    describe '#delete_apns_voip_sandbox_channel' do

    end

    describe '#delete_app' do

    end

    describe '#delete_baidu_channel' do

    end

    describe '#delete_campaign' do

    end

    describe '#delete_email_channel' do

    end

    describe '#delete_email_template' do

    end

    describe '#delete_endpoint' do

    end

    describe '#delete_event_stream' do

    end

    describe '#delete_gcm_channel' do

    end

    describe '#delete_in_app_template' do

    end

    describe '#delete_journey' do

    end

    describe '#delete_push_template' do

    end

    describe '#delete_recommender_configuration' do

    end

    describe '#delete_segment' do

    end

    describe '#delete_sms_channel' do

    end

    describe '#delete_sms_template' do

    end

    describe '#delete_user_endpoints' do

    end

    describe '#delete_voice_channel' do

    end

    describe '#delete_voice_template' do

    end

    describe '#get_adm_channel' do

    end

    describe '#get_apns_channel' do

    end

    describe '#get_apns_sandbox_channel' do

    end

    describe '#get_apns_voip_channel' do

    end

    describe '#get_apns_voip_sandbox_channel' do

    end

    describe '#get_app' do

    end

    describe '#get_application_date_range_kpi' do

    end

    describe '#get_application_settings' do

    end

    describe '#get_apps' do

    end

    describe '#get_baidu_channel' do

    end

    describe '#get_campaign' do

    end

    describe '#get_campaign_activities' do

    end

    describe '#get_campaign_date_range_kpi' do

    end

    describe '#get_campaigns' do

    end

    describe '#get_campaign_version' do

    end

    describe '#get_campaign_versions' do

    end

    describe '#get_channels' do

    end

    describe '#get_email_channel' do

    end

    describe '#get_email_template' do

    end

    describe '#get_endpoint' do

    end

    describe '#get_event_stream' do

    end

    describe '#get_export_job' do

    end

    describe '#get_export_jobs' do

    end

    describe '#get_gcm_channel' do

    end

    describe '#get_import_job' do

    end

    describe '#get_import_jobs' do

    end

    describe '#get_in_app_messages' do

    end

    describe '#get_in_app_template' do

    end

    describe '#get_journey' do

    end

    describe '#get_journey_date_range_kpi' do

    end

    describe '#get_journey_execution_activity_metrics' do

    end

    describe '#get_journey_execution_metrics' do

    end

    describe '#get_push_template' do

    end

    describe '#get_recommender_configuration' do

    end

    describe '#get_recommender_configurations' do

    end

    describe '#get_segment' do

    end

    describe '#get_segment_export_jobs' do

    end

    describe '#get_segment_import_jobs' do

    end

    describe '#get_segments' do

    end

    describe '#get_segment_version' do

    end

    describe '#get_segment_versions' do

    end

    describe '#get_sms_channel' do

    end

    describe '#get_sms_template' do

    end

    describe '#get_user_endpoints' do

    end

    describe '#get_voice_channel' do

    end

    describe '#get_voice_template' do

    end

    describe '#list_journeys' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_templates' do

    end

    describe '#list_template_versions' do

    end

    describe '#phone_number_validate' do

    end

    describe '#put_events' do

    end

    describe '#put_event_stream' do

    end

    describe '#remove_attributes' do

    end

    describe '#send_messages' do

    end

    describe '#send_otp_message' do

    end

    describe '#send_users_messages' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_adm_channel' do

    end

    describe '#update_apns_channel' do

    end

    describe '#update_apns_sandbox_channel' do

    end

    describe '#update_apns_voip_channel' do

    end

    describe '#update_apns_voip_sandbox_channel' do

    end

    describe '#update_application_settings' do

    end

    describe '#update_baidu_channel' do

    end

    describe '#update_campaign' do

    end

    describe '#update_email_channel' do

    end

    describe '#update_email_template' do

    end

    describe '#update_endpoint' do

    end

    describe '#update_endpoints_batch' do

    end

    describe '#update_gcm_channel' do

    end

    describe '#update_in_app_template' do

    end

    describe '#update_journey' do

    end

    describe '#update_journey_state' do

    end

    describe '#update_push_template' do

    end

    describe '#update_recommender_configuration' do

    end

    describe '#update_segment' do

    end

    describe '#update_sms_channel' do

    end

    describe '#update_sms_template' do

    end

    describe '#update_template_active_version' do

    end

    describe '#update_voice_channel' do

    end

    describe '#update_voice_template' do

    end

    describe '#verify_otp_message' do

    end

  end
end
