# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
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
        when :cancel_key_deletion
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :connect_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :create_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :create_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :create_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :create_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :decrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :delete_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :delete_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :delete_imported_key_material
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :describe_custom_key_stores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :describe_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :disable_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :disable_key_rotation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :disconnect_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :enable_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :enable_key_rotation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :encrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_data_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_data_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_data_key_pair_without_plaintext
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_data_key_without_plaintext
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_mac
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :generate_random
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :get_key_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :get_key_rotation_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :get_parameters_for_import
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :get_public_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :import_key_material
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_aliases
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_grants
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_key_policies
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_keys
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_resource_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :list_retirable_grants
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :put_key_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :re_encrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :replicate_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :retire_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :revoke_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :schedule_key_deletion
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :sign
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :update_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :update_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :update_key_description
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :update_primary_region
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :verify
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        when :verify_mac
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'kms', region: params.region })
        else nil
        end
        options
      end

    end
  end
end
