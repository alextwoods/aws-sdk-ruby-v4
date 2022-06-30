# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glacier
  module Stubs

    # Operation Stubber for AbortMultipartUpload
    class AbortMultipartUpload
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AbortVaultLock
    class AbortVaultLock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for AddTagsToVault
    class AddTagsToVault
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CompleteMultipartUpload
    class CompleteMultipartUpload
      def self.default(visited=[])
        {
          location: 'location',
          checksum: 'checksum',
          archive_id: 'archive_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['x-amz-sha256-tree-hash'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
        http_resp.headers['x-amz-archive-id'] = stub[:archive_id] unless stub[:archive_id].nil? || stub[:archive_id].empty?
      end
    end

    # Operation Stubber for CompleteVaultLock
    class CompleteVaultLock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for CreateVault
    class CreateVault
      def self.default(visited=[])
        {
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
      end
    end

    # Operation Stubber for DeleteArchive
    class DeleteArchive
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVault
    class DeleteVault
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVaultAccessPolicy
    class DeleteVaultAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVaultNotifications
    class DeleteVaultNotifications
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeJob
    class DescribeJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_description: 'job_description',
          action: 'action',
          archive_id: 'archive_id',
          vault_arn: 'vault_arn',
          creation_date: 'creation_date',
          completed: false,
          status_code: 'status_code',
          status_message: 'status_message',
          archive_size_in_bytes: 1,
          inventory_size_in_bytes: 1,
          sns_topic: 'sns_topic',
          completion_date: 'completion_date',
          sha256_tree_hash: 'sha256_tree_hash',
          archive_sha256_tree_hash: 'archive_sha256_tree_hash',
          retrieval_byte_range: 'retrieval_byte_range',
          tier: 'tier',
          inventory_retrieval_parameters: Stubs::InventoryRetrievalJobDescription.default(visited),
          job_output_path: 'job_output_path',
          select_parameters: Stubs::SelectParameters.default(visited),
          output_location: Stubs::OutputLocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobDescription'] = stub[:job_description] unless stub[:job_description].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['ArchiveId'] = stub[:archive_id] unless stub[:archive_id].nil?
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Completed'] = stub[:completed] unless stub[:completed].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ArchiveSizeInBytes'] = stub[:archive_size_in_bytes] unless stub[:archive_size_in_bytes].nil?
        data['InventorySizeInBytes'] = stub[:inventory_size_in_bytes] unless stub[:inventory_size_in_bytes].nil?
        data['SNSTopic'] = stub[:sns_topic] unless stub[:sns_topic].nil?
        data['CompletionDate'] = stub[:completion_date] unless stub[:completion_date].nil?
        data['SHA256TreeHash'] = stub[:sha256_tree_hash] unless stub[:sha256_tree_hash].nil?
        data['ArchiveSHA256TreeHash'] = stub[:archive_sha256_tree_hash] unless stub[:archive_sha256_tree_hash].nil?
        data['RetrievalByteRange'] = stub[:retrieval_byte_range] unless stub[:retrieval_byte_range].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['InventoryRetrievalParameters'] = Stubs::InventoryRetrievalJobDescription.stub(stub[:inventory_retrieval_parameters]) unless stub[:inventory_retrieval_parameters].nil?
        data['JobOutputPath'] = stub[:job_output_path] unless stub[:job_output_path].nil?
        data['SelectParameters'] = Stubs::SelectParameters.stub(stub[:select_parameters]) unless stub[:select_parameters].nil?
        data['OutputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for OutputLocation
    class OutputLocation
      def self.default(visited=[])
        return nil if visited.include?('OutputLocation')
        visited = visited + ['OutputLocation']
        {
          s3: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputLocation.new
        data = {}
        data['S3'] = Stubs::S3Location.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
          encryption: Stubs::Encryption.default(visited),
          canned_acl: 'canned_acl',
          access_control_list: Stubs::AccessControlPolicyList.default(visited),
          tagging: Stubs::Hashmap.default(visited),
          user_metadata: Stubs::Hashmap.default(visited),
          storage_class: 'storage_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['Prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['Encryption'] = Stubs::Encryption.stub(stub[:encryption]) unless stub[:encryption].nil?
        data['CannedACL'] = stub[:canned_acl] unless stub[:canned_acl].nil?
        data['AccessControlList'] = Stubs::AccessControlPolicyList.stub(stub[:access_control_list]) unless stub[:access_control_list].nil?
        data['Tagging'] = Stubs::Hashmap.stub(stub[:tagging]) unless stub[:tagging].nil?
        data['UserMetadata'] = Stubs::Hashmap.stub(stub[:user_metadata]) unless stub[:user_metadata].nil?
        data['StorageClass'] = stub[:storage_class] unless stub[:storage_class].nil?
        data
      end
    end

    # Map Stubber for hashmap
    class Hashmap
      def self.default(visited=[])
        return nil if visited.include?('Hashmap')
        visited = visited + ['Hashmap']
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

    # List Stubber for AccessControlPolicyList
    class AccessControlPolicyList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlPolicyList')
        visited = visited + ['AccessControlPolicyList']
        [
          Stubs::Grant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Grant.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Grant
    class Grant
      def self.default(visited=[])
        return nil if visited.include?('Grant')
        visited = visited + ['Grant']
        {
          grantee: Stubs::Grantee.default(visited),
          permission: 'permission',
        }
      end

      def self.stub(stub)
        stub ||= Types::Grant.new
        data = {}
        data['Grantee'] = Stubs::Grantee.stub(stub[:grantee]) unless stub[:grantee].nil?
        data['Permission'] = stub[:permission] unless stub[:permission].nil?
        data
      end
    end

    # Structure Stubber for Grantee
    class Grantee
      def self.default(visited=[])
        return nil if visited.include?('Grantee')
        visited = visited + ['Grantee']
        {
          type: 'type',
          display_name: 'display_name',
          uri: 'uri',
          id: 'id',
          email_address: 'email_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::Grantee.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['URI'] = stub[:uri] unless stub[:uri].nil?
        data['ID'] = stub[:id] unless stub[:id].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data
      end
    end

    # Structure Stubber for Encryption
    class Encryption
      def self.default(visited=[])
        return nil if visited.include?('Encryption')
        visited = visited + ['Encryption']
        {
          encryption_type: 'encryption_type',
          kms_key_id: 'kms_key_id',
          kms_context: 'kms_context',
        }
      end

      def self.stub(stub)
        stub ||= Types::Encryption.new
        data = {}
        data['EncryptionType'] = stub[:encryption_type] unless stub[:encryption_type].nil?
        data['KMSKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['KMSContext'] = stub[:kms_context] unless stub[:kms_context].nil?
        data
      end
    end

    # Structure Stubber for SelectParameters
    class SelectParameters
      def self.default(visited=[])
        return nil if visited.include?('SelectParameters')
        visited = visited + ['SelectParameters']
        {
          input_serialization: Stubs::InputSerialization.default(visited),
          expression_type: 'expression_type',
          expression: 'expression',
          output_serialization: Stubs::OutputSerialization.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectParameters.new
        data = {}
        data['InputSerialization'] = Stubs::InputSerialization.stub(stub[:input_serialization]) unless stub[:input_serialization].nil?
        data['ExpressionType'] = stub[:expression_type] unless stub[:expression_type].nil?
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['OutputSerialization'] = Stubs::OutputSerialization.stub(stub[:output_serialization]) unless stub[:output_serialization].nil?
        data
      end
    end

    # Structure Stubber for OutputSerialization
    class OutputSerialization
      def self.default(visited=[])
        return nil if visited.include?('OutputSerialization')
        visited = visited + ['OutputSerialization']
        {
          csv: Stubs::CSVOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputSerialization.new
        data = {}
        data['csv'] = Stubs::CSVOutput.stub(stub[:csv]) unless stub[:csv].nil?
        data
      end
    end

    # Structure Stubber for CSVOutput
    class CSVOutput
      def self.default(visited=[])
        return nil if visited.include?('CSVOutput')
        visited = visited + ['CSVOutput']
        {
          quote_fields: 'quote_fields',
          quote_escape_character: 'quote_escape_character',
          record_delimiter: 'record_delimiter',
          field_delimiter: 'field_delimiter',
          quote_character: 'quote_character',
        }
      end

      def self.stub(stub)
        stub ||= Types::CSVOutput.new
        data = {}
        data['QuoteFields'] = stub[:quote_fields] unless stub[:quote_fields].nil?
        data['QuoteEscapeCharacter'] = stub[:quote_escape_character] unless stub[:quote_escape_character].nil?
        data['RecordDelimiter'] = stub[:record_delimiter] unless stub[:record_delimiter].nil?
        data['FieldDelimiter'] = stub[:field_delimiter] unless stub[:field_delimiter].nil?
        data['QuoteCharacter'] = stub[:quote_character] unless stub[:quote_character].nil?
        data
      end
    end

    # Structure Stubber for InputSerialization
    class InputSerialization
      def self.default(visited=[])
        return nil if visited.include?('InputSerialization')
        visited = visited + ['InputSerialization']
        {
          csv: Stubs::CSVInput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputSerialization.new
        data = {}
        data['csv'] = Stubs::CSVInput.stub(stub[:csv]) unless stub[:csv].nil?
        data
      end
    end

    # Structure Stubber for CSVInput
    class CSVInput
      def self.default(visited=[])
        return nil if visited.include?('CSVInput')
        visited = visited + ['CSVInput']
        {
          file_header_info: 'file_header_info',
          comments: 'comments',
          quote_escape_character: 'quote_escape_character',
          record_delimiter: 'record_delimiter',
          field_delimiter: 'field_delimiter',
          quote_character: 'quote_character',
        }
      end

      def self.stub(stub)
        stub ||= Types::CSVInput.new
        data = {}
        data['FileHeaderInfo'] = stub[:file_header_info] unless stub[:file_header_info].nil?
        data['Comments'] = stub[:comments] unless stub[:comments].nil?
        data['QuoteEscapeCharacter'] = stub[:quote_escape_character] unless stub[:quote_escape_character].nil?
        data['RecordDelimiter'] = stub[:record_delimiter] unless stub[:record_delimiter].nil?
        data['FieldDelimiter'] = stub[:field_delimiter] unless stub[:field_delimiter].nil?
        data['QuoteCharacter'] = stub[:quote_character] unless stub[:quote_character].nil?
        data
      end
    end

    # Structure Stubber for InventoryRetrievalJobDescription
    class InventoryRetrievalJobDescription
      def self.default(visited=[])
        return nil if visited.include?('InventoryRetrievalJobDescription')
        visited = visited + ['InventoryRetrievalJobDescription']
        {
          format: 'format',
          start_date: 'start_date',
          end_date: 'end_date',
          limit: 'limit',
          marker: 'marker',
        }
      end

      def self.stub(stub)
        stub ||= Types::InventoryRetrievalJobDescription.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['EndDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['Limit'] = stub[:limit] unless stub[:limit].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data
      end
    end

    # Operation Stubber for DescribeVault
    class DescribeVault
      def self.default(visited=[])
        {
          vault_arn: 'vault_arn',
          vault_name: 'vault_name',
          creation_date: 'creation_date',
          last_inventory_date: 'last_inventory_date',
          number_of_archives: 1,
          size_in_bytes: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['VaultName'] = stub[:vault_name] unless stub[:vault_name].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['LastInventoryDate'] = stub[:last_inventory_date] unless stub[:last_inventory_date].nil?
        data['NumberOfArchives'] = stub[:number_of_archives] unless stub[:number_of_archives].nil?
        data['SizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDataRetrievalPolicy
    class GetDataRetrievalPolicy
      def self.default(visited=[])
        {
          policy: Stubs::DataRetrievalPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = Stubs::DataRetrievalPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataRetrievalPolicy
    class DataRetrievalPolicy
      def self.default(visited=[])
        return nil if visited.include?('DataRetrievalPolicy')
        visited = visited + ['DataRetrievalPolicy']
        {
          rules: Stubs::DataRetrievalRulesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRetrievalPolicy.new
        data = {}
        data['Rules'] = Stubs::DataRetrievalRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for DataRetrievalRulesList
    class DataRetrievalRulesList
      def self.default(visited=[])
        return nil if visited.include?('DataRetrievalRulesList')
        visited = visited + ['DataRetrievalRulesList']
        [
          Stubs::DataRetrievalRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataRetrievalRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataRetrievalRule
    class DataRetrievalRule
      def self.default(visited=[])
        return nil if visited.include?('DataRetrievalRule')
        visited = visited + ['DataRetrievalRule']
        {
          strategy: 'strategy',
          bytes_per_hour: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataRetrievalRule.new
        data = {}
        data['Strategy'] = stub[:strategy] unless stub[:strategy].nil?
        data['BytesPerHour'] = stub[:bytes_per_hour] unless stub[:bytes_per_hour].nil?
        data
      end
    end

    # Operation Stubber for GetJobOutput
    class GetJobOutput
      def self.default(visited=[])
        {
          body: 'body',
          checksum: 'checksum',
          status: 1,
          content_range: 'content_range',
          accept_ranges: 'accept_ranges',
          content_type: 'content_type',
          archive_description: 'archive_description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amz-sha256-tree-hash'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
        http_resp.headers['Content-Range'] = stub[:content_range] unless stub[:content_range].nil? || stub[:content_range].empty?
        http_resp.headers['Accept-Ranges'] = stub[:accept_ranges] unless stub[:accept_ranges].nil? || stub[:accept_ranges].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['x-amz-archive-description'] = stub[:archive_description] unless stub[:archive_description].nil? || stub[:archive_description].empty?
        http_resp.status = stub[:status]
        IO.copy_stream(stub[:body], http_resp.body)
      end
    end

    # Operation Stubber for GetVaultAccessPolicy
    class GetVaultAccessPolicy
      def self.default(visited=[])
        {
          policy: Stubs::VaultAccessPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VaultAccessPolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VaultAccessPolicy
    class VaultAccessPolicy
      def self.default(visited=[])
        return nil if visited.include?('VaultAccessPolicy')
        visited = visited + ['VaultAccessPolicy']
        {
          policy: 'policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::VaultAccessPolicy.new
        data = {}
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data
      end
    end

    # Operation Stubber for GetVaultLock
    class GetVaultLock
      def self.default(visited=[])
        {
          policy: 'policy',
          state: 'state',
          expiration_date: 'expiration_date',
          creation_date: 'creation_date',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ExpirationDate'] = stub[:expiration_date] unless stub[:expiration_date].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVaultNotifications
    class GetVaultNotifications
      def self.default(visited=[])
        {
          vault_notification_config: Stubs::VaultNotificationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::VaultNotificationConfig.stub(stub[:vault_notification_config]) unless stub[:vault_notification_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VaultNotificationConfig
    class VaultNotificationConfig
      def self.default(visited=[])
        return nil if visited.include?('VaultNotificationConfig')
        visited = visited + ['VaultNotificationConfig']
        {
          sns_topic: 'sns_topic',
          events: Stubs::NotificationEventList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VaultNotificationConfig.new
        data = {}
        data['SNSTopic'] = stub[:sns_topic] unless stub[:sns_topic].nil?
        data['Events'] = Stubs::NotificationEventList.stub(stub[:events]) unless stub[:events].nil?
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

    # Operation Stubber for InitiateJob
    class InitiateJob
      def self.default(visited=[])
        {
          location: 'location',
          job_id: 'job_id',
          job_output_path: 'job_output_path',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['x-amz-job-id'] = stub[:job_id] unless stub[:job_id].nil? || stub[:job_id].empty?
        http_resp.headers['x-amz-job-output-path'] = stub[:job_output_path] unless stub[:job_output_path].nil? || stub[:job_output_path].empty?
      end
    end

    # Operation Stubber for InitiateMultipartUpload
    class InitiateMultipartUpload
      def self.default(visited=[])
        {
          location: 'location',
          upload_id: 'upload_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['x-amz-multipart-upload-id'] = stub[:upload_id] unless stub[:upload_id].nil? || stub[:upload_id].empty?
      end
    end

    # Operation Stubber for InitiateVaultLock
    class InitiateVaultLock
      def self.default(visited=[])
        {
          lock_id: 'lock_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['x-amz-lock-id'] = stub[:lock_id] unless stub[:lock_id].nil? || stub[:lock_id].empty?
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          job_list: Stubs::JobList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobList'] = Stubs::JobList.stub(stub[:job_list]) unless stub[:job_list].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobList
    class JobList
      def self.default(visited=[])
        return nil if visited.include?('JobList')
        visited = visited + ['JobList']
        [
          Stubs::GlacierJobDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GlacierJobDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GlacierJobDescription
    class GlacierJobDescription
      def self.default(visited=[])
        return nil if visited.include?('GlacierJobDescription')
        visited = visited + ['GlacierJobDescription']
        {
          job_id: 'job_id',
          job_description: 'job_description',
          action: 'action',
          archive_id: 'archive_id',
          vault_arn: 'vault_arn',
          creation_date: 'creation_date',
          completed: false,
          status_code: 'status_code',
          status_message: 'status_message',
          archive_size_in_bytes: 1,
          inventory_size_in_bytes: 1,
          sns_topic: 'sns_topic',
          completion_date: 'completion_date',
          sha256_tree_hash: 'sha256_tree_hash',
          archive_sha256_tree_hash: 'archive_sha256_tree_hash',
          retrieval_byte_range: 'retrieval_byte_range',
          tier: 'tier',
          inventory_retrieval_parameters: Stubs::InventoryRetrievalJobDescription.default(visited),
          job_output_path: 'job_output_path',
          select_parameters: Stubs::SelectParameters.default(visited),
          output_location: Stubs::OutputLocation.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GlacierJobDescription.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobDescription'] = stub[:job_description] unless stub[:job_description].nil?
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['ArchiveId'] = stub[:archive_id] unless stub[:archive_id].nil?
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Completed'] = stub[:completed] unless stub[:completed].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ArchiveSizeInBytes'] = stub[:archive_size_in_bytes] unless stub[:archive_size_in_bytes].nil?
        data['InventorySizeInBytes'] = stub[:inventory_size_in_bytes] unless stub[:inventory_size_in_bytes].nil?
        data['SNSTopic'] = stub[:sns_topic] unless stub[:sns_topic].nil?
        data['CompletionDate'] = stub[:completion_date] unless stub[:completion_date].nil?
        data['SHA256TreeHash'] = stub[:sha256_tree_hash] unless stub[:sha256_tree_hash].nil?
        data['ArchiveSHA256TreeHash'] = stub[:archive_sha256_tree_hash] unless stub[:archive_sha256_tree_hash].nil?
        data['RetrievalByteRange'] = stub[:retrieval_byte_range] unless stub[:retrieval_byte_range].nil?
        data['Tier'] = stub[:tier] unless stub[:tier].nil?
        data['InventoryRetrievalParameters'] = Stubs::InventoryRetrievalJobDescription.stub(stub[:inventory_retrieval_parameters]) unless stub[:inventory_retrieval_parameters].nil?
        data['JobOutputPath'] = stub[:job_output_path] unless stub[:job_output_path].nil?
        data['SelectParameters'] = Stubs::SelectParameters.stub(stub[:select_parameters]) unless stub[:select_parameters].nil?
        data['OutputLocation'] = Stubs::OutputLocation.stub(stub[:output_location]) unless stub[:output_location].nil?
        data
      end
    end

    # Operation Stubber for ListMultipartUploads
    class ListMultipartUploads
      def self.default(visited=[])
        {
          uploads_list: Stubs::UploadsList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UploadsList'] = Stubs::UploadsList.stub(stub[:uploads_list]) unless stub[:uploads_list].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UploadsList
    class UploadsList
      def self.default(visited=[])
        return nil if visited.include?('UploadsList')
        visited = visited + ['UploadsList']
        [
          Stubs::UploadListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UploadListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UploadListElement
    class UploadListElement
      def self.default(visited=[])
        return nil if visited.include?('UploadListElement')
        visited = visited + ['UploadListElement']
        {
          multipart_upload_id: 'multipart_upload_id',
          vault_arn: 'vault_arn',
          archive_description: 'archive_description',
          part_size_in_bytes: 1,
          creation_date: 'creation_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::UploadListElement.new
        data = {}
        data['MultipartUploadId'] = stub[:multipart_upload_id] unless stub[:multipart_upload_id].nil?
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['ArchiveDescription'] = stub[:archive_description] unless stub[:archive_description].nil?
        data['PartSizeInBytes'] = stub[:part_size_in_bytes] unless stub[:part_size_in_bytes].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListParts
    class ListParts
      def self.default(visited=[])
        {
          multipart_upload_id: 'multipart_upload_id',
          vault_arn: 'vault_arn',
          archive_description: 'archive_description',
          part_size_in_bytes: 1,
          creation_date: 'creation_date',
          parts: Stubs::PartList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MultipartUploadId'] = stub[:multipart_upload_id] unless stub[:multipart_upload_id].nil?
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['ArchiveDescription'] = stub[:archive_description] unless stub[:archive_description].nil?
        data['PartSizeInBytes'] = stub[:part_size_in_bytes] unless stub[:part_size_in_bytes].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['Parts'] = Stubs::PartList.stub(stub[:parts]) unless stub[:parts].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PartList
    class PartList
      def self.default(visited=[])
        return nil if visited.include?('PartList')
        visited = visited + ['PartList']
        [
          Stubs::PartListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PartListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartListElement
    class PartListElement
      def self.default(visited=[])
        return nil if visited.include?('PartListElement')
        visited = visited + ['PartListElement']
        {
          range_in_bytes: 'range_in_bytes',
          sha256_tree_hash: 'sha256_tree_hash',
        }
      end

      def self.stub(stub)
        stub ||= Types::PartListElement.new
        data = {}
        data['RangeInBytes'] = stub[:range_in_bytes] unless stub[:range_in_bytes].nil?
        data['SHA256TreeHash'] = stub[:sha256_tree_hash] unless stub[:sha256_tree_hash].nil?
        data
      end
    end

    # Operation Stubber for ListProvisionedCapacity
    class ListProvisionedCapacity
      def self.default(visited=[])
        {
          provisioned_capacity_list: Stubs::ProvisionedCapacityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProvisionedCapacityList'] = Stubs::ProvisionedCapacityList.stub(stub[:provisioned_capacity_list]) unless stub[:provisioned_capacity_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProvisionedCapacityList
    class ProvisionedCapacityList
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedCapacityList')
        visited = visited + ['ProvisionedCapacityList']
        [
          Stubs::ProvisionedCapacityDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProvisionedCapacityDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedCapacityDescription
    class ProvisionedCapacityDescription
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedCapacityDescription')
        visited = visited + ['ProvisionedCapacityDescription']
        {
          capacity_id: 'capacity_id',
          start_date: 'start_date',
          expiration_date: 'expiration_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProvisionedCapacityDescription.new
        data = {}
        data['CapacityId'] = stub[:capacity_id] unless stub[:capacity_id].nil?
        data['StartDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['ExpirationDate'] = stub[:expiration_date] unless stub[:expiration_date].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForVault
    class ListTagsForVault
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
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

    # Operation Stubber for ListVaults
    class ListVaults
      def self.default(visited=[])
        {
          vault_list: Stubs::VaultList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VaultList'] = Stubs::VaultList.stub(stub[:vault_list]) unless stub[:vault_list].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VaultList
    class VaultList
      def self.default(visited=[])
        return nil if visited.include?('VaultList')
        visited = visited + ['VaultList']
        [
          Stubs::DescribeVaultOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DescribeVaultOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DescribeVaultOutput
    class DescribeVaultOutput
      def self.default(visited=[])
        return nil if visited.include?('DescribeVaultOutput')
        visited = visited + ['DescribeVaultOutput']
        {
          vault_arn: 'vault_arn',
          vault_name: 'vault_name',
          creation_date: 'creation_date',
          last_inventory_date: 'last_inventory_date',
          number_of_archives: 1,
          size_in_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DescribeVaultOutput.new
        data = {}
        data['VaultARN'] = stub[:vault_arn] unless stub[:vault_arn].nil?
        data['VaultName'] = stub[:vault_name] unless stub[:vault_name].nil?
        data['CreationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['LastInventoryDate'] = stub[:last_inventory_date] unless stub[:last_inventory_date].nil?
        data['NumberOfArchives'] = stub[:number_of_archives] unless stub[:number_of_archives].nil?
        data['SizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data
      end
    end

    # Operation Stubber for PurchaseProvisionedCapacity
    class PurchaseProvisionedCapacity
      def self.default(visited=[])
        {
          capacity_id: 'capacity_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['x-amz-capacity-id'] = stub[:capacity_id] unless stub[:capacity_id].nil? || stub[:capacity_id].empty?
      end
    end

    # Operation Stubber for RemoveTagsFromVault
    class RemoveTagsFromVault
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for SetDataRetrievalPolicy
    class SetDataRetrievalPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for SetVaultAccessPolicy
    class SetVaultAccessPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for SetVaultNotifications
    class SetVaultNotifications
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UploadArchive
    class UploadArchive
      def self.default(visited=[])
        {
          location: 'location',
          checksum: 'checksum',
          archive_id: 'archive_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['x-amz-sha256-tree-hash'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
        http_resp.headers['x-amz-archive-id'] = stub[:archive_id] unless stub[:archive_id].nil? || stub[:archive_id].empty?
      end
    end

    # Operation Stubber for UploadMultipartPart
    class UploadMultipartPart
      def self.default(visited=[])
        {
          checksum: 'checksum',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['x-amz-sha256-tree-hash'] = stub[:checksum] unless stub[:checksum].nil? || stub[:checksum].empty?
      end
    end
  end
end
