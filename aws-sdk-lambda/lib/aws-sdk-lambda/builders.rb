# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Lambda
  module Builders

    # Operation Builder for AddLayerVersionPermission
    class AddLayerVersionPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Seahorse::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        http_req.append_query_param('RevisionId', input[:revision_id].to_s) unless input[:revision_id].nil?

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for AddPermission
    class AddPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['SourceAccount'] = input[:source_account] unless input[:source_account].nil?
        data['EventSourceToken'] = input[:event_source_token] unless input[:event_source_token].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:member_name] unless input[:member_name].nil?
        data['FunctionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingConfig'] = Builders::AliasRoutingConfiguration.build(input[:routing_config]) unless input[:routing_config].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Builder for AliasRoutingConfiguration
    class AliasRoutingConfiguration
      def self.build(input)
        data = {}
        data['AdditionalVersionWeights'] = Builders::AdditionalVersionWeights.build(input[:additional_version_weights]) unless input[:additional_version_weights].nil?
        data
      end
    end

    # Map Builder for AdditionalVersionWeights
    class AdditionalVersionWeights
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Seahorse::NumberHelper.serialize(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCodeSigningConfig
    class CreateCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-04-22/code-signing-configs')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['AllowedPublishers'] = Builders::AllowedPublishers.build(input[:allowed_publishers]) unless input[:allowed_publishers].nil?
        data['CodeSigningPolicies'] = Builders::CodeSigningPolicies.build(input[:code_signing_policies]) unless input[:code_signing_policies].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Builder for CodeSigningPolicies
    class CodeSigningPolicies
      def self.build(input)
        data = {}
        data['UntrustedArtifactOnDeployment'] = input[:untrusted_artifact_on_deployment] unless input[:untrusted_artifact_on_deployment].nil?
        data
      end
    end

    # Structure Builder for AllowedPublishers
    class AllowedPublishers
      def self.build(input)
        data = {}
        data['SigningProfileVersionArns'] = Builders::SigningProfileVersionArns.build(input[:signing_profile_version_arns]) unless input[:signing_profile_version_arns].nil?
        data
      end
    end

    # List Builder for SigningProfileVersionArns
    class SigningProfileVersionArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Operation Builder for CreateEventSourceMapping
    class CreateEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-03-31/event-source-mappings')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = input[:maximum_batching_window_in_seconds] unless input[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = input[:parallelization_factor] unless input[:parallelization_factor].nil?
        data['StartingPosition'] = input[:starting_position] unless input[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_date_time(input[:starting_position_timestamp]) unless input[:starting_position_timestamp].nil?
        data['DestinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['MaximumRecordAgeInSeconds'] = input[:maximum_record_age_in_seconds] unless input[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = input[:bisect_batch_on_function_error] unless input[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = input[:tumbling_window_in_seconds] unless input[:tumbling_window_in_seconds].nil?
        data['Topics'] = Builders::Topics.build(input[:topics]) unless input[:topics].nil?
        data['Queues'] = Builders::Queues.build(input[:queues]) unless input[:queues].nil?
        data['SourceAccessConfigurations'] = Builders::SourceAccessConfigurations.build(input[:source_access_configurations]) unless input[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Builders::SelfManagedEventSource.build(input[:self_managed_event_source]) unless input[:self_managed_event_source].nil?
        data['FunctionResponseTypes'] = Builders::FunctionResponseTypeList.build(input[:function_response_types]) unless input[:function_response_types].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Builder for FunctionResponseTypeList
    class FunctionResponseTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Structure Builder for SelfManagedEventSource
    class SelfManagedEventSource
      def self.build(input)
        data = {}
        data['Endpoints'] = Builders::Endpoints.build(input[:endpoints]) unless input[:endpoints].nil?
        data
      end
    end

    # Map Builder for Endpoints
    class Endpoints
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::EndpointLists.build(value)
        end
        data
      end
    end

    # List Builder for EndpointLists
    class EndpointLists
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # List Builder for SourceAccessConfigurations
    class SourceAccessConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SourceAccessConfiguration.build(element)
        end
        data
      end
    end

    # Structure Builder for SourceAccessConfiguration
    class SourceAccessConfiguration
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['URI'] = input[:uri] unless input[:uri].nil?
        data
      end
    end

    # List Builder for Queues
    class Queues
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # List Builder for Topics
    class Topics
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Structure Builder for DestinationConfig
    class DestinationConfig
      def self.build(input)
        data = {}
        data['OnSuccess'] = Builders::OnSuccess.build(input[:on_success]) unless input[:on_success].nil?
        data['OnFailure'] = Builders::OnFailure.build(input[:on_failure]) unless input[:on_failure].nil?
        data
      end
    end

    # Structure Builder for OnFailure
    class OnFailure
      def self.build(input)
        data = {}
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for OnSuccess
    class OnSuccess
      def self.build(input)
        data = {}
        data['Destination'] = input[:destination] unless input[:destination].nil?
        data
      end
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-03-31/functions')

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data['Code'] = Builders::FunctionCode.build(input[:code]) unless input[:code].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['Publish'] = input[:publish] unless input[:publish].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['PackageType'] = input[:package_type] unless input[:package_type].nil?
        data['DeadLetterConfig'] = Builders::DeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['Environment'] = Builders::Environment.build(input[:environment]) unless input[:environment].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['TracingConfig'] = Builders::TracingConfig.build(input[:tracing_config]) unless input[:tracing_config].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Layers'] = Builders::LayerList.build(input[:layers]) unless input[:layers].nil?
        data['FileSystemConfigs'] = Builders::FileSystemConfigList.build(input[:file_system_configs]) unless input[:file_system_configs].nil?
        data['ImageConfig'] = Builders::ImageConfig.build(input[:image_config]) unless input[:image_config].nil?
        data['CodeSigningConfigArn'] = input[:code_signing_config_arn] unless input[:code_signing_config_arn].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Builder for ImageConfig
    class ImageConfig
      def self.build(input)
        data = {}
        data['EntryPoint'] = Builders::StringList.build(input[:entry_point]) unless input[:entry_point].nil?
        data['Command'] = Builders::StringList.build(input[:command]) unless input[:command].nil?
        data['WorkingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # List Builder for FileSystemConfigList
    class FileSystemConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FileSystemConfig.build(element)
        end
        data
      end
    end

    # Structure Builder for FileSystemConfig
    class FileSystemConfig
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['LocalMountPath'] = input[:local_mount_path] unless input[:local_mount_path].nil?
        data
      end
    end

    # List Builder for LayerList
    class LayerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    # Structure Builder for TracingConfig
    class TracingConfig
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data
      end
    end

    # Structure Builder for Environment
    class Environment
      def self.build(input)
        data = {}
        data['Variables'] = Builders::EnvironmentVariables.build(input[:variables]) unless input[:variables].nil?
        data
      end
    end

    # Map Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    # Structure Builder for DeadLetterConfig
    class DeadLetterConfig
      def self.build(input)
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['SubnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Structure Builder for FunctionCode
    class FunctionCode
      def self.build(input)
        data = {}
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data
      end
    end

    # Operation Builder for DeleteAlias
    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s),
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteCodeSigningConfig
    class DeleteCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Seahorse::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteEventSourceMapping
    class DeleteEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Seahorse::HTTP.uri_escape(input[:uuid].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for DeleteFunctionCodeSigningConfig
    class DeleteFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteFunctionConcurrency
    class DeleteFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2017-10-31/functions/%<FunctionName>s/concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteFunctionEventInvokeConfig
    class DeleteFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for DeleteLayerVersion
    class DeleteLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Seahorse::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
      end
    end

    # Operation Builder for DeleteProvisionedConcurrencyConfig
    class DeleteProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for GetAccountSettings
    class GetAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2016-08-19/account-settings')
      end
    end

    # Operation Builder for GetAlias
    class GetAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s),
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )
      end
    end

    # Operation Builder for GetCodeSigningConfig
    class GetCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Seahorse::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
      end
    end

    # Operation Builder for GetEventSourceMapping
    class GetEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Seahorse::HTTP.uri_escape(input[:uuid].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFunction
    class GetFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for GetFunctionCodeSigningConfig
    class GetFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFunctionConcurrency
    class GetFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
      end
    end

    # Operation Builder for GetFunctionConfiguration
    class GetFunctionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/configuration',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for GetFunctionEventInvokeConfig
    class GetFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for GetLayerVersion
    class GetLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Seahorse::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
      end
    end

    # Operation Builder for GetLayerVersionByArn
    class GetLayerVersionByArn
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('find=LayerVersion').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2018-10-31/layers')
        http_req.append_query_param('Arn', input[:arn].to_s) unless input[:arn].nil?
      end
    end

    # Operation Builder for GetLayerVersionPolicy
    class GetLayerVersionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Seahorse::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for GetProvisionedConcurrencyConfig
    class GetProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
      end
    end

    # Operation Builder for Invoke
    class Invoke
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/invocations',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:payload] || '')
        http_req.headers['X-Amz-Invocation-Type'] = input[:invocation_type] unless input[:invocation_type].nil? || input[:invocation_type].empty?
        http_req.headers['X-Amz-Log-Type'] = input[:log_type] unless input[:log_type].nil? || input[:log_type].empty?
        http_req.headers['X-Amz-Client-Context'] = input[:client_context] unless input[:client_context].nil? || input[:client_context].empty?
      end
    end

    # Operation Builder for InvokeAsync
    class InvokeAsync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2014-11-13/functions/%<FunctionName>s/invoke-async',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:invoke_args] || '')
      end
    end

    # Operation Builder for ListAliases
    class ListAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('FunctionVersion', input[:function_version].to_s) unless input[:function_version].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListCodeSigningConfigs
    class ListCodeSigningConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-04-22/code-signing-configs')
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListEventSourceMappings
    class ListEventSourceMappings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-03-31/event-source-mappings')
        http_req.append_query_param('EventSourceArn', input[:event_source_arn].to_s) unless input[:event_source_arn].nil?
        http_req.append_query_param('FunctionName', input[:function_name].to_s) unless input[:function_name].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFunctionEventInvokeConfigs
    class ListFunctionEventInvokeConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config/list',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFunctions
    class ListFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-03-31/functions')
        http_req.append_query_param('MasterRegion', input[:master_region].to_s) unless input[:master_region].nil?
        http_req.append_query_param('FunctionVersion', input[:function_version].to_s) unless input[:function_version].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListFunctionsByCodeSigningConfig
    class ListFunctionsByCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s/functions',
            CodeSigningConfigArn: Seahorse::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListLayerVersions
    class ListLayerVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s)
          )
        )
        http_req.append_query_param('CompatibleRuntime', input[:compatible_runtime].to_s) unless input[:compatible_runtime].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListLayers
    class ListLayers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2018-10-31/layers')
        http_req.append_query_param('CompatibleRuntime', input[:compatible_runtime].to_s) unless input[:compatible_runtime].nil?
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListProvisionedConcurrencyConfigs
    class ListProvisionedConcurrencyConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('List=ALL').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Seahorse::HTTP.uri_escape(input[:resource].to_s)
          )
        )
      end
    end

    # Operation Builder for ListVersionsByFunction
    class ListVersionsByFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/versions',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Marker', input[:marker].to_s) unless input[:marker].nil?
        http_req.append_query_param('MaxItems', input[:max_items].to_s) unless input[:max_items].nil?
      end
    end

    # Operation Builder for PublishLayerVersion
    class PublishLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Content'] = Builders::LayerVersionContentInput.build(input[:content]) unless input[:content].nil?
        data['CompatibleRuntimes'] = Builders::CompatibleRuntimes.build(input[:compatible_runtimes]) unless input[:compatible_runtimes].nil?
        data['LicenseInfo'] = input[:license_info] unless input[:license_info].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Builder for CompatibleRuntimes
    class CompatibleRuntimes
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Structure Builder for LayerVersionContentInput
    class LayerVersionContentInput
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data
      end
    end

    # Operation Builder for PublishVersion
    class PublishVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/versions',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CodeSha256'] = input[:code_sha256] unless input[:code_sha256].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionCodeSigningConfig
    class PutFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CodeSigningConfigArn'] = input[:code_signing_config_arn] unless input[:code_signing_config_arn].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionConcurrency
    class PutFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2017-10-31/functions/%<FunctionName>s/concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReservedConcurrentExecutions'] = input[:reserved_concurrent_executions] unless input[:reserved_concurrent_executions].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionEventInvokeConfig
    class PutFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = input[:maximum_event_age_in_seconds] unless input[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for PutProvisionedConcurrencyConfig
    class PutProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProvisionedConcurrentExecutions'] = input[:provisioned_concurrent_executions] unless input[:provisioned_concurrent_executions].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveLayerVersionPermission
    class RemoveLayerVersionPermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy/%<StatementId>s',
            LayerName: Seahorse::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Seahorse::HTTP.uri_escape(input[:version_number].to_s),
            StatementId: Seahorse::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        http_req.append_query_param('RevisionId', input[:revision_id].to_s) unless input[:revision_id].nil?
      end
    end

    # Operation Builder for RemovePermission
    class RemovePermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy/%<StatementId>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s),
            StatementId: Seahorse::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?
        http_req.append_query_param('RevisionId', input[:revision_id].to_s) unless input[:revision_id].nil?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Seahorse::HTTP.uri_escape(input[:resource].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Seahorse::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          input[:tag_keys].each do |value|
            http_req.append_query_param('tagKeys', value.to_s) unless value.nil?
          end
        end
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element
        end
        data
      end
    end

    # Operation Builder for UpdateAlias
    class UpdateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s),
            Name: Seahorse::HTTP.uri_escape(input[:member_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingConfig'] = Builders::AliasRoutingConfiguration.build(input[:routing_config]) unless input[:routing_config].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCodeSigningConfig
    class UpdateCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Seahorse::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['AllowedPublishers'] = Builders::AllowedPublishers.build(input[:allowed_publishers]) unless input[:allowed_publishers].nil?
        data['CodeSigningPolicies'] = Builders::CodeSigningPolicies.build(input[:code_signing_policies]) unless input[:code_signing_policies].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventSourceMapping
    class UpdateEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Seahorse::HTTP.uri_escape(input[:uuid].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = input[:maximum_batching_window_in_seconds] unless input[:maximum_batching_window_in_seconds].nil?
        data['DestinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['MaximumRecordAgeInSeconds'] = input[:maximum_record_age_in_seconds] unless input[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = input[:bisect_batch_on_function_error] unless input[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['ParallelizationFactor'] = input[:parallelization_factor] unless input[:parallelization_factor].nil?
        data['SourceAccessConfigurations'] = Builders::SourceAccessConfigurations.build(input[:source_access_configurations]) unless input[:source_access_configurations].nil?
        data['TumblingWindowInSeconds'] = input[:tumbling_window_in_seconds] unless input[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Builders::FunctionResponseTypeList.build(input[:function_response_types]) unless input[:function_response_types].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionCode
    class UpdateFunctionCode
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/code',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['Publish'] = input[:publish] unless input[:publish].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionConfiguration
    class UpdateFunctionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/configuration',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Role'] = input[:role] unless input[:role].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Environment'] = Builders::Environment.build(input[:environment]) unless input[:environment].nil?
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['DeadLetterConfig'] = Builders::DeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['TracingConfig'] = Builders::TracingConfig.build(input[:tracing_config]) unless input[:tracing_config].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['Layers'] = Builders::LayerList.build(input[:layers]) unless input[:layers].nil?
        data['FileSystemConfigs'] = Builders::FileSystemConfigList.build(input[:file_system_configs]) unless input[:file_system_configs].nil?
        data['ImageConfig'] = Builders::ImageConfig.build(input[:image_config]) unless input[:image_config].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionEventInvokeConfig
    class UpdateFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Seahorse::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        http_req.append_query_param('Qualifier', input[:qualifier].to_s) unless input[:qualifier].nil?

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = input[:maximum_event_age_in_seconds] unless input[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        http_req.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end
  end
end
