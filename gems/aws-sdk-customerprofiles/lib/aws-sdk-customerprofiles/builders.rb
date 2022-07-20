# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Builders

    # Operation Builder for AddProfileKey
    class AddProfileKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/keys',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['Values'] = Builders::RequestValueList.build(input[:values]) unless input[:values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for requestValueList
    class RequestValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultExpirationDays'] = input[:default_expiration_days] unless input[:default_expiration_days].nil?
        data['DefaultEncryptionKey'] = input[:default_encryption_key] unless input[:default_encryption_key].nil?
        data['DeadLetterQueueUrl'] = input[:dead_letter_queue_url] unless input[:dead_letter_queue_url].nil?
        data['Matching'] = Builders::MatchingRequest.build(input[:matching]) unless input[:matching].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MatchingRequest
    class MatchingRequest
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['JobSchedule'] = Builders::JobSchedule.build(input[:job_schedule]) unless input[:job_schedule].nil?
        data['AutoMerging'] = Builders::AutoMerging.build(input[:auto_merging]) unless input[:auto_merging].nil?
        data['ExportingConfig'] = Builders::ExportingConfig.build(input[:exporting_config]) unless input[:exporting_config].nil?
        data
      end
    end

    # Structure Builder for ExportingConfig
    class ExportingConfig
      def self.build(input)
        data = {}
        data['S3Exporting'] = Builders::S3ExportingConfig.build(input[:s3_exporting]) unless input[:s3_exporting].nil?
        data
      end
    end

    # Structure Builder for S3ExportingConfig
    class S3ExportingConfig
      def self.build(input)
        data = {}
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3KeyName'] = input[:s3_key_name] unless input[:s3_key_name].nil?
        data
      end
    end

    # Structure Builder for AutoMerging
    class AutoMerging
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['Consolidation'] = Builders::Consolidation.build(input[:consolidation]) unless input[:consolidation].nil?
        data['ConflictResolution'] = Builders::ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        data
      end
    end

    # Structure Builder for ConflictResolution
    class ConflictResolution
      def self.build(input)
        data = {}
        data['ConflictResolvingModel'] = input[:conflict_resolving_model] unless input[:conflict_resolving_model].nil?
        data['SourceName'] = input[:source_name] unless input[:source_name].nil?
        data
      end
    end

    # Structure Builder for Consolidation
    class Consolidation
      def self.build(input)
        data = {}
        data['MatchingAttributesList'] = Builders::MatchingAttributesList.build(input[:matching_attributes_list]) unless input[:matching_attributes_list].nil?
        data
      end
    end

    # List Builder for MatchingAttributesList
    class MatchingAttributesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MatchingAttributes.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for MatchingAttributes
    class MatchingAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobSchedule
    class JobSchedule
      def self.build(input)
        data = {}
        data['DayOfTheWeek'] = input[:day_of_the_week] unless input[:day_of_the_week].nil?
        data['Time'] = input[:time] unless input[:time].nil?
        data
      end
    end

    # Operation Builder for CreateIntegrationWorkflow
    class CreateIntegrationWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/workflows/integrations',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkflowType'] = input[:workflow_type] unless input[:workflow_type].nil?
        data['IntegrationConfig'] = Builders::IntegrationConfig.build(input[:integration_config]) unless input[:integration_config].nil?
        data['ObjectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IntegrationConfig
    class IntegrationConfig
      def self.build(input)
        data = {}
        data['AppflowIntegration'] = Builders::AppflowIntegration.build(input[:appflow_integration]) unless input[:appflow_integration].nil?
        data
      end
    end

    # Structure Builder for AppflowIntegration
    class AppflowIntegration
      def self.build(input)
        data = {}
        data['FlowDefinition'] = Builders::FlowDefinition.build(input[:flow_definition]) unless input[:flow_definition].nil?
        data['Batches'] = Builders::Batches.build(input[:batches]) unless input[:batches].nil?
        data
      end
    end

    # List Builder for Batches
    class Batches
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Batch.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Batch
    class Batch
      def self.build(input)
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data
      end
    end

    # Structure Builder for FlowDefinition
    class FlowDefinition
      def self.build(input)
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['FlowName'] = input[:flow_name] unless input[:flow_name].nil?
        data['KmsArn'] = input[:kms_arn] unless input[:kms_arn].nil?
        data['SourceFlowConfig'] = Builders::SourceFlowConfig.build(input[:source_flow_config]) unless input[:source_flow_config].nil?
        data['Tasks'] = Builders::Tasks.build(input[:tasks]) unless input[:tasks].nil?
        data['TriggerConfig'] = Builders::TriggerConfig.build(input[:trigger_config]) unless input[:trigger_config].nil?
        data
      end
    end

    # Structure Builder for TriggerConfig
    class TriggerConfig
      def self.build(input)
        data = {}
        data['TriggerType'] = input[:trigger_type] unless input[:trigger_type].nil?
        data['TriggerProperties'] = Builders::TriggerProperties.build(input[:trigger_properties]) unless input[:trigger_properties].nil?
        data
      end
    end

    # Structure Builder for TriggerProperties
    class TriggerProperties
      def self.build(input)
        data = {}
        data['Scheduled'] = Builders::ScheduledTriggerProperties.build(input[:scheduled]) unless input[:scheduled].nil?
        data
      end
    end

    # Structure Builder for ScheduledTriggerProperties
    class ScheduledTriggerProperties
      def self.build(input)
        data = {}
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['DataPullMode'] = input[:data_pull_mode] unless input[:data_pull_mode].nil?
        data['ScheduleStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:schedule_start_time]).to_i unless input[:schedule_start_time].nil?
        data['ScheduleEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:schedule_end_time]).to_i unless input[:schedule_end_time].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['ScheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['FirstExecutionFrom'] = Hearth::TimeHelper.to_epoch_seconds(input[:first_execution_from]).to_i unless input[:first_execution_from].nil?
        data
      end
    end

    # List Builder for Tasks
    class Tasks
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Task.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Task
    class Task
      def self.build(input)
        data = {}
        data['ConnectorOperator'] = Builders::ConnectorOperator.build(input[:connector_operator]) unless input[:connector_operator].nil?
        data['DestinationField'] = input[:destination_field] unless input[:destination_field].nil?
        data['SourceFields'] = Builders::SourceFields.build(input[:source_fields]) unless input[:source_fields].nil?
        data['TaskProperties'] = Builders::TaskPropertiesMap.build(input[:task_properties]) unless input[:task_properties].nil?
        data['TaskType'] = input[:task_type] unless input[:task_type].nil?
        data
      end
    end

    # Map Builder for TaskPropertiesMap
    class TaskPropertiesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for SourceFields
    class SourceFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectorOperator
    class ConnectorOperator
      def self.build(input)
        data = {}
        data['Marketo'] = input[:marketo] unless input[:marketo].nil?
        data['S3'] = input[:s3] unless input[:s3].nil?
        data['Salesforce'] = input[:salesforce] unless input[:salesforce].nil?
        data['ServiceNow'] = input[:service_now] unless input[:service_now].nil?
        data['Zendesk'] = input[:zendesk] unless input[:zendesk].nil?
        data
      end
    end

    # Structure Builder for SourceFlowConfig
    class SourceFlowConfig
      def self.build(input)
        data = {}
        data['ConnectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['ConnectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['IncrementalPullConfig'] = Builders::IncrementalPullConfig.build(input[:incremental_pull_config]) unless input[:incremental_pull_config].nil?
        data['SourceConnectorProperties'] = Builders::SourceConnectorProperties.build(input[:source_connector_properties]) unless input[:source_connector_properties].nil?
        data
      end
    end

    # Structure Builder for SourceConnectorProperties
    class SourceConnectorProperties
      def self.build(input)
        data = {}
        data['Marketo'] = Builders::MarketoSourceProperties.build(input[:marketo]) unless input[:marketo].nil?
        data['S3'] = Builders::S3SourceProperties.build(input[:s3]) unless input[:s3].nil?
        data['Salesforce'] = Builders::SalesforceSourceProperties.build(input[:salesforce]) unless input[:salesforce].nil?
        data['ServiceNow'] = Builders::ServiceNowSourceProperties.build(input[:service_now]) unless input[:service_now].nil?
        data['Zendesk'] = Builders::ZendeskSourceProperties.build(input[:zendesk]) unless input[:zendesk].nil?
        data
      end
    end

    # Structure Builder for ZendeskSourceProperties
    class ZendeskSourceProperties
      def self.build(input)
        data = {}
        data['Object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for ServiceNowSourceProperties
    class ServiceNowSourceProperties
      def self.build(input)
        data = {}
        data['Object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for SalesforceSourceProperties
    class SalesforceSourceProperties
      def self.build(input)
        data = {}
        data['Object'] = input[:object] unless input[:object].nil?
        data['EnableDynamicFieldUpdate'] = input[:enable_dynamic_field_update] unless input[:enable_dynamic_field_update].nil?
        data['IncludeDeletedRecords'] = input[:include_deleted_records] unless input[:include_deleted_records].nil?
        data
      end
    end

    # Structure Builder for S3SourceProperties
    class S3SourceProperties
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['BucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data
      end
    end

    # Structure Builder for MarketoSourceProperties
    class MarketoSourceProperties
      def self.build(input)
        data = {}
        data['Object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for IncrementalPullConfig
    class IncrementalPullConfig
      def self.build(input)
        data = {}
        data['DatetimeTypeFieldName'] = input[:datetime_type_field_name] unless input[:datetime_type_field_name].nil?
        data
      end
    end

    # Operation Builder for CreateProfile
    class CreateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountNumber'] = input[:account_number] unless input[:account_number].nil?
        data['AdditionalInformation'] = input[:additional_information] unless input[:additional_information].nil?
        data['PartyType'] = input[:party_type] unless input[:party_type].nil?
        data['BusinessName'] = input[:business_name] unless input[:business_name].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['MiddleName'] = input[:middle_name] unless input[:middle_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['BirthDate'] = input[:birth_date] unless input[:birth_date].nil?
        data['Gender'] = input[:gender] unless input[:gender].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['MobilePhoneNumber'] = input[:mobile_phone_number] unless input[:mobile_phone_number].nil?
        data['HomePhoneNumber'] = input[:home_phone_number] unless input[:home_phone_number].nil?
        data['BusinessPhoneNumber'] = input[:business_phone_number] unless input[:business_phone_number].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['PersonalEmailAddress'] = input[:personal_email_address] unless input[:personal_email_address].nil?
        data['BusinessEmailAddress'] = input[:business_email_address] unless input[:business_email_address].nil?
        data['Address'] = Builders::Address.build(input[:address]) unless input[:address].nil?
        data['ShippingAddress'] = Builders::Address.build(input[:shipping_address]) unless input[:shipping_address].nil?
        data['MailingAddress'] = Builders::Address.build(input[:mailing_address]) unless input[:mailing_address].nil?
        data['BillingAddress'] = Builders::Address.build(input[:billing_address]) unless input[:billing_address].nil?
        data['Attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Attributes
    class Attributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Address
    class Address
      def self.build(input)
        data = {}
        data['Address1'] = input[:address1] unless input[:address1].nil?
        data['Address2'] = input[:address2] unless input[:address2].nil?
        data['Address3'] = input[:address3] unless input[:address3].nil?
        data['Address4'] = input[:address4] unless input[:address4].nil?
        data['City'] = input[:city] unless input[:city].nil?
        data['County'] = input[:county] unless input[:county].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['Province'] = input[:province] unless input[:province].nil?
        data['Country'] = input[:country] unless input[:country].nil?
        data['PostalCode'] = input[:postal_code] unless input[:postal_code].nil?
        data
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntegration
    class DeleteIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/integrations/delete',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProfile
    class DeleteProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/delete',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProfileKey
    class DeleteProfileKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/keys/delete',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['Values'] = Builders::RequestValueList.build(input[:values]) unless input[:values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProfileObject
    class DeleteProfileObject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/objects/delete',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        data['ProfileObjectUniqueKey'] = input[:profile_object_unique_key] unless input[:profile_object_unique_key].nil?
        data['ObjectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProfileObjectType
    class DeleteProfileObjectType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:object_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :object_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/object-types/%<ObjectTypeName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            ObjectTypeName: Hearth::HTTP.uri_escape(input[:object_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkflow
    class DeleteWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:workflow_id].to_s.empty?
          raise ArgumentError, "HTTP label :workflow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/workflows/%<WorkflowId>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            WorkflowId: Hearth::HTTP.uri_escape(input[:workflow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAutoMergingPreview
    class GetAutoMergingPreview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/identity-resolution-jobs/auto-merging-preview',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Consolidation'] = Builders::Consolidation.build(input[:consolidation]) unless input[:consolidation].nil?
        data['ConflictResolution'] = Builders::ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDomain
    class GetDomain
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIdentityResolutionJob
    class GetIdentityResolutionJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/identity-resolution-jobs/%<JobId>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegration
    class GetIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/integrations',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMatches
    class GetMatches
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/matches',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProfileObjectType
    class GetProfileObjectType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:object_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :object_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/object-types/%<ObjectTypeName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            ObjectTypeName: Hearth::HTTP.uri_escape(input[:object_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProfileObjectTypeTemplate
    class GetProfileObjectTypeTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/templates/%<TemplateId>s',
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWorkflow
    class GetWorkflow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:workflow_id].to_s.empty?
          raise ArgumentError, "HTTP label :workflow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/workflows/%<WorkflowId>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            WorkflowId: Hearth::HTTP.uri_escape(input[:workflow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWorkflowSteps
    class GetWorkflowSteps
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:workflow_id].to_s.empty?
          raise ArgumentError, "HTTP label :workflow_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/workflows/%<WorkflowId>s/steps',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            WorkflowId: Hearth::HTTP.uri_escape(input[:workflow_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAccountIntegrations
    class ListAccountIntegrations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/integrations')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['include-hidden'] = input[:include_hidden].to_s unless input[:include_hidden].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/domains')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIdentityResolutionJobs
    class ListIdentityResolutionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/identity-resolution-jobs',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIntegrations
    class ListIntegrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/integrations',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['include-hidden'] = input[:include_hidden].to_s unless input[:include_hidden].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfileObjectTypeTemplates
    class ListProfileObjectTypeTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/templates')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfileObjectTypes
    class ListProfileObjectTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/object-types',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfileObjects
    class ListProfileObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/objects',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        data['ObjectFilter'] = Builders::ObjectFilter.build(input[:object_filter]) unless input[:object_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ObjectFilter
    class ObjectFilter
      def self.build(input)
        data = {}
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['Values'] = Builders::RequestValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorkflows
    class ListWorkflows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/workflows',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkflowType'] = input[:workflow_type] unless input[:workflow_type].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['QueryStartDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_start_date]).to_i unless input[:query_start_date].nil?
        data['QueryEndDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_end_date]).to_i unless input[:query_end_date].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeProfiles
    class MergeProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/objects/merge',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MainProfileId'] = input[:main_profile_id] unless input[:main_profile_id].nil?
        data['ProfileIdsToBeMerged'] = Builders::ProfileIdToBeMergedList.build(input[:profile_ids_to_be_merged]) unless input[:profile_ids_to_be_merged].nil?
        data['FieldSourceProfileIds'] = Builders::FieldSourceProfileIds.build(input[:field_source_profile_ids]) unless input[:field_source_profile_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FieldSourceProfileIds
    class FieldSourceProfileIds
      def self.build(input)
        data = {}
        data['AccountNumber'] = input[:account_number] unless input[:account_number].nil?
        data['AdditionalInformation'] = input[:additional_information] unless input[:additional_information].nil?
        data['PartyType'] = input[:party_type] unless input[:party_type].nil?
        data['BusinessName'] = input[:business_name] unless input[:business_name].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['MiddleName'] = input[:middle_name] unless input[:middle_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['BirthDate'] = input[:birth_date] unless input[:birth_date].nil?
        data['Gender'] = input[:gender] unless input[:gender].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['MobilePhoneNumber'] = input[:mobile_phone_number] unless input[:mobile_phone_number].nil?
        data['HomePhoneNumber'] = input[:home_phone_number] unless input[:home_phone_number].nil?
        data['BusinessPhoneNumber'] = input[:business_phone_number] unless input[:business_phone_number].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['PersonalEmailAddress'] = input[:personal_email_address] unless input[:personal_email_address].nil?
        data['BusinessEmailAddress'] = input[:business_email_address] unless input[:business_email_address].nil?
        data['Address'] = input[:address] unless input[:address].nil?
        data['ShippingAddress'] = input[:shipping_address] unless input[:shipping_address].nil?
        data['MailingAddress'] = input[:mailing_address] unless input[:mailing_address].nil?
        data['BillingAddress'] = input[:billing_address] unless input[:billing_address].nil?
        data['Attributes'] = Builders::AttributeSourceIdMap.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # Map Builder for AttributeSourceIdMap
    class AttributeSourceIdMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ProfileIdToBeMergedList
    class ProfileIdToBeMergedList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutIntegration
    class PutIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/integrations',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['ObjectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['FlowDefinition'] = Builders::FlowDefinition.build(input[:flow_definition]) unless input[:flow_definition].nil?
        data['ObjectTypeNames'] = Builders::ObjectTypeNames.build(input[:object_type_names]) unless input[:object_type_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ObjectTypeNames
    class ObjectTypeNames
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PutProfileObject
    class PutProfileObject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/objects',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ObjectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        data['Object'] = input[:object] unless input[:object].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutProfileObjectType
    class PutProfileObjectType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:object_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :object_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/object-types/%<ObjectTypeName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            ObjectTypeName: Hearth::HTTP.uri_escape(input[:object_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['TemplateId'] = input[:template_id] unless input[:template_id].nil?
        data['ExpirationDays'] = input[:expiration_days] unless input[:expiration_days].nil?
        data['EncryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['AllowProfileCreation'] = input[:allow_profile_creation] unless input[:allow_profile_creation].nil?
        data['SourceLastUpdatedTimestampFormat'] = input[:source_last_updated_timestamp_format] unless input[:source_last_updated_timestamp_format].nil?
        data['Fields'] = Builders::FieldMap.build(input[:fields]) unless input[:fields].nil?
        data['Keys'] = Builders::KeyMap.build(input[:keys]) unless input[:keys].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for KeyMap
    class KeyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ObjectTypeKeyList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ObjectTypeKeyList
    class ObjectTypeKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ObjectTypeKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ObjectTypeKey
    class ObjectTypeKey
      def self.build(input)
        data = {}
        data['StandardIdentifiers'] = Builders::StandardIdentifierList.build(input[:standard_identifiers]) unless input[:standard_identifiers].nil?
        data['FieldNames'] = Builders::FieldNameList.build(input[:field_names]) unless input[:field_names].nil?
        data
      end
    end

    # List Builder for FieldNameList
    class FieldNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StandardIdentifierList
    class StandardIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for FieldMap
    class FieldMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ObjectTypeField.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ObjectTypeField
    class ObjectTypeField
      def self.build(input)
        data = {}
        data['Source'] = input[:source] unless input[:source].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data
      end
    end

    # Operation Builder for SearchProfiles
    class SearchProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles/search',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['KeyName'] = input[:key_name] unless input[:key_name].nil?
        data['Values'] = Builders::RequestValueList.build(input[:values]) unless input[:values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDomain
    class UpdateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultExpirationDays'] = input[:default_expiration_days] unless input[:default_expiration_days].nil?
        data['DefaultEncryptionKey'] = input[:default_encryption_key] unless input[:default_encryption_key].nil?
        data['DeadLetterQueueUrl'] = input[:dead_letter_queue_url] unless input[:dead_letter_queue_url].nil?
        data['Matching'] = Builders::MatchingRequest.build(input[:matching]) unless input[:matching].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProfile
    class UpdateProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domains/%<DomainName>s/profiles',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProfileId'] = input[:profile_id] unless input[:profile_id].nil?
        data['AdditionalInformation'] = input[:additional_information] unless input[:additional_information].nil?
        data['AccountNumber'] = input[:account_number] unless input[:account_number].nil?
        data['PartyType'] = input[:party_type] unless input[:party_type].nil?
        data['BusinessName'] = input[:business_name] unless input[:business_name].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['MiddleName'] = input[:middle_name] unless input[:middle_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['BirthDate'] = input[:birth_date] unless input[:birth_date].nil?
        data['Gender'] = input[:gender] unless input[:gender].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['MobilePhoneNumber'] = input[:mobile_phone_number] unless input[:mobile_phone_number].nil?
        data['HomePhoneNumber'] = input[:home_phone_number] unless input[:home_phone_number].nil?
        data['BusinessPhoneNumber'] = input[:business_phone_number] unless input[:business_phone_number].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['PersonalEmailAddress'] = input[:personal_email_address] unless input[:personal_email_address].nil?
        data['BusinessEmailAddress'] = input[:business_email_address] unless input[:business_email_address].nil?
        data['Address'] = Builders::UpdateAddress.build(input[:address]) unless input[:address].nil?
        data['ShippingAddress'] = Builders::UpdateAddress.build(input[:shipping_address]) unless input[:shipping_address].nil?
        data['MailingAddress'] = Builders::UpdateAddress.build(input[:mailing_address]) unless input[:mailing_address].nil?
        data['BillingAddress'] = Builders::UpdateAddress.build(input[:billing_address]) unless input[:billing_address].nil?
        data['Attributes'] = Builders::UpdateAttributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for UpdateAttributes
    class UpdateAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateAddress
    class UpdateAddress
      def self.build(input)
        data = {}
        data['Address1'] = input[:address1] unless input[:address1].nil?
        data['Address2'] = input[:address2] unless input[:address2].nil?
        data['Address3'] = input[:address3] unless input[:address3].nil?
        data['Address4'] = input[:address4] unless input[:address4].nil?
        data['City'] = input[:city] unless input[:city].nil?
        data['County'] = input[:county] unless input[:county].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['Province'] = input[:province] unless input[:province].nil?
        data['Country'] = input[:country] unless input[:country].nil?
        data['PostalCode'] = input[:postal_code] unless input[:postal_code].nil?
        data
      end
    end
  end
end
