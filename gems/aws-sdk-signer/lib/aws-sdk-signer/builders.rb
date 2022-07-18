# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Signer
  module Builders

    # Operation Builder for AddProfilePermission
    class AddProfilePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s/permissions',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['profileVersion'] = input[:profile_version] unless input[:profile_version].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['statementId'] = input[:statement_id] unless input[:statement_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelSigningProfile
    class CancelSigningProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSigningJob
    class DescribeSigningJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSigningPlatform
    class GetSigningPlatform
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:platform_id].to_s.empty?
          raise ArgumentError, "HTTP label :platform_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-platforms/%<platformId>s',
            platformId: Hearth::HTTP.uri_escape(input[:platform_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSigningProfile
    class GetSigningProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['profileOwner'] = input[:profile_owner].to_s unless input[:profile_owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfilePermissions
    class ListProfilePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s/permissions',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSigningJobs
    class ListSigningJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/signing-jobs')
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['platformId'] = input[:platform_id].to_s unless input[:platform_id].nil?
        params['requestedBy'] = input[:requested_by].to_s unless input[:requested_by].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['isRevoked'] = input[:is_revoked].to_s unless input[:is_revoked].nil?
        params['signatureExpiresBefore'] = Hearth::TimeHelper.to_date_time(input[:signature_expires_before]) unless input[:signature_expires_before].nil?
        params['signatureExpiresAfter'] = Hearth::TimeHelper.to_date_time(input[:signature_expires_after]) unless input[:signature_expires_after].nil?
        params['jobInvoker'] = input[:job_invoker].to_s unless input[:job_invoker].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSigningPlatforms
    class ListSigningPlatforms
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/signing-platforms')
        params = Hearth::Query::ParamList.new
        params['category'] = input[:category].to_s unless input[:category].nil?
        params['partner'] = input[:partner].to_s unless input[:partner].nil?
        params['target'] = input[:target].to_s unless input[:target].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSigningProfiles
    class ListSigningProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/signing-profiles')
        params = Hearth::Query::ParamList.new
        params['includeCanceled'] = input[:include_canceled].to_s unless input[:include_canceled].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['platformId'] = input[:platform_id].to_s unless input[:platform_id].nil?
        unless input[:statuses].nil? || input[:statuses].empty?
          params['statuses'] = input[:statuses].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for Statuses
    class Statuses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
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

    # Operation Builder for PutSigningProfile
    class PutSigningProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['signingMaterial'] = Builders::SigningMaterial.build(input[:signing_material]) unless input[:signing_material].nil?
        data['signatureValidityPeriod'] = Builders::SignatureValidityPeriod.build(input[:signature_validity_period]) unless input[:signature_validity_period].nil?
        data['platformId'] = input[:platform_id] unless input[:platform_id].nil?
        data['overrides'] = Builders::SigningPlatformOverrides.build(input[:overrides]) unless input[:overrides].nil?
        data['signingParameters'] = Builders::SigningParameters.build(input[:signing_parameters]) unless input[:signing_parameters].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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

    # Map Builder for SigningParameters
    class SigningParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SigningPlatformOverrides
    class SigningPlatformOverrides
      def self.build(input)
        data = {}
        data['signingConfiguration'] = Builders::SigningConfigurationOverrides.build(input[:signing_configuration]) unless input[:signing_configuration].nil?
        data['signingImageFormat'] = input[:signing_image_format] unless input[:signing_image_format].nil?
        data
      end
    end

    # Structure Builder for SigningConfigurationOverrides
    class SigningConfigurationOverrides
      def self.build(input)
        data = {}
        data['encryptionAlgorithm'] = input[:encryption_algorithm] unless input[:encryption_algorithm].nil?
        data['hashAlgorithm'] = input[:hash_algorithm] unless input[:hash_algorithm].nil?
        data
      end
    end

    # Structure Builder for SignatureValidityPeriod
    class SignatureValidityPeriod
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for SigningMaterial
    class SigningMaterial
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data
      end
    end

    # Operation Builder for RemoveProfilePermission
    class RemoveProfilePermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        if input[:statement_id].to_s.empty?
          raise ArgumentError, "HTTP label :statement_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s/permissions/%<statementId>s',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s),
            statementId: Hearth::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['revisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RevokeSignature
    class RevokeSignature
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-jobs/%<jobId>s/revoke',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobOwner'] = input[:job_owner] unless input[:job_owner].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeSigningProfile
    class RevokeSigningProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/signing-profiles/%<profileName>s/revoke',
            profileName: Hearth::HTTP.uri_escape(input[:profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['profileVersion'] = input[:profile_version] unless input[:profile_version].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['effectiveTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:effective_time]).to_i unless input[:effective_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSigningJob
    class StartSigningJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/signing-jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['source'] = Builders::Source.build(input[:source]) unless input[:source].nil?
        data['destination'] = Builders::Destination.build(input[:destination]) unless input[:destination].nil?
        data['profileName'] = input[:profile_name] unless input[:profile_name].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['profileOwner'] = input[:profile_owner] unless input[:profile_owner].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(input)
        data = {}
        data['s3'] = Builders::S3Destination.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3Destination
    class S3Destination
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for Source
    class Source
      def self.build(input)
        data = {}
        data['s3'] = Builders::S3Source.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3Source
    class S3Source
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
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
  end
end
