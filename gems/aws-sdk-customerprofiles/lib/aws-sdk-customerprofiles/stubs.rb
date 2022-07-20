# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Stubs

    # Operation Stubber for AddProfileKey
    class AddProfileKey
      def self.default(visited=[])
        {
          key_name: 'key_name',
          values: RequestValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['KeyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['Values'] = Stubs::RequestValueList.stub(stub[:values]) unless stub[:values].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for requestValueList
    class RequestValueList
      def self.default(visited=[])
        return nil if visited.include?('RequestValueList')
        visited = visited + ['RequestValueList']
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

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          default_expiration_days: 1,
          default_encryption_key: 'default_encryption_key',
          dead_letter_queue_url: 'dead_letter_queue_url',
          matching: MatchingResponse.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DefaultExpirationDays'] = stub[:default_expiration_days] unless stub[:default_expiration_days].nil?
        data['DefaultEncryptionKey'] = stub[:default_encryption_key] unless stub[:default_encryption_key].nil?
        data['DeadLetterQueueUrl'] = stub[:dead_letter_queue_url] unless stub[:dead_letter_queue_url].nil?
        data['Matching'] = Stubs::MatchingResponse.stub(stub[:matching]) unless stub[:matching].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Structure Stubber for MatchingResponse
    class MatchingResponse
      def self.default(visited=[])
        return nil if visited.include?('MatchingResponse')
        visited = visited + ['MatchingResponse']
        {
          enabled: false,
          job_schedule: JobSchedule.default(visited),
          auto_merging: AutoMerging.default(visited),
          exporting_config: ExportingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchingResponse.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['JobSchedule'] = Stubs::JobSchedule.stub(stub[:job_schedule]) unless stub[:job_schedule].nil?
        data['AutoMerging'] = Stubs::AutoMerging.stub(stub[:auto_merging]) unless stub[:auto_merging].nil?
        data['ExportingConfig'] = Stubs::ExportingConfig.stub(stub[:exporting_config]) unless stub[:exporting_config].nil?
        data
      end
    end

    # Structure Stubber for ExportingConfig
    class ExportingConfig
      def self.default(visited=[])
        return nil if visited.include?('ExportingConfig')
        visited = visited + ['ExportingConfig']
        {
          s3_exporting: S3ExportingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportingConfig.new
        data = {}
        data['S3Exporting'] = Stubs::S3ExportingConfig.stub(stub[:s3_exporting]) unless stub[:s3_exporting].nil?
        data
      end
    end

    # Structure Stubber for S3ExportingConfig
    class S3ExportingConfig
      def self.default(visited=[])
        return nil if visited.include?('S3ExportingConfig')
        visited = visited + ['S3ExportingConfig']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_key_name: 's3_key_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ExportingConfig.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyName'] = stub[:s3_key_name] unless stub[:s3_key_name].nil?
        data
      end
    end

    # Structure Stubber for AutoMerging
    class AutoMerging
      def self.default(visited=[])
        return nil if visited.include?('AutoMerging')
        visited = visited + ['AutoMerging']
        {
          enabled: false,
          consolidation: Consolidation.default(visited),
          conflict_resolution: ConflictResolution.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMerging.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Consolidation'] = Stubs::Consolidation.stub(stub[:consolidation]) unless stub[:consolidation].nil?
        data['ConflictResolution'] = Stubs::ConflictResolution.stub(stub[:conflict_resolution]) unless stub[:conflict_resolution].nil?
        data
      end
    end

    # Structure Stubber for ConflictResolution
    class ConflictResolution
      def self.default(visited=[])
        return nil if visited.include?('ConflictResolution')
        visited = visited + ['ConflictResolution']
        {
          conflict_resolving_model: 'conflict_resolving_model',
          source_name: 'source_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConflictResolution.new
        data = {}
        data['ConflictResolvingModel'] = stub[:conflict_resolving_model] unless stub[:conflict_resolving_model].nil?
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data
      end
    end

    # Structure Stubber for Consolidation
    class Consolidation
      def self.default(visited=[])
        return nil if visited.include?('Consolidation')
        visited = visited + ['Consolidation']
        {
          matching_attributes_list: MatchingAttributesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Consolidation.new
        data = {}
        data['MatchingAttributesList'] = Stubs::MatchingAttributesList.stub(stub[:matching_attributes_list]) unless stub[:matching_attributes_list].nil?
        data
      end
    end

    # List Stubber for MatchingAttributesList
    class MatchingAttributesList
      def self.default(visited=[])
        return nil if visited.include?('MatchingAttributesList')
        visited = visited + ['MatchingAttributesList']
        [
          MatchingAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MatchingAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for MatchingAttributes
    class MatchingAttributes
      def self.default(visited=[])
        return nil if visited.include?('MatchingAttributes')
        visited = visited + ['MatchingAttributes']
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

    # Structure Stubber for JobSchedule
    class JobSchedule
      def self.default(visited=[])
        return nil if visited.include?('JobSchedule')
        visited = visited + ['JobSchedule']
        {
          day_of_the_week: 'day_of_the_week',
          time: 'time',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSchedule.new
        data = {}
        data['DayOfTheWeek'] = stub[:day_of_the_week] unless stub[:day_of_the_week].nil?
        data['Time'] = stub[:time] unless stub[:time].nil?
        data
      end
    end

    # Operation Stubber for CreateIntegrationWorkflow
    class CreateIntegrationWorkflow
      def self.default(visited=[])
        {
          workflow_id: 'workflow_id',
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProfile
    class CreateProfile
      def self.default(visited=[])
        {
          profile_id: 'profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProfileId'] = stub[:profile_id] unless stub[:profile_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteIntegration
    class DeleteIntegration
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProfile
    class DeleteProfile
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProfileKey
    class DeleteProfileKey
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProfileObject
    class DeleteProfileObject
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProfileObjectType
    class DeleteProfileObjectType
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteWorkflow
    class DeleteWorkflow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAutoMergingPreview
    class GetAutoMergingPreview
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          number_of_matches_in_sample: 1,
          number_of_profiles_in_sample: 1,
          number_of_profiles_will_be_merged: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['NumberOfMatchesInSample'] = stub[:number_of_matches_in_sample] unless stub[:number_of_matches_in_sample].nil?
        data['NumberOfProfilesInSample'] = stub[:number_of_profiles_in_sample] unless stub[:number_of_profiles_in_sample].nil?
        data['NumberOfProfilesWillBeMerged'] = stub[:number_of_profiles_will_be_merged] unless stub[:number_of_profiles_will_be_merged].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomain
    class GetDomain
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          default_expiration_days: 1,
          default_encryption_key: 'default_encryption_key',
          dead_letter_queue_url: 'dead_letter_queue_url',
          stats: DomainStats.default(visited),
          matching: MatchingResponse.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DefaultExpirationDays'] = stub[:default_expiration_days] unless stub[:default_expiration_days].nil?
        data['DefaultEncryptionKey'] = stub[:default_encryption_key] unless stub[:default_encryption_key].nil?
        data['DeadLetterQueueUrl'] = stub[:dead_letter_queue_url] unless stub[:dead_letter_queue_url].nil?
        data['Stats'] = Stubs::DomainStats.stub(stub[:stats]) unless stub[:stats].nil?
        data['Matching'] = Stubs::MatchingResponse.stub(stub[:matching]) unless stub[:matching].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainStats
    class DomainStats
      def self.default(visited=[])
        return nil if visited.include?('DomainStats')
        visited = visited + ['DomainStats']
        {
          profile_count: 1,
          metering_profile_count: 1,
          object_count: 1,
          total_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainStats.new
        data = {}
        data['ProfileCount'] = stub[:profile_count] unless stub[:profile_count].nil?
        data['MeteringProfileCount'] = stub[:metering_profile_count] unless stub[:metering_profile_count].nil?
        data['ObjectCount'] = stub[:object_count] unless stub[:object_count].nil?
        data['TotalSize'] = stub[:total_size] unless stub[:total_size].nil?
        data
      end
    end

    # Operation Stubber for GetIdentityResolutionJob
    class GetIdentityResolutionJob
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          job_id: 'job_id',
          status: 'status',
          message: 'message',
          job_start_time: Time.now,
          job_end_time: Time.now,
          last_updated_at: Time.now,
          job_expiration_time: Time.now,
          auto_merging: AutoMerging.default(visited),
          exporting_location: ExportingLocation.default(visited),
          job_stats: JobStats.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['JobStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:job_start_time]).to_i unless stub[:job_start_time].nil?
        data['JobEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:job_end_time]).to_i unless stub[:job_end_time].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['JobExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:job_expiration_time]).to_i unless stub[:job_expiration_time].nil?
        data['AutoMerging'] = Stubs::AutoMerging.stub(stub[:auto_merging]) unless stub[:auto_merging].nil?
        data['ExportingLocation'] = Stubs::ExportingLocation.stub(stub[:exporting_location]) unless stub[:exporting_location].nil?
        data['JobStats'] = Stubs::JobStats.stub(stub[:job_stats]) unless stub[:job_stats].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobStats
    class JobStats
      def self.default(visited=[])
        return nil if visited.include?('JobStats')
        visited = visited + ['JobStats']
        {
          number_of_profiles_reviewed: 1,
          number_of_matches_found: 1,
          number_of_merges_done: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobStats.new
        data = {}
        data['NumberOfProfilesReviewed'] = stub[:number_of_profiles_reviewed] unless stub[:number_of_profiles_reviewed].nil?
        data['NumberOfMatchesFound'] = stub[:number_of_matches_found] unless stub[:number_of_matches_found].nil?
        data['NumberOfMergesDone'] = stub[:number_of_merges_done] unless stub[:number_of_merges_done].nil?
        data
      end
    end

    # Structure Stubber for ExportingLocation
    class ExportingLocation
      def self.default(visited=[])
        return nil if visited.include?('ExportingLocation')
        visited = visited + ['ExportingLocation']
        {
          s3_exporting: S3ExportingLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportingLocation.new
        data = {}
        data['S3Exporting'] = Stubs::S3ExportingLocation.stub(stub[:s3_exporting]) unless stub[:s3_exporting].nil?
        data
      end
    end

    # Structure Stubber for S3ExportingLocation
    class S3ExportingLocation
      def self.default(visited=[])
        return nil if visited.include?('S3ExportingLocation')
        visited = visited + ['S3ExportingLocation']
        {
          s3_bucket_name: 's3_bucket_name',
          s3_key_name: 's3_key_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ExportingLocation.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['S3KeyName'] = stub[:s3_key_name] unless stub[:s3_key_name].nil?
        data
      end
    end

    # Operation Stubber for GetIntegration
    class GetIntegration
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          uri: 'uri',
          object_type_name: 'object_type_name',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
          object_type_names: ObjectTypeNames.default(visited),
          workflow_id: 'workflow_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ObjectTypeNames'] = Stubs::ObjectTypeNames.stub(stub[:object_type_names]) unless stub[:object_type_names].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ObjectTypeNames
    class ObjectTypeNames
      def self.default(visited=[])
        return nil if visited.include?('ObjectTypeNames')
        visited = visited + ['ObjectTypeNames']
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

    # Operation Stubber for GetMatches
    class GetMatches
      def self.default(visited=[])
        {
          next_token: 'next_token',
          match_generation_date: Time.now,
          potential_matches: 1,
          matches: MatchesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MatchGenerationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:match_generation_date]).to_i unless stub[:match_generation_date].nil?
        data['PotentialMatches'] = stub[:potential_matches] unless stub[:potential_matches].nil?
        data['Matches'] = Stubs::MatchesList.stub(stub[:matches]) unless stub[:matches].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MatchesList
    class MatchesList
      def self.default(visited=[])
        return nil if visited.include?('MatchesList')
        visited = visited + ['MatchesList']
        [
          MatchItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MatchItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MatchItem
    class MatchItem
      def self.default(visited=[])
        return nil if visited.include?('MatchItem')
        visited = visited + ['MatchItem']
        {
          match_id: 'match_id',
          profile_ids: ProfileIdList.default(visited),
          confidence_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchItem.new
        data = {}
        data['MatchId'] = stub[:match_id] unless stub[:match_id].nil?
        data['ProfileIds'] = Stubs::ProfileIdList.stub(stub[:profile_ids]) unless stub[:profile_ids].nil?
        data['ConfidenceScore'] = Hearth::NumberHelper.serialize(stub[:confidence_score])
        data
      end
    end

    # List Stubber for ProfileIdList
    class ProfileIdList
      def self.default(visited=[])
        return nil if visited.include?('ProfileIdList')
        visited = visited + ['ProfileIdList']
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

    # Operation Stubber for GetProfileObjectType
    class GetProfileObjectType
      def self.default(visited=[])
        {
          object_type_name: 'object_type_name',
          description: 'description',
          template_id: 'template_id',
          expiration_days: 1,
          encryption_key: 'encryption_key',
          allow_profile_creation: false,
          source_last_updated_timestamp_format: 'source_last_updated_timestamp_format',
          fields: FieldMap.default(visited),
          keys: KeyMap.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['ExpirationDays'] = stub[:expiration_days] unless stub[:expiration_days].nil?
        data['EncryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['AllowProfileCreation'] = stub[:allow_profile_creation] unless stub[:allow_profile_creation].nil?
        data['SourceLastUpdatedTimestampFormat'] = stub[:source_last_updated_timestamp_format] unless stub[:source_last_updated_timestamp_format].nil?
        data['Fields'] = Stubs::FieldMap.stub(stub[:fields]) unless stub[:fields].nil?
        data['Keys'] = Stubs::KeyMap.stub(stub[:keys]) unless stub[:keys].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for KeyMap
    class KeyMap
      def self.default(visited=[])
        return nil if visited.include?('KeyMap')
        visited = visited + ['KeyMap']
        {
          test_key: ObjectTypeKeyList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ObjectTypeKeyList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ObjectTypeKeyList
    class ObjectTypeKeyList
      def self.default(visited=[])
        return nil if visited.include?('ObjectTypeKeyList')
        visited = visited + ['ObjectTypeKeyList']
        [
          ObjectTypeKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ObjectTypeKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ObjectTypeKey
    class ObjectTypeKey
      def self.default(visited=[])
        return nil if visited.include?('ObjectTypeKey')
        visited = visited + ['ObjectTypeKey']
        {
          standard_identifiers: StandardIdentifierList.default(visited),
          field_names: FieldNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectTypeKey.new
        data = {}
        data['StandardIdentifiers'] = Stubs::StandardIdentifierList.stub(stub[:standard_identifiers]) unless stub[:standard_identifiers].nil?
        data['FieldNames'] = Stubs::FieldNameList.stub(stub[:field_names]) unless stub[:field_names].nil?
        data
      end
    end

    # List Stubber for FieldNameList
    class FieldNameList
      def self.default(visited=[])
        return nil if visited.include?('FieldNameList')
        visited = visited + ['FieldNameList']
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

    # List Stubber for StandardIdentifierList
    class StandardIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('StandardIdentifierList')
        visited = visited + ['StandardIdentifierList']
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

    # Map Stubber for FieldMap
    class FieldMap
      def self.default(visited=[])
        return nil if visited.include?('FieldMap')
        visited = visited + ['FieldMap']
        {
          test_key: ObjectTypeField.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ObjectTypeField.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ObjectTypeField
    class ObjectTypeField
      def self.default(visited=[])
        return nil if visited.include?('ObjectTypeField')
        visited = visited + ['ObjectTypeField']
        {
          source: 'source',
          target: 'target',
          content_type: 'content_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectTypeField.new
        data = {}
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data
      end
    end

    # Operation Stubber for GetProfileObjectTypeTemplate
    class GetProfileObjectTypeTemplate
      def self.default(visited=[])
        {
          template_id: 'template_id',
          source_name: 'source_name',
          source_object: 'source_object',
          allow_profile_creation: false,
          source_last_updated_timestamp_format: 'source_last_updated_timestamp_format',
          fields: FieldMap.default(visited),
          keys: KeyMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['SourceObject'] = stub[:source_object] unless stub[:source_object].nil?
        data['AllowProfileCreation'] = stub[:allow_profile_creation] unless stub[:allow_profile_creation].nil?
        data['SourceLastUpdatedTimestampFormat'] = stub[:source_last_updated_timestamp_format] unless stub[:source_last_updated_timestamp_format].nil?
        data['Fields'] = Stubs::FieldMap.stub(stub[:fields]) unless stub[:fields].nil?
        data['Keys'] = Stubs::KeyMap.stub(stub[:keys]) unless stub[:keys].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWorkflow
    class GetWorkflow
      def self.default(visited=[])
        {
          workflow_id: 'workflow_id',
          workflow_type: 'workflow_type',
          status: 'status',
          error_description: 'error_description',
          start_date: Time.now,
          last_updated_at: Time.now,
          attributes: WorkflowAttributes.default(visited),
          metrics: WorkflowMetrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['WorkflowType'] = stub[:workflow_type] unless stub[:workflow_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorDescription'] = stub[:error_description] unless stub[:error_description].nil?
        data['StartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Attributes'] = Stubs::WorkflowAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Metrics'] = Stubs::WorkflowMetrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkflowMetrics
    class WorkflowMetrics
      def self.default(visited=[])
        return nil if visited.include?('WorkflowMetrics')
        visited = visited + ['WorkflowMetrics']
        {
          appflow_integration: AppflowIntegrationWorkflowMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowMetrics.new
        data = {}
        data['AppflowIntegration'] = Stubs::AppflowIntegrationWorkflowMetrics.stub(stub[:appflow_integration]) unless stub[:appflow_integration].nil?
        data
      end
    end

    # Structure Stubber for AppflowIntegrationWorkflowMetrics
    class AppflowIntegrationWorkflowMetrics
      def self.default(visited=[])
        return nil if visited.include?('AppflowIntegrationWorkflowMetrics')
        visited = visited + ['AppflowIntegrationWorkflowMetrics']
        {
          records_processed: 1,
          steps_completed: 1,
          total_steps: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppflowIntegrationWorkflowMetrics.new
        data = {}
        data['RecordsProcessed'] = stub[:records_processed] unless stub[:records_processed].nil?
        data['StepsCompleted'] = stub[:steps_completed] unless stub[:steps_completed].nil?
        data['TotalSteps'] = stub[:total_steps] unless stub[:total_steps].nil?
        data
      end
    end

    # Structure Stubber for WorkflowAttributes
    class WorkflowAttributes
      def self.default(visited=[])
        return nil if visited.include?('WorkflowAttributes')
        visited = visited + ['WorkflowAttributes']
        {
          appflow_integration: AppflowIntegrationWorkflowAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowAttributes.new
        data = {}
        data['AppflowIntegration'] = Stubs::AppflowIntegrationWorkflowAttributes.stub(stub[:appflow_integration]) unless stub[:appflow_integration].nil?
        data
      end
    end

    # Structure Stubber for AppflowIntegrationWorkflowAttributes
    class AppflowIntegrationWorkflowAttributes
      def self.default(visited=[])
        return nil if visited.include?('AppflowIntegrationWorkflowAttributes')
        visited = visited + ['AppflowIntegrationWorkflowAttributes']
        {
          source_connector_type: 'source_connector_type',
          connector_profile_name: 'connector_profile_name',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppflowIntegrationWorkflowAttributes.new
        data = {}
        data['SourceConnectorType'] = stub[:source_connector_type] unless stub[:source_connector_type].nil?
        data['ConnectorProfileName'] = stub[:connector_profile_name] unless stub[:connector_profile_name].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Operation Stubber for GetWorkflowSteps
    class GetWorkflowSteps
      def self.default(visited=[])
        {
          workflow_id: 'workflow_id',
          workflow_type: 'workflow_type',
          items: WorkflowStepsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['WorkflowType'] = stub[:workflow_type] unless stub[:workflow_type].nil?
        data['Items'] = Stubs::WorkflowStepsList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkflowStepsList
    class WorkflowStepsList
      def self.default(visited=[])
        return nil if visited.include?('WorkflowStepsList')
        visited = visited + ['WorkflowStepsList']
        [
          WorkflowStepItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkflowStepItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkflowStepItem
    class WorkflowStepItem
      def self.default(visited=[])
        return nil if visited.include?('WorkflowStepItem')
        visited = visited + ['WorkflowStepItem']
        {
          appflow_integration: AppflowIntegrationWorkflowStep.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkflowStepItem.new
        data = {}
        data['AppflowIntegration'] = Stubs::AppflowIntegrationWorkflowStep.stub(stub[:appflow_integration]) unless stub[:appflow_integration].nil?
        data
      end
    end

    # Structure Stubber for AppflowIntegrationWorkflowStep
    class AppflowIntegrationWorkflowStep
      def self.default(visited=[])
        return nil if visited.include?('AppflowIntegrationWorkflowStep')
        visited = visited + ['AppflowIntegrationWorkflowStep']
        {
          flow_name: 'flow_name',
          status: 'status',
          execution_message: 'execution_message',
          records_processed: 1,
          batch_records_start_time: 'batch_records_start_time',
          batch_records_end_time: 'batch_records_end_time',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppflowIntegrationWorkflowStep.new
        data = {}
        data['FlowName'] = stub[:flow_name] unless stub[:flow_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ExecutionMessage'] = stub[:execution_message] unless stub[:execution_message].nil?
        data['RecordsProcessed'] = stub[:records_processed] unless stub[:records_processed].nil?
        data['BatchRecordsStartTime'] = stub[:batch_records_start_time] unless stub[:batch_records_start_time].nil?
        data['BatchRecordsEndTime'] = stub[:batch_records_end_time] unless stub[:batch_records_end_time].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListAccountIntegrations
    class ListAccountIntegrations
      def self.default(visited=[])
        {
          items: IntegrationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::IntegrationList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IntegrationList
    class IntegrationList
      def self.default(visited=[])
        return nil if visited.include?('IntegrationList')
        visited = visited + ['IntegrationList']
        [
          ListIntegrationItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListIntegrationItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListIntegrationItem
    class ListIntegrationItem
      def self.default(visited=[])
        return nil if visited.include?('ListIntegrationItem')
        visited = visited + ['ListIntegrationItem']
        {
          domain_name: 'domain_name',
          uri: 'uri',
          object_type_name: 'object_type_name',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
          object_type_names: ObjectTypeNames.default(visited),
          workflow_id: 'workflow_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListIntegrationItem.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ObjectTypeNames'] = Stubs::ObjectTypeNames.stub(stub[:object_type_names]) unless stub[:object_type_names].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          items: DomainList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::DomainList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainList
    class DomainList
      def self.default(visited=[])
        return nil if visited.include?('DomainList')
        visited = visited + ['DomainList']
        [
          ListDomainItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListDomainItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListDomainItem
    class ListDomainItem
      def self.default(visited=[])
        return nil if visited.include?('ListDomainItem')
        visited = visited + ['ListDomainItem']
        {
          domain_name: 'domain_name',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListDomainItem.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListIdentityResolutionJobs
    class ListIdentityResolutionJobs
      def self.default(visited=[])
        {
          identity_resolution_jobs_list: IdentityResolutionJobsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IdentityResolutionJobsList'] = Stubs::IdentityResolutionJobsList.stub(stub[:identity_resolution_jobs_list]) unless stub[:identity_resolution_jobs_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IdentityResolutionJobsList
    class IdentityResolutionJobsList
      def self.default(visited=[])
        return nil if visited.include?('IdentityResolutionJobsList')
        visited = visited + ['IdentityResolutionJobsList']
        [
          IdentityResolutionJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityResolutionJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityResolutionJob
    class IdentityResolutionJob
      def self.default(visited=[])
        return nil if visited.include?('IdentityResolutionJob')
        visited = visited + ['IdentityResolutionJob']
        {
          domain_name: 'domain_name',
          job_id: 'job_id',
          status: 'status',
          job_start_time: Time.now,
          job_end_time: Time.now,
          job_stats: JobStats.default(visited),
          exporting_location: ExportingLocation.default(visited),
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityResolutionJob.new
        data = {}
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['JobStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:job_start_time]).to_i unless stub[:job_start_time].nil?
        data['JobEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:job_end_time]).to_i unless stub[:job_end_time].nil?
        data['JobStats'] = Stubs::JobStats.stub(stub[:job_stats]) unless stub[:job_stats].nil?
        data['ExportingLocation'] = Stubs::ExportingLocation.stub(stub[:exporting_location]) unless stub[:exporting_location].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for ListIntegrations
    class ListIntegrations
      def self.default(visited=[])
        {
          items: IntegrationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::IntegrationList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListProfileObjectTypeTemplates
    class ListProfileObjectTypeTemplates
      def self.default(visited=[])
        {
          items: ProfileObjectTypeTemplateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ProfileObjectTypeTemplateList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfileObjectTypeTemplateList
    class ProfileObjectTypeTemplateList
      def self.default(visited=[])
        return nil if visited.include?('ProfileObjectTypeTemplateList')
        visited = visited + ['ProfileObjectTypeTemplateList']
        [
          ListProfileObjectTypeTemplateItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListProfileObjectTypeTemplateItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListProfileObjectTypeTemplateItem
    class ListProfileObjectTypeTemplateItem
      def self.default(visited=[])
        return nil if visited.include?('ListProfileObjectTypeTemplateItem')
        visited = visited + ['ListProfileObjectTypeTemplateItem']
        {
          template_id: 'template_id',
          source_name: 'source_name',
          source_object: 'source_object',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListProfileObjectTypeTemplateItem.new
        data = {}
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['SourceName'] = stub[:source_name] unless stub[:source_name].nil?
        data['SourceObject'] = stub[:source_object] unless stub[:source_object].nil?
        data
      end
    end

    # Operation Stubber for ListProfileObjectTypes
    class ListProfileObjectTypes
      def self.default(visited=[])
        {
          items: ProfileObjectTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ProfileObjectTypeList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfileObjectTypeList
    class ProfileObjectTypeList
      def self.default(visited=[])
        return nil if visited.include?('ProfileObjectTypeList')
        visited = visited + ['ProfileObjectTypeList']
        [
          ListProfileObjectTypeItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListProfileObjectTypeItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListProfileObjectTypeItem
    class ListProfileObjectTypeItem
      def self.default(visited=[])
        return nil if visited.include?('ListProfileObjectTypeItem')
        visited = visited + ['ListProfileObjectTypeItem']
        {
          object_type_name: 'object_type_name',
          description: 'description',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ListProfileObjectTypeItem.new
        data = {}
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListProfileObjects
    class ListProfileObjects
      def self.default(visited=[])
        {
          items: ProfileObjectList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ProfileObjectList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfileObjectList
    class ProfileObjectList
      def self.default(visited=[])
        return nil if visited.include?('ProfileObjectList')
        visited = visited + ['ProfileObjectList']
        [
          ListProfileObjectsItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListProfileObjectsItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListProfileObjectsItem
    class ListProfileObjectsItem
      def self.default(visited=[])
        return nil if visited.include?('ListProfileObjectsItem')
        visited = visited + ['ListProfileObjectsItem']
        {
          object_type_name: 'object_type_name',
          profile_object_unique_key: 'profile_object_unique_key',
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListProfileObjectsItem.new
        data = {}
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['ProfileObjectUniqueKey'] = stub[:profile_object_unique_key] unless stub[:profile_object_unique_key].nil?
        data['Object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWorkflows
    class ListWorkflows
      def self.default(visited=[])
        {
          items: WorkflowList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::WorkflowList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkflowList
    class WorkflowList
      def self.default(visited=[])
        return nil if visited.include?('WorkflowList')
        visited = visited + ['WorkflowList']
        [
          ListWorkflowsItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListWorkflowsItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListWorkflowsItem
    class ListWorkflowsItem
      def self.default(visited=[])
        return nil if visited.include?('ListWorkflowsItem')
        visited = visited + ['ListWorkflowsItem']
        {
          workflow_type: 'workflow_type',
          workflow_id: 'workflow_id',
          status: 'status',
          status_description: 'status_description',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListWorkflowsItem.new
        data = {}
        data['WorkflowType'] = stub[:workflow_type] unless stub[:workflow_type].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDescription'] = stub[:status_description] unless stub[:status_description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for MergeProfiles
    class MergeProfiles
      def self.default(visited=[])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutIntegration
    class PutIntegration
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          uri: 'uri',
          object_type_name: 'object_type_name',
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
          object_type_names: ObjectTypeNames.default(visited),
          workflow_id: 'workflow_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ObjectTypeNames'] = Stubs::ObjectTypeNames.stub(stub[:object_type_names]) unless stub[:object_type_names].nil?
        data['WorkflowId'] = stub[:workflow_id] unless stub[:workflow_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutProfileObject
    class PutProfileObject
      def self.default(visited=[])
        {
          profile_object_unique_key: 'profile_object_unique_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProfileObjectUniqueKey'] = stub[:profile_object_unique_key] unless stub[:profile_object_unique_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutProfileObjectType
    class PutProfileObjectType
      def self.default(visited=[])
        {
          object_type_name: 'object_type_name',
          description: 'description',
          template_id: 'template_id',
          expiration_days: 1,
          encryption_key: 'encryption_key',
          allow_profile_creation: false,
          source_last_updated_timestamp_format: 'source_last_updated_timestamp_format',
          fields: FieldMap.default(visited),
          keys: KeyMap.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ObjectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['TemplateId'] = stub[:template_id] unless stub[:template_id].nil?
        data['ExpirationDays'] = stub[:expiration_days] unless stub[:expiration_days].nil?
        data['EncryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['AllowProfileCreation'] = stub[:allow_profile_creation] unless stub[:allow_profile_creation].nil?
        data['SourceLastUpdatedTimestampFormat'] = stub[:source_last_updated_timestamp_format] unless stub[:source_last_updated_timestamp_format].nil?
        data['Fields'] = Stubs::FieldMap.stub(stub[:fields]) unless stub[:fields].nil?
        data['Keys'] = Stubs::KeyMap.stub(stub[:keys]) unless stub[:keys].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchProfiles
    class SearchProfiles
      def self.default(visited=[])
        {
          items: ProfileList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Items'] = Stubs::ProfileList.stub(stub[:items]) unless stub[:items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfileList
    class ProfileList
      def self.default(visited=[])
        return nil if visited.include?('ProfileList')
        visited = visited + ['ProfileList']
        [
          Profile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Profile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Profile
    class Profile
      def self.default(visited=[])
        return nil if visited.include?('Profile')
        visited = visited + ['Profile']
        {
          profile_id: 'profile_id',
          account_number: 'account_number',
          additional_information: 'additional_information',
          party_type: 'party_type',
          business_name: 'business_name',
          first_name: 'first_name',
          middle_name: 'middle_name',
          last_name: 'last_name',
          birth_date: 'birth_date',
          gender: 'gender',
          phone_number: 'phone_number',
          mobile_phone_number: 'mobile_phone_number',
          home_phone_number: 'home_phone_number',
          business_phone_number: 'business_phone_number',
          email_address: 'email_address',
          personal_email_address: 'personal_email_address',
          business_email_address: 'business_email_address',
          address: Address.default(visited),
          shipping_address: Address.default(visited),
          mailing_address: Address.default(visited),
          billing_address: Address.default(visited),
          attributes: Attributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Profile.new
        data = {}
        data['ProfileId'] = stub[:profile_id] unless stub[:profile_id].nil?
        data['AccountNumber'] = stub[:account_number] unless stub[:account_number].nil?
        data['AdditionalInformation'] = stub[:additional_information] unless stub[:additional_information].nil?
        data['PartyType'] = stub[:party_type] unless stub[:party_type].nil?
        data['BusinessName'] = stub[:business_name] unless stub[:business_name].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['MiddleName'] = stub[:middle_name] unless stub[:middle_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['BirthDate'] = stub[:birth_date] unless stub[:birth_date].nil?
        data['Gender'] = stub[:gender] unless stub[:gender].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['MobilePhoneNumber'] = stub[:mobile_phone_number] unless stub[:mobile_phone_number].nil?
        data['HomePhoneNumber'] = stub[:home_phone_number] unless stub[:home_phone_number].nil?
        data['BusinessPhoneNumber'] = stub[:business_phone_number] unless stub[:business_phone_number].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['PersonalEmailAddress'] = stub[:personal_email_address] unless stub[:personal_email_address].nil?
        data['BusinessEmailAddress'] = stub[:business_email_address] unless stub[:business_email_address].nil?
        data['Address'] = Stubs::Address.stub(stub[:address]) unless stub[:address].nil?
        data['ShippingAddress'] = Stubs::Address.stub(stub[:shipping_address]) unless stub[:shipping_address].nil?
        data['MailingAddress'] = Stubs::Address.stub(stub[:mailing_address]) unless stub[:mailing_address].nil?
        data['BillingAddress'] = Stubs::Address.stub(stub[:billing_address]) unless stub[:billing_address].nil?
        data['Attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
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

    # Structure Stubber for Address
    class Address
      def self.default(visited=[])
        return nil if visited.include?('Address')
        visited = visited + ['Address']
        {
          address1: 'address1',
          address2: 'address2',
          address3: 'address3',
          address4: 'address4',
          city: 'city',
          county: 'county',
          state: 'state',
          province: 'province',
          country: 'country',
          postal_code: 'postal_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::Address.new
        data = {}
        data['Address1'] = stub[:address1] unless stub[:address1].nil?
        data['Address2'] = stub[:address2] unless stub[:address2].nil?
        data['Address3'] = stub[:address3] unless stub[:address3].nil?
        data['Address4'] = stub[:address4] unless stub[:address4].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['County'] = stub[:county] unless stub[:county].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Province'] = stub[:province] unless stub[:province].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomain
    class UpdateDomain
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          default_expiration_days: 1,
          default_encryption_key: 'default_encryption_key',
          dead_letter_queue_url: 'dead_letter_queue_url',
          matching: MatchingResponse.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DomainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['DefaultExpirationDays'] = stub[:default_expiration_days] unless stub[:default_expiration_days].nil?
        data['DefaultEncryptionKey'] = stub[:default_encryption_key] unless stub[:default_encryption_key].nil?
        data['DeadLetterQueueUrl'] = stub[:dead_letter_queue_url] unless stub[:dead_letter_queue_url].nil?
        data['Matching'] = Stubs::MatchingResponse.stub(stub[:matching]) unless stub[:matching].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProfile
    class UpdateProfile
      def self.default(visited=[])
        {
          profile_id: 'profile_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProfileId'] = stub[:profile_id] unless stub[:profile_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
