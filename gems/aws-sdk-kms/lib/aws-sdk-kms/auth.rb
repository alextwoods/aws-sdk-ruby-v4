# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      HTTPCustomAuthScheme.new
    ].freeze

    class Resolver

      def resolve(auth_params)
        options = []
        case auth_params.operation_name
        when :cancel_key_deletion
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :connect_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :decrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_imported_key_material
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_custom_key_stores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disable_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disable_key_rotation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disconnect_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :enable_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :enable_key_rotation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :encrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_data_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_data_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_data_key_pair_without_plaintext
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_data_key_without_plaintext
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_mac
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :generate_random
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_key_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_key_rotation_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_parameters_for_import
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_public_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :import_key_material
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_aliases
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_grants
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_key_policies
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_keys
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_resource_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_retirable_grants
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_key_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :re_encrypt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :replicate_key
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :retire_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :revoke_grant
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :schedule_key_deletion
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :sign
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_alias
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_custom_key_store
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_key_description
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_primary_region
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :verify
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :verify_mac
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        end
      end

    end
  end
end
