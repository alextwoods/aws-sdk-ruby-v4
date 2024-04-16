# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
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
        when :batch_execute_statement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :batch_get_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :batch_write_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :create_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :create_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :create_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :delete_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :delete_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :delete_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_continuous_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_export
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_global_table_settings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_import
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_limits
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_table_replica_auto_scaling
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :describe_time_to_live
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :disable_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :enable_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :execute_statement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :execute_transaction
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :export_table_to_point_in_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :get_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :import_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_exports
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_global_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_imports
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :list_tags_of_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :put_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :query
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :restore_table_from_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :restore_table_to_point_in_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :scan
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :transact_get_items
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :transact_write_items
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_continuous_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_global_table_settings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_table_replica_auto_scaling
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        when :update_time_to_live
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'dynamodb' })
        else nil
        end
        options
      end

    end
  end
end
