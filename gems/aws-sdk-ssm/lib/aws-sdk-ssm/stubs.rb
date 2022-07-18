# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
  module Stubs

    # Operation Stubber for AddTagsToResource
    class AddTagsToResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateOpsItemRelatedItem
    class AssociateOpsItemRelatedItem
      def self.default(visited=[])
        {
          association_id: 'association_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelCommand
    class CancelCommand
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelMaintenanceWindowExecution
    class CancelMaintenanceWindowExecution
      def self.default(visited=[])
        {
          window_execution_id: 'window_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateActivation
    class CreateActivation
      def self.default(visited=[])
        {
          activation_id: 'activation_id',
          activation_code: 'activation_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActivationId'] = stub[:activation_id] unless stub[:activation_id].nil?
        data['ActivationCode'] = stub[:activation_code] unless stub[:activation_code].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAssociation
    class CreateAssociation
      def self.default(visited=[])
        {
          association_description: AssociationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationDescription'] = Stubs::AssociationDescription.stub(stub[:association_description]) unless stub[:association_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AssociationDescription
    class AssociationDescription
      def self.default(visited=[])
        return nil if visited.include?('AssociationDescription')
        visited = visited + ['AssociationDescription']
        {
          name: 'name',
          instance_id: 'instance_id',
          association_version: 'association_version',
          date: Time.now,
          last_update_association_date: Time.now,
          status: AssociationStatus.default(visited),
          overview: AssociationOverview.default(visited),
          document_version: 'document_version',
          automation_target_parameter_name: 'automation_target_parameter_name',
          parameters: Parameters.default(visited),
          association_id: 'association_id',
          targets: Targets.default(visited),
          schedule_expression: 'schedule_expression',
          output_location: InstanceAssociationOutputLocation.default(visited),
          last_execution_date: Time.now,
          last_successful_execution_date: Time.now,
          association_name: 'association_name',
          max_errors: 'max_errors',
          max_concurrency: 'max_concurrency',
          compliance_severity: 'compliance_severity',
          sync_compliance: 'sync_compliance',
          apply_only_at_cron_interval: false,
          calendar_names: CalendarNameOrARNList.default(visited),
          target_locations: TargetLocations.default(visited),
          schedule_offset: 1,
          target_maps: TargetMaps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationDescription.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data['LastUpdateAssociationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_association_date]).to_i unless stub[:last_update_association_date].nil?
        data['Status'] = Stubs::AssociationStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Overview'] = Stubs::AssociationOverview.stub(stub[:overview]) unless stub[:overview].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['AutomationTargetParameterName'] = stub[:automation_target_parameter_name] unless stub[:automation_target_parameter_name].nil?
        data['Parameters'] = Stubs::Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['OutputLocation'] = Stubs::InstanceAssociationOutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['LastSuccessfulExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_execution_date]).to_i unless stub[:last_successful_execution_date].nil?
        data['AssociationName'] = stub[:association_name] unless stub[:association_name].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['ComplianceSeverity'] = stub[:compliance_severity] unless stub[:compliance_severity].nil?
        data['SyncCompliance'] = stub[:sync_compliance] unless stub[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = stub[:apply_only_at_cron_interval] unless stub[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Stubs::CalendarNameOrARNList.stub(stub[:calendar_names]) unless stub[:calendar_names].nil?
        data['TargetLocations'] = Stubs::TargetLocations.stub(stub[:target_locations]) unless stub[:target_locations].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data
      end
    end

    # List Stubber for TargetMaps
    class TargetMaps
      def self.default(visited=[])
        return nil if visited.include?('TargetMaps')
        visited = visited + ['TargetMaps']
        [
          TargetMap.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetMap.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for TargetMap
    class TargetMap
      def self.default(visited=[])
        return nil if visited.include?('TargetMap')
        visited = visited + ['TargetMap']
        {
          test_key: TargetMapValueList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::TargetMapValueList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for TargetMapValueList
    class TargetMapValueList
      def self.default(visited=[])
        return nil if visited.include?('TargetMapValueList')
        visited = visited + ['TargetMapValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TargetLocations
    class TargetLocations
      def self.default(visited=[])
        return nil if visited.include?('TargetLocations')
        visited = visited + ['TargetLocations']
        [
          TargetLocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetLocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetLocation
    class TargetLocation
      def self.default(visited=[])
        return nil if visited.include?('TargetLocation')
        visited = visited + ['TargetLocation']
        {
          accounts: Accounts.default(visited),
          regions: Regions.default(visited),
          target_location_max_concurrency: 'target_location_max_concurrency',
          target_location_max_errors: 'target_location_max_errors',
          execution_role_name: 'execution_role_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetLocation.new
        data = {}
        data['Accounts'] = Stubs::Accounts.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['Regions'] = Stubs::Regions.stub(stub[:regions]) unless stub[:regions].nil?
        data['TargetLocationMaxConcurrency'] = stub[:target_location_max_concurrency] unless stub[:target_location_max_concurrency].nil?
        data['TargetLocationMaxErrors'] = stub[:target_location_max_errors] unless stub[:target_location_max_errors].nil?
        data['ExecutionRoleName'] = stub[:execution_role_name] unless stub[:execution_role_name].nil?
        data
      end
    end

    # List Stubber for Regions
    class Regions
      def self.default(visited=[])
        return nil if visited.include?('Regions')
        visited = visited + ['Regions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Accounts
    class Accounts
      def self.default(visited=[])
        return nil if visited.include?('Accounts')
        visited = visited + ['Accounts']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CalendarNameOrARNList
    class CalendarNameOrARNList
      def self.default(visited=[])
        return nil if visited.include?('CalendarNameOrARNList')
        visited = visited + ['CalendarNameOrARNList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceAssociationOutputLocation
    class InstanceAssociationOutputLocation
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationOutputLocation')
        visited = visited + ['InstanceAssociationOutputLocation']
        {
          s3_location: S3OutputLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAssociationOutputLocation.new
        data = {}
        data['S3Location'] = Stubs::S3OutputLocation.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3OutputLocation
    class S3OutputLocation
      def self.default(visited=[])
        return nil if visited.include?('S3OutputLocation')
        visited = visited + ['S3OutputLocation']
        {
          output_s3_region: 'output_s3_region',
          output_s3_bucket_name: 'output_s3_bucket_name',
          output_s3_key_prefix: 'output_s3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3OutputLocation.new
        data = {}
        data['OutputS3Region'] = stub[:output_s3_region] unless stub[:output_s3_region].nil?
        data['OutputS3BucketName'] = stub[:output_s3_bucket_name] unless stub[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = stub[:output_s3_key_prefix] unless stub[:output_s3_key_prefix].nil?
        data
      end
    end

    # List Stubber for Targets
    class Targets
      def self.default(visited=[])
        return nil if visited.include?('Targets')
        visited = visited + ['Targets']
        [
          Target.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Target.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Target
    class Target
      def self.default(visited=[])
        return nil if visited.include?('Target')
        visited = visited + ['Target']
        {
          key: 'key',
          values: TargetValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Target.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::TargetValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for TargetValues
    class TargetValues
      def self.default(visited=[])
        return nil if visited.include?('TargetValues')
        visited = visited + ['TargetValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for Parameters
    class Parameters
      def self.default(visited=[])
        return nil if visited.include?('Parameters')
        visited = visited + ['Parameters']
        {
          test_key: ParameterValueList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ParameterValueList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ParameterValueList
    class ParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('ParameterValueList')
        visited = visited + ['ParameterValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationOverview
    class AssociationOverview
      def self.default(visited=[])
        return nil if visited.include?('AssociationOverview')
        visited = visited + ['AssociationOverview']
        {
          status: 'status',
          detailed_status: 'detailed_status',
          association_status_aggregated_count: AssociationStatusAggregatedCount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationOverview.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DetailedStatus'] = stub[:detailed_status] unless stub[:detailed_status].nil?
        data['AssociationStatusAggregatedCount'] = Stubs::AssociationStatusAggregatedCount.stub(stub[:association_status_aggregated_count]) unless stub[:association_status_aggregated_count].nil?
        data
      end
    end

    # Map Stubber for AssociationStatusAggregatedCount
    class AssociationStatusAggregatedCount
      def self.default(visited=[])
        return nil if visited.include?('AssociationStatusAggregatedCount')
        visited = visited + ['AssociationStatusAggregatedCount']
        {
          test_key: 1
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationStatus
    class AssociationStatus
      def self.default(visited=[])
        return nil if visited.include?('AssociationStatus')
        visited = visited + ['AssociationStatus']
        {
          date: Time.now,
          name: 'name',
          message: 'message',
          additional_info: 'additional_info',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationStatus.new
        data = {}
        data['Date'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date]).to_i unless stub[:date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['AdditionalInfo'] = stub[:additional_info] unless stub[:additional_info].nil?
        data
      end
    end

    # Operation Stubber for CreateAssociationBatch
    class CreateAssociationBatch
      def self.default(visited=[])
        {
          successful: AssociationDescriptionList.default(visited),
          failed: FailedCreateAssociationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Successful'] = Stubs::AssociationDescriptionList.stub(stub[:successful]) unless stub[:successful].nil?
        data['Failed'] = Stubs::FailedCreateAssociationList.stub(stub[:failed]) unless stub[:failed].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedCreateAssociationList
    class FailedCreateAssociationList
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateAssociationList')
        visited = visited + ['FailedCreateAssociationList']
        [
          FailedCreateAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FailedCreateAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedCreateAssociation
    class FailedCreateAssociation
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateAssociation')
        visited = visited + ['FailedCreateAssociation']
        {
          entry: CreateAssociationBatchRequestEntry.default(visited),
          message: 'message',
          fault: 'fault',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedCreateAssociation.new
        data = {}
        data['Entry'] = Stubs::CreateAssociationBatchRequestEntry.stub(stub[:entry]) unless stub[:entry].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Fault'] = stub[:fault] unless stub[:fault].nil?
        data
      end
    end

    # Structure Stubber for CreateAssociationBatchRequestEntry
    class CreateAssociationBatchRequestEntry
      def self.default(visited=[])
        return nil if visited.include?('CreateAssociationBatchRequestEntry')
        visited = visited + ['CreateAssociationBatchRequestEntry']
        {
          name: 'name',
          instance_id: 'instance_id',
          parameters: Parameters.default(visited),
          automation_target_parameter_name: 'automation_target_parameter_name',
          document_version: 'document_version',
          targets: Targets.default(visited),
          schedule_expression: 'schedule_expression',
          output_location: InstanceAssociationOutputLocation.default(visited),
          association_name: 'association_name',
          max_errors: 'max_errors',
          max_concurrency: 'max_concurrency',
          compliance_severity: 'compliance_severity',
          sync_compliance: 'sync_compliance',
          apply_only_at_cron_interval: false,
          calendar_names: CalendarNameOrARNList.default(visited),
          target_locations: TargetLocations.default(visited),
          schedule_offset: 1,
          target_maps: TargetMaps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateAssociationBatchRequestEntry.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Parameters'] = Stubs::Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['AutomationTargetParameterName'] = stub[:automation_target_parameter_name] unless stub[:automation_target_parameter_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['OutputLocation'] = Stubs::InstanceAssociationOutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['AssociationName'] = stub[:association_name] unless stub[:association_name].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['ComplianceSeverity'] = stub[:compliance_severity] unless stub[:compliance_severity].nil?
        data['SyncCompliance'] = stub[:sync_compliance] unless stub[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = stub[:apply_only_at_cron_interval] unless stub[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Stubs::CalendarNameOrARNList.stub(stub[:calendar_names]) unless stub[:calendar_names].nil?
        data['TargetLocations'] = Stubs::TargetLocations.stub(stub[:target_locations]) unless stub[:target_locations].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data
      end
    end

    # List Stubber for AssociationDescriptionList
    class AssociationDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('AssociationDescriptionList')
        visited = visited + ['AssociationDescriptionList']
        [
          AssociationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDocument
    class CreateDocument
      def self.default(visited=[])
        {
          document_description: DocumentDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentDescription'] = Stubs::DocumentDescription.stub(stub[:document_description]) unless stub[:document_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DocumentDescription
    class DocumentDescription
      def self.default(visited=[])
        return nil if visited.include?('DocumentDescription')
        visited = visited + ['DocumentDescription']
        {
          sha1: 'sha1',
          member_hash: 'member_hash',
          hash_type: 'hash_type',
          name: 'name',
          display_name: 'display_name',
          version_name: 'version_name',
          owner: 'owner',
          created_date: Time.now,
          status: 'status',
          status_information: 'status_information',
          document_version: 'document_version',
          description: 'description',
          parameters: DocumentParameterList.default(visited),
          platform_types: PlatformTypeList.default(visited),
          document_type: 'document_type',
          schema_version: 'schema_version',
          latest_version: 'latest_version',
          default_version: 'default_version',
          document_format: 'document_format',
          target_type: 'target_type',
          tags: TagList.default(visited),
          attachments_information: AttachmentInformationList.default(visited),
          requires: DocumentRequiresList.default(visited),
          author: 'author',
          review_information: ReviewInformationList.default(visited),
          approved_version: 'approved_version',
          pending_review_version: 'pending_review_version',
          review_status: 'review_status',
          category: CategoryList.default(visited),
          category_enum: CategoryEnumList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentDescription.new
        data = {}
        data['Sha1'] = stub[:sha1] unless stub[:sha1].nil?
        data['Hash'] = stub[:member_hash] unless stub[:member_hash].nil?
        data['HashType'] = stub[:hash_type] unless stub[:hash_type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusInformation'] = stub[:status_information] unless stub[:status_information].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Parameters'] = Stubs::DocumentParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['PlatformTypes'] = Stubs::PlatformTypeList.stub(stub[:platform_types]) unless stub[:platform_types].nil?
        data['DocumentType'] = stub[:document_type] unless stub[:document_type].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['LatestVersion'] = stub[:latest_version] unless stub[:latest_version].nil?
        data['DefaultVersion'] = stub[:default_version] unless stub[:default_version].nil?
        data['DocumentFormat'] = stub[:document_format] unless stub[:document_format].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['AttachmentsInformation'] = Stubs::AttachmentInformationList.stub(stub[:attachments_information]) unless stub[:attachments_information].nil?
        data['Requires'] = Stubs::DocumentRequiresList.stub(stub[:requires]) unless stub[:requires].nil?
        data['Author'] = stub[:author] unless stub[:author].nil?
        data['ReviewInformation'] = Stubs::ReviewInformationList.stub(stub[:review_information]) unless stub[:review_information].nil?
        data['ApprovedVersion'] = stub[:approved_version] unless stub[:approved_version].nil?
        data['PendingReviewVersion'] = stub[:pending_review_version] unless stub[:pending_review_version].nil?
        data['ReviewStatus'] = stub[:review_status] unless stub[:review_status].nil?
        data['Category'] = Stubs::CategoryList.stub(stub[:category]) unless stub[:category].nil?
        data['CategoryEnum'] = Stubs::CategoryEnumList.stub(stub[:category_enum]) unless stub[:category_enum].nil?
        data
      end
    end

    # List Stubber for CategoryEnumList
    class CategoryEnumList
      def self.default(visited=[])
        return nil if visited.include?('CategoryEnumList')
        visited = visited + ['CategoryEnumList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CategoryList
    class CategoryList
      def self.default(visited=[])
        return nil if visited.include?('CategoryList')
        visited = visited + ['CategoryList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ReviewInformationList
    class ReviewInformationList
      def self.default(visited=[])
        return nil if visited.include?('ReviewInformationList')
        visited = visited + ['ReviewInformationList']
        [
          ReviewInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReviewInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReviewInformation
    class ReviewInformation
      def self.default(visited=[])
        return nil if visited.include?('ReviewInformation')
        visited = visited + ['ReviewInformation']
        {
          reviewed_time: Time.now,
          status: 'status',
          reviewer: 'reviewer',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewInformation.new
        data = {}
        data['ReviewedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:reviewed_time]).to_i unless stub[:reviewed_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Reviewer'] = stub[:reviewer] unless stub[:reviewer].nil?
        data
      end
    end

    # List Stubber for DocumentRequiresList
    class DocumentRequiresList
      def self.default(visited=[])
        return nil if visited.include?('DocumentRequiresList')
        visited = visited + ['DocumentRequiresList']
        [
          DocumentRequires.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentRequires.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentRequires
    class DocumentRequires
      def self.default(visited=[])
        return nil if visited.include?('DocumentRequires')
        visited = visited + ['DocumentRequires']
        {
          name: 'name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentRequires.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # List Stubber for AttachmentInformationList
    class AttachmentInformationList
      def self.default(visited=[])
        return nil if visited.include?('AttachmentInformationList')
        visited = visited + ['AttachmentInformationList']
        [
          AttachmentInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttachmentInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachmentInformation
    class AttachmentInformation
      def self.default(visited=[])
        return nil if visited.include?('AttachmentInformation')
        visited = visited + ['AttachmentInformation']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachmentInformation.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for PlatformTypeList
    class PlatformTypeList
      def self.default(visited=[])
        return nil if visited.include?('PlatformTypeList')
        visited = visited + ['PlatformTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for DocumentParameterList
    class DocumentParameterList
      def self.default(visited=[])
        return nil if visited.include?('DocumentParameterList')
        visited = visited + ['DocumentParameterList']
        [
          DocumentParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentParameter
    class DocumentParameter
      def self.default(visited=[])
        return nil if visited.include?('DocumentParameter')
        visited = visited + ['DocumentParameter']
        {
          name: 'name',
          type: 'type',
          description: 'description',
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Operation Stubber for CreateMaintenanceWindow
    class CreateMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOpsItem
    class CreateOpsItem
      def self.default(visited=[])
        {
          ops_item_id: 'ops_item_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOpsMetadata
    class CreateOpsMetadata
      def self.default(visited=[])
        {
          ops_metadata_arn: 'ops_metadata_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OpsMetadataArn'] = stub[:ops_metadata_arn] unless stub[:ops_metadata_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePatchBaseline
    class CreatePatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateResourceDataSync
    class CreateResourceDataSync
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteActivation
    class DeleteActivation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAssociation
    class DeleteAssociation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDocument
    class DeleteDocument
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInventory
    class DeleteInventory
      def self.default(visited=[])
        {
          deletion_id: 'deletion_id',
          type_name: 'type_name',
          deletion_summary: InventoryDeletionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeletionId'] = stub[:deletion_id] unless stub[:deletion_id].nil?
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['DeletionSummary'] = Stubs::InventoryDeletionSummary.stub(stub[:deletion_summary]) unless stub[:deletion_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InventoryDeletionSummary
    class InventoryDeletionSummary
      def self.default(visited=[])
        return nil if visited.include?('InventoryDeletionSummary')
        visited = visited + ['InventoryDeletionSummary']
        {
          total_count: 1,
          remaining_count: 1,
          summary_items: InventoryDeletionSummaryItems.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryDeletionSummary.new
        data = {}
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['RemainingCount'] = stub[:remaining_count] unless stub[:remaining_count].nil?
        data['SummaryItems'] = Stubs::InventoryDeletionSummaryItems.stub(stub[:summary_items]) unless stub[:summary_items].nil?
        data
      end
    end

    # List Stubber for InventoryDeletionSummaryItems
    class InventoryDeletionSummaryItems
      def self.default(visited=[])
        return nil if visited.include?('InventoryDeletionSummaryItems')
        visited = visited + ['InventoryDeletionSummaryItems']
        [
          InventoryDeletionSummaryItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryDeletionSummaryItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryDeletionSummaryItem
    class InventoryDeletionSummaryItem
      def self.default(visited=[])
        return nil if visited.include?('InventoryDeletionSummaryItem')
        visited = visited + ['InventoryDeletionSummaryItem']
        {
          version: 'version',
          count: 1,
          remaining_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryDeletionSummaryItem.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['RemainingCount'] = stub[:remaining_count] unless stub[:remaining_count].nil?
        data
      end
    end

    # Operation Stubber for DeleteMaintenanceWindow
    class DeleteMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOpsMetadata
    class DeleteOpsMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteParameter
    class DeleteParameter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteParameters
    class DeleteParameters
      def self.default(visited=[])
        {
          deleted_parameters: ParameterNameList.default(visited),
          invalid_parameters: ParameterNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeletedParameters'] = Stubs::ParameterNameList.stub(stub[:deleted_parameters]) unless stub[:deleted_parameters].nil?
        data['InvalidParameters'] = Stubs::ParameterNameList.stub(stub[:invalid_parameters]) unless stub[:invalid_parameters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterNameList
    class ParameterNameList
      def self.default(visited=[])
        return nil if visited.include?('ParameterNameList')
        visited = visited + ['ParameterNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeletePatchBaseline
    class DeletePatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourceDataSync
    class DeleteResourceDataSync
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterManagedInstance
    class DeregisterManagedInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterPatchBaselineForPatchGroup
    class DeregisterPatchBaselineForPatchGroup
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          patch_group: 'patch_group',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterTargetFromMaintenanceWindow
    class DeregisterTargetFromMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
          window_target_id: 'window_target_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterTaskFromMaintenanceWindow
    class DeregisterTaskFromMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
          window_task_id: 'window_task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTaskId'] = stub[:window_task_id] unless stub[:window_task_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeActivations
    class DescribeActivations
      def self.default(visited=[])
        {
          activation_list: ActivationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ActivationList'] = Stubs::ActivationList.stub(stub[:activation_list]) unless stub[:activation_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ActivationList
    class ActivationList
      def self.default(visited=[])
        return nil if visited.include?('ActivationList')
        visited = visited + ['ActivationList']
        [
          Activation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Activation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Activation
    class Activation
      def self.default(visited=[])
        return nil if visited.include?('Activation')
        visited = visited + ['Activation']
        {
          activation_id: 'activation_id',
          description: 'description',
          default_instance_name: 'default_instance_name',
          iam_role: 'iam_role',
          registration_limit: 1,
          registrations_count: 1,
          expiration_date: Time.now,
          expired: false,
          created_date: Time.now,
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Activation.new
        data = {}
        data['ActivationId'] = stub[:activation_id] unless stub[:activation_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultInstanceName'] = stub[:default_instance_name] unless stub[:default_instance_name].nil?
        data['IamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['RegistrationLimit'] = stub[:registration_limit] unless stub[:registration_limit].nil?
        data['RegistrationsCount'] = stub[:registrations_count] unless stub[:registrations_count].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['Expired'] = stub[:expired] unless stub[:expired].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeAssociation
    class DescribeAssociation
      def self.default(visited=[])
        {
          association_description: AssociationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationDescription'] = Stubs::AssociationDescription.stub(stub[:association_description]) unless stub[:association_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAssociationExecutionTargets
    class DescribeAssociationExecutionTargets
      def self.default(visited=[])
        {
          association_execution_targets: AssociationExecutionTargetsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationExecutionTargets'] = Stubs::AssociationExecutionTargetsList.stub(stub[:association_execution_targets]) unless stub[:association_execution_targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociationExecutionTargetsList
    class AssociationExecutionTargetsList
      def self.default(visited=[])
        return nil if visited.include?('AssociationExecutionTargetsList')
        visited = visited + ['AssociationExecutionTargetsList']
        [
          AssociationExecutionTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociationExecutionTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationExecutionTarget
    class AssociationExecutionTarget
      def self.default(visited=[])
        return nil if visited.include?('AssociationExecutionTarget')
        visited = visited + ['AssociationExecutionTarget']
        {
          association_id: 'association_id',
          association_version: 'association_version',
          execution_id: 'execution_id',
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          status: 'status',
          detailed_status: 'detailed_status',
          last_execution_date: Time.now,
          output_source: OutputSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationExecutionTarget.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DetailedStatus'] = stub[:detailed_status] unless stub[:detailed_status].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['OutputSource'] = Stubs::OutputSource.stub(stub[:output_source]) unless stub[:output_source].nil?
        data
      end
    end

    # Structure Stubber for OutputSource
    class OutputSource
      def self.default(visited=[])
        return nil if visited.include?('OutputSource')
        visited = visited + ['OutputSource']
        {
          output_source_id: 'output_source_id',
          output_source_type: 'output_source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputSource.new
        data = {}
        data['OutputSourceId'] = stub[:output_source_id] unless stub[:output_source_id].nil?
        data['OutputSourceType'] = stub[:output_source_type] unless stub[:output_source_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeAssociationExecutions
    class DescribeAssociationExecutions
      def self.default(visited=[])
        {
          association_executions: AssociationExecutionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationExecutions'] = Stubs::AssociationExecutionsList.stub(stub[:association_executions]) unless stub[:association_executions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociationExecutionsList
    class AssociationExecutionsList
      def self.default(visited=[])
        return nil if visited.include?('AssociationExecutionsList')
        visited = visited + ['AssociationExecutionsList']
        [
          AssociationExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociationExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationExecution
    class AssociationExecution
      def self.default(visited=[])
        return nil if visited.include?('AssociationExecution')
        visited = visited + ['AssociationExecution']
        {
          association_id: 'association_id',
          association_version: 'association_version',
          execution_id: 'execution_id',
          status: 'status',
          detailed_status: 'detailed_status',
          created_time: Time.now,
          last_execution_date: Time.now,
          resource_count_by_status: 'resource_count_by_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationExecution.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DetailedStatus'] = stub[:detailed_status] unless stub[:detailed_status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['ResourceCountByStatus'] = stub[:resource_count_by_status] unless stub[:resource_count_by_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeAutomationExecutions
    class DescribeAutomationExecutions
      def self.default(visited=[])
        {
          automation_execution_metadata_list: AutomationExecutionMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutomationExecutionMetadataList'] = Stubs::AutomationExecutionMetadataList.stub(stub[:automation_execution_metadata_list]) unless stub[:automation_execution_metadata_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutomationExecutionMetadataList
    class AutomationExecutionMetadataList
      def self.default(visited=[])
        return nil if visited.include?('AutomationExecutionMetadataList')
        visited = visited + ['AutomationExecutionMetadataList']
        [
          AutomationExecutionMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutomationExecutionMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutomationExecutionMetadata
    class AutomationExecutionMetadata
      def self.default(visited=[])
        return nil if visited.include?('AutomationExecutionMetadata')
        visited = visited + ['AutomationExecutionMetadata']
        {
          automation_execution_id: 'automation_execution_id',
          document_name: 'document_name',
          document_version: 'document_version',
          automation_execution_status: 'automation_execution_status',
          execution_start_time: Time.now,
          execution_end_time: Time.now,
          executed_by: 'executed_by',
          log_file: 'log_file',
          outputs: AutomationParameterMap.default(visited),
          mode: 'mode',
          parent_automation_execution_id: 'parent_automation_execution_id',
          current_step_name: 'current_step_name',
          current_action: 'current_action',
          failure_message: 'failure_message',
          target_parameter_name: 'target_parameter_name',
          targets: Targets.default(visited),
          target_maps: TargetMaps.default(visited),
          resolved_targets: ResolvedTargets.default(visited),
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          target: 'target',
          automation_type: 'automation_type',
          automation_subtype: 'automation_subtype',
          scheduled_time: Time.now,
          runbooks: Runbooks.default(visited),
          ops_item_id: 'ops_item_id',
          association_id: 'association_id',
          change_request_name: 'change_request_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomationExecutionMetadata.new
        data = {}
        data['AutomationExecutionId'] = stub[:automation_execution_id] unless stub[:automation_execution_id].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['AutomationExecutionStatus'] = stub[:automation_execution_status] unless stub[:automation_execution_status].nil?
        data['ExecutionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_start_time]).to_i unless stub[:execution_start_time].nil?
        data['ExecutionEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_end_time]).to_i unless stub[:execution_end_time].nil?
        data['ExecutedBy'] = stub[:executed_by] unless stub[:executed_by].nil?
        data['LogFile'] = stub[:log_file] unless stub[:log_file].nil?
        data['Outputs'] = Stubs::AutomationParameterMap.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['ParentAutomationExecutionId'] = stub[:parent_automation_execution_id] unless stub[:parent_automation_execution_id].nil?
        data['CurrentStepName'] = stub[:current_step_name] unless stub[:current_step_name].nil?
        data['CurrentAction'] = stub[:current_action] unless stub[:current_action].nil?
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['TargetParameterName'] = stub[:target_parameter_name] unless stub[:target_parameter_name].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data['ResolvedTargets'] = Stubs::ResolvedTargets.stub(stub[:resolved_targets]) unless stub[:resolved_targets].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['AutomationType'] = stub[:automation_type] unless stub[:automation_type].nil?
        data['AutomationSubtype'] = stub[:automation_subtype] unless stub[:automation_subtype].nil?
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_time]).to_i unless stub[:scheduled_time].nil?
        data['Runbooks'] = Stubs::Runbooks.stub(stub[:runbooks]) unless stub[:runbooks].nil?
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['ChangeRequestName'] = stub[:change_request_name] unless stub[:change_request_name].nil?
        data
      end
    end

    # List Stubber for Runbooks
    class Runbooks
      def self.default(visited=[])
        return nil if visited.include?('Runbooks')
        visited = visited + ['Runbooks']
        [
          Runbook.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Runbook.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Runbook
    class Runbook
      def self.default(visited=[])
        return nil if visited.include?('Runbook')
        visited = visited + ['Runbook']
        {
          document_name: 'document_name',
          document_version: 'document_version',
          parameters: AutomationParameterMap.default(visited),
          target_parameter_name: 'target_parameter_name',
          targets: Targets.default(visited),
          target_maps: TargetMaps.default(visited),
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          target_locations: TargetLocations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Runbook.new
        data = {}
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Parameters'] = Stubs::AutomationParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['TargetParameterName'] = stub[:target_parameter_name] unless stub[:target_parameter_name].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['TargetLocations'] = Stubs::TargetLocations.stub(stub[:target_locations]) unless stub[:target_locations].nil?
        data
      end
    end

    # Map Stubber for AutomationParameterMap
    class AutomationParameterMap
      def self.default(visited=[])
        return nil if visited.include?('AutomationParameterMap')
        visited = visited + ['AutomationParameterMap']
        {
          test_key: AutomationParameterValueList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AutomationParameterValueList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for AutomationParameterValueList
    class AutomationParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('AutomationParameterValueList')
        visited = visited + ['AutomationParameterValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResolvedTargets
    class ResolvedTargets
      def self.default(visited=[])
        return nil if visited.include?('ResolvedTargets')
        visited = visited + ['ResolvedTargets']
        {
          parameter_values: TargetParameterList.default(visited),
          truncated: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolvedTargets.new
        data = {}
        data['ParameterValues'] = Stubs::TargetParameterList.stub(stub[:parameter_values]) unless stub[:parameter_values].nil?
        data['Truncated'] = stub[:truncated] unless stub[:truncated].nil?
        data
      end
    end

    # List Stubber for TargetParameterList
    class TargetParameterList
      def self.default(visited=[])
        return nil if visited.include?('TargetParameterList')
        visited = visited + ['TargetParameterList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeAutomationStepExecutions
    class DescribeAutomationStepExecutions
      def self.default(visited=[])
        {
          step_executions: StepExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StepExecutions'] = Stubs::StepExecutionList.stub(stub[:step_executions]) unless stub[:step_executions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StepExecutionList
    class StepExecutionList
      def self.default(visited=[])
        return nil if visited.include?('StepExecutionList')
        visited = visited + ['StepExecutionList']
        [
          StepExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StepExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StepExecution
    class StepExecution
      def self.default(visited=[])
        return nil if visited.include?('StepExecution')
        visited = visited + ['StepExecution']
        {
          step_name: 'step_name',
          action: 'action',
          timeout_seconds: 1,
          on_failure: 'on_failure',
          max_attempts: 1,
          execution_start_time: Time.now,
          execution_end_time: Time.now,
          step_status: 'step_status',
          response_code: 'response_code',
          inputs: NormalStringMap.default(visited),
          outputs: AutomationParameterMap.default(visited),
          response: 'response',
          failure_message: 'failure_message',
          failure_details: FailureDetails.default(visited),
          step_execution_id: 'step_execution_id',
          overridden_parameters: AutomationParameterMap.default(visited),
          is_end: false,
          next_step: 'next_step',
          is_critical: false,
          valid_next_steps: ValidNextStepList.default(visited),
          targets: Targets.default(visited),
          target_location: TargetLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StepExecution.new
        data = {}
        data['StepName'] = stub[:step_name] unless stub[:step_name].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['TimeoutSeconds'] = stub[:timeout_seconds] unless stub[:timeout_seconds].nil?
        data['OnFailure'] = stub[:on_failure] unless stub[:on_failure].nil?
        data['MaxAttempts'] = stub[:max_attempts] unless stub[:max_attempts].nil?
        data['ExecutionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_start_time]).to_i unless stub[:execution_start_time].nil?
        data['ExecutionEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_end_time]).to_i unless stub[:execution_end_time].nil?
        data['StepStatus'] = stub[:step_status] unless stub[:step_status].nil?
        data['ResponseCode'] = stub[:response_code] unless stub[:response_code].nil?
        data['Inputs'] = Stubs::NormalStringMap.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Outputs'] = Stubs::AutomationParameterMap.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['Response'] = stub[:response] unless stub[:response].nil?
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['StepExecutionId'] = stub[:step_execution_id] unless stub[:step_execution_id].nil?
        data['OverriddenParameters'] = Stubs::AutomationParameterMap.stub(stub[:overridden_parameters]) unless stub[:overridden_parameters].nil?
        data['IsEnd'] = stub[:is_end] unless stub[:is_end].nil?
        data['NextStep'] = stub[:next_step] unless stub[:next_step].nil?
        data['IsCritical'] = stub[:is_critical] unless stub[:is_critical].nil?
        data['ValidNextSteps'] = Stubs::ValidNextStepList.stub(stub[:valid_next_steps]) unless stub[:valid_next_steps].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TargetLocation'] = Stubs::TargetLocation.stub(stub[:target_location]) unless stub[:target_location].nil?
        data
      end
    end

    # List Stubber for ValidNextStepList
    class ValidNextStepList
      def self.default(visited=[])
        return nil if visited.include?('ValidNextStepList')
        visited = visited + ['ValidNextStepList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailureDetails
    class FailureDetails
      def self.default(visited=[])
        return nil if visited.include?('FailureDetails')
        visited = visited + ['FailureDetails']
        {
          failure_stage: 'failure_stage',
          failure_type: 'failure_type',
          details: AutomationParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureDetails.new
        data = {}
        data['FailureStage'] = stub[:failure_stage] unless stub[:failure_stage].nil?
        data['FailureType'] = stub[:failure_type] unless stub[:failure_type].nil?
        data['Details'] = Stubs::AutomationParameterMap.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Map Stubber for NormalStringMap
    class NormalStringMap
      def self.default(visited=[])
        return nil if visited.include?('NormalStringMap')
        visited = visited + ['NormalStringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeAvailablePatches
    class DescribeAvailablePatches
      def self.default(visited=[])
        {
          patches: PatchList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Patches'] = Stubs::PatchList.stub(stub[:patches]) unless stub[:patches].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchList
    class PatchList
      def self.default(visited=[])
        return nil if visited.include?('PatchList')
        visited = visited + ['PatchList']
        [
          Patch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Patch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Patch
    class Patch
      def self.default(visited=[])
        return nil if visited.include?('Patch')
        visited = visited + ['Patch']
        {
          id: 'id',
          release_date: Time.now,
          title: 'title',
          description: 'description',
          content_url: 'content_url',
          vendor: 'vendor',
          product_family: 'product_family',
          product: 'product',
          classification: 'classification',
          msrc_severity: 'msrc_severity',
          kb_number: 'kb_number',
          msrc_number: 'msrc_number',
          language: 'language',
          advisory_ids: PatchAdvisoryIdList.default(visited),
          bugzilla_ids: PatchBugzillaIdList.default(visited),
          cve_ids: PatchCVEIdList.default(visited),
          name: 'name',
          epoch: 1,
          version: 'version',
          release: 'release',
          arch: 'arch',
          severity: 'severity',
          repository: 'repository',
        }
      end

      def self.stub(stub)
        stub ||= Types::Patch.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ReleaseDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:release_date]).to_i unless stub[:release_date].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ContentUrl'] = stub[:content_url] unless stub[:content_url].nil?
        data['Vendor'] = stub[:vendor] unless stub[:vendor].nil?
        data['ProductFamily'] = stub[:product_family] unless stub[:product_family].nil?
        data['Product'] = stub[:product] unless stub[:product].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['MsrcSeverity'] = stub[:msrc_severity] unless stub[:msrc_severity].nil?
        data['KbNumber'] = stub[:kb_number] unless stub[:kb_number].nil?
        data['MsrcNumber'] = stub[:msrc_number] unless stub[:msrc_number].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data['AdvisoryIds'] = Stubs::PatchAdvisoryIdList.stub(stub[:advisory_ids]) unless stub[:advisory_ids].nil?
        data['BugzillaIds'] = Stubs::PatchBugzillaIdList.stub(stub[:bugzilla_ids]) unless stub[:bugzilla_ids].nil?
        data['CVEIds'] = Stubs::PatchCVEIdList.stub(stub[:cve_ids]) unless stub[:cve_ids].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Epoch'] = stub[:epoch] unless stub[:epoch].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Release'] = stub[:release] unless stub[:release].nil?
        data['Arch'] = stub[:arch] unless stub[:arch].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Repository'] = stub[:repository] unless stub[:repository].nil?
        data
      end
    end

    # List Stubber for PatchCVEIdList
    class PatchCVEIdList
      def self.default(visited=[])
        return nil if visited.include?('PatchCVEIdList')
        visited = visited + ['PatchCVEIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for PatchBugzillaIdList
    class PatchBugzillaIdList
      def self.default(visited=[])
        return nil if visited.include?('PatchBugzillaIdList')
        visited = visited + ['PatchBugzillaIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for PatchAdvisoryIdList
    class PatchAdvisoryIdList
      def self.default(visited=[])
        return nil if visited.include?('PatchAdvisoryIdList')
        visited = visited + ['PatchAdvisoryIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDocument
    class DescribeDocument
      def self.default(visited=[])
        {
          document: DocumentDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Document'] = Stubs::DocumentDescription.stub(stub[:document]) unless stub[:document].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDocumentPermission
    class DescribeDocumentPermission
      def self.default(visited=[])
        {
          account_ids: AccountIdList.default(visited),
          account_sharing_info_list: AccountSharingInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountIds'] = Stubs::AccountIdList.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['AccountSharingInfoList'] = Stubs::AccountSharingInfoList.stub(stub[:account_sharing_info_list]) unless stub[:account_sharing_info_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountSharingInfoList
    class AccountSharingInfoList
      def self.default(visited=[])
        return nil if visited.include?('AccountSharingInfoList')
        visited = visited + ['AccountSharingInfoList']
        [
          AccountSharingInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountSharingInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountSharingInfo
    class AccountSharingInfo
      def self.default(visited=[])
        return nil if visited.include?('AccountSharingInfo')
        visited = visited + ['AccountSharingInfo']
        {
          account_id: 'account_id',
          shared_document_version: 'shared_document_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountSharingInfo.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['SharedDocumentVersion'] = stub[:shared_document_version] unless stub[:shared_document_version].nil?
        data
      end
    end

    # List Stubber for AccountIdList
    class AccountIdList
      def self.default(visited=[])
        return nil if visited.include?('AccountIdList')
        visited = visited + ['AccountIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEffectiveInstanceAssociations
    class DescribeEffectiveInstanceAssociations
      def self.default(visited=[])
        {
          associations: InstanceAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Associations'] = Stubs::InstanceAssociationList.stub(stub[:associations]) unless stub[:associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceAssociationList
    class InstanceAssociationList
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationList')
        visited = visited + ['InstanceAssociationList']
        [
          InstanceAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceAssociation
    class InstanceAssociation
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociation')
        visited = visited + ['InstanceAssociation']
        {
          association_id: 'association_id',
          instance_id: 'instance_id',
          content: 'content',
          association_version: 'association_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAssociation.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data
      end
    end

    # Operation Stubber for DescribeEffectivePatchesForPatchBaseline
    class DescribeEffectivePatchesForPatchBaseline
      def self.default(visited=[])
        {
          effective_patches: EffectivePatchList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EffectivePatches'] = Stubs::EffectivePatchList.stub(stub[:effective_patches]) unless stub[:effective_patches].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EffectivePatchList
    class EffectivePatchList
      def self.default(visited=[])
        return nil if visited.include?('EffectivePatchList')
        visited = visited + ['EffectivePatchList']
        [
          EffectivePatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EffectivePatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EffectivePatch
    class EffectivePatch
      def self.default(visited=[])
        return nil if visited.include?('EffectivePatch')
        visited = visited + ['EffectivePatch']
        {
          patch: Patch.default(visited),
          patch_status: PatchStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EffectivePatch.new
        data = {}
        data['Patch'] = Stubs::Patch.stub(stub[:patch]) unless stub[:patch].nil?
        data['PatchStatus'] = Stubs::PatchStatus.stub(stub[:patch_status]) unless stub[:patch_status].nil?
        data
      end
    end

    # Structure Stubber for PatchStatus
    class PatchStatus
      def self.default(visited=[])
        return nil if visited.include?('PatchStatus')
        visited = visited + ['PatchStatus']
        {
          deployment_status: 'deployment_status',
          compliance_level: 'compliance_level',
          approval_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchStatus.new
        data = {}
        data['DeploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['ComplianceLevel'] = stub[:compliance_level] unless stub[:compliance_level].nil?
        data['ApprovalDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approval_date]).to_i unless stub[:approval_date].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstanceAssociationsStatus
    class DescribeInstanceAssociationsStatus
      def self.default(visited=[])
        {
          instance_association_status_infos: InstanceAssociationStatusInfos.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceAssociationStatusInfos'] = Stubs::InstanceAssociationStatusInfos.stub(stub[:instance_association_status_infos]) unless stub[:instance_association_status_infos].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceAssociationStatusInfos
    class InstanceAssociationStatusInfos
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationStatusInfos')
        visited = visited + ['InstanceAssociationStatusInfos']
        [
          InstanceAssociationStatusInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceAssociationStatusInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceAssociationStatusInfo
    class InstanceAssociationStatusInfo
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationStatusInfo')
        visited = visited + ['InstanceAssociationStatusInfo']
        {
          association_id: 'association_id',
          name: 'name',
          document_version: 'document_version',
          association_version: 'association_version',
          instance_id: 'instance_id',
          execution_date: Time.now,
          status: 'status',
          detailed_status: 'detailed_status',
          execution_summary: 'execution_summary',
          error_code: 'error_code',
          output_url: InstanceAssociationOutputUrl.default(visited),
          association_name: 'association_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAssociationStatusInfo.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['ExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_date]).to_i unless stub[:execution_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DetailedStatus'] = stub[:detailed_status] unless stub[:detailed_status].nil?
        data['ExecutionSummary'] = stub[:execution_summary] unless stub[:execution_summary].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['OutputUrl'] = Stubs::InstanceAssociationOutputUrl.stub(stub[:output_url]) unless stub[:output_url].nil?
        data['AssociationName'] = stub[:association_name] unless stub[:association_name].nil?
        data
      end
    end

    # Structure Stubber for InstanceAssociationOutputUrl
    class InstanceAssociationOutputUrl
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationOutputUrl')
        visited = visited + ['InstanceAssociationOutputUrl']
        {
          s3_output_url: S3OutputUrl.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAssociationOutputUrl.new
        data = {}
        data['S3OutputUrl'] = Stubs::S3OutputUrl.stub(stub[:s3_output_url]) unless stub[:s3_output_url].nil?
        data
      end
    end

    # Structure Stubber for S3OutputUrl
    class S3OutputUrl
      def self.default(visited=[])
        return nil if visited.include?('S3OutputUrl')
        visited = visited + ['S3OutputUrl']
        {
          output_url: 'output_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3OutputUrl.new
        data = {}
        data['OutputUrl'] = stub[:output_url] unless stub[:output_url].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstanceInformation
    class DescribeInstanceInformation
      def self.default(visited=[])
        {
          instance_information_list: InstanceInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceInformationList'] = Stubs::InstanceInformationList.stub(stub[:instance_information_list]) unless stub[:instance_information_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceInformationList
    class InstanceInformationList
      def self.default(visited=[])
        return nil if visited.include?('InstanceInformationList')
        visited = visited + ['InstanceInformationList']
        [
          InstanceInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceInformation
    class InstanceInformation
      def self.default(visited=[])
        return nil if visited.include?('InstanceInformation')
        visited = visited + ['InstanceInformation']
        {
          instance_id: 'instance_id',
          ping_status: 'ping_status',
          last_ping_date_time: Time.now,
          agent_version: 'agent_version',
          is_latest_version: false,
          platform_type: 'platform_type',
          platform_name: 'platform_name',
          platform_version: 'platform_version',
          activation_id: 'activation_id',
          iam_role: 'iam_role',
          registration_date: Time.now,
          resource_type: 'resource_type',
          name: 'name',
          ip_address: 'ip_address',
          computer_name: 'computer_name',
          association_status: 'association_status',
          last_association_execution_date: Time.now,
          last_successful_association_execution_date: Time.now,
          association_overview: InstanceAggregatedAssociationOverview.default(visited),
          source_id: 'source_id',
          source_type: 'source_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceInformation.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['PingStatus'] = stub[:ping_status] unless stub[:ping_status].nil?
        data['LastPingDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_ping_date_time]).to_i unless stub[:last_ping_date_time].nil?
        data['AgentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data['IsLatestVersion'] = stub[:is_latest_version] unless stub[:is_latest_version].nil?
        data['PlatformType'] = stub[:platform_type] unless stub[:platform_type].nil?
        data['PlatformName'] = stub[:platform_name] unless stub[:platform_name].nil?
        data['PlatformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['ActivationId'] = stub[:activation_id] unless stub[:activation_id].nil?
        data['IamRole'] = stub[:iam_role] unless stub[:iam_role].nil?
        data['RegistrationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registration_date]).to_i unless stub[:registration_date].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['IPAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['ComputerName'] = stub[:computer_name] unless stub[:computer_name].nil?
        data['AssociationStatus'] = stub[:association_status] unless stub[:association_status].nil?
        data['LastAssociationExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_association_execution_date]).to_i unless stub[:last_association_execution_date].nil?
        data['LastSuccessfulAssociationExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_association_execution_date]).to_i unless stub[:last_successful_association_execution_date].nil?
        data['AssociationOverview'] = Stubs::InstanceAggregatedAssociationOverview.stub(stub[:association_overview]) unless stub[:association_overview].nil?
        data['SourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data
      end
    end

    # Structure Stubber for InstanceAggregatedAssociationOverview
    class InstanceAggregatedAssociationOverview
      def self.default(visited=[])
        return nil if visited.include?('InstanceAggregatedAssociationOverview')
        visited = visited + ['InstanceAggregatedAssociationOverview']
        {
          detailed_status: 'detailed_status',
          instance_association_status_aggregated_count: InstanceAssociationStatusAggregatedCount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAggregatedAssociationOverview.new
        data = {}
        data['DetailedStatus'] = stub[:detailed_status] unless stub[:detailed_status].nil?
        data['InstanceAssociationStatusAggregatedCount'] = Stubs::InstanceAssociationStatusAggregatedCount.stub(stub[:instance_association_status_aggregated_count]) unless stub[:instance_association_status_aggregated_count].nil?
        data
      end
    end

    # Map Stubber for InstanceAssociationStatusAggregatedCount
    class InstanceAssociationStatusAggregatedCount
      def self.default(visited=[])
        return nil if visited.include?('InstanceAssociationStatusAggregatedCount')
        visited = visited + ['InstanceAssociationStatusAggregatedCount']
        {
          test_key: 1
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeInstancePatchStates
    class DescribeInstancePatchStates
      def self.default(visited=[])
        {
          instance_patch_states: InstancePatchStateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstancePatchStates'] = Stubs::InstancePatchStateList.stub(stub[:instance_patch_states]) unless stub[:instance_patch_states].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstancePatchStateList
    class InstancePatchStateList
      def self.default(visited=[])
        return nil if visited.include?('InstancePatchStateList')
        visited = visited + ['InstancePatchStateList']
        [
          InstancePatchState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstancePatchState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstancePatchState
    class InstancePatchState
      def self.default(visited=[])
        return nil if visited.include?('InstancePatchState')
        visited = visited + ['InstancePatchState']
        {
          instance_id: 'instance_id',
          patch_group: 'patch_group',
          baseline_id: 'baseline_id',
          snapshot_id: 'snapshot_id',
          install_override_list: 'install_override_list',
          owner_information: 'owner_information',
          installed_count: 1,
          installed_other_count: 1,
          installed_pending_reboot_count: 1,
          installed_rejected_count: 1,
          missing_count: 1,
          failed_count: 1,
          unreported_not_applicable_count: 1,
          not_applicable_count: 1,
          operation_start_time: Time.now,
          operation_end_time: Time.now,
          operation: 'operation',
          last_no_reboot_install_operation_time: Time.now,
          reboot_option: 'reboot_option',
          critical_non_compliant_count: 1,
          security_non_compliant_count: 1,
          other_non_compliant_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstancePatchState.new
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['InstallOverrideList'] = stub[:install_override_list] unless stub[:install_override_list].nil?
        data['OwnerInformation'] = stub[:owner_information] unless stub[:owner_information].nil?
        data['InstalledCount'] = stub[:installed_count] unless stub[:installed_count].nil?
        data['InstalledOtherCount'] = stub[:installed_other_count] unless stub[:installed_other_count].nil?
        data['InstalledPendingRebootCount'] = stub[:installed_pending_reboot_count] unless stub[:installed_pending_reboot_count].nil?
        data['InstalledRejectedCount'] = stub[:installed_rejected_count] unless stub[:installed_rejected_count].nil?
        data['MissingCount'] = stub[:missing_count] unless stub[:missing_count].nil?
        data['FailedCount'] = stub[:failed_count] unless stub[:failed_count].nil?
        data['UnreportedNotApplicableCount'] = stub[:unreported_not_applicable_count] unless stub[:unreported_not_applicable_count].nil?
        data['NotApplicableCount'] = stub[:not_applicable_count] unless stub[:not_applicable_count].nil?
        data['OperationStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:operation_start_time]).to_i unless stub[:operation_start_time].nil?
        data['OperationEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:operation_end_time]).to_i unless stub[:operation_end_time].nil?
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data['LastNoRebootInstallOperationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_no_reboot_install_operation_time]).to_i unless stub[:last_no_reboot_install_operation_time].nil?
        data['RebootOption'] = stub[:reboot_option] unless stub[:reboot_option].nil?
        data['CriticalNonCompliantCount'] = stub[:critical_non_compliant_count] unless stub[:critical_non_compliant_count].nil?
        data['SecurityNonCompliantCount'] = stub[:security_non_compliant_count] unless stub[:security_non_compliant_count].nil?
        data['OtherNonCompliantCount'] = stub[:other_non_compliant_count] unless stub[:other_non_compliant_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeInstancePatchStatesForPatchGroup
    class DescribeInstancePatchStatesForPatchGroup
      def self.default(visited=[])
        {
          instance_patch_states: InstancePatchStatesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstancePatchStates'] = Stubs::InstancePatchStatesList.stub(stub[:instance_patch_states]) unless stub[:instance_patch_states].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstancePatchStatesList
    class InstancePatchStatesList
      def self.default(visited=[])
        return nil if visited.include?('InstancePatchStatesList')
        visited = visited + ['InstancePatchStatesList']
        [
          InstancePatchState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstancePatchState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeInstancePatches
    class DescribeInstancePatches
      def self.default(visited=[])
        {
          patches: PatchComplianceDataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Patches'] = Stubs::PatchComplianceDataList.stub(stub[:patches]) unless stub[:patches].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchComplianceDataList
    class PatchComplianceDataList
      def self.default(visited=[])
        return nil if visited.include?('PatchComplianceDataList')
        visited = visited + ['PatchComplianceDataList']
        [
          PatchComplianceData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchComplianceData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchComplianceData
    class PatchComplianceData
      def self.default(visited=[])
        return nil if visited.include?('PatchComplianceData')
        visited = visited + ['PatchComplianceData']
        {
          title: 'title',
          kb_id: 'kb_id',
          classification: 'classification',
          severity: 'severity',
          state: 'state',
          installed_time: Time.now,
          cve_ids: 'cve_ids',
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchComplianceData.new
        data = {}
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['KBId'] = stub[:kb_id] unless stub[:kb_id].nil?
        data['Classification'] = stub[:classification] unless stub[:classification].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['InstalledTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:installed_time]).to_i unless stub[:installed_time].nil?
        data['CVEIds'] = stub[:cve_ids] unless stub[:cve_ids].nil?
        data
      end
    end

    # Operation Stubber for DescribeInventoryDeletions
    class DescribeInventoryDeletions
      def self.default(visited=[])
        {
          inventory_deletions: InventoryDeletionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InventoryDeletions'] = Stubs::InventoryDeletionsList.stub(stub[:inventory_deletions]) unless stub[:inventory_deletions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InventoryDeletionsList
    class InventoryDeletionsList
      def self.default(visited=[])
        return nil if visited.include?('InventoryDeletionsList')
        visited = visited + ['InventoryDeletionsList']
        [
          InventoryDeletionStatusItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryDeletionStatusItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryDeletionStatusItem
    class InventoryDeletionStatusItem
      def self.default(visited=[])
        return nil if visited.include?('InventoryDeletionStatusItem')
        visited = visited + ['InventoryDeletionStatusItem']
        {
          deletion_id: 'deletion_id',
          type_name: 'type_name',
          deletion_start_time: Time.now,
          last_status: 'last_status',
          last_status_message: 'last_status_message',
          deletion_summary: InventoryDeletionSummary.default(visited),
          last_status_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryDeletionStatusItem.new
        data = {}
        data['DeletionId'] = stub[:deletion_id] unless stub[:deletion_id].nil?
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['DeletionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deletion_start_time]).to_i unless stub[:deletion_start_time].nil?
        data['LastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['LastStatusMessage'] = stub[:last_status_message] unless stub[:last_status_message].nil?
        data['DeletionSummary'] = Stubs::InventoryDeletionSummary.stub(stub[:deletion_summary]) unless stub[:deletion_summary].nil?
        data['LastStatusUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_update_time]).to_i unless stub[:last_status_update_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowExecutionTaskInvocations
    class DescribeMaintenanceWindowExecutionTaskInvocations
      def self.default(visited=[])
        {
          window_execution_task_invocation_identities: MaintenanceWindowExecutionTaskInvocationIdentityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionTaskInvocationIdentities'] = Stubs::MaintenanceWindowExecutionTaskInvocationIdentityList.stub(stub[:window_execution_task_invocation_identities]) unless stub[:window_execution_task_invocation_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowExecutionTaskInvocationIdentityList
    class MaintenanceWindowExecutionTaskInvocationIdentityList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionTaskInvocationIdentityList')
        visited = visited + ['MaintenanceWindowExecutionTaskInvocationIdentityList']
        [
          MaintenanceWindowExecutionTaskInvocationIdentity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowExecutionTaskInvocationIdentity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowExecutionTaskInvocationIdentity
    class MaintenanceWindowExecutionTaskInvocationIdentity
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionTaskInvocationIdentity')
        visited = visited + ['MaintenanceWindowExecutionTaskInvocationIdentity']
        {
          window_execution_id: 'window_execution_id',
          task_execution_id: 'task_execution_id',
          invocation_id: 'invocation_id',
          execution_id: 'execution_id',
          task_type: 'task_type',
          parameters: 'parameters',
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
          owner_information: 'owner_information',
          window_target_id: 'window_target_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowExecutionTaskInvocationIdentity.new
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['TaskExecutionId'] = stub[:task_execution_id] unless stub[:task_execution_id].nil?
        data['InvocationId'] = stub[:invocation_id] unless stub[:invocation_id].nil?
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['TaskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['Parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['OwnerInformation'] = stub[:owner_information] unless stub[:owner_information].nil?
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowExecutionTasks
    class DescribeMaintenanceWindowExecutionTasks
      def self.default(visited=[])
        {
          window_execution_task_identities: MaintenanceWindowExecutionTaskIdentityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionTaskIdentities'] = Stubs::MaintenanceWindowExecutionTaskIdentityList.stub(stub[:window_execution_task_identities]) unless stub[:window_execution_task_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowExecutionTaskIdentityList
    class MaintenanceWindowExecutionTaskIdentityList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionTaskIdentityList')
        visited = visited + ['MaintenanceWindowExecutionTaskIdentityList']
        [
          MaintenanceWindowExecutionTaskIdentity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowExecutionTaskIdentity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowExecutionTaskIdentity
    class MaintenanceWindowExecutionTaskIdentity
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionTaskIdentity')
        visited = visited + ['MaintenanceWindowExecutionTaskIdentity']
        {
          window_execution_id: 'window_execution_id',
          task_execution_id: 'task_execution_id',
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
          task_arn: 'task_arn',
          task_type: 'task_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowExecutionTaskIdentity.new
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['TaskExecutionId'] = stub[:task_execution_id] unless stub[:task_execution_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['TaskType'] = stub[:task_type] unless stub[:task_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowExecutions
    class DescribeMaintenanceWindowExecutions
      def self.default(visited=[])
        {
          window_executions: MaintenanceWindowExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutions'] = Stubs::MaintenanceWindowExecutionList.stub(stub[:window_executions]) unless stub[:window_executions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowExecutionList
    class MaintenanceWindowExecutionList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionList')
        visited = visited + ['MaintenanceWindowExecutionList']
        [
          MaintenanceWindowExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowExecution
    class MaintenanceWindowExecution
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecution')
        visited = visited + ['MaintenanceWindowExecution']
        {
          window_id: 'window_id',
          window_execution_id: 'window_execution_id',
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowExecution.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowSchedule
    class DescribeMaintenanceWindowSchedule
      def self.default(visited=[])
        {
          scheduled_window_executions: ScheduledWindowExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScheduledWindowExecutions'] = Stubs::ScheduledWindowExecutionList.stub(stub[:scheduled_window_executions]) unless stub[:scheduled_window_executions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledWindowExecutionList
    class ScheduledWindowExecutionList
      def self.default(visited=[])
        return nil if visited.include?('ScheduledWindowExecutionList')
        visited = visited + ['ScheduledWindowExecutionList']
        [
          ScheduledWindowExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScheduledWindowExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledWindowExecution
    class ScheduledWindowExecution
      def self.default(visited=[])
        return nil if visited.include?('ScheduledWindowExecution')
        visited = visited + ['ScheduledWindowExecution']
        {
          window_id: 'window_id',
          name: 'name',
          execution_time: 'execution_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledWindowExecution.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowTargets
    class DescribeMaintenanceWindowTargets
      def self.default(visited=[])
        {
          targets: MaintenanceWindowTargetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Targets'] = Stubs::MaintenanceWindowTargetList.stub(stub[:targets]) unless stub[:targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowTargetList
    class MaintenanceWindowTargetList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTargetList')
        visited = visited + ['MaintenanceWindowTargetList']
        [
          MaintenanceWindowTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowTarget
    class MaintenanceWindowTarget
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTarget')
        visited = visited + ['MaintenanceWindowTarget']
        {
          window_id: 'window_id',
          window_target_id: 'window_target_id',
          resource_type: 'resource_type',
          targets: Targets.default(visited),
          owner_information: 'owner_information',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowTarget.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['OwnerInformation'] = stub[:owner_information] unless stub[:owner_information].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowTasks
    class DescribeMaintenanceWindowTasks
      def self.default(visited=[])
        {
          tasks: MaintenanceWindowTaskList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tasks'] = Stubs::MaintenanceWindowTaskList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowTaskList
    class MaintenanceWindowTaskList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskList')
        visited = visited + ['MaintenanceWindowTaskList']
        [
          MaintenanceWindowTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowTask
    class MaintenanceWindowTask
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTask')
        visited = visited + ['MaintenanceWindowTask']
        {
          window_id: 'window_id',
          window_task_id: 'window_task_id',
          task_arn: 'task_arn',
          type: 'type',
          targets: Targets.default(visited),
          task_parameters: MaintenanceWindowTaskParameters.default(visited),
          priority: 1,
          logging_info: LoggingInfo.default(visited),
          service_role_arn: 'service_role_arn',
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          name: 'name',
          description: 'description',
          cutoff_behavior: 'cutoff_behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowTask.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTaskId'] = stub[:window_task_id] unless stub[:window_task_id].nil?
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TaskParameters'] = Stubs::MaintenanceWindowTaskParameters.stub(stub[:task_parameters]) unless stub[:task_parameters].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['LoggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CutoffBehavior'] = stub[:cutoff_behavior] unless stub[:cutoff_behavior].nil?
        data
      end
    end

    # Structure Stubber for LoggingInfo
    class LoggingInfo
      def self.default(visited=[])
        return nil if visited.include?('LoggingInfo')
        visited = visited + ['LoggingInfo']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_key_prefix: 's3_key_prefix',
          s3_region: 's3_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingInfo.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data['S3Region'] = stub[:s3_region] unless stub[:s3_region].nil?
        data
      end
    end

    # Map Stubber for MaintenanceWindowTaskParameters
    class MaintenanceWindowTaskParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskParameters')
        visited = visited + ['MaintenanceWindowTaskParameters']
        {
          test_key: MaintenanceWindowTaskParameterValueExpression.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MaintenanceWindowTaskParameterValueExpression.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowTaskParameterValueExpression
    class MaintenanceWindowTaskParameterValueExpression
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskParameterValueExpression')
        visited = visited + ['MaintenanceWindowTaskParameterValueExpression']
        {
          values: MaintenanceWindowTaskParameterValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowTaskParameterValueExpression.new
        data = {}
        data['Values'] = Stubs::MaintenanceWindowTaskParameterValueList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for MaintenanceWindowTaskParameterValueList
    class MaintenanceWindowTaskParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskParameterValueList')
        visited = visited + ['MaintenanceWindowTaskParameterValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindows
    class DescribeMaintenanceWindows
      def self.default(visited=[])
        {
          window_identities: MaintenanceWindowIdentityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowIdentities'] = Stubs::MaintenanceWindowIdentityList.stub(stub[:window_identities]) unless stub[:window_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowIdentityList
    class MaintenanceWindowIdentityList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowIdentityList')
        visited = visited + ['MaintenanceWindowIdentityList']
        [
          MaintenanceWindowIdentity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowIdentity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowIdentity
    class MaintenanceWindowIdentity
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowIdentity')
        visited = visited + ['MaintenanceWindowIdentity']
        {
          window_id: 'window_id',
          name: 'name',
          description: 'description',
          enabled: false,
          duration: 1,
          cutoff: 1,
          schedule: 'schedule',
          schedule_timezone: 'schedule_timezone',
          schedule_offset: 1,
          end_date: 'end_date',
          start_date: 'start_date',
          next_execution_time: 'next_execution_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowIdentity.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Cutoff'] = stub[:cutoff] unless stub[:cutoff].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['ScheduleTimezone'] = stub[:schedule_timezone] unless stub[:schedule_timezone].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['EndDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['NextExecutionTime'] = stub[:next_execution_time] unless stub[:next_execution_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeMaintenanceWindowsForTarget
    class DescribeMaintenanceWindowsForTarget
      def self.default(visited=[])
        {
          window_identities: MaintenanceWindowsForTargetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowIdentities'] = Stubs::MaintenanceWindowsForTargetList.stub(stub[:window_identities]) unless stub[:window_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowsForTargetList
    class MaintenanceWindowsForTargetList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowsForTargetList')
        visited = visited + ['MaintenanceWindowsForTargetList']
        [
          MaintenanceWindowIdentityForTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowIdentityForTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MaintenanceWindowIdentityForTarget
    class MaintenanceWindowIdentityForTarget
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowIdentityForTarget')
        visited = visited + ['MaintenanceWindowIdentityForTarget']
        {
          window_id: 'window_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowIdentityForTarget.new
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeOpsItems
    class DescribeOpsItems
      def self.default(visited=[])
        {
          next_token: 'next_token',
          ops_item_summaries: OpsItemSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['OpsItemSummaries'] = Stubs::OpsItemSummaries.stub(stub[:ops_item_summaries]) unless stub[:ops_item_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OpsItemSummaries
    class OpsItemSummaries
      def self.default(visited=[])
        return nil if visited.include?('OpsItemSummaries')
        visited = visited + ['OpsItemSummaries']
        [
          OpsItemSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsItemSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsItemSummary
    class OpsItemSummary
      def self.default(visited=[])
        return nil if visited.include?('OpsItemSummary')
        visited = visited + ['OpsItemSummary']
        {
          created_by: 'created_by',
          created_time: Time.now,
          last_modified_by: 'last_modified_by',
          last_modified_time: Time.now,
          priority: 1,
          source: 'source',
          status: 'status',
          ops_item_id: 'ops_item_id',
          title: 'title',
          operational_data: OpsItemOperationalData.default(visited),
          category: 'category',
          severity: 'severity',
          ops_item_type: 'ops_item_type',
          actual_start_time: Time.now,
          actual_end_time: Time.now,
          planned_start_time: Time.now,
          planned_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemSummary.new
        data = {}
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['OperationalData'] = Stubs::OpsItemOperationalData.stub(stub[:operational_data]) unless stub[:operational_data].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['OpsItemType'] = stub[:ops_item_type] unless stub[:ops_item_type].nil?
        data['ActualStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:actual_start_time]).to_i unless stub[:actual_start_time].nil?
        data['ActualEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:actual_end_time]).to_i unless stub[:actual_end_time].nil?
        data['PlannedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:planned_start_time]).to_i unless stub[:planned_start_time].nil?
        data['PlannedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:planned_end_time]).to_i unless stub[:planned_end_time].nil?
        data
      end
    end

    # Map Stubber for OpsItemOperationalData
    class OpsItemOperationalData
      def self.default(visited=[])
        return nil if visited.include?('OpsItemOperationalData')
        visited = visited + ['OpsItemOperationalData']
        {
          test_key: OpsItemDataValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::OpsItemDataValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsItemDataValue
    class OpsItemDataValue
      def self.default(visited=[])
        return nil if visited.include?('OpsItemDataValue')
        visited = visited + ['OpsItemDataValue']
        {
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemDataValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeParameters
    class DescribeParameters
      def self.default(visited=[])
        {
          parameters: ParameterMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parameters'] = Stubs::ParameterMetadataList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterMetadataList
    class ParameterMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ParameterMetadataList')
        visited = visited + ['ParameterMetadataList']
        [
          ParameterMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterMetadata
    class ParameterMetadata
      def self.default(visited=[])
        return nil if visited.include?('ParameterMetadata')
        visited = visited + ['ParameterMetadata']
        {
          name: 'name',
          type: 'type',
          key_id: 'key_id',
          last_modified_date: Time.now,
          last_modified_user: 'last_modified_user',
          description: 'description',
          allowed_pattern: 'allowed_pattern',
          version: 1,
          tier: 'tier',
          policies: ParameterPolicyList.default(visited),
          data_type: 'data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterMetadata.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AllowedPattern'] = stub[:allowed_pattern] unless stub[:allowed_pattern].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['Policies'] = Stubs::ParameterPolicyList.stub(stub[:policies]) unless stub[:policies].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data
      end
    end

    # List Stubber for ParameterPolicyList
    class ParameterPolicyList
      def self.default(visited=[])
        return nil if visited.include?('ParameterPolicyList')
        visited = visited + ['ParameterPolicyList']
        [
          ParameterInlinePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterInlinePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterInlinePolicy
    class ParameterInlinePolicy
      def self.default(visited=[])
        return nil if visited.include?('ParameterInlinePolicy')
        visited = visited + ['ParameterInlinePolicy']
        {
          policy_text: 'policy_text',
          policy_type: 'policy_type',
          policy_status: 'policy_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterInlinePolicy.new
        data = {}
        data['PolicyText'] = stub[:policy_text] unless stub[:policy_text].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data['PolicyStatus'] = stub[:policy_status] unless stub[:policy_status].nil?
        data
      end
    end

    # Operation Stubber for DescribePatchBaselines
    class DescribePatchBaselines
      def self.default(visited=[])
        {
          baseline_identities: PatchBaselineIdentityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineIdentities'] = Stubs::PatchBaselineIdentityList.stub(stub[:baseline_identities]) unless stub[:baseline_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchBaselineIdentityList
    class PatchBaselineIdentityList
      def self.default(visited=[])
        return nil if visited.include?('PatchBaselineIdentityList')
        visited = visited + ['PatchBaselineIdentityList']
        [
          PatchBaselineIdentity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchBaselineIdentity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchBaselineIdentity
    class PatchBaselineIdentity
      def self.default(visited=[])
        return nil if visited.include?('PatchBaselineIdentity')
        visited = visited + ['PatchBaselineIdentity']
        {
          baseline_id: 'baseline_id',
          baseline_name: 'baseline_name',
          operating_system: 'operating_system',
          baseline_description: 'baseline_description',
          default_baseline: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchBaselineIdentity.new
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['BaselineName'] = stub[:baseline_name] unless stub[:baseline_name].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['BaselineDescription'] = stub[:baseline_description] unless stub[:baseline_description].nil?
        data['DefaultBaseline'] = stub[:default_baseline] unless stub[:default_baseline].nil?
        data
      end
    end

    # Operation Stubber for DescribePatchGroupState
    class DescribePatchGroupState
      def self.default(visited=[])
        {
          instances: 1,
          instances_with_installed_patches: 1,
          instances_with_installed_other_patches: 1,
          instances_with_installed_pending_reboot_patches: 1,
          instances_with_installed_rejected_patches: 1,
          instances_with_missing_patches: 1,
          instances_with_failed_patches: 1,
          instances_with_not_applicable_patches: 1,
          instances_with_unreported_not_applicable_patches: 1,
          instances_with_critical_non_compliant_patches: 1,
          instances_with_security_non_compliant_patches: 1,
          instances_with_other_non_compliant_patches: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = stub[:instances] unless stub[:instances].nil?
        data['InstancesWithInstalledPatches'] = stub[:instances_with_installed_patches] unless stub[:instances_with_installed_patches].nil?
        data['InstancesWithInstalledOtherPatches'] = stub[:instances_with_installed_other_patches] unless stub[:instances_with_installed_other_patches].nil?
        data['InstancesWithInstalledPendingRebootPatches'] = stub[:instances_with_installed_pending_reboot_patches] unless stub[:instances_with_installed_pending_reboot_patches].nil?
        data['InstancesWithInstalledRejectedPatches'] = stub[:instances_with_installed_rejected_patches] unless stub[:instances_with_installed_rejected_patches].nil?
        data['InstancesWithMissingPatches'] = stub[:instances_with_missing_patches] unless stub[:instances_with_missing_patches].nil?
        data['InstancesWithFailedPatches'] = stub[:instances_with_failed_patches] unless stub[:instances_with_failed_patches].nil?
        data['InstancesWithNotApplicablePatches'] = stub[:instances_with_not_applicable_patches] unless stub[:instances_with_not_applicable_patches].nil?
        data['InstancesWithUnreportedNotApplicablePatches'] = stub[:instances_with_unreported_not_applicable_patches] unless stub[:instances_with_unreported_not_applicable_patches].nil?
        data['InstancesWithCriticalNonCompliantPatches'] = stub[:instances_with_critical_non_compliant_patches] unless stub[:instances_with_critical_non_compliant_patches].nil?
        data['InstancesWithSecurityNonCompliantPatches'] = stub[:instances_with_security_non_compliant_patches] unless stub[:instances_with_security_non_compliant_patches].nil?
        data['InstancesWithOtherNonCompliantPatches'] = stub[:instances_with_other_non_compliant_patches] unless stub[:instances_with_other_non_compliant_patches].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePatchGroups
    class DescribePatchGroups
      def self.default(visited=[])
        {
          mappings: PatchGroupPatchBaselineMappingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Mappings'] = Stubs::PatchGroupPatchBaselineMappingList.stub(stub[:mappings]) unless stub[:mappings].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchGroupPatchBaselineMappingList
    class PatchGroupPatchBaselineMappingList
      def self.default(visited=[])
        return nil if visited.include?('PatchGroupPatchBaselineMappingList')
        visited = visited + ['PatchGroupPatchBaselineMappingList']
        [
          PatchGroupPatchBaselineMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchGroupPatchBaselineMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchGroupPatchBaselineMapping
    class PatchGroupPatchBaselineMapping
      def self.default(visited=[])
        return nil if visited.include?('PatchGroupPatchBaselineMapping')
        visited = visited + ['PatchGroupPatchBaselineMapping']
        {
          patch_group: 'patch_group',
          baseline_identity: PatchBaselineIdentity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchGroupPatchBaselineMapping.new
        data = {}
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        data['BaselineIdentity'] = Stubs::PatchBaselineIdentity.stub(stub[:baseline_identity]) unless stub[:baseline_identity].nil?
        data
      end
    end

    # Operation Stubber for DescribePatchProperties
    class DescribePatchProperties
      def self.default(visited=[])
        {
          properties: PatchPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Properties'] = Stubs::PatchPropertiesList.stub(stub[:properties]) unless stub[:properties].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchPropertiesList
    class PatchPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('PatchPropertiesList')
        visited = visited + ['PatchPropertiesList']
        [
          PatchPropertyEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchPropertyEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for PatchPropertyEntry
    class PatchPropertyEntry
      def self.default(visited=[])
        return nil if visited.include?('PatchPropertyEntry')
        visited = visited + ['PatchPropertyEntry']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSessions
    class DescribeSessions
      def self.default(visited=[])
        {
          sessions: SessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Sessions'] = Stubs::SessionList.stub(stub[:sessions]) unless stub[:sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SessionList
    class SessionList
      def self.default(visited=[])
        return nil if visited.include?('SessionList')
        visited = visited + ['SessionList']
        [
          Session.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Session.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Session
    class Session
      def self.default(visited=[])
        return nil if visited.include?('Session')
        visited = visited + ['Session']
        {
          session_id: 'session_id',
          target: 'target',
          status: 'status',
          start_date: Time.now,
          end_date: Time.now,
          document_name: 'document_name',
          owner: 'owner',
          reason: 'reason',
          details: 'details',
          output_url: SessionManagerOutputUrl.default(visited),
          max_session_duration: 'max_session_duration',
        }
      end

      def self.stub(stub)
        stub ||= Types::Session.new
        data = {}
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['EndDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_date]).to_i unless stub[:end_date].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['Details'] = stub[:details] unless stub[:details].nil?
        data['OutputUrl'] = Stubs::SessionManagerOutputUrl.stub(stub[:output_url]) unless stub[:output_url].nil?
        data['MaxSessionDuration'] = stub[:max_session_duration] unless stub[:max_session_duration].nil?
        data
      end
    end

    # Structure Stubber for SessionManagerOutputUrl
    class SessionManagerOutputUrl
      def self.default(visited=[])
        return nil if visited.include?('SessionManagerOutputUrl')
        visited = visited + ['SessionManagerOutputUrl']
        {
          s3_output_url: 's3_output_url',
          cloud_watch_output_url: 'cloud_watch_output_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionManagerOutputUrl.new
        data = {}
        data['S3OutputUrl'] = stub[:s3_output_url] unless stub[:s3_output_url].nil?
        data['CloudWatchOutputUrl'] = stub[:cloud_watch_output_url] unless stub[:cloud_watch_output_url].nil?
        data
      end
    end

    # Operation Stubber for DisassociateOpsItemRelatedItem
    class DisassociateOpsItemRelatedItem
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAutomationExecution
    class GetAutomationExecution
      def self.default(visited=[])
        {
          automation_execution: AutomationExecution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutomationExecution'] = Stubs::AutomationExecution.stub(stub[:automation_execution]) unless stub[:automation_execution].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AutomationExecution
    class AutomationExecution
      def self.default(visited=[])
        return nil if visited.include?('AutomationExecution')
        visited = visited + ['AutomationExecution']
        {
          automation_execution_id: 'automation_execution_id',
          document_name: 'document_name',
          document_version: 'document_version',
          execution_start_time: Time.now,
          execution_end_time: Time.now,
          automation_execution_status: 'automation_execution_status',
          step_executions: StepExecutionList.default(visited),
          step_executions_truncated: false,
          parameters: AutomationParameterMap.default(visited),
          outputs: AutomationParameterMap.default(visited),
          failure_message: 'failure_message',
          mode: 'mode',
          parent_automation_execution_id: 'parent_automation_execution_id',
          executed_by: 'executed_by',
          current_step_name: 'current_step_name',
          current_action: 'current_action',
          target_parameter_name: 'target_parameter_name',
          targets: Targets.default(visited),
          target_maps: TargetMaps.default(visited),
          resolved_targets: ResolvedTargets.default(visited),
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          target: 'target',
          target_locations: TargetLocations.default(visited),
          progress_counters: ProgressCounters.default(visited),
          automation_subtype: 'automation_subtype',
          scheduled_time: Time.now,
          runbooks: Runbooks.default(visited),
          ops_item_id: 'ops_item_id',
          association_id: 'association_id',
          change_request_name: 'change_request_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutomationExecution.new
        data = {}
        data['AutomationExecutionId'] = stub[:automation_execution_id] unless stub[:automation_execution_id].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['ExecutionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_start_time]).to_i unless stub[:execution_start_time].nil?
        data['ExecutionEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_end_time]).to_i unless stub[:execution_end_time].nil?
        data['AutomationExecutionStatus'] = stub[:automation_execution_status] unless stub[:automation_execution_status].nil?
        data['StepExecutions'] = Stubs::StepExecutionList.stub(stub[:step_executions]) unless stub[:step_executions].nil?
        data['StepExecutionsTruncated'] = stub[:step_executions_truncated] unless stub[:step_executions_truncated].nil?
        data['Parameters'] = Stubs::AutomationParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['Outputs'] = Stubs::AutomationParameterMap.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['FailureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['ParentAutomationExecutionId'] = stub[:parent_automation_execution_id] unless stub[:parent_automation_execution_id].nil?
        data['ExecutedBy'] = stub[:executed_by] unless stub[:executed_by].nil?
        data['CurrentStepName'] = stub[:current_step_name] unless stub[:current_step_name].nil?
        data['CurrentAction'] = stub[:current_action] unless stub[:current_action].nil?
        data['TargetParameterName'] = stub[:target_parameter_name] unless stub[:target_parameter_name].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data['ResolvedTargets'] = Stubs::ResolvedTargets.stub(stub[:resolved_targets]) unless stub[:resolved_targets].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['TargetLocations'] = Stubs::TargetLocations.stub(stub[:target_locations]) unless stub[:target_locations].nil?
        data['ProgressCounters'] = Stubs::ProgressCounters.stub(stub[:progress_counters]) unless stub[:progress_counters].nil?
        data['AutomationSubtype'] = stub[:automation_subtype] unless stub[:automation_subtype].nil?
        data['ScheduledTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:scheduled_time]).to_i unless stub[:scheduled_time].nil?
        data['Runbooks'] = Stubs::Runbooks.stub(stub[:runbooks]) unless stub[:runbooks].nil?
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['ChangeRequestName'] = stub[:change_request_name] unless stub[:change_request_name].nil?
        data
      end
    end

    # Structure Stubber for ProgressCounters
    class ProgressCounters
      def self.default(visited=[])
        return nil if visited.include?('ProgressCounters')
        visited = visited + ['ProgressCounters']
        {
          total_steps: 1,
          success_steps: 1,
          failed_steps: 1,
          cancelled_steps: 1,
          timed_out_steps: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProgressCounters.new
        data = {}
        data['TotalSteps'] = stub[:total_steps] unless stub[:total_steps].nil?
        data['SuccessSteps'] = stub[:success_steps] unless stub[:success_steps].nil?
        data['FailedSteps'] = stub[:failed_steps] unless stub[:failed_steps].nil?
        data['CancelledSteps'] = stub[:cancelled_steps] unless stub[:cancelled_steps].nil?
        data['TimedOutSteps'] = stub[:timed_out_steps] unless stub[:timed_out_steps].nil?
        data
      end
    end

    # Operation Stubber for GetCalendarState
    class GetCalendarState
      def self.default(visited=[])
        {
          state: 'state',
          at_time: 'at_time',
          next_transition_time: 'next_transition_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['AtTime'] = stub[:at_time] unless stub[:at_time].nil?
        data['NextTransitionTime'] = stub[:next_transition_time] unless stub[:next_transition_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCommandInvocation
    class GetCommandInvocation
      def self.default(visited=[])
        {
          command_id: 'command_id',
          instance_id: 'instance_id',
          comment: 'comment',
          document_name: 'document_name',
          document_version: 'document_version',
          plugin_name: 'plugin_name',
          response_code: 1,
          execution_start_date_time: 'execution_start_date_time',
          execution_elapsed_time: 'execution_elapsed_time',
          execution_end_date_time: 'execution_end_date_time',
          status: 'status',
          status_details: 'status_details',
          standard_output_content: 'standard_output_content',
          standard_output_url: 'standard_output_url',
          standard_error_content: 'standard_error_content',
          standard_error_url: 'standard_error_url',
          cloud_watch_output_config: CloudWatchOutputConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CommandId'] = stub[:command_id] unless stub[:command_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['PluginName'] = stub[:plugin_name] unless stub[:plugin_name].nil?
        data['ResponseCode'] = stub[:response_code] unless stub[:response_code].nil?
        data['ExecutionStartDateTime'] = stub[:execution_start_date_time] unless stub[:execution_start_date_time].nil?
        data['ExecutionElapsedTime'] = stub[:execution_elapsed_time] unless stub[:execution_elapsed_time].nil?
        data['ExecutionEndDateTime'] = stub[:execution_end_date_time] unless stub[:execution_end_date_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StandardOutputContent'] = stub[:standard_output_content] unless stub[:standard_output_content].nil?
        data['StandardOutputUrl'] = stub[:standard_output_url] unless stub[:standard_output_url].nil?
        data['StandardErrorContent'] = stub[:standard_error_content] unless stub[:standard_error_content].nil?
        data['StandardErrorUrl'] = stub[:standard_error_url] unless stub[:standard_error_url].nil?
        data['CloudWatchOutputConfig'] = Stubs::CloudWatchOutputConfig.stub(stub[:cloud_watch_output_config]) unless stub[:cloud_watch_output_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CloudWatchOutputConfig
    class CloudWatchOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchOutputConfig')
        visited = visited + ['CloudWatchOutputConfig']
        {
          cloud_watch_log_group_name: 'cloud_watch_log_group_name',
          cloud_watch_output_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchOutputConfig.new
        data = {}
        data['CloudWatchLogGroupName'] = stub[:cloud_watch_log_group_name] unless stub[:cloud_watch_log_group_name].nil?
        data['CloudWatchOutputEnabled'] = stub[:cloud_watch_output_enabled] unless stub[:cloud_watch_output_enabled].nil?
        data
      end
    end

    # Operation Stubber for GetConnectionStatus
    class GetConnectionStatus
      def self.default(visited=[])
        {
          target: 'target',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDefaultPatchBaseline
    class GetDefaultPatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          operating_system: 'operating_system',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeployablePatchSnapshotForInstance
    class GetDeployablePatchSnapshotForInstance
      def self.default(visited=[])
        {
          instance_id: 'instance_id',
          snapshot_id: 'snapshot_id',
          snapshot_download_url: 'snapshot_download_url',
          product: 'product',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['SnapshotId'] = stub[:snapshot_id] unless stub[:snapshot_id].nil?
        data['SnapshotDownloadUrl'] = stub[:snapshot_download_url] unless stub[:snapshot_download_url].nil?
        data['Product'] = stub[:product] unless stub[:product].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDocument
    class GetDocument
      def self.default(visited=[])
        {
          name: 'name',
          created_date: Time.now,
          display_name: 'display_name',
          version_name: 'version_name',
          document_version: 'document_version',
          status: 'status',
          status_information: 'status_information',
          content: 'content',
          document_type: 'document_type',
          document_format: 'document_format',
          requires: DocumentRequiresList.default(visited),
          attachments_content: AttachmentContentList.default(visited),
          review_status: 'review_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusInformation'] = stub[:status_information] unless stub[:status_information].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['DocumentType'] = stub[:document_type] unless stub[:document_type].nil?
        data['DocumentFormat'] = stub[:document_format] unless stub[:document_format].nil?
        data['Requires'] = Stubs::DocumentRequiresList.stub(stub[:requires]) unless stub[:requires].nil?
        data['AttachmentsContent'] = Stubs::AttachmentContentList.stub(stub[:attachments_content]) unless stub[:attachments_content].nil?
        data['ReviewStatus'] = stub[:review_status] unless stub[:review_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AttachmentContentList
    class AttachmentContentList
      def self.default(visited=[])
        return nil if visited.include?('AttachmentContentList')
        visited = visited + ['AttachmentContentList']
        [
          AttachmentContent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttachmentContent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachmentContent
    class AttachmentContent
      def self.default(visited=[])
        return nil if visited.include?('AttachmentContent')
        visited = visited + ['AttachmentContent']
        {
          name: 'name',
          size: 1,
          member_hash: 'member_hash',
          hash_type: 'hash_type',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachmentContent.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Hash'] = stub[:member_hash] unless stub[:member_hash].nil?
        data['HashType'] = stub[:hash_type] unless stub[:hash_type].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for GetInventory
    class GetInventory
      def self.default(visited=[])
        {
          entities: InventoryResultEntityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::InventoryResultEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InventoryResultEntityList
    class InventoryResultEntityList
      def self.default(visited=[])
        return nil if visited.include?('InventoryResultEntityList')
        visited = visited + ['InventoryResultEntityList']
        [
          InventoryResultEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryResultEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryResultEntity
    class InventoryResultEntity
      def self.default(visited=[])
        return nil if visited.include?('InventoryResultEntity')
        visited = visited + ['InventoryResultEntity']
        {
          id: 'id',
          data: InventoryResultItemMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryResultEntity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Data'] = Stubs::InventoryResultItemMap.stub(stub[:data]) unless stub[:data].nil?
        data
      end
    end

    # Map Stubber for InventoryResultItemMap
    class InventoryResultItemMap
      def self.default(visited=[])
        return nil if visited.include?('InventoryResultItemMap')
        visited = visited + ['InventoryResultItemMap']
        {
          test_key: InventoryResultItem.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::InventoryResultItem.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryResultItem
    class InventoryResultItem
      def self.default(visited=[])
        return nil if visited.include?('InventoryResultItem')
        visited = visited + ['InventoryResultItem']
        {
          type_name: 'type_name',
          schema_version: 'schema_version',
          capture_time: 'capture_time',
          content_hash: 'content_hash',
          content: InventoryItemEntryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryResultItem.new
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['CaptureTime'] = stub[:capture_time] unless stub[:capture_time].nil?
        data['ContentHash'] = stub[:content_hash] unless stub[:content_hash].nil?
        data['Content'] = Stubs::InventoryItemEntryList.stub(stub[:content]) unless stub[:content].nil?
        data
      end
    end

    # List Stubber for InventoryItemEntryList
    class InventoryItemEntryList
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemEntryList')
        visited = visited + ['InventoryItemEntryList']
        [
          InventoryItemEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryItemEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for InventoryItemEntry
    class InventoryItemEntry
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemEntry')
        visited = visited + ['InventoryItemEntry']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetInventorySchema
    class GetInventorySchema
      def self.default(visited=[])
        {
          schemas: InventoryItemSchemaResultList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Schemas'] = Stubs::InventoryItemSchemaResultList.stub(stub[:schemas]) unless stub[:schemas].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InventoryItemSchemaResultList
    class InventoryItemSchemaResultList
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemSchemaResultList')
        visited = visited + ['InventoryItemSchemaResultList']
        [
          InventoryItemSchema.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryItemSchema.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryItemSchema
    class InventoryItemSchema
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemSchema')
        visited = visited + ['InventoryItemSchema']
        {
          type_name: 'type_name',
          version: 'version',
          attributes: InventoryItemAttributeList.default(visited),
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryItemSchema.new
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Attributes'] = Stubs::InventoryItemAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # List Stubber for InventoryItemAttributeList
    class InventoryItemAttributeList
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemAttributeList')
        visited = visited + ['InventoryItemAttributeList']
        [
          InventoryItemAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InventoryItemAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InventoryItemAttribute
    class InventoryItemAttribute
      def self.default(visited=[])
        return nil if visited.include?('InventoryItemAttribute')
        visited = visited + ['InventoryItemAttribute']
        {
          name: 'name',
          data_type: 'data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryItemAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data
      end
    end

    # Operation Stubber for GetMaintenanceWindow
    class GetMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
          name: 'name',
          description: 'description',
          start_date: 'start_date',
          end_date: 'end_date',
          schedule: 'schedule',
          schedule_timezone: 'schedule_timezone',
          schedule_offset: 1,
          next_execution_time: 'next_execution_time',
          duration: 1,
          cutoff: 1,
          allow_unassociated_targets: false,
          enabled: false,
          created_date: Time.now,
          modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['EndDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['ScheduleTimezone'] = stub[:schedule_timezone] unless stub[:schedule_timezone].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['NextExecutionTime'] = stub[:next_execution_time] unless stub[:next_execution_time].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Cutoff'] = stub[:cutoff] unless stub[:cutoff].nil?
        data['AllowUnassociatedTargets'] = stub[:allow_unassociated_targets] unless stub[:allow_unassociated_targets].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['ModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_date]).to_i unless stub[:modified_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMaintenanceWindowExecution
    class GetMaintenanceWindowExecution
      def self.default(visited=[])
        {
          window_execution_id: 'window_execution_id',
          task_ids: MaintenanceWindowExecutionTaskIdList.default(visited),
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['TaskIds'] = Stubs::MaintenanceWindowExecutionTaskIdList.stub(stub[:task_ids]) unless stub[:task_ids].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowExecutionTaskIdList
    class MaintenanceWindowExecutionTaskIdList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowExecutionTaskIdList')
        visited = visited + ['MaintenanceWindowExecutionTaskIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetMaintenanceWindowExecutionTask
    class GetMaintenanceWindowExecutionTask
      def self.default(visited=[])
        {
          window_execution_id: 'window_execution_id',
          task_execution_id: 'task_execution_id',
          task_arn: 'task_arn',
          service_role: 'service_role',
          type: 'type',
          task_parameters: MaintenanceWindowTaskParametersList.default(visited),
          priority: 1,
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['TaskExecutionId'] = stub[:task_execution_id] unless stub[:task_execution_id].nil?
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['TaskParameters'] = Stubs::MaintenanceWindowTaskParametersList.stub(stub[:task_parameters]) unless stub[:task_parameters].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MaintenanceWindowTaskParametersList
    class MaintenanceWindowTaskParametersList
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskParametersList')
        visited = visited + ['MaintenanceWindowTaskParametersList']
        [
          MaintenanceWindowTaskParameters.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MaintenanceWindowTaskParameters.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetMaintenanceWindowExecutionTaskInvocation
    class GetMaintenanceWindowExecutionTaskInvocation
      def self.default(visited=[])
        {
          window_execution_id: 'window_execution_id',
          task_execution_id: 'task_execution_id',
          invocation_id: 'invocation_id',
          execution_id: 'execution_id',
          task_type: 'task_type',
          parameters: 'parameters',
          status: 'status',
          status_details: 'status_details',
          start_time: Time.now,
          end_time: Time.now,
          owner_information: 'owner_information',
          window_target_id: 'window_target_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowExecutionId'] = stub[:window_execution_id] unless stub[:window_execution_id].nil?
        data['TaskExecutionId'] = stub[:task_execution_id] unless stub[:task_execution_id].nil?
        data['InvocationId'] = stub[:invocation_id] unless stub[:invocation_id].nil?
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['TaskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['Parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['OwnerInformation'] = stub[:owner_information] unless stub[:owner_information].nil?
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMaintenanceWindowTask
    class GetMaintenanceWindowTask
      def self.default(visited=[])
        {
          window_id: 'window_id',
          window_task_id: 'window_task_id',
          targets: Targets.default(visited),
          task_arn: 'task_arn',
          service_role_arn: 'service_role_arn',
          task_type: 'task_type',
          task_parameters: MaintenanceWindowTaskParameters.default(visited),
          task_invocation_parameters: MaintenanceWindowTaskInvocationParameters.default(visited),
          priority: 1,
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          logging_info: LoggingInfo.default(visited),
          name: 'name',
          description: 'description',
          cutoff_behavior: 'cutoff_behavior',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTaskId'] = stub[:window_task_id] unless stub[:window_task_id].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['TaskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['TaskParameters'] = Stubs::MaintenanceWindowTaskParameters.stub(stub[:task_parameters]) unless stub[:task_parameters].nil?
        data['TaskInvocationParameters'] = Stubs::MaintenanceWindowTaskInvocationParameters.stub(stub[:task_invocation_parameters]) unless stub[:task_invocation_parameters].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['LoggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CutoffBehavior'] = stub[:cutoff_behavior] unless stub[:cutoff_behavior].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MaintenanceWindowTaskInvocationParameters
    class MaintenanceWindowTaskInvocationParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowTaskInvocationParameters')
        visited = visited + ['MaintenanceWindowTaskInvocationParameters']
        {
          run_command: MaintenanceWindowRunCommandParameters.default(visited),
          automation: MaintenanceWindowAutomationParameters.default(visited),
          step_functions: MaintenanceWindowStepFunctionsParameters.default(visited),
          lambda: MaintenanceWindowLambdaParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowTaskInvocationParameters.new
        data = {}
        data['RunCommand'] = Stubs::MaintenanceWindowRunCommandParameters.stub(stub[:run_command]) unless stub[:run_command].nil?
        data['Automation'] = Stubs::MaintenanceWindowAutomationParameters.stub(stub[:automation]) unless stub[:automation].nil?
        data['StepFunctions'] = Stubs::MaintenanceWindowStepFunctionsParameters.stub(stub[:step_functions]) unless stub[:step_functions].nil?
        data['Lambda'] = Stubs::MaintenanceWindowLambdaParameters.stub(stub[:lambda]) unless stub[:lambda].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceWindowLambdaParameters
    class MaintenanceWindowLambdaParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowLambdaParameters')
        visited = visited + ['MaintenanceWindowLambdaParameters']
        {
          client_context: 'client_context',
          qualifier: 'qualifier',
          payload: 'payload',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowLambdaParameters.new
        data = {}
        data['ClientContext'] = stub[:client_context] unless stub[:client_context].nil?
        data['Qualifier'] = stub[:qualifier] unless stub[:qualifier].nil?
        data['Payload'] = Base64::encode64(stub[:payload]) unless stub[:payload].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceWindowStepFunctionsParameters
    class MaintenanceWindowStepFunctionsParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowStepFunctionsParameters')
        visited = visited + ['MaintenanceWindowStepFunctionsParameters']
        {
          input: 'input',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowStepFunctionsParameters.new
        data = {}
        data['Input'] = stub[:input] unless stub[:input].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceWindowAutomationParameters
    class MaintenanceWindowAutomationParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowAutomationParameters')
        visited = visited + ['MaintenanceWindowAutomationParameters']
        {
          document_version: 'document_version',
          parameters: AutomationParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowAutomationParameters.new
        data = {}
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Parameters'] = Stubs::AutomationParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Structure Stubber for MaintenanceWindowRunCommandParameters
    class MaintenanceWindowRunCommandParameters
      def self.default(visited=[])
        return nil if visited.include?('MaintenanceWindowRunCommandParameters')
        visited = visited + ['MaintenanceWindowRunCommandParameters']
        {
          comment: 'comment',
          cloud_watch_output_config: CloudWatchOutputConfig.default(visited),
          document_hash: 'document_hash',
          document_hash_type: 'document_hash_type',
          document_version: 'document_version',
          notification_config: NotificationConfig.default(visited),
          output_s3_bucket_name: 'output_s3_bucket_name',
          output_s3_key_prefix: 'output_s3_key_prefix',
          parameters: Parameters.default(visited),
          service_role_arn: 'service_role_arn',
          timeout_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MaintenanceWindowRunCommandParameters.new
        data = {}
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['CloudWatchOutputConfig'] = Stubs::CloudWatchOutputConfig.stub(stub[:cloud_watch_output_config]) unless stub[:cloud_watch_output_config].nil?
        data['DocumentHash'] = stub[:document_hash] unless stub[:document_hash].nil?
        data['DocumentHashType'] = stub[:document_hash_type] unless stub[:document_hash_type].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['NotificationConfig'] = Stubs::NotificationConfig.stub(stub[:notification_config]) unless stub[:notification_config].nil?
        data['OutputS3BucketName'] = stub[:output_s3_bucket_name] unless stub[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = stub[:output_s3_key_prefix] unless stub[:output_s3_key_prefix].nil?
        data['Parameters'] = Stubs::Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['TimeoutSeconds'] = stub[:timeout_seconds] unless stub[:timeout_seconds].nil?
        data
      end
    end

    # Structure Stubber for NotificationConfig
    class NotificationConfig
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfig')
        visited = visited + ['NotificationConfig']
        {
          notification_arn: 'notification_arn',
          notification_events: NotificationEventList.default(visited),
          notification_type: 'notification_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfig.new
        data = {}
        data['NotificationArn'] = stub[:notification_arn] unless stub[:notification_arn].nil?
        data['NotificationEvents'] = Stubs::NotificationEventList.stub(stub[:notification_events]) unless stub[:notification_events].nil?
        data['NotificationType'] = stub[:notification_type] unless stub[:notification_type].nil?
        data
      end
    end

    # List Stubber for NotificationEventList
    class NotificationEventList
      def self.default(visited=[])
        return nil if visited.include?('NotificationEventList')
        visited = visited + ['NotificationEventList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetOpsItem
    class GetOpsItem
      def self.default(visited=[])
        {
          ops_item: OpsItem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OpsItem'] = Stubs::OpsItem.stub(stub[:ops_item]) unless stub[:ops_item].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for OpsItem
    class OpsItem
      def self.default(visited=[])
        return nil if visited.include?('OpsItem')
        visited = visited + ['OpsItem']
        {
          created_by: 'created_by',
          ops_item_type: 'ops_item_type',
          created_time: Time.now,
          description: 'description',
          last_modified_by: 'last_modified_by',
          last_modified_time: Time.now,
          notifications: OpsItemNotifications.default(visited),
          priority: 1,
          related_ops_items: RelatedOpsItems.default(visited),
          status: 'status',
          ops_item_id: 'ops_item_id',
          version: 'version',
          title: 'title',
          source: 'source',
          operational_data: OpsItemOperationalData.default(visited),
          category: 'category',
          severity: 'severity',
          actual_start_time: Time.now,
          actual_end_time: Time.now,
          planned_start_time: Time.now,
          planned_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItem.new
        data = {}
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['OpsItemType'] = stub[:ops_item_type] unless stub[:ops_item_type].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['Notifications'] = Stubs::OpsItemNotifications.stub(stub[:notifications]) unless stub[:notifications].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['RelatedOpsItems'] = Stubs::RelatedOpsItems.stub(stub[:related_ops_items]) unless stub[:related_ops_items].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['OperationalData'] = Stubs::OpsItemOperationalData.stub(stub[:operational_data]) unless stub[:operational_data].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['ActualStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:actual_start_time]).to_i unless stub[:actual_start_time].nil?
        data['ActualEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:actual_end_time]).to_i unless stub[:actual_end_time].nil?
        data['PlannedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:planned_start_time]).to_i unless stub[:planned_start_time].nil?
        data['PlannedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:planned_end_time]).to_i unless stub[:planned_end_time].nil?
        data
      end
    end

    # List Stubber for RelatedOpsItems
    class RelatedOpsItems
      def self.default(visited=[])
        return nil if visited.include?('RelatedOpsItems')
        visited = visited + ['RelatedOpsItems']
        [
          RelatedOpsItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RelatedOpsItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelatedOpsItem
    class RelatedOpsItem
      def self.default(visited=[])
        return nil if visited.include?('RelatedOpsItem')
        visited = visited + ['RelatedOpsItem']
        {
          ops_item_id: 'ops_item_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedOpsItem.new
        data = {}
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data
      end
    end

    # List Stubber for OpsItemNotifications
    class OpsItemNotifications
      def self.default(visited=[])
        return nil if visited.include?('OpsItemNotifications')
        visited = visited + ['OpsItemNotifications']
        [
          OpsItemNotification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsItemNotification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsItemNotification
    class OpsItemNotification
      def self.default(visited=[])
        return nil if visited.include?('OpsItemNotification')
        visited = visited + ['OpsItemNotification']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemNotification.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetOpsMetadata
    class GetOpsMetadata
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
          metadata: MetadataMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Metadata'] = Stubs::MetadataMap.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for MetadataMap
    class MetadataMap
      def self.default(visited=[])
        return nil if visited.include?('MetadataMap')
        visited = visited + ['MetadataMap']
        {
          test_key: MetadataValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MetadataValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MetadataValue
    class MetadataValue
      def self.default(visited=[])
        return nil if visited.include?('MetadataValue')
        visited = visited + ['MetadataValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetadataValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetOpsSummary
    class GetOpsSummary
      def self.default(visited=[])
        {
          entities: OpsEntityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::OpsEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OpsEntityList
    class OpsEntityList
      def self.default(visited=[])
        return nil if visited.include?('OpsEntityList')
        visited = visited + ['OpsEntityList']
        [
          OpsEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsEntity
    class OpsEntity
      def self.default(visited=[])
        return nil if visited.include?('OpsEntity')
        visited = visited + ['OpsEntity']
        {
          id: 'id',
          data: OpsEntityItemMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsEntity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Data'] = Stubs::OpsEntityItemMap.stub(stub[:data]) unless stub[:data].nil?
        data
      end
    end

    # Map Stubber for OpsEntityItemMap
    class OpsEntityItemMap
      def self.default(visited=[])
        return nil if visited.include?('OpsEntityItemMap')
        visited = visited + ['OpsEntityItemMap']
        {
          test_key: OpsEntityItem.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::OpsEntityItem.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsEntityItem
    class OpsEntityItem
      def self.default(visited=[])
        return nil if visited.include?('OpsEntityItem')
        visited = visited + ['OpsEntityItem']
        {
          capture_time: 'capture_time',
          content: OpsEntityItemEntryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsEntityItem.new
        data = {}
        data['CaptureTime'] = stub[:capture_time] unless stub[:capture_time].nil?
        data['Content'] = Stubs::OpsEntityItemEntryList.stub(stub[:content]) unless stub[:content].nil?
        data
      end
    end

    # List Stubber for OpsEntityItemEntryList
    class OpsEntityItemEntryList
      def self.default(visited=[])
        return nil if visited.include?('OpsEntityItemEntryList')
        visited = visited + ['OpsEntityItemEntryList']
        [
          OpsEntityItemEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsEntityItemEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for OpsEntityItemEntry
    class OpsEntityItemEntry
      def self.default(visited=[])
        return nil if visited.include?('OpsEntityItemEntry')
        visited = visited + ['OpsEntityItemEntry']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetParameter
    class GetParameter
      def self.default(visited=[])
        {
          parameter: Parameter.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parameter'] = Stubs::Parameter.stub(stub[:parameter]) unless stub[:parameter].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Parameter
    class Parameter
      def self.default(visited=[])
        return nil if visited.include?('Parameter')
        visited = visited + ['Parameter']
        {
          name: 'name',
          type: 'type',
          value: 'value',
          version: 1,
          selector: 'selector',
          source_result: 'source_result',
          last_modified_date: Time.now,
          arn: 'arn',
          data_type: 'data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Parameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Selector'] = stub[:selector] unless stub[:selector].nil?
        data['SourceResult'] = stub[:source_result] unless stub[:source_result].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data
      end
    end

    # Operation Stubber for GetParameterHistory
    class GetParameterHistory
      def self.default(visited=[])
        {
          parameters: ParameterHistoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parameters'] = Stubs::ParameterHistoryList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterHistoryList
    class ParameterHistoryList
      def self.default(visited=[])
        return nil if visited.include?('ParameterHistoryList')
        visited = visited + ['ParameterHistoryList']
        [
          ParameterHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterHistory
    class ParameterHistory
      def self.default(visited=[])
        return nil if visited.include?('ParameterHistory')
        visited = visited + ['ParameterHistory']
        {
          name: 'name',
          type: 'type',
          key_id: 'key_id',
          last_modified_date: Time.now,
          last_modified_user: 'last_modified_user',
          description: 'description',
          value: 'value',
          allowed_pattern: 'allowed_pattern',
          version: 1,
          labels: ParameterLabelList.default(visited),
          tier: 'tier',
          policies: ParameterPolicyList.default(visited),
          data_type: 'data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterHistory.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['AllowedPattern'] = stub[:allowed_pattern] unless stub[:allowed_pattern].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Labels'] = Stubs::ParameterLabelList.stub(stub[:labels]) unless stub[:labels].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['Policies'] = Stubs::ParameterPolicyList.stub(stub[:policies]) unless stub[:policies].nil?
        data['DataType'] = stub[:data_type] unless stub[:data_type].nil?
        data
      end
    end

    # List Stubber for ParameterLabelList
    class ParameterLabelList
      def self.default(visited=[])
        return nil if visited.include?('ParameterLabelList')
        visited = visited + ['ParameterLabelList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetParameters
    class GetParameters
      def self.default(visited=[])
        {
          parameters: ParameterList.default(visited),
          invalid_parameters: ParameterNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parameters'] = Stubs::ParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['InvalidParameters'] = Stubs::ParameterNameList.stub(stub[:invalid_parameters]) unless stub[:invalid_parameters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterList
    class ParameterList
      def self.default(visited=[])
        return nil if visited.include?('ParameterList')
        visited = visited + ['ParameterList']
        [
          Parameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Parameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetParametersByPath
    class GetParametersByPath
      def self.default(visited=[])
        {
          parameters: ParameterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Parameters'] = Stubs::ParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPatchBaseline
    class GetPatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          name: 'name',
          operating_system: 'operating_system',
          global_filters: PatchFilterGroup.default(visited),
          approval_rules: PatchRuleGroup.default(visited),
          approved_patches: PatchIdList.default(visited),
          approved_patches_compliance_level: 'approved_patches_compliance_level',
          approved_patches_enable_non_security: false,
          rejected_patches: PatchIdList.default(visited),
          rejected_patches_action: 'rejected_patches_action',
          patch_groups: PatchGroupList.default(visited),
          created_date: Time.now,
          modified_date: Time.now,
          description: 'description',
          sources: PatchSourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['GlobalFilters'] = Stubs::PatchFilterGroup.stub(stub[:global_filters]) unless stub[:global_filters].nil?
        data['ApprovalRules'] = Stubs::PatchRuleGroup.stub(stub[:approval_rules]) unless stub[:approval_rules].nil?
        data['ApprovedPatches'] = Stubs::PatchIdList.stub(stub[:approved_patches]) unless stub[:approved_patches].nil?
        data['ApprovedPatchesComplianceLevel'] = stub[:approved_patches_compliance_level] unless stub[:approved_patches_compliance_level].nil?
        data['ApprovedPatchesEnableNonSecurity'] = stub[:approved_patches_enable_non_security] unless stub[:approved_patches_enable_non_security].nil?
        data['RejectedPatches'] = Stubs::PatchIdList.stub(stub[:rejected_patches]) unless stub[:rejected_patches].nil?
        data['RejectedPatchesAction'] = stub[:rejected_patches_action] unless stub[:rejected_patches_action].nil?
        data['PatchGroups'] = Stubs::PatchGroupList.stub(stub[:patch_groups]) unless stub[:patch_groups].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['ModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_date]).to_i unless stub[:modified_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Sources'] = Stubs::PatchSourceList.stub(stub[:sources]) unless stub[:sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PatchSourceList
    class PatchSourceList
      def self.default(visited=[])
        return nil if visited.include?('PatchSourceList')
        visited = visited + ['PatchSourceList']
        [
          PatchSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchSource
    class PatchSource
      def self.default(visited=[])
        return nil if visited.include?('PatchSource')
        visited = visited + ['PatchSource']
        {
          name: 'name',
          products: PatchSourceProductList.default(visited),
          configuration: 'configuration',
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchSource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Products'] = Stubs::PatchSourceProductList.stub(stub[:products]) unless stub[:products].nil?
        data['Configuration'] = stub[:configuration] unless stub[:configuration].nil?
        data
      end
    end

    # List Stubber for PatchSourceProductList
    class PatchSourceProductList
      def self.default(visited=[])
        return nil if visited.include?('PatchSourceProductList')
        visited = visited + ['PatchSourceProductList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for PatchGroupList
    class PatchGroupList
      def self.default(visited=[])
        return nil if visited.include?('PatchGroupList')
        visited = visited + ['PatchGroupList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for PatchIdList
    class PatchIdList
      def self.default(visited=[])
        return nil if visited.include?('PatchIdList')
        visited = visited + ['PatchIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchRuleGroup
    class PatchRuleGroup
      def self.default(visited=[])
        return nil if visited.include?('PatchRuleGroup')
        visited = visited + ['PatchRuleGroup']
        {
          patch_rules: PatchRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchRuleGroup.new
        data = {}
        data['PatchRules'] = Stubs::PatchRuleList.stub(stub[:patch_rules]) unless stub[:patch_rules].nil?
        data
      end
    end

    # List Stubber for PatchRuleList
    class PatchRuleList
      def self.default(visited=[])
        return nil if visited.include?('PatchRuleList')
        visited = visited + ['PatchRuleList']
        [
          PatchRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchRule
    class PatchRule
      def self.default(visited=[])
        return nil if visited.include?('PatchRule')
        visited = visited + ['PatchRule']
        {
          patch_filter_group: PatchFilterGroup.default(visited),
          compliance_level: 'compliance_level',
          approve_after_days: 1,
          approve_until_date: 'approve_until_date',
          enable_non_security: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchRule.new
        data = {}
        data['PatchFilterGroup'] = Stubs::PatchFilterGroup.stub(stub[:patch_filter_group]) unless stub[:patch_filter_group].nil?
        data['ComplianceLevel'] = stub[:compliance_level] unless stub[:compliance_level].nil?
        data['ApproveAfterDays'] = stub[:approve_after_days] unless stub[:approve_after_days].nil?
        data['ApproveUntilDate'] = stub[:approve_until_date] unless stub[:approve_until_date].nil?
        data['EnableNonSecurity'] = stub[:enable_non_security] unless stub[:enable_non_security].nil?
        data
      end
    end

    # Structure Stubber for PatchFilterGroup
    class PatchFilterGroup
      def self.default(visited=[])
        return nil if visited.include?('PatchFilterGroup')
        visited = visited + ['PatchFilterGroup']
        {
          patch_filters: PatchFilterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchFilterGroup.new
        data = {}
        data['PatchFilters'] = Stubs::PatchFilterList.stub(stub[:patch_filters]) unless stub[:patch_filters].nil?
        data
      end
    end

    # List Stubber for PatchFilterList
    class PatchFilterList
      def self.default(visited=[])
        return nil if visited.include?('PatchFilterList')
        visited = visited + ['PatchFilterList']
        [
          PatchFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PatchFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PatchFilter
    class PatchFilter
      def self.default(visited=[])
        return nil if visited.include?('PatchFilter')
        visited = visited + ['PatchFilter']
        {
          key: 'key',
          values: PatchFilterValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PatchFilter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::PatchFilterValueList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for PatchFilterValueList
    class PatchFilterValueList
      def self.default(visited=[])
        return nil if visited.include?('PatchFilterValueList')
        visited = visited + ['PatchFilterValueList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetPatchBaselineForPatchGroup
    class GetPatchBaselineForPatchGroup
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          patch_group: 'patch_group',
          operating_system: 'operating_system',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetServiceSetting
    class GetServiceSetting
      def self.default(visited=[])
        {
          service_setting: ServiceSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceSetting'] = Stubs::ServiceSetting.stub(stub[:service_setting]) unless stub[:service_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceSetting
    class ServiceSetting
      def self.default(visited=[])
        return nil if visited.include?('ServiceSetting')
        visited = visited + ['ServiceSetting']
        {
          setting_id: 'setting_id',
          setting_value: 'setting_value',
          last_modified_date: Time.now,
          last_modified_user: 'last_modified_user',
          arn: 'arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceSetting.new
        data = {}
        data['SettingId'] = stub[:setting_id] unless stub[:setting_id].nil?
        data['SettingValue'] = stub[:setting_value] unless stub[:setting_value].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for LabelParameterVersion
    class LabelParameterVersion
      def self.default(visited=[])
        {
          invalid_labels: ParameterLabelList.default(visited),
          parameter_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InvalidLabels'] = Stubs::ParameterLabelList.stub(stub[:invalid_labels]) unless stub[:invalid_labels].nil?
        data['ParameterVersion'] = stub[:parameter_version] unless stub[:parameter_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAssociationVersions
    class ListAssociationVersions
      def self.default(visited=[])
        {
          association_versions: AssociationVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationVersions'] = Stubs::AssociationVersionList.stub(stub[:association_versions]) unless stub[:association_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociationVersionList
    class AssociationVersionList
      def self.default(visited=[])
        return nil if visited.include?('AssociationVersionList')
        visited = visited + ['AssociationVersionList']
        [
          AssociationVersionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociationVersionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociationVersionInfo
    class AssociationVersionInfo
      def self.default(visited=[])
        return nil if visited.include?('AssociationVersionInfo')
        visited = visited + ['AssociationVersionInfo']
        {
          association_id: 'association_id',
          association_version: 'association_version',
          created_date: Time.now,
          name: 'name',
          document_version: 'document_version',
          parameters: Parameters.default(visited),
          targets: Targets.default(visited),
          schedule_expression: 'schedule_expression',
          output_location: InstanceAssociationOutputLocation.default(visited),
          association_name: 'association_name',
          max_errors: 'max_errors',
          max_concurrency: 'max_concurrency',
          compliance_severity: 'compliance_severity',
          sync_compliance: 'sync_compliance',
          apply_only_at_cron_interval: false,
          calendar_names: CalendarNameOrARNList.default(visited),
          target_locations: TargetLocations.default(visited),
          schedule_offset: 1,
          target_maps: TargetMaps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociationVersionInfo.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Parameters'] = Stubs::Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['OutputLocation'] = Stubs::InstanceAssociationOutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data['AssociationName'] = stub[:association_name] unless stub[:association_name].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['ComplianceSeverity'] = stub[:compliance_severity] unless stub[:compliance_severity].nil?
        data['SyncCompliance'] = stub[:sync_compliance] unless stub[:sync_compliance].nil?
        data['ApplyOnlyAtCronInterval'] = stub[:apply_only_at_cron_interval] unless stub[:apply_only_at_cron_interval].nil?
        data['CalendarNames'] = Stubs::CalendarNameOrARNList.stub(stub[:calendar_names]) unless stub[:calendar_names].nil?
        data['TargetLocations'] = Stubs::TargetLocations.stub(stub[:target_locations]) unless stub[:target_locations].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data
      end
    end

    # Operation Stubber for ListAssociations
    class ListAssociations
      def self.default(visited=[])
        {
          associations: AssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Associations'] = Stubs::AssociationList.stub(stub[:associations]) unless stub[:associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociationList
    class AssociationList
      def self.default(visited=[])
        return nil if visited.include?('AssociationList')
        visited = visited + ['AssociationList']
        [
          Association.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Association.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Association
    class Association
      def self.default(visited=[])
        return nil if visited.include?('Association')
        visited = visited + ['Association']
        {
          name: 'name',
          instance_id: 'instance_id',
          association_id: 'association_id',
          association_version: 'association_version',
          document_version: 'document_version',
          targets: Targets.default(visited),
          last_execution_date: Time.now,
          overview: AssociationOverview.default(visited),
          schedule_expression: 'schedule_expression',
          association_name: 'association_name',
          schedule_offset: 1,
          target_maps: TargetMaps.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Association.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['AssociationVersion'] = stub[:association_version] unless stub[:association_version].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['LastExecutionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_execution_date]).to_i unless stub[:last_execution_date].nil?
        data['Overview'] = Stubs::AssociationOverview.stub(stub[:overview]) unless stub[:overview].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['AssociationName'] = stub[:association_name] unless stub[:association_name].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['TargetMaps'] = Stubs::TargetMaps.stub(stub[:target_maps]) unless stub[:target_maps].nil?
        data
      end
    end

    # Operation Stubber for ListCommandInvocations
    class ListCommandInvocations
      def self.default(visited=[])
        {
          command_invocations: CommandInvocationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CommandInvocations'] = Stubs::CommandInvocationList.stub(stub[:command_invocations]) unless stub[:command_invocations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CommandInvocationList
    class CommandInvocationList
      def self.default(visited=[])
        return nil if visited.include?('CommandInvocationList')
        visited = visited + ['CommandInvocationList']
        [
          CommandInvocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CommandInvocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CommandInvocation
    class CommandInvocation
      def self.default(visited=[])
        return nil if visited.include?('CommandInvocation')
        visited = visited + ['CommandInvocation']
        {
          command_id: 'command_id',
          instance_id: 'instance_id',
          instance_name: 'instance_name',
          comment: 'comment',
          document_name: 'document_name',
          document_version: 'document_version',
          requested_date_time: Time.now,
          status: 'status',
          status_details: 'status_details',
          trace_output: 'trace_output',
          standard_output_url: 'standard_output_url',
          standard_error_url: 'standard_error_url',
          command_plugins: CommandPluginList.default(visited),
          service_role: 'service_role',
          notification_config: NotificationConfig.default(visited),
          cloud_watch_output_config: CloudWatchOutputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CommandInvocation.new
        data = {}
        data['CommandId'] = stub[:command_id] unless stub[:command_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['InstanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['RequestedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_date_time]).to_i unless stub[:requested_date_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['TraceOutput'] = stub[:trace_output] unless stub[:trace_output].nil?
        data['StandardOutputUrl'] = stub[:standard_output_url] unless stub[:standard_output_url].nil?
        data['StandardErrorUrl'] = stub[:standard_error_url] unless stub[:standard_error_url].nil?
        data['CommandPlugins'] = Stubs::CommandPluginList.stub(stub[:command_plugins]) unless stub[:command_plugins].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['NotificationConfig'] = Stubs::NotificationConfig.stub(stub[:notification_config]) unless stub[:notification_config].nil?
        data['CloudWatchOutputConfig'] = Stubs::CloudWatchOutputConfig.stub(stub[:cloud_watch_output_config]) unless stub[:cloud_watch_output_config].nil?
        data
      end
    end

    # List Stubber for CommandPluginList
    class CommandPluginList
      def self.default(visited=[])
        return nil if visited.include?('CommandPluginList')
        visited = visited + ['CommandPluginList']
        [
          CommandPlugin.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CommandPlugin.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CommandPlugin
    class CommandPlugin
      def self.default(visited=[])
        return nil if visited.include?('CommandPlugin')
        visited = visited + ['CommandPlugin']
        {
          name: 'name',
          status: 'status',
          status_details: 'status_details',
          response_code: 1,
          response_start_date_time: Time.now,
          response_finish_date_time: Time.now,
          output: 'output',
          standard_output_url: 'standard_output_url',
          standard_error_url: 'standard_error_url',
          output_s3_region: 'output_s3_region',
          output_s3_bucket_name: 'output_s3_bucket_name',
          output_s3_key_prefix: 'output_s3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::CommandPlugin.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['ResponseCode'] = stub[:response_code] unless stub[:response_code].nil?
        data['ResponseStartDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:response_start_date_time]).to_i unless stub[:response_start_date_time].nil?
        data['ResponseFinishDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:response_finish_date_time]).to_i unless stub[:response_finish_date_time].nil?
        data['Output'] = stub[:output] unless stub[:output].nil?
        data['StandardOutputUrl'] = stub[:standard_output_url] unless stub[:standard_output_url].nil?
        data['StandardErrorUrl'] = stub[:standard_error_url] unless stub[:standard_error_url].nil?
        data['OutputS3Region'] = stub[:output_s3_region] unless stub[:output_s3_region].nil?
        data['OutputS3BucketName'] = stub[:output_s3_bucket_name] unless stub[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = stub[:output_s3_key_prefix] unless stub[:output_s3_key_prefix].nil?
        data
      end
    end

    # Operation Stubber for ListCommands
    class ListCommands
      def self.default(visited=[])
        {
          commands: CommandList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Commands'] = Stubs::CommandList.stub(stub[:commands]) unless stub[:commands].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CommandList
    class CommandList
      def self.default(visited=[])
        return nil if visited.include?('CommandList')
        visited = visited + ['CommandList']
        [
          Command.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Command.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Command
    class Command
      def self.default(visited=[])
        return nil if visited.include?('Command')
        visited = visited + ['Command']
        {
          command_id: 'command_id',
          document_name: 'document_name',
          document_version: 'document_version',
          comment: 'comment',
          expires_after: Time.now,
          parameters: Parameters.default(visited),
          instance_ids: InstanceIdList.default(visited),
          targets: Targets.default(visited),
          requested_date_time: Time.now,
          status: 'status',
          status_details: 'status_details',
          output_s3_region: 'output_s3_region',
          output_s3_bucket_name: 'output_s3_bucket_name',
          output_s3_key_prefix: 'output_s3_key_prefix',
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          target_count: 1,
          completed_count: 1,
          error_count: 1,
          delivery_timed_out_count: 1,
          service_role: 'service_role',
          notification_config: NotificationConfig.default(visited),
          cloud_watch_output_config: CloudWatchOutputConfig.default(visited),
          timeout_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Command.new
        data = {}
        data['CommandId'] = stub[:command_id] unless stub[:command_id].nil?
        data['DocumentName'] = stub[:document_name] unless stub[:document_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Comment'] = stub[:comment] unless stub[:comment].nil?
        data['ExpiresAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_after]).to_i unless stub[:expires_after].nil?
        data['Parameters'] = Stubs::Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['InstanceIds'] = Stubs::InstanceIdList.stub(stub[:instance_ids]) unless stub[:instance_ids].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['RequestedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_date_time]).to_i unless stub[:requested_date_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDetails'] = stub[:status_details] unless stub[:status_details].nil?
        data['OutputS3Region'] = stub[:output_s3_region] unless stub[:output_s3_region].nil?
        data['OutputS3BucketName'] = stub[:output_s3_bucket_name] unless stub[:output_s3_bucket_name].nil?
        data['OutputS3KeyPrefix'] = stub[:output_s3_key_prefix] unless stub[:output_s3_key_prefix].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['TargetCount'] = stub[:target_count] unless stub[:target_count].nil?
        data['CompletedCount'] = stub[:completed_count] unless stub[:completed_count].nil?
        data['ErrorCount'] = stub[:error_count] unless stub[:error_count].nil?
        data['DeliveryTimedOutCount'] = stub[:delivery_timed_out_count] unless stub[:delivery_timed_out_count].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['NotificationConfig'] = Stubs::NotificationConfig.stub(stub[:notification_config]) unless stub[:notification_config].nil?
        data['CloudWatchOutputConfig'] = Stubs::CloudWatchOutputConfig.stub(stub[:cloud_watch_output_config]) unless stub[:cloud_watch_output_config].nil?
        data['TimeoutSeconds'] = stub[:timeout_seconds] unless stub[:timeout_seconds].nil?
        data
      end
    end

    # List Stubber for InstanceIdList
    class InstanceIdList
      def self.default(visited=[])
        return nil if visited.include?('InstanceIdList')
        visited = visited + ['InstanceIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListComplianceItems
    class ListComplianceItems
      def self.default(visited=[])
        {
          compliance_items: ComplianceItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceItems'] = Stubs::ComplianceItemList.stub(stub[:compliance_items]) unless stub[:compliance_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComplianceItemList
    class ComplianceItemList
      def self.default(visited=[])
        return nil if visited.include?('ComplianceItemList')
        visited = visited + ['ComplianceItemList']
        [
          ComplianceItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComplianceItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceItem
    class ComplianceItem
      def self.default(visited=[])
        return nil if visited.include?('ComplianceItem')
        visited = visited + ['ComplianceItem']
        {
          compliance_type: 'compliance_type',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          id: 'id',
          title: 'title',
          status: 'status',
          severity: 'severity',
          execution_summary: ComplianceExecutionSummary.default(visited),
          details: ComplianceItemDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceItem.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['ExecutionSummary'] = Stubs::ComplianceExecutionSummary.stub(stub[:execution_summary]) unless stub[:execution_summary].nil?
        data['Details'] = Stubs::ComplianceItemDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Map Stubber for ComplianceItemDetails
    class ComplianceItemDetails
      def self.default(visited=[])
        return nil if visited.include?('ComplianceItemDetails')
        visited = visited + ['ComplianceItemDetails']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceExecutionSummary
    class ComplianceExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('ComplianceExecutionSummary')
        visited = visited + ['ComplianceExecutionSummary']
        {
          execution_time: Time.now,
          execution_id: 'execution_id',
          execution_type: 'execution_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceExecutionSummary.new
        data = {}
        data['ExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_time]).to_i unless stub[:execution_time].nil?
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['ExecutionType'] = stub[:execution_type] unless stub[:execution_type].nil?
        data
      end
    end

    # Operation Stubber for ListComplianceSummaries
    class ListComplianceSummaries
      def self.default(visited=[])
        {
          compliance_summary_items: ComplianceSummaryItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComplianceSummaryItems'] = Stubs::ComplianceSummaryItemList.stub(stub[:compliance_summary_items]) unless stub[:compliance_summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComplianceSummaryItemList
    class ComplianceSummaryItemList
      def self.default(visited=[])
        return nil if visited.include?('ComplianceSummaryItemList')
        visited = visited + ['ComplianceSummaryItemList']
        [
          ComplianceSummaryItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComplianceSummaryItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComplianceSummaryItem
    class ComplianceSummaryItem
      def self.default(visited=[])
        return nil if visited.include?('ComplianceSummaryItem')
        visited = visited + ['ComplianceSummaryItem']
        {
          compliance_type: 'compliance_type',
          compliant_summary: CompliantSummary.default(visited),
          non_compliant_summary: NonCompliantSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComplianceSummaryItem.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['CompliantSummary'] = Stubs::CompliantSummary.stub(stub[:compliant_summary]) unless stub[:compliant_summary].nil?
        data['NonCompliantSummary'] = Stubs::NonCompliantSummary.stub(stub[:non_compliant_summary]) unless stub[:non_compliant_summary].nil?
        data
      end
    end

    # Structure Stubber for NonCompliantSummary
    class NonCompliantSummary
      def self.default(visited=[])
        return nil if visited.include?('NonCompliantSummary')
        visited = visited + ['NonCompliantSummary']
        {
          non_compliant_count: 1,
          severity_summary: SeveritySummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NonCompliantSummary.new
        data = {}
        data['NonCompliantCount'] = stub[:non_compliant_count] unless stub[:non_compliant_count].nil?
        data['SeveritySummary'] = Stubs::SeveritySummary.stub(stub[:severity_summary]) unless stub[:severity_summary].nil?
        data
      end
    end

    # Structure Stubber for SeveritySummary
    class SeveritySummary
      def self.default(visited=[])
        return nil if visited.include?('SeveritySummary')
        visited = visited + ['SeveritySummary']
        {
          critical_count: 1,
          high_count: 1,
          medium_count: 1,
          low_count: 1,
          informational_count: 1,
          unspecified_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SeveritySummary.new
        data = {}
        data['CriticalCount'] = stub[:critical_count] unless stub[:critical_count].nil?
        data['HighCount'] = stub[:high_count] unless stub[:high_count].nil?
        data['MediumCount'] = stub[:medium_count] unless stub[:medium_count].nil?
        data['LowCount'] = stub[:low_count] unless stub[:low_count].nil?
        data['InformationalCount'] = stub[:informational_count] unless stub[:informational_count].nil?
        data['UnspecifiedCount'] = stub[:unspecified_count] unless stub[:unspecified_count].nil?
        data
      end
    end

    # Structure Stubber for CompliantSummary
    class CompliantSummary
      def self.default(visited=[])
        return nil if visited.include?('CompliantSummary')
        visited = visited + ['CompliantSummary']
        {
          compliant_count: 1,
          severity_summary: SeveritySummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompliantSummary.new
        data = {}
        data['CompliantCount'] = stub[:compliant_count] unless stub[:compliant_count].nil?
        data['SeveritySummary'] = Stubs::SeveritySummary.stub(stub[:severity_summary]) unless stub[:severity_summary].nil?
        data
      end
    end

    # Operation Stubber for ListDocumentMetadataHistory
    class ListDocumentMetadataHistory
      def self.default(visited=[])
        {
          name: 'name',
          document_version: 'document_version',
          author: 'author',
          metadata: DocumentMetadataResponseInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['Author'] = stub[:author] unless stub[:author].nil?
        data['Metadata'] = Stubs::DocumentMetadataResponseInfo.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DocumentMetadataResponseInfo
    class DocumentMetadataResponseInfo
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadataResponseInfo')
        visited = visited + ['DocumentMetadataResponseInfo']
        {
          reviewer_response: DocumentReviewerResponseList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentMetadataResponseInfo.new
        data = {}
        data['ReviewerResponse'] = Stubs::DocumentReviewerResponseList.stub(stub[:reviewer_response]) unless stub[:reviewer_response].nil?
        data
      end
    end

    # List Stubber for DocumentReviewerResponseList
    class DocumentReviewerResponseList
      def self.default(visited=[])
        return nil if visited.include?('DocumentReviewerResponseList')
        visited = visited + ['DocumentReviewerResponseList']
        [
          DocumentReviewerResponseSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentReviewerResponseSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentReviewerResponseSource
    class DocumentReviewerResponseSource
      def self.default(visited=[])
        return nil if visited.include?('DocumentReviewerResponseSource')
        visited = visited + ['DocumentReviewerResponseSource']
        {
          create_time: Time.now,
          updated_time: Time.now,
          review_status: 'review_status',
          comment: DocumentReviewCommentList.default(visited),
          reviewer: 'reviewer',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentReviewerResponseSource.new
        data = {}
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['UpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_time]).to_i unless stub[:updated_time].nil?
        data['ReviewStatus'] = stub[:review_status] unless stub[:review_status].nil?
        data['Comment'] = Stubs::DocumentReviewCommentList.stub(stub[:comment]) unless stub[:comment].nil?
        data['Reviewer'] = stub[:reviewer] unless stub[:reviewer].nil?
        data
      end
    end

    # List Stubber for DocumentReviewCommentList
    class DocumentReviewCommentList
      def self.default(visited=[])
        return nil if visited.include?('DocumentReviewCommentList')
        visited = visited + ['DocumentReviewCommentList']
        [
          DocumentReviewCommentSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentReviewCommentSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentReviewCommentSource
    class DocumentReviewCommentSource
      def self.default(visited=[])
        return nil if visited.include?('DocumentReviewCommentSource')
        visited = visited + ['DocumentReviewCommentSource']
        {
          type: 'type',
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentReviewCommentSource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Operation Stubber for ListDocumentVersions
    class ListDocumentVersions
      def self.default(visited=[])
        {
          document_versions: DocumentVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentVersions'] = Stubs::DocumentVersionList.stub(stub[:document_versions]) unless stub[:document_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentVersionList
    class DocumentVersionList
      def self.default(visited=[])
        return nil if visited.include?('DocumentVersionList')
        visited = visited + ['DocumentVersionList']
        [
          DocumentVersionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentVersionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentVersionInfo
    class DocumentVersionInfo
      def self.default(visited=[])
        return nil if visited.include?('DocumentVersionInfo')
        visited = visited + ['DocumentVersionInfo']
        {
          name: 'name',
          display_name: 'display_name',
          document_version: 'document_version',
          version_name: 'version_name',
          created_date: Time.now,
          is_default_version: false,
          document_format: 'document_format',
          status: 'status',
          status_information: 'status_information',
          review_status: 'review_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentVersionInfo.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['IsDefaultVersion'] = stub[:is_default_version] unless stub[:is_default_version].nil?
        data['DocumentFormat'] = stub[:document_format] unless stub[:document_format].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusInformation'] = stub[:status_information] unless stub[:status_information].nil?
        data['ReviewStatus'] = stub[:review_status] unless stub[:review_status].nil?
        data
      end
    end

    # Operation Stubber for ListDocuments
    class ListDocuments
      def self.default(visited=[])
        {
          document_identifiers: DocumentIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentIdentifiers'] = Stubs::DocumentIdentifierList.stub(stub[:document_identifiers]) unless stub[:document_identifiers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentIdentifierList
    class DocumentIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('DocumentIdentifierList')
        visited = visited + ['DocumentIdentifierList']
        [
          DocumentIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentIdentifier
    class DocumentIdentifier
      def self.default(visited=[])
        return nil if visited.include?('DocumentIdentifier')
        visited = visited + ['DocumentIdentifier']
        {
          name: 'name',
          created_date: Time.now,
          display_name: 'display_name',
          owner: 'owner',
          version_name: 'version_name',
          platform_types: PlatformTypeList.default(visited),
          document_version: 'document_version',
          document_type: 'document_type',
          schema_version: 'schema_version',
          document_format: 'document_format',
          target_type: 'target_type',
          tags: TagList.default(visited),
          requires: DocumentRequiresList.default(visited),
          review_status: 'review_status',
          author: 'author',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentIdentifier.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['PlatformTypes'] = Stubs::PlatformTypeList.stub(stub[:platform_types]) unless stub[:platform_types].nil?
        data['DocumentVersion'] = stub[:document_version] unless stub[:document_version].nil?
        data['DocumentType'] = stub[:document_type] unless stub[:document_type].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['DocumentFormat'] = stub[:document_format] unless stub[:document_format].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['Requires'] = Stubs::DocumentRequiresList.stub(stub[:requires]) unless stub[:requires].nil?
        data['ReviewStatus'] = stub[:review_status] unless stub[:review_status].nil?
        data['Author'] = stub[:author] unless stub[:author].nil?
        data
      end
    end

    # Operation Stubber for ListInventoryEntries
    class ListInventoryEntries
      def self.default(visited=[])
        {
          type_name: 'type_name',
          instance_id: 'instance_id',
          schema_version: 'schema_version',
          capture_time: 'capture_time',
          entries: InventoryItemEntryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['SchemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data['CaptureTime'] = stub[:capture_time] unless stub[:capture_time].nil?
        data['Entries'] = Stubs::InventoryItemEntryList.stub(stub[:entries]) unless stub[:entries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListOpsItemEvents
    class ListOpsItemEvents
      def self.default(visited=[])
        {
          next_token: 'next_token',
          summaries: OpsItemEventSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Summaries'] = Stubs::OpsItemEventSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OpsItemEventSummaries
    class OpsItemEventSummaries
      def self.default(visited=[])
        return nil if visited.include?('OpsItemEventSummaries')
        visited = visited + ['OpsItemEventSummaries']
        [
          OpsItemEventSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsItemEventSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsItemEventSummary
    class OpsItemEventSummary
      def self.default(visited=[])
        return nil if visited.include?('OpsItemEventSummary')
        visited = visited + ['OpsItemEventSummary']
        {
          ops_item_id: 'ops_item_id',
          event_id: 'event_id',
          source: 'source',
          detail_type: 'detail_type',
          detail: 'detail',
          created_by: OpsItemIdentity.default(visited),
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemEventSummary.new
        data = {}
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['DetailType'] = stub[:detail_type] unless stub[:detail_type].nil?
        data['Detail'] = stub[:detail] unless stub[:detail].nil?
        data['CreatedBy'] = Stubs::OpsItemIdentity.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for OpsItemIdentity
    class OpsItemIdentity
      def self.default(visited=[])
        return nil if visited.include?('OpsItemIdentity')
        visited = visited + ['OpsItemIdentity']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemIdentity.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListOpsItemRelatedItems
    class ListOpsItemRelatedItems
      def self.default(visited=[])
        {
          next_token: 'next_token',
          summaries: OpsItemRelatedItemSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Summaries'] = Stubs::OpsItemRelatedItemSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OpsItemRelatedItemSummaries
    class OpsItemRelatedItemSummaries
      def self.default(visited=[])
        return nil if visited.include?('OpsItemRelatedItemSummaries')
        visited = visited + ['OpsItemRelatedItemSummaries']
        [
          OpsItemRelatedItemSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsItemRelatedItemSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsItemRelatedItemSummary
    class OpsItemRelatedItemSummary
      def self.default(visited=[])
        return nil if visited.include?('OpsItemRelatedItemSummary')
        visited = visited + ['OpsItemRelatedItemSummary']
        {
          ops_item_id: 'ops_item_id',
          association_id: 'association_id',
          resource_type: 'resource_type',
          association_type: 'association_type',
          resource_uri: 'resource_uri',
          created_by: OpsItemIdentity.default(visited),
          created_time: Time.now,
          last_modified_by: OpsItemIdentity.default(visited),
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsItemRelatedItemSummary.new
        data = {}
        data['OpsItemId'] = stub[:ops_item_id] unless stub[:ops_item_id].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['AssociationType'] = stub[:association_type] unless stub[:association_type].nil?
        data['ResourceUri'] = stub[:resource_uri] unless stub[:resource_uri].nil?
        data['CreatedBy'] = Stubs::OpsItemIdentity.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastModifiedBy'] = Stubs::OpsItemIdentity.stub(stub[:last_modified_by]) unless stub[:last_modified_by].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListOpsMetadata
    class ListOpsMetadata
      def self.default(visited=[])
        {
          ops_metadata_list: OpsMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OpsMetadataList'] = Stubs::OpsMetadataList.stub(stub[:ops_metadata_list]) unless stub[:ops_metadata_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OpsMetadataList
    class OpsMetadataList
      def self.default(visited=[])
        return nil if visited.include?('OpsMetadataList')
        visited = visited + ['OpsMetadataList']
        [
          OpsMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OpsMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OpsMetadata
    class OpsMetadata
      def self.default(visited=[])
        return nil if visited.include?('OpsMetadata')
        visited = visited + ['OpsMetadata']
        {
          resource_id: 'resource_id',
          ops_metadata_arn: 'ops_metadata_arn',
          last_modified_date: Time.now,
          last_modified_user: 'last_modified_user',
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsMetadata.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['OpsMetadataArn'] = stub[:ops_metadata_arn] unless stub[:ops_metadata_arn].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListResourceComplianceSummaries
    class ListResourceComplianceSummaries
      def self.default(visited=[])
        {
          resource_compliance_summary_items: ResourceComplianceSummaryItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceComplianceSummaryItems'] = Stubs::ResourceComplianceSummaryItemList.stub(stub[:resource_compliance_summary_items]) unless stub[:resource_compliance_summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceComplianceSummaryItemList
    class ResourceComplianceSummaryItemList
      def self.default(visited=[])
        return nil if visited.include?('ResourceComplianceSummaryItemList')
        visited = visited + ['ResourceComplianceSummaryItemList']
        [
          ResourceComplianceSummaryItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceComplianceSummaryItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceComplianceSummaryItem
    class ResourceComplianceSummaryItem
      def self.default(visited=[])
        return nil if visited.include?('ResourceComplianceSummaryItem')
        visited = visited + ['ResourceComplianceSummaryItem']
        {
          compliance_type: 'compliance_type',
          resource_type: 'resource_type',
          resource_id: 'resource_id',
          status: 'status',
          overall_severity: 'overall_severity',
          execution_summary: ComplianceExecutionSummary.default(visited),
          compliant_summary: CompliantSummary.default(visited),
          non_compliant_summary: NonCompliantSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceComplianceSummaryItem.new
        data = {}
        data['ComplianceType'] = stub[:compliance_type] unless stub[:compliance_type].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OverallSeverity'] = stub[:overall_severity] unless stub[:overall_severity].nil?
        data['ExecutionSummary'] = Stubs::ComplianceExecutionSummary.stub(stub[:execution_summary]) unless stub[:execution_summary].nil?
        data['CompliantSummary'] = Stubs::CompliantSummary.stub(stub[:compliant_summary]) unless stub[:compliant_summary].nil?
        data['NonCompliantSummary'] = Stubs::NonCompliantSummary.stub(stub[:non_compliant_summary]) unless stub[:non_compliant_summary].nil?
        data
      end
    end

    # Operation Stubber for ListResourceDataSync
    class ListResourceDataSync
      def self.default(visited=[])
        {
          resource_data_sync_items: ResourceDataSyncItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceDataSyncItems'] = Stubs::ResourceDataSyncItemList.stub(stub[:resource_data_sync_items]) unless stub[:resource_data_sync_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceDataSyncItemList
    class ResourceDataSyncItemList
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncItemList')
        visited = visited + ['ResourceDataSyncItemList']
        [
          ResourceDataSyncItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceDataSyncItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceDataSyncItem
    class ResourceDataSyncItem
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncItem')
        visited = visited + ['ResourceDataSyncItem']
        {
          sync_name: 'sync_name',
          sync_type: 'sync_type',
          sync_source: ResourceDataSyncSourceWithState.default(visited),
          s3_destination: ResourceDataSyncS3Destination.default(visited),
          last_sync_time: Time.now,
          last_successful_sync_time: Time.now,
          sync_last_modified_time: Time.now,
          last_status: 'last_status',
          sync_created_time: Time.now,
          last_sync_status_message: 'last_sync_status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncItem.new
        data = {}
        data['SyncName'] = stub[:sync_name] unless stub[:sync_name].nil?
        data['SyncType'] = stub[:sync_type] unless stub[:sync_type].nil?
        data['SyncSource'] = Stubs::ResourceDataSyncSourceWithState.stub(stub[:sync_source]) unless stub[:sync_source].nil?
        data['S3Destination'] = Stubs::ResourceDataSyncS3Destination.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data['LastSyncTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_sync_time]).to_i unless stub[:last_sync_time].nil?
        data['LastSuccessfulSyncTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_successful_sync_time]).to_i unless stub[:last_successful_sync_time].nil?
        data['SyncLastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:sync_last_modified_time]).to_i unless stub[:sync_last_modified_time].nil?
        data['LastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['SyncCreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:sync_created_time]).to_i unless stub[:sync_created_time].nil?
        data['LastSyncStatusMessage'] = stub[:last_sync_status_message] unless stub[:last_sync_status_message].nil?
        data
      end
    end

    # Structure Stubber for ResourceDataSyncS3Destination
    class ResourceDataSyncS3Destination
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncS3Destination')
        visited = visited + ['ResourceDataSyncS3Destination']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
          sync_format: 'sync_format',
          region: 'region',
          awskms_key_arn: 'awskms_key_arn',
          destination_data_sharing: ResourceDataSyncDestinationDataSharing.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncS3Destination.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['SyncFormat'] = stub[:sync_format] unless stub[:sync_format].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['AWSKMSKeyARN'] = stub[:awskms_key_arn] unless stub[:awskms_key_arn].nil?
        data['DestinationDataSharing'] = Stubs::ResourceDataSyncDestinationDataSharing.stub(stub[:destination_data_sharing]) unless stub[:destination_data_sharing].nil?
        data
      end
    end

    # Structure Stubber for ResourceDataSyncDestinationDataSharing
    class ResourceDataSyncDestinationDataSharing
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncDestinationDataSharing')
        visited = visited + ['ResourceDataSyncDestinationDataSharing']
        {
          destination_data_sharing_type: 'destination_data_sharing_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncDestinationDataSharing.new
        data = {}
        data['DestinationDataSharingType'] = stub[:destination_data_sharing_type] unless stub[:destination_data_sharing_type].nil?
        data
      end
    end

    # Structure Stubber for ResourceDataSyncSourceWithState
    class ResourceDataSyncSourceWithState
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncSourceWithState')
        visited = visited + ['ResourceDataSyncSourceWithState']
        {
          source_type: 'source_type',
          aws_organizations_source: ResourceDataSyncAwsOrganizationsSource.default(visited),
          source_regions: ResourceDataSyncSourceRegionList.default(visited),
          include_future_regions: false,
          state: 'state',
          enable_all_ops_data_sources: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncSourceWithState.new
        data = {}
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['AwsOrganizationsSource'] = Stubs::ResourceDataSyncAwsOrganizationsSource.stub(stub[:aws_organizations_source]) unless stub[:aws_organizations_source].nil?
        data['SourceRegions'] = Stubs::ResourceDataSyncSourceRegionList.stub(stub[:source_regions]) unless stub[:source_regions].nil?
        data['IncludeFutureRegions'] = stub[:include_future_regions] unless stub[:include_future_regions].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['EnableAllOpsDataSources'] = stub[:enable_all_ops_data_sources] unless stub[:enable_all_ops_data_sources].nil?
        data
      end
    end

    # List Stubber for ResourceDataSyncSourceRegionList
    class ResourceDataSyncSourceRegionList
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncSourceRegionList')
        visited = visited + ['ResourceDataSyncSourceRegionList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceDataSyncAwsOrganizationsSource
    class ResourceDataSyncAwsOrganizationsSource
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncAwsOrganizationsSource')
        visited = visited + ['ResourceDataSyncAwsOrganizationsSource']
        {
          organization_source_type: 'organization_source_type',
          organizational_units: ResourceDataSyncOrganizationalUnitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncAwsOrganizationsSource.new
        data = {}
        data['OrganizationSourceType'] = stub[:organization_source_type] unless stub[:organization_source_type].nil?
        data['OrganizationalUnits'] = Stubs::ResourceDataSyncOrganizationalUnitList.stub(stub[:organizational_units]) unless stub[:organizational_units].nil?
        data
      end
    end

    # List Stubber for ResourceDataSyncOrganizationalUnitList
    class ResourceDataSyncOrganizationalUnitList
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncOrganizationalUnitList')
        visited = visited + ['ResourceDataSyncOrganizationalUnitList']
        [
          ResourceDataSyncOrganizationalUnit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceDataSyncOrganizationalUnit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceDataSyncOrganizationalUnit
    class ResourceDataSyncOrganizationalUnit
      def self.default(visited=[])
        return nil if visited.include?('ResourceDataSyncOrganizationalUnit')
        visited = visited + ['ResourceDataSyncOrganizationalUnit']
        {
          organizational_unit_id: 'organizational_unit_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDataSyncOrganizationalUnit.new
        data = {}
        data['OrganizationalUnitId'] = stub[:organizational_unit_id] unless stub[:organizational_unit_id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = Stubs::TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyDocumentPermission
    class ModifyDocumentPermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutComplianceItems
    class PutComplianceItems
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutInventory
    class PutInventory
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutParameter
    class PutParameter
      def self.default(visited=[])
        {
          version: 1,
          tier: 'tier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterDefaultPatchBaseline
    class RegisterDefaultPatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterPatchBaselineForPatchGroup
    class RegisterPatchBaselineForPatchGroup
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          patch_group: 'patch_group',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['PatchGroup'] = stub[:patch_group] unless stub[:patch_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterTargetWithMaintenanceWindow
    class RegisterTargetWithMaintenanceWindow
      def self.default(visited=[])
        {
          window_target_id: 'window_target_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterTaskWithMaintenanceWindow
    class RegisterTaskWithMaintenanceWindow
      def self.default(visited=[])
        {
          window_task_id: 'window_task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowTaskId'] = stub[:window_task_id] unless stub[:window_task_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetServiceSetting
    class ResetServiceSetting
      def self.default(visited=[])
        {
          service_setting: ServiceSetting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServiceSetting'] = Stubs::ServiceSetting.stub(stub[:service_setting]) unless stub[:service_setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeSession
    class ResumeSession
      def self.default(visited=[])
        {
          session_id: 'session_id',
          token_value: 'token_value',
          stream_url: 'stream_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['TokenValue'] = stub[:token_value] unless stub[:token_value].nil?
        data['StreamUrl'] = stub[:stream_url] unless stub[:stream_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendAutomationSignal
    class SendAutomationSignal
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendCommand
    class SendCommand
      def self.default(visited=[])
        {
          command: Command.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Command'] = Stubs::Command.stub(stub[:command]) unless stub[:command].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAssociationsOnce
    class StartAssociationsOnce
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAutomationExecution
    class StartAutomationExecution
      def self.default(visited=[])
        {
          automation_execution_id: 'automation_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutomationExecutionId'] = stub[:automation_execution_id] unless stub[:automation_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartChangeRequestExecution
    class StartChangeRequestExecution
      def self.default(visited=[])
        {
          automation_execution_id: 'automation_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AutomationExecutionId'] = stub[:automation_execution_id] unless stub[:automation_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSession
    class StartSession
      def self.default(visited=[])
        {
          session_id: 'session_id',
          token_value: 'token_value',
          stream_url: 'stream_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['TokenValue'] = stub[:token_value] unless stub[:token_value].nil?
        data['StreamUrl'] = stub[:stream_url] unless stub[:stream_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopAutomationExecution
    class StopAutomationExecution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TerminateSession
    class TerminateSession
      def self.default(visited=[])
        {
          session_id: 'session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnlabelParameterVersion
    class UnlabelParameterVersion
      def self.default(visited=[])
        {
          removed_labels: ParameterLabelList.default(visited),
          invalid_labels: ParameterLabelList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RemovedLabels'] = Stubs::ParameterLabelList.stub(stub[:removed_labels]) unless stub[:removed_labels].nil?
        data['InvalidLabels'] = Stubs::ParameterLabelList.stub(stub[:invalid_labels]) unless stub[:invalid_labels].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAssociation
    class UpdateAssociation
      def self.default(visited=[])
        {
          association_description: AssociationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationDescription'] = Stubs::AssociationDescription.stub(stub[:association_description]) unless stub[:association_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAssociationStatus
    class UpdateAssociationStatus
      def self.default(visited=[])
        {
          association_description: AssociationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AssociationDescription'] = Stubs::AssociationDescription.stub(stub[:association_description]) unless stub[:association_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDocument
    class UpdateDocument
      def self.default(visited=[])
        {
          document_description: DocumentDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentDescription'] = Stubs::DocumentDescription.stub(stub[:document_description]) unless stub[:document_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDocumentDefaultVersion
    class UpdateDocumentDefaultVersion
      def self.default(visited=[])
        {
          description: DocumentDefaultVersionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Description'] = Stubs::DocumentDefaultVersionDescription.stub(stub[:description]) unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DocumentDefaultVersionDescription
    class DocumentDefaultVersionDescription
      def self.default(visited=[])
        return nil if visited.include?('DocumentDefaultVersionDescription')
        visited = visited + ['DocumentDefaultVersionDescription']
        {
          name: 'name',
          default_version: 'default_version',
          default_version_name: 'default_version_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentDefaultVersionDescription.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DefaultVersion'] = stub[:default_version] unless stub[:default_version].nil?
        data['DefaultVersionName'] = stub[:default_version_name] unless stub[:default_version_name].nil?
        data
      end
    end

    # Operation Stubber for UpdateDocumentMetadata
    class UpdateDocumentMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMaintenanceWindow
    class UpdateMaintenanceWindow
      def self.default(visited=[])
        {
          window_id: 'window_id',
          name: 'name',
          description: 'description',
          start_date: 'start_date',
          end_date: 'end_date',
          schedule: 'schedule',
          schedule_timezone: 'schedule_timezone',
          schedule_offset: 1,
          duration: 1,
          cutoff: 1,
          allow_unassociated_targets: false,
          enabled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['EndDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['ScheduleTimezone'] = stub[:schedule_timezone] unless stub[:schedule_timezone].nil?
        data['ScheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['Cutoff'] = stub[:cutoff] unless stub[:cutoff].nil?
        data['AllowUnassociatedTargets'] = stub[:allow_unassociated_targets] unless stub[:allow_unassociated_targets].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMaintenanceWindowTarget
    class UpdateMaintenanceWindowTarget
      def self.default(visited=[])
        {
          window_id: 'window_id',
          window_target_id: 'window_target_id',
          targets: Targets.default(visited),
          owner_information: 'owner_information',
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTargetId'] = stub[:window_target_id] unless stub[:window_target_id].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['OwnerInformation'] = stub[:owner_information] unless stub[:owner_information].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMaintenanceWindowTask
    class UpdateMaintenanceWindowTask
      def self.default(visited=[])
        {
          window_id: 'window_id',
          window_task_id: 'window_task_id',
          targets: Targets.default(visited),
          task_arn: 'task_arn',
          service_role_arn: 'service_role_arn',
          task_parameters: MaintenanceWindowTaskParameters.default(visited),
          task_invocation_parameters: MaintenanceWindowTaskInvocationParameters.default(visited),
          priority: 1,
          max_concurrency: 'max_concurrency',
          max_errors: 'max_errors',
          logging_info: LoggingInfo.default(visited),
          name: 'name',
          description: 'description',
          cutoff_behavior: 'cutoff_behavior',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WindowId'] = stub[:window_id] unless stub[:window_id].nil?
        data['WindowTaskId'] = stub[:window_task_id] unless stub[:window_task_id].nil?
        data['Targets'] = Stubs::Targets.stub(stub[:targets]) unless stub[:targets].nil?
        data['TaskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['TaskParameters'] = Stubs::MaintenanceWindowTaskParameters.stub(stub[:task_parameters]) unless stub[:task_parameters].nil?
        data['TaskInvocationParameters'] = Stubs::MaintenanceWindowTaskInvocationParameters.stub(stub[:task_invocation_parameters]) unless stub[:task_invocation_parameters].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['MaxConcurrency'] = stub[:max_concurrency] unless stub[:max_concurrency].nil?
        data['MaxErrors'] = stub[:max_errors] unless stub[:max_errors].nil?
        data['LoggingInfo'] = Stubs::LoggingInfo.stub(stub[:logging_info]) unless stub[:logging_info].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CutoffBehavior'] = stub[:cutoff_behavior] unless stub[:cutoff_behavior].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateManagedInstanceRole
    class UpdateManagedInstanceRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOpsItem
    class UpdateOpsItem
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOpsMetadata
    class UpdateOpsMetadata
      def self.default(visited=[])
        {
          ops_metadata_arn: 'ops_metadata_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OpsMetadataArn'] = stub[:ops_metadata_arn] unless stub[:ops_metadata_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePatchBaseline
    class UpdatePatchBaseline
      def self.default(visited=[])
        {
          baseline_id: 'baseline_id',
          name: 'name',
          operating_system: 'operating_system',
          global_filters: PatchFilterGroup.default(visited),
          approval_rules: PatchRuleGroup.default(visited),
          approved_patches: PatchIdList.default(visited),
          approved_patches_compliance_level: 'approved_patches_compliance_level',
          approved_patches_enable_non_security: false,
          rejected_patches: PatchIdList.default(visited),
          rejected_patches_action: 'rejected_patches_action',
          created_date: Time.now,
          modified_date: Time.now,
          description: 'description',
          sources: PatchSourceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BaselineId'] = stub[:baseline_id] unless stub[:baseline_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['GlobalFilters'] = Stubs::PatchFilterGroup.stub(stub[:global_filters]) unless stub[:global_filters].nil?
        data['ApprovalRules'] = Stubs::PatchRuleGroup.stub(stub[:approval_rules]) unless stub[:approval_rules].nil?
        data['ApprovedPatches'] = Stubs::PatchIdList.stub(stub[:approved_patches]) unless stub[:approved_patches].nil?
        data['ApprovedPatchesComplianceLevel'] = stub[:approved_patches_compliance_level] unless stub[:approved_patches_compliance_level].nil?
        data['ApprovedPatchesEnableNonSecurity'] = stub[:approved_patches_enable_non_security] unless stub[:approved_patches_enable_non_security].nil?
        data['RejectedPatches'] = Stubs::PatchIdList.stub(stub[:rejected_patches]) unless stub[:rejected_patches].nil?
        data['RejectedPatchesAction'] = stub[:rejected_patches_action] unless stub[:rejected_patches_action].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['ModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_date]).to_i unless stub[:modified_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Sources'] = Stubs::PatchSourceList.stub(stub[:sources]) unless stub[:sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResourceDataSync
    class UpdateResourceDataSync
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceSetting
    class UpdateServiceSetting
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
