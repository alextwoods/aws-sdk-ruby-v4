# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Signer
  module Stubs

    # Operation Stubber for AddProfilePermission
    class AddProfilePermission
      def self.default(visited=[])
        {
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CancelSigningProfile
    class CancelSigningProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSigningJob
    class DescribeSigningJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          source: Source.default(visited),
          signing_material: SigningMaterial.default(visited),
          platform_id: 'platform_id',
          platform_display_name: 'platform_display_name',
          profile_name: 'profile_name',
          profile_version: 'profile_version',
          overrides: SigningPlatformOverrides.default(visited),
          signing_parameters: SigningParameters.default(visited),
          created_at: Time.now,
          completed_at: Time.now,
          signature_expires_at: Time.now,
          requested_by: 'requested_by',
          status: 'status',
          status_reason: 'status_reason',
          revocation_record: SigningJobRevocationRecord.default(visited),
          signed_object: SignedObject.default(visited),
          job_owner: 'job_owner',
          job_invoker: 'job_invoker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['signingMaterial'] = Stubs::SigningMaterial.stub(stub[:signing_material]) unless stub[:signing_material].nil?
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['platformDisplayName'] = stub[:platform_display_name] unless stub[:platform_display_name].nil?
        data['profileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data['overrides'] = Stubs::SigningPlatformOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['signingParameters'] = Stubs::SigningParameters.stub(stub[:signing_parameters]) unless stub[:signing_parameters].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['completedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_at]).to_i unless stub[:completed_at].nil?
        data['signatureExpiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:signature_expires_at]).to_i unless stub[:signature_expires_at].nil?
        data['requestedBy'] = stub[:requested_by] unless stub[:requested_by].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['revocationRecord'] = Stubs::SigningJobRevocationRecord.stub(stub[:revocation_record]) unless stub[:revocation_record].nil?
        data['signedObject'] = Stubs::SignedObject.stub(stub[:signed_object]) unless stub[:signed_object].nil?
        data['jobOwner'] = stub[:job_owner] unless stub[:job_owner].nil?
        data['jobInvoker'] = stub[:job_invoker] unless stub[:job_invoker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SignedObject
    class SignedObject
      def self.default(visited=[])
        return nil if visited.include?('SignedObject')
        visited = visited + ['SignedObject']
        {
          s3: S3SignedObject.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SignedObject.new
        data = {}
        data['s3'] = Stubs::S3SignedObject.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3SignedObject
    class S3SignedObject
      def self.default(visited=[])
        return nil if visited.include?('S3SignedObject')
        visited = visited + ['S3SignedObject']
        {
          bucket_name: 'bucket_name',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3SignedObject.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for SigningJobRevocationRecord
    class SigningJobRevocationRecord
      def self.default(visited=[])
        return nil if visited.include?('SigningJobRevocationRecord')
        visited = visited + ['SigningJobRevocationRecord']
        {
          reason: 'reason',
          revoked_at: Time.now,
          revoked_by: 'revoked_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningJobRevocationRecord.new
        data = {}
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['revokedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revoked_at]).to_i unless stub[:revoked_at].nil?
        data['revokedBy'] = stub[:revoked_by] unless stub[:revoked_by].nil?
        data
      end
    end

    # Map Stubber for SigningParameters
    class SigningParameters
      def self.default(visited=[])
        return nil if visited.include?('SigningParameters')
        visited = visited + ['SigningParameters']
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

    # Structure Stubber for SigningPlatformOverrides
    class SigningPlatformOverrides
      def self.default(visited=[])
        return nil if visited.include?('SigningPlatformOverrides')
        visited = visited + ['SigningPlatformOverrides']
        {
          signing_configuration: SigningConfigurationOverrides.default(visited),
          signing_image_format: 'signing_image_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningPlatformOverrides.new
        data = {}
        data['signingConfiguration'] = Stubs::SigningConfigurationOverrides.stub(stub[:signing_configuration]) unless stub[:signing_configuration].nil?
        data['signingImageFormat'] = stub[:signing_image_format] unless stub[:signing_image_format].nil?
        data
      end
    end

    # Structure Stubber for SigningConfigurationOverrides
    class SigningConfigurationOverrides
      def self.default(visited=[])
        return nil if visited.include?('SigningConfigurationOverrides')
        visited = visited + ['SigningConfigurationOverrides']
        {
          encryption_algorithm: 'encryption_algorithm',
          hash_algorithm: 'hash_algorithm',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningConfigurationOverrides.new
        data = {}
        data['encryptionAlgorithm'] = stub[:encryption_algorithm] unless stub[:encryption_algorithm].nil?
        data['hashAlgorithm'] = stub[:hash_algorithm] unless stub[:hash_algorithm].nil?
        data
      end
    end

    # Structure Stubber for SigningMaterial
    class SigningMaterial
      def self.default(visited=[])
        return nil if visited.include?('SigningMaterial')
        visited = visited + ['SigningMaterial']
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningMaterial.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data
      end
    end

    # Structure Stubber for Source
    class Source
      def self.default(visited=[])
        return nil if visited.include?('Source')
        visited = visited + ['Source']
        {
          s3: S3Source.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Source.new
        data = {}
        data['s3'] = Stubs::S3Source.stub(stub[:s3]) unless stub[:s3].nil?
        data
      end
    end

    # Structure Stubber for S3Source
    class S3Source
      def self.default(visited=[])
        return nil if visited.include?('S3Source')
        visited = visited + ['S3Source']
        {
          bucket_name: 'bucket_name',
          key: 'key',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Source.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetSigningPlatform
    class GetSigningPlatform
      def self.default(visited=[])
        {
          platform_id: 'platform_id',
          display_name: 'display_name',
          partner: 'partner',
          target: 'target',
          category: 'category',
          signing_configuration: SigningConfiguration.default(visited),
          signing_image_format: SigningImageFormat.default(visited),
          max_size_in_mb: 1,
          revocation_supported: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['partner'] = stub[:partner] unless stub[:partner].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['signingConfiguration'] = Stubs::SigningConfiguration.stub(stub[:signing_configuration]) unless stub[:signing_configuration].nil?
        data['signingImageFormat'] = Stubs::SigningImageFormat.stub(stub[:signing_image_format]) unless stub[:signing_image_format].nil?
        data['maxSizeInMB'] = stub[:max_size_in_mb] unless stub[:max_size_in_mb].nil?
        data['revocationSupported'] = stub[:revocation_supported] unless stub[:revocation_supported].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SigningImageFormat
    class SigningImageFormat
      def self.default(visited=[])
        return nil if visited.include?('SigningImageFormat')
        visited = visited + ['SigningImageFormat']
        {
          supported_formats: ImageFormats.default(visited),
          default_format: 'default_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningImageFormat.new
        data = {}
        data['supportedFormats'] = Stubs::ImageFormats.stub(stub[:supported_formats]) unless stub[:supported_formats].nil?
        data['defaultFormat'] = stub[:default_format] unless stub[:default_format].nil?
        data
      end
    end

    # List Stubber for ImageFormats
    class ImageFormats
      def self.default(visited=[])
        return nil if visited.include?('ImageFormats')
        visited = visited + ['ImageFormats']
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

    # Structure Stubber for SigningConfiguration
    class SigningConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SigningConfiguration')
        visited = visited + ['SigningConfiguration']
        {
          encryption_algorithm_options: EncryptionAlgorithmOptions.default(visited),
          hash_algorithm_options: HashAlgorithmOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningConfiguration.new
        data = {}
        data['encryptionAlgorithmOptions'] = Stubs::EncryptionAlgorithmOptions.stub(stub[:encryption_algorithm_options]) unless stub[:encryption_algorithm_options].nil?
        data['hashAlgorithmOptions'] = Stubs::HashAlgorithmOptions.stub(stub[:hash_algorithm_options]) unless stub[:hash_algorithm_options].nil?
        data
      end
    end

    # Structure Stubber for HashAlgorithmOptions
    class HashAlgorithmOptions
      def self.default(visited=[])
        return nil if visited.include?('HashAlgorithmOptions')
        visited = visited + ['HashAlgorithmOptions']
        {
          allowed_values: HashAlgorithms.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::HashAlgorithmOptions.new
        data = {}
        data['allowedValues'] = Stubs::HashAlgorithms.stub(stub[:allowed_values]) unless stub[:allowed_values].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for HashAlgorithms
    class HashAlgorithms
      def self.default(visited=[])
        return nil if visited.include?('HashAlgorithms')
        visited = visited + ['HashAlgorithms']
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

    # Structure Stubber for EncryptionAlgorithmOptions
    class EncryptionAlgorithmOptions
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAlgorithmOptions')
        visited = visited + ['EncryptionAlgorithmOptions']
        {
          allowed_values: EncryptionAlgorithms.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionAlgorithmOptions.new
        data = {}
        data['allowedValues'] = Stubs::EncryptionAlgorithms.stub(stub[:allowed_values]) unless stub[:allowed_values].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # List Stubber for EncryptionAlgorithms
    class EncryptionAlgorithms
      def self.default(visited=[])
        return nil if visited.include?('EncryptionAlgorithms')
        visited = visited + ['EncryptionAlgorithms']
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

    # Operation Stubber for GetSigningProfile
    class GetSigningProfile
      def self.default(visited=[])
        {
          profile_name: 'profile_name',
          profile_version: 'profile_version',
          profile_version_arn: 'profile_version_arn',
          revocation_record: SigningProfileRevocationRecord.default(visited),
          signing_material: SigningMaterial.default(visited),
          platform_id: 'platform_id',
          platform_display_name: 'platform_display_name',
          signature_validity_period: SignatureValidityPeriod.default(visited),
          overrides: SigningPlatformOverrides.default(visited),
          signing_parameters: SigningParameters.default(visited),
          status: 'status',
          status_reason: 'status_reason',
          arn: 'arn',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['profileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data['profileVersionArn'] = stub[:profile_version_arn] unless stub[:profile_version_arn].nil?
        data['revocationRecord'] = Stubs::SigningProfileRevocationRecord.stub(stub[:revocation_record]) unless stub[:revocation_record].nil?
        data['signingMaterial'] = Stubs::SigningMaterial.stub(stub[:signing_material]) unless stub[:signing_material].nil?
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['platformDisplayName'] = stub[:platform_display_name] unless stub[:platform_display_name].nil?
        data['signatureValidityPeriod'] = Stubs::SignatureValidityPeriod.stub(stub[:signature_validity_period]) unless stub[:signature_validity_period].nil?
        data['overrides'] = Stubs::SigningPlatformOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['signingParameters'] = Stubs::SigningParameters.stub(stub[:signing_parameters]) unless stub[:signing_parameters].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Structure Stubber for SignatureValidityPeriod
    class SignatureValidityPeriod
      def self.default(visited=[])
        return nil if visited.include?('SignatureValidityPeriod')
        visited = visited + ['SignatureValidityPeriod']
        {
          value: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SignatureValidityPeriod.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for SigningProfileRevocationRecord
    class SigningProfileRevocationRecord
      def self.default(visited=[])
        return nil if visited.include?('SigningProfileRevocationRecord')
        visited = visited + ['SigningProfileRevocationRecord']
        {
          revocation_effective_from: Time.now,
          revoked_at: Time.now,
          revoked_by: 'revoked_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningProfileRevocationRecord.new
        data = {}
        data['revocationEffectiveFrom'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revocation_effective_from]).to_i unless stub[:revocation_effective_from].nil?
        data['revokedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revoked_at]).to_i unless stub[:revoked_at].nil?
        data['revokedBy'] = stub[:revoked_by] unless stub[:revoked_by].nil?
        data
      end
    end

    # Operation Stubber for ListProfilePermissions
    class ListProfilePermissions
      def self.default(visited=[])
        {
          revision_id: 'revision_id',
          policy_size_bytes: 1,
          permissions: Permissions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['policySizeBytes'] = stub[:policy_size_bytes] unless stub[:policy_size_bytes].nil?
        data['permissions'] = Stubs::Permissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Permissions
    class Permissions
      def self.default(visited=[])
        return nil if visited.include?('Permissions')
        visited = visited + ['Permissions']
        [
          Permission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Permission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Permission
    class Permission
      def self.default(visited=[])
        return nil if visited.include?('Permission')
        visited = visited + ['Permission']
        {
          action: 'action',
          principal: 'principal',
          statement_id: 'statement_id',
          profile_version: 'profile_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Permission.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['principal'] = stub[:principal] unless stub[:principal].nil?
        data['statementId'] = stub[:statement_id] unless stub[:statement_id].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data
      end
    end

    # Operation Stubber for ListSigningJobs
    class ListSigningJobs
      def self.default(visited=[])
        {
          jobs: SigningJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = Stubs::SigningJobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SigningJobs
    class SigningJobs
      def self.default(visited=[])
        return nil if visited.include?('SigningJobs')
        visited = visited + ['SigningJobs']
        [
          SigningJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SigningJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SigningJob
    class SigningJob
      def self.default(visited=[])
        return nil if visited.include?('SigningJob')
        visited = visited + ['SigningJob']
        {
          job_id: 'job_id',
          source: Source.default(visited),
          signed_object: SignedObject.default(visited),
          signing_material: SigningMaterial.default(visited),
          created_at: Time.now,
          status: 'status',
          is_revoked: false,
          profile_name: 'profile_name',
          profile_version: 'profile_version',
          platform_id: 'platform_id',
          platform_display_name: 'platform_display_name',
          signature_expires_at: Time.now,
          job_owner: 'job_owner',
          job_invoker: 'job_invoker',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningJob.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['source'] = Stubs::Source.stub(stub[:source]) unless stub[:source].nil?
        data['signedObject'] = Stubs::SignedObject.stub(stub[:signed_object]) unless stub[:signed_object].nil?
        data['signingMaterial'] = Stubs::SigningMaterial.stub(stub[:signing_material]) unless stub[:signing_material].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['isRevoked'] = stub[:is_revoked] unless stub[:is_revoked].nil?
        data['profileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['platformDisplayName'] = stub[:platform_display_name] unless stub[:platform_display_name].nil?
        data['signatureExpiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:signature_expires_at]).to_i unless stub[:signature_expires_at].nil?
        data['jobOwner'] = stub[:job_owner] unless stub[:job_owner].nil?
        data['jobInvoker'] = stub[:job_invoker] unless stub[:job_invoker].nil?
        data
      end
    end

    # Operation Stubber for ListSigningPlatforms
    class ListSigningPlatforms
      def self.default(visited=[])
        {
          platforms: SigningPlatforms.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['platforms'] = Stubs::SigningPlatforms.stub(stub[:platforms]) unless stub[:platforms].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SigningPlatforms
    class SigningPlatforms
      def self.default(visited=[])
        return nil if visited.include?('SigningPlatforms')
        visited = visited + ['SigningPlatforms']
        [
          SigningPlatform.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SigningPlatform.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SigningPlatform
    class SigningPlatform
      def self.default(visited=[])
        return nil if visited.include?('SigningPlatform')
        visited = visited + ['SigningPlatform']
        {
          platform_id: 'platform_id',
          display_name: 'display_name',
          partner: 'partner',
          target: 'target',
          category: 'category',
          signing_configuration: SigningConfiguration.default(visited),
          signing_image_format: SigningImageFormat.default(visited),
          max_size_in_mb: 1,
          revocation_supported: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningPlatform.new
        data = {}
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['partner'] = stub[:partner] unless stub[:partner].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data['signingConfiguration'] = Stubs::SigningConfiguration.stub(stub[:signing_configuration]) unless stub[:signing_configuration].nil?
        data['signingImageFormat'] = Stubs::SigningImageFormat.stub(stub[:signing_image_format]) unless stub[:signing_image_format].nil?
        data['maxSizeInMB'] = stub[:max_size_in_mb] unless stub[:max_size_in_mb].nil?
        data['revocationSupported'] = stub[:revocation_supported] unless stub[:revocation_supported].nil?
        data
      end
    end

    # Operation Stubber for ListSigningProfiles
    class ListSigningProfiles
      def self.default(visited=[])
        {
          profiles: SigningProfiles.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['profiles'] = Stubs::SigningProfiles.stub(stub[:profiles]) unless stub[:profiles].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SigningProfiles
    class SigningProfiles
      def self.default(visited=[])
        return nil if visited.include?('SigningProfiles')
        visited = visited + ['SigningProfiles']
        [
          SigningProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SigningProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SigningProfile
    class SigningProfile
      def self.default(visited=[])
        return nil if visited.include?('SigningProfile')
        visited = visited + ['SigningProfile']
        {
          profile_name: 'profile_name',
          profile_version: 'profile_version',
          profile_version_arn: 'profile_version_arn',
          signing_material: SigningMaterial.default(visited),
          signature_validity_period: SignatureValidityPeriod.default(visited),
          platform_id: 'platform_id',
          platform_display_name: 'platform_display_name',
          signing_parameters: SigningParameters.default(visited),
          status: 'status',
          arn: 'arn',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SigningProfile.new
        data = {}
        data['profileName'] = stub[:profile_name] unless stub[:profile_name].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data['profileVersionArn'] = stub[:profile_version_arn] unless stub[:profile_version_arn].nil?
        data['signingMaterial'] = Stubs::SigningMaterial.stub(stub[:signing_material]) unless stub[:signing_material].nil?
        data['signatureValidityPeriod'] = Stubs::SignatureValidityPeriod.stub(stub[:signature_validity_period]) unless stub[:signature_validity_period].nil?
        data['platformId'] = stub[:platform_id] unless stub[:platform_id].nil?
        data['platformDisplayName'] = stub[:platform_display_name] unless stub[:platform_display_name].nil?
        data['signingParameters'] = Stubs::SigningParameters.stub(stub[:signing_parameters]) unless stub[:signing_parameters].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for PutSigningProfile
    class PutSigningProfile
      def self.default(visited=[])
        {
          arn: 'arn',
          profile_version: 'profile_version',
          profile_version_arn: 'profile_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['profileVersion'] = stub[:profile_version] unless stub[:profile_version].nil?
        data['profileVersionArn'] = stub[:profile_version_arn] unless stub[:profile_version_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveProfilePermission
    class RemoveProfilePermission
      def self.default(visited=[])
        {
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RevokeSignature
    class RevokeSignature
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeSigningProfile
    class RevokeSigningProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSigningJob
    class StartSigningJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_owner: 'job_owner',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobOwner'] = stub[:job_owner] unless stub[:job_owner].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
  end
end
