# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Auth
    Params = Struct.new(:operation_name, :region, keyword_init: true)

    SCHEMES = [
      AWS::SDK::Core::AuthSchemes::SigV4.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :abort_multipart_upload
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :complete_multipart_upload
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :copy_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :create_bucket
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :create_multipart_upload
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :create_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_analytics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_cors
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_encryption
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_intelligent_tiering_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_inventory_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_lifecycle
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_metrics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_ownership_controls
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_replication
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_bucket_website
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_objects
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_object_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :delete_public_access_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_accelerate_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_analytics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_cors
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_encryption
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_intelligent_tiering_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_inventory_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_lifecycle_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_location
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_logging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_metrics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_notification_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_ownership_controls
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_policy_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_replication
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_request_payment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_versioning
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_bucket_website
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_legal_hold
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_lock_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_retention
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_object_torrent
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :get_public_access_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :head_bucket
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :head_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_bucket_analytics_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_bucket_intelligent_tiering_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_bucket_inventory_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_bucket_metrics_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_buckets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_directory_buckets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_multipart_uploads
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_objects
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_objects_v2
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_object_versions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :list_parts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_accelerate_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_analytics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_cors
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_encryption
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_intelligent_tiering_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_inventory_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_lifecycle_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_logging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_metrics_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_notification_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_ownership_controls
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_replication
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_request_payment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_versioning
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_bucket_website
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object_legal_hold
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object_lock_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object_retention
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_object_tagging
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :put_public_access_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :restore_object
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :select_object_content
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :upload_part
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :upload_part_copy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        when :write_get_object_response
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 's3', region: params.region })
        else nil
        end
        options
      end

    end
  end
end
