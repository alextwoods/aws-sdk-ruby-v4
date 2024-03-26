# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      String.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :batch_execute_statement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :batch_get_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :batch_write_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :create_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_continuous_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_export
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_global_table_settings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_import
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_limits
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_table_replica_auto_scaling
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_time_to_live
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disable_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :enable_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :execute_statement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :execute_transaction
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :export_table_to_point_in_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :import_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_exports
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_global_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_imports
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_tags_of_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :query
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :restore_table_from_backup
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :restore_table_to_point_in_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :scan
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :transact_get_items
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :transact_write_items
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_continuous_backups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_contributor_insights
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_global_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_global_table_settings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_item
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_kinesis_streaming_destination
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_table_replica_auto_scaling
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :update_time_to_live
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        else nil
        end
        options
      end

    end
  end
end
