# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
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
        when :add_tags_to_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :create_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :decrease_stream_retention_period
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :delete_resource_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :delete_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :deregister_stream_consumer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :describe_limits
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :describe_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :describe_stream_consumer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :describe_stream_summary
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :disable_enhanced_monitoring
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :enable_enhanced_monitoring
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :get_records
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :get_resource_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :get_shard_iterator
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :increase_stream_retention_period
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :list_shards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :list_stream_consumers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :list_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :list_tags_for_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :merge_shards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :put_record
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :put_records
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :put_resource_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :register_stream_consumer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :remove_tags_from_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :split_shard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :start_stream_encryption
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :stop_stream_encryption
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :subscribe_to_shard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :update_shard_count
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        when :update_stream_mode
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'kinesis' })
        else nil
        end
        options
      end

    end
  end
end
