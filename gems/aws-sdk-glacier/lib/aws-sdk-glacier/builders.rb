# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glacier
  module Builders

    # Operation Builder for AbortMultipartUpload
    class AbortMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:upload_id].to_s.empty?
          raise ArgumentError, "HTTP label :upload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads/%<uploadId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            uploadId: Hearth::HTTP.uri_escape(input[:upload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AbortVaultLock
    class AbortVaultLock
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/lock-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AddTagsToVault
    class AddTagsToVault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=add').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/tags',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
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

    # Operation Builder for CompleteMultipartUpload
    class CompleteMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:upload_id].to_s.empty?
          raise ArgumentError, "HTTP label :upload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads/%<uploadId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            uploadId: Hearth::HTTP.uri_escape(input[:upload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-archive-size'] = input[:archive_size] unless input[:archive_size].nil? || input[:archive_size].empty?
        http_req.headers['x-amz-sha256-tree-hash'] = input[:checksum] unless input[:checksum].nil? || input[:checksum].empty?
      end
    end

    # Operation Builder for CompleteVaultLock
    class CompleteVaultLock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:lock_id].to_s.empty?
          raise ArgumentError, "HTTP label :lock_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/lock-policy/%<lockId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            lockId: Hearth::HTTP.uri_escape(input[:lock_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateVault
    class CreateVault
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteArchive
    class DeleteArchive
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:archive_id].to_s.empty?
          raise ArgumentError, "HTTP label :archive_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/archives/%<archiveId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            archiveId: Hearth::HTTP.uri_escape(input[:archive_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVault
    class DeleteVault
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVaultAccessPolicy
    class DeleteVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/access-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVaultNotifications
    class DeleteVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/notification-configuration',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJob
    class DescribeJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/jobs/%<jobId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeVault
    class DescribeVault
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataRetrievalPolicy
    class GetDataRetrievalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/policies/data-retrieval',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJobOutput
    class GetJobOutput
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/jobs/%<jobId>s/output',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Range'] = input[:range] unless input[:range].nil? || input[:range].empty?
      end
    end

    # Operation Builder for GetVaultAccessPolicy
    class GetVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/access-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVaultLock
    class GetVaultLock
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/lock-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVaultNotifications
    class GetVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/notification-configuration',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for InitiateJob
    class InitiateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/jobs',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::JobParameters.build(input[:job_parameters]) unless input[:job_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JobParameters
    class JobParameters
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ArchiveId'] = input[:archive_id] unless input[:archive_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SNSTopic'] = input[:sns_topic] unless input[:sns_topic].nil?
        data['RetrievalByteRange'] = input[:retrieval_byte_range] unless input[:retrieval_byte_range].nil?
        data['Tier'] = input[:tier] unless input[:tier].nil?
        data['InventoryRetrievalParameters'] = Builders::InventoryRetrievalJobInput.build(input[:inventory_retrieval_parameters]) unless input[:inventory_retrieval_parameters].nil?
        data['SelectParameters'] = Builders::SelectParameters.build(input[:select_parameters]) unless input[:select_parameters].nil?
        data['OutputLocation'] = Builders::OutputLocation.build(input[:output_location]) unless input[:output_location].nil?
        data
      end
    end

    # Structure Builder for OutputLocation
    class OutputLocation
      def self.build(input)
        data = {}
        data['S3'] = Builders::S3Location.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['Encryption'] = Builders::Encryption.build(input[:encryption]) unless input[:encryption].nil?
        data['CannedACL'] = input[:canned_acl] unless input[:canned_acl].nil?
        data['AccessControlList'] = Builders::AccessControlPolicyList.build(input[:access_control_list]) unless input[:access_control_list].nil?
        data['Tagging'] = Builders::Hashmap.build(input[:tagging]) unless input[:tagging].nil?
        data['UserMetadata'] = Builders::Hashmap.build(input[:user_metadata]) unless input[:user_metadata].nil?
        data['StorageClass'] = input[:storage_class] unless input[:storage_class].nil?
        data
      end
    end

    # Map Builder for hashmap
    class Hashmap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for AccessControlPolicyList
    class AccessControlPolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Grant.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Grant
    class Grant
      def self.build(input)
        data = {}
        data['Grantee'] = Builders::Grantee.build(input[:grantee]) unless input[:grantee].nil?
        data['Permission'] = input[:permission] unless input[:permission].nil?
        data
      end
    end

    # Structure Builder for Grantee
    class Grantee
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['URI'] = input[:uri] unless input[:uri].nil?
        data['ID'] = input[:id] unless input[:id].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data
      end
    end

    # Structure Builder for Encryption
    class Encryption
      def self.build(input)
        data = {}
        data['EncryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data['KMSKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['KMSContext'] = input[:kms_context] unless input[:kms_context].nil?
        data
      end
    end

    # Structure Builder for SelectParameters
    class SelectParameters
      def self.build(input)
        data = {}
        data['InputSerialization'] = Builders::InputSerialization.build(input[:input_serialization]) unless input[:input_serialization].nil?
        data['ExpressionType'] = input[:expression_type] unless input[:expression_type].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['OutputSerialization'] = Builders::OutputSerialization.build(input[:output_serialization]) unless input[:output_serialization].nil?
        data
      end
    end

    # Structure Builder for OutputSerialization
    class OutputSerialization
      def self.build(input)
        data = {}
        data['csv'] = Builders::CSVOutput.build(input[:csv]) unless input[:csv].nil?
        data
      end
    end

    # Structure Builder for CSVOutput
    class CSVOutput
      def self.build(input)
        data = {}
        data['QuoteFields'] = input[:quote_fields] unless input[:quote_fields].nil?
        data['QuoteEscapeCharacter'] = input[:quote_escape_character] unless input[:quote_escape_character].nil?
        data['RecordDelimiter'] = input[:record_delimiter] unless input[:record_delimiter].nil?
        data['FieldDelimiter'] = input[:field_delimiter] unless input[:field_delimiter].nil?
        data['QuoteCharacter'] = input[:quote_character] unless input[:quote_character].nil?
        data
      end
    end

    # Structure Builder for InputSerialization
    class InputSerialization
      def self.build(input)
        data = {}
        data['csv'] = Builders::CSVInput.build(input[:csv]) unless input[:csv].nil?
        data
      end
    end

    # Structure Builder for CSVInput
    class CSVInput
      def self.build(input)
        data = {}
        data['FileHeaderInfo'] = input[:file_header_info] unless input[:file_header_info].nil?
        data['Comments'] = input[:comments] unless input[:comments].nil?
        data['QuoteEscapeCharacter'] = input[:quote_escape_character] unless input[:quote_escape_character].nil?
        data['RecordDelimiter'] = input[:record_delimiter] unless input[:record_delimiter].nil?
        data['FieldDelimiter'] = input[:field_delimiter] unless input[:field_delimiter].nil?
        data['QuoteCharacter'] = input[:quote_character] unless input[:quote_character].nil?
        data
      end
    end

    # Structure Builder for InventoryRetrievalJobInput
    class InventoryRetrievalJobInput
      def self.build(input)
        data = {}
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data['EndDate'] = input[:end_date] unless input[:end_date].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        data
      end
    end

    # Operation Builder for InitiateMultipartUpload
    class InitiateMultipartUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-archive-description'] = input[:archive_description] unless input[:archive_description].nil? || input[:archive_description].empty?
        http_req.headers['x-amz-part-size'] = input[:part_size] unless input[:part_size].nil? || input[:part_size].empty?
      end
    end

    # Operation Builder for InitiateVaultLock
    class InitiateVaultLock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/lock-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VaultLockPolicy.build(input[:policy]) unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VaultLockPolicy
    class VaultLockPolicy
      def self.build(input)
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/jobs',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['statuscode'] = input[:statuscode].to_s unless input[:statuscode].nil?
        params['completed'] = input[:completed].to_s unless input[:completed].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMultipartUploads
    class ListMultipartUploads
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListParts
    class ListParts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:upload_id].to_s.empty?
          raise ArgumentError, "HTTP label :upload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads/%<uploadId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            uploadId: Hearth::HTTP.uri_escape(input[:upload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProvisionedCapacity
    class ListProvisionedCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/provisioned-capacity',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForVault
    class ListTagsForVault
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/tags',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVaults
    class ListVaults
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PurchaseProvisionedCapacity
    class PurchaseProvisionedCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/provisioned-capacity',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemoveTagsFromVault
    class RemoveTagsFromVault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=remove').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/tags',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for SetDataRetrievalPolicy
    class SetDataRetrievalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/policies/data-retrieval',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Policy'] = Builders::DataRetrievalPolicy.build(input[:policy]) unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataRetrievalPolicy
    class DataRetrievalPolicy
      def self.build(input)
        data = {}
        data['Rules'] = Builders::DataRetrievalRulesList.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for DataRetrievalRulesList
    class DataRetrievalRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataRetrievalRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataRetrievalRule
    class DataRetrievalRule
      def self.build(input)
        data = {}
        data['Strategy'] = input[:strategy] unless input[:strategy].nil?
        data['BytesPerHour'] = input[:bytes_per_hour] unless input[:bytes_per_hour].nil?
        data
      end
    end

    # Operation Builder for SetVaultAccessPolicy
    class SetVaultAccessPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/access-policy',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VaultAccessPolicy.build(input[:policy]) unless input[:policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VaultAccessPolicy
    class VaultAccessPolicy
      def self.build(input)
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data
      end
    end

    # Operation Builder for SetVaultNotifications
    class SetVaultNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/notification-configuration',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::VaultNotificationConfig.build(input[:vault_notification_config]) unless input[:vault_notification_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VaultNotificationConfig
    class VaultNotificationConfig
      def self.build(input)
        data = {}
        data['SNSTopic'] = input[:sns_topic] unless input[:sns_topic].nil?
        data['Events'] = Builders::NotificationEventList.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for NotificationEventList
    class NotificationEventList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UploadArchive
    class UploadArchive
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/archives',
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-archive-description'] = input[:archive_description] unless input[:archive_description].nil? || input[:archive_description].empty?
        http_req.headers['x-amz-sha256-tree-hash'] = input[:checksum] unless input[:checksum].nil? || input[:checksum].empty?
      end
    end

    # Operation Builder for UploadMultipartPart
    class UploadMultipartPart
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:vault_name].to_s.empty?
          raise ArgumentError, "HTTP label :vault_name cannot be nil or empty."
        end
        if input[:upload_id].to_s.empty?
          raise ArgumentError, "HTTP label :upload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/%<accountId>s/vaults/%<vaultName>s/multipart-uploads/%<uploadId>s',
            accountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            vaultName: Hearth::HTTP.uri_escape(input[:vault_name].to_s),
            uploadId: Hearth::HTTP.uri_escape(input[:upload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['x-amz-sha256-tree-hash'] = input[:checksum] unless input[:checksum].nil? || input[:checksum].empty?
        http_req.headers['Content-Range'] = input[:range] unless input[:range].nil? || input[:range].empty?
      end
    end
  end
end
