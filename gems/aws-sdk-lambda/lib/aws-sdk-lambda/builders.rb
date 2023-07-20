# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Lambda
  # @api private
  module Builders

    # Operation Builder for AddLayerVersionPermission
    class AddLayerVersionPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['RevisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddPermission
    class AddPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatementId'] = input[:statement_id] unless input[:statement_id].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['SourceAccount'] = input[:source_account] unless input[:source_account].nil?
        data['EventSourceToken'] = input[:event_source_token] unless input[:event_source_token].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['PrincipalOrgID'] = input[:principal_org_id] unless input[:principal_org_id].nil?
        data['FunctionUrlAuthType'] = input[:function_url_auth_type] unless input[:function_url_auth_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AdditionalVersionWeights
    class AdditionalVersionWeights
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AliasRoutingConfiguration
    class AliasRoutingConfiguration
      def self.build(input)
        data = {}
        data['AdditionalVersionWeights'] = AdditionalVersionWeights.build(input[:additional_version_weights]) unless input[:additional_version_weights].nil?
        data
      end
    end

    # List Builder for AllowMethodsList
    class AllowMethodsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AllowOriginsList
    class AllowOriginsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AllowedPublishers
    class AllowedPublishers
      def self.build(input)
        data = {}
        data['SigningProfileVersionArns'] = SigningProfileVersionArns.build(input[:signing_profile_version_arns]) unless input[:signing_profile_version_arns].nil?
        data
      end
    end

    # Structure Builder for AmazonManagedKafkaEventSourceConfig
    class AmazonManagedKafkaEventSourceConfig
      def self.build(input)
        data = {}
        data['ConsumerGroupId'] = input[:consumer_group_id] unless input[:consumer_group_id].nil?
        data
      end
    end

    # List Builder for ArchitecturesList
    class ArchitecturesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # List Builder for CompatibleArchitectures
    class CompatibleArchitectures
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CompatibleRuntimes
    class CompatibleRuntimes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Cors
    class Cors
      def self.build(input)
        data = {}
        data['AllowCredentials'] = input[:allow_credentials] unless input[:allow_credentials].nil?
        data['AllowHeaders'] = HeadersList.build(input[:allow_headers]) unless input[:allow_headers].nil?
        data['AllowMethods'] = AllowMethodsList.build(input[:allow_methods]) unless input[:allow_methods].nil?
        data['AllowOrigins'] = AllowOriginsList.build(input[:allow_origins]) unless input[:allow_origins].nil?
        data['ExposeHeaders'] = HeadersList.build(input[:expose_headers]) unless input[:expose_headers].nil?
        data['MaxAge'] = input[:max_age] unless input[:max_age].nil?
        data
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['FunctionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingConfig'] = AliasRoutingConfiguration.build(input[:routing_config]) unless input[:routing_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCodeSigningConfig
    class CreateCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-04-22/code-signing-configs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['AllowedPublishers'] = AllowedPublishers.build(input[:allowed_publishers]) unless input[:allowed_publishers].nil?
        data['CodeSigningPolicies'] = CodeSigningPolicies.build(input[:code_signing_policies]) unless input[:code_signing_policies].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEventSourceMapping
    class CreateEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-03-31/event-source-mappings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventSourceArn'] = input[:event_source_arn] unless input[:event_source_arn].nil?
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['FilterCriteria'] = FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['MaximumBatchingWindowInSeconds'] = input[:maximum_batching_window_in_seconds] unless input[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = input[:parallelization_factor] unless input[:parallelization_factor].nil?
        data['StartingPosition'] = input[:starting_position] unless input[:starting_position].nil?
        data['StartingPositionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:starting_position_timestamp]).to_i unless input[:starting_position_timestamp].nil?
        data['DestinationConfig'] = DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['MaximumRecordAgeInSeconds'] = input[:maximum_record_age_in_seconds] unless input[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = input[:bisect_batch_on_function_error] unless input[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = input[:tumbling_window_in_seconds] unless input[:tumbling_window_in_seconds].nil?
        data['Topics'] = Topics.build(input[:topics]) unless input[:topics].nil?
        data['Queues'] = Queues.build(input[:queues]) unless input[:queues].nil?
        data['SourceAccessConfigurations'] = SourceAccessConfigurations.build(input[:source_access_configurations]) unless input[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = SelfManagedEventSource.build(input[:self_managed_event_source]) unless input[:self_managed_event_source].nil?
        data['FunctionResponseTypes'] = FunctionResponseTypeList.build(input[:function_response_types]) unless input[:function_response_types].nil?
        data['AmazonManagedKafkaEventSourceConfig'] = AmazonManagedKafkaEventSourceConfig.build(input[:amazon_managed_kafka_event_source_config]) unless input[:amazon_managed_kafka_event_source_config].nil?
        data['SelfManagedKafkaEventSourceConfig'] = SelfManagedKafkaEventSourceConfig.build(input[:self_managed_kafka_event_source_config]) unless input[:self_managed_kafka_event_source_config].nil?
        data['ScalingConfig'] = ScalingConfig.build(input[:scaling_config]) unless input[:scaling_config].nil?
        data['DocumentDBEventSourceConfig'] = DocumentDBEventSourceConfig.build(input[:document_db_event_source_config]) unless input[:document_db_event_source_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-03-31/functions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data['Code'] = FunctionCode.build(input[:code]) unless input[:code].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['Publish'] = input[:publish] unless input[:publish].nil?
        data['VpcConfig'] = VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['PackageType'] = input[:package_type] unless input[:package_type].nil?
        data['DeadLetterConfig'] = DeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['Environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['TracingConfig'] = TracingConfig.build(input[:tracing_config]) unless input[:tracing_config].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['Layers'] = LayerList.build(input[:layers]) unless input[:layers].nil?
        data['FileSystemConfigs'] = FileSystemConfigList.build(input[:file_system_configs]) unless input[:file_system_configs].nil?
        data['ImageConfig'] = ImageConfig.build(input[:image_config]) unless input[:image_config].nil?
        data['CodeSigningConfigArn'] = input[:code_signing_config_arn] unless input[:code_signing_config_arn].nil?
        data['Architectures'] = ArchitecturesList.build(input[:architectures]) unless input[:architectures].nil?
        data['EphemeralStorage'] = EphemeralStorage.build(input[:ephemeral_storage]) unless input[:ephemeral_storage].nil?
        data['SnapStart'] = SnapStart.build(input[:snap_start]) unless input[:snap_start].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFunctionUrlConfig
    class CreateFunctionUrlConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-10-31/functions/%<FunctionName>s/url',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AuthType'] = input[:auth_type] unless input[:auth_type].nil?
        data['Cors'] = Cors.build(input[:cors]) unless input[:cors].nil?
        data['InvokeMode'] = input[:invoke_mode] unless input[:invoke_mode].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DeleteAlias
    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteCodeSigningConfig
    class DeleteCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:code_signing_config_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_signing_config_arn cannot be empty."
        end
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Hearth::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteEventSourceMapping
    class DeleteEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:uuid].to_s.empty?
          raise ArgumentError, "HTTP label :uuid cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Hearth::HTTP.uri_escape(input[:uuid].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteFunctionCodeSigningConfig
    class DeleteFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteFunctionConcurrency
    class DeleteFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2017-10-31/functions/%<FunctionName>s/concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteFunctionEventInvokeConfig
    class DeleteFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteFunctionUrlConfig
    class DeleteFunctionUrlConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-10-31/functions/%<FunctionName>s/url',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteLayerVersion
    class DeleteLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for DeleteProvisionedConcurrencyConfig
    class DeleteProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Structure Builder for DestinationConfig
    class DestinationConfig
      def self.build(input)
        data = {}
        data['OnSuccess'] = OnSuccess.build(input[:on_success]) unless input[:on_success].nil?
        data['OnFailure'] = OnFailure.build(input[:on_failure]) unless input[:on_failure].nil?
        data
      end
    end

    # Structure Builder for DocumentDBEventSourceConfig
    class DocumentDBEventSourceConfig
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['CollectionName'] = input[:collection_name] unless input[:collection_name].nil?
        data['FullDocument'] = input[:full_document] unless input[:full_document].nil?
        data
      end
    end

    # List Builder for EndpointLists
    class EndpointLists
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for Endpoints
    class Endpoints
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = EndpointLists.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Environment
    class Environment
      def self.build(input)
        data = {}
        data['Variables'] = EnvironmentVariables.build(input[:variables]) unless input[:variables].nil?
        data
      end
    end

    # Map Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for EphemeralStorage
    class EphemeralStorage
      def self.build(input)
        data = {}
        data['Size'] = input[:size] unless input[:size].nil?
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

    # List Builder for FileSystemConfigList
    class FileSystemConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << FileSystemConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data
      end
    end

    # Structure Builder for FilterCriteria
    class FilterCriteria
      def self.build(input)
        data = {}
        data['Filters'] = FilterList.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FunctionCode
    class FunctionCode
      def self.build(input)
        data = {}
        data['ZipFile'] = ::Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data
      end
    end

    # List Builder for FunctionResponseTypeList
    class FunctionResponseTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetAccountSettings
    class GetAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2016-08-19/account-settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetAlias
    class GetAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetCodeSigningConfig
    class GetCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_signing_config_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_signing_config_arn cannot be empty."
        end
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Hearth::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetEventSourceMapping
    class GetEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:uuid].to_s.empty?
          raise ArgumentError, "HTTP label :uuid cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Hearth::HTTP.uri_escape(input[:uuid].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunction
    class GetFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunctionCodeSigningConfig
    class GetFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunctionConcurrency
    class GetFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunctionConfiguration
    class GetFunctionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/configuration',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunctionEventInvokeConfig
    class GetFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetFunctionUrlConfig
    class GetFunctionUrlConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-10-31/functions/%<FunctionName>s/url',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetLayerVersion
    class GetLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
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
        params = Hearth::Query::ParamList.new
        params['Arn'] = input[:arn].to_s unless input[:arn].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetLayerVersionPolicy
    class GetLayerVersionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetProvisionedConcurrencyConfig
    class GetProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for GetRuntimeManagementConfig
    class GetRuntimeManagementConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-07-20/functions/%<FunctionName>s/runtime-management-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
      end
    end

    # List Builder for HeadersList
    class HeadersList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ImageConfig
    class ImageConfig
      def self.build(input)
        data = {}
        data['EntryPoint'] = StringList.build(input[:entry_point]) unless input[:entry_point].nil?
        data['Command'] = StringList.build(input[:command]) unless input[:command].nil?
        data['WorkingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data
      end
    end

    # Operation Builder for Invoke
    class Invoke
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/invocations',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = ::StringIO.new(input[:payload] || '')
        http_req.headers['X-Amz-Invocation-Type'] = input[:invocation_type] unless input[:invocation_type].nil? || input[:invocation_type].empty?
        http_req.headers['X-Amz-Log-Type'] = input[:log_type] unless input[:log_type].nil? || input[:log_type].empty?
        http_req.headers['X-Amz-Client-Context'] = input[:client_context] unless input[:client_context].nil? || input[:client_context].empty?
      end
    end

    # Operation Builder for InvokeAsync
    class InvokeAsync
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2014-11-13/functions/%<FunctionName>s/invoke-async',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
        http_req.body = input[:invoke_args]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
      end
    end

    # List Builder for LayerList
    class LayerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
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
        data['ZipFile'] = ::Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data
      end
    end

    # Operation Builder for ListAliases
    class ListAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['FunctionVersion'] = input[:function_version].to_s unless input[:function_version].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListCodeSigningConfigs
    class ListCodeSigningConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-04-22/code-signing-configs')
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListEventSourceMappings
    class ListEventSourceMappings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-03-31/event-source-mappings')
        params = Hearth::Query::ParamList.new
        params['EventSourceArn'] = input[:event_source_arn].to_s unless input[:event_source_arn].nil?
        params['FunctionName'] = input[:function_name].to_s unless input[:function_name].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListFunctionEventInvokeConfigs
    class ListFunctionEventInvokeConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config/list',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListFunctionUrlConfigs
    class ListFunctionUrlConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-10-31/functions/%<FunctionName>s/urls',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListFunctions
    class ListFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-03-31/functions')
        params = Hearth::Query::ParamList.new
        params['MasterRegion'] = input[:master_region].to_s unless input[:master_region].nil?
        params['FunctionVersion'] = input[:function_version].to_s unless input[:function_version].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListFunctionsByCodeSigningConfig
    class ListFunctionsByCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_signing_config_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_signing_config_arn cannot be empty."
        end
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s/functions',
            CodeSigningConfigArn: Hearth::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListLayerVersions
    class ListLayerVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['CompatibleRuntime'] = input[:compatible_runtime].to_s unless input[:compatible_runtime].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['CompatibleArchitecture'] = input[:compatible_architecture].to_s unless input[:compatible_architecture].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListLayers
    class ListLayers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2018-10-31/layers')
        params = Hearth::Query::ParamList.new
        params['CompatibleRuntime'] = input[:compatible_runtime].to_s unless input[:compatible_runtime].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['CompatibleArchitecture'] = input[:compatible_architecture].to_s unless input[:compatible_architecture].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListProvisionedConcurrencyConfigs
    class ListProvisionedConcurrencyConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('List=ALL').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be empty."
        end
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for ListVersionsByFunction
    class ListVersionsByFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/versions',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.append_query_param_list(params)
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

    # Operation Builder for PublishLayerVersion
    class PublishLayerVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Content'] = LayerVersionContentInput.build(input[:content]) unless input[:content].nil?
        data['CompatibleRuntimes'] = CompatibleRuntimes.build(input[:compatible_runtimes]) unless input[:compatible_runtimes].nil?
        data['LicenseInfo'] = input[:license_info] unless input[:license_info].nil?
        data['CompatibleArchitectures'] = CompatibleArchitectures.build(input[:compatible_architectures]) unless input[:compatible_architectures].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PublishVersion
    class PublishVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/versions',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CodeSha256'] = input[:code_sha256] unless input[:code_sha256].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionCodeSigningConfig
    class PutFunctionCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2020-06-30/functions/%<FunctionName>s/code-signing-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CodeSigningConfigArn'] = input[:code_signing_config_arn] unless input[:code_signing_config_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionConcurrency
    class PutFunctionConcurrency
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2017-10-31/functions/%<FunctionName>s/concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ReservedConcurrentExecutions'] = input[:reserved_concurrent_executions] unless input[:reserved_concurrent_executions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFunctionEventInvokeConfig
    class PutFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = input[:maximum_event_age_in_seconds] unless input[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutProvisionedConcurrencyConfig
    class PutProvisionedConcurrencyConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-30/functions/%<FunctionName>s/provisioned-concurrency',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProvisionedConcurrentExecutions'] = input[:provisioned_concurrent_executions] unless input[:provisioned_concurrent_executions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRuntimeManagementConfig
    class PutRuntimeManagementConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-07-20/functions/%<FunctionName>s/runtime-management-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UpdateRuntimeOn'] = input[:update_runtime_on] unless input[:update_runtime_on].nil?
        data['RuntimeVersionArn'] = input[:runtime_version_arn] unless input[:runtime_version_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Queues
    class Queues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveLayerVersionPermission
    class RemoveLayerVersionPermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:layer_name].to_s.empty?
          raise ArgumentError, "HTTP label :layer_name cannot be empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be empty."
        end
        if input[:statement_id].to_s.empty?
          raise ArgumentError, "HTTP label :statement_id cannot be empty."
        end
        http_req.append_path(format(
            '/2018-10-31/layers/%<LayerName>s/versions/%<VersionNumber>s/policy/%<StatementId>s',
            LayerName: Hearth::HTTP.uri_escape(input[:layer_name].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s),
            StatementId: Hearth::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['RevisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for RemovePermission
    class RemovePermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        if input[:statement_id].to_s.empty?
          raise ArgumentError, "HTTP label :statement_id cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/policy/%<StatementId>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s),
            StatementId: Hearth::HTTP.uri_escape(input[:statement_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        params['RevisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_param_list(params)
      end
    end

    # Structure Builder for ScalingConfig
    class ScalingConfig
      def self.build(input)
        data = {}
        data['MaximumConcurrency'] = input[:maximum_concurrency] unless input[:maximum_concurrency].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SelfManagedEventSource
    class SelfManagedEventSource
      def self.build(input)
        data = {}
        data['Endpoints'] = Endpoints.build(input[:endpoints]) unless input[:endpoints].nil?
        data
      end
    end

    # Structure Builder for SelfManagedKafkaEventSourceConfig
    class SelfManagedKafkaEventSourceConfig
      def self.build(input)
        data = {}
        data['ConsumerGroupId'] = input[:consumer_group_id] unless input[:consumer_group_id].nil?
        data
      end
    end

    # List Builder for SigningProfileVersionArns
    class SigningProfileVersionArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SnapStart
    class SnapStart
      def self.build(input)
        data = {}
        data['ApplyOn'] = input[:apply_on] unless input[:apply_on].nil?
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

    # List Builder for SourceAccessConfigurations
    class SourceAccessConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << SourceAccessConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be empty."
        end
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for Topics
    class Topics
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
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

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource].to_s.empty?
          raise ArgumentError, "HTTP label :resource cannot be empty."
        end
        http_req.append_path(format(
            '/2017-03-31/tags/%<Resource>s',
            Resource: Hearth::HTTP.uri_escape(input[:resource].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_param_list(params)
      end
    end

    # Operation Builder for UpdateAlias
    class UpdateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/aliases/%<Name>s',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s),
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingConfig'] = AliasRoutingConfiguration.build(input[:routing_config]) unless input[:routing_config].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCodeSigningConfig
    class UpdateCodeSigningConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:code_signing_config_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_signing_config_arn cannot be empty."
        end
        http_req.append_path(format(
            '/2020-04-22/code-signing-configs/%<CodeSigningConfigArn>s',
            CodeSigningConfigArn: Hearth::HTTP.uri_escape(input[:code_signing_config_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['AllowedPublishers'] = AllowedPublishers.build(input[:allowed_publishers]) unless input[:allowed_publishers].nil?
        data['CodeSigningPolicies'] = CodeSigningPolicies.build(input[:code_signing_policies]) unless input[:code_signing_policies].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventSourceMapping
    class UpdateEventSourceMapping
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:uuid].to_s.empty?
          raise ArgumentError, "HTTP label :uuid cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/event-source-mappings/%<UUID>s',
            UUID: Hearth::HTTP.uri_escape(input[:uuid].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FunctionName'] = input[:function_name] unless input[:function_name].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data['FilterCriteria'] = FilterCriteria.build(input[:filter_criteria]) unless input[:filter_criteria].nil?
        data['MaximumBatchingWindowInSeconds'] = input[:maximum_batching_window_in_seconds] unless input[:maximum_batching_window_in_seconds].nil?
        data['DestinationConfig'] = DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['MaximumRecordAgeInSeconds'] = input[:maximum_record_age_in_seconds] unless input[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = input[:bisect_batch_on_function_error] unless input[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['ParallelizationFactor'] = input[:parallelization_factor] unless input[:parallelization_factor].nil?
        data['SourceAccessConfigurations'] = SourceAccessConfigurations.build(input[:source_access_configurations]) unless input[:source_access_configurations].nil?
        data['TumblingWindowInSeconds'] = input[:tumbling_window_in_seconds] unless input[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = FunctionResponseTypeList.build(input[:function_response_types]) unless input[:function_response_types].nil?
        data['ScalingConfig'] = ScalingConfig.build(input[:scaling_config]) unless input[:scaling_config].nil?
        data['DocumentDBEventSourceConfig'] = DocumentDBEventSourceConfig.build(input[:document_db_event_source_config]) unless input[:document_db_event_source_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionCode
    class UpdateFunctionCode
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/code',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ZipFile'] = ::Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3ObjectVersion'] = input[:s3_object_version] unless input[:s3_object_version].nil?
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['Publish'] = input[:publish] unless input[:publish].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['Architectures'] = ArchitecturesList.build(input[:architectures]) unless input[:architectures].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionConfiguration
    class UpdateFunctionConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2015-03-31/functions/%<FunctionName>s/configuration',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Role'] = input[:role] unless input[:role].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['MemorySize'] = input[:memory_size] unless input[:memory_size].nil?
        data['VpcConfig'] = VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Environment'] = Environment.build(input[:environment]) unless input[:environment].nil?
        data['Runtime'] = input[:runtime] unless input[:runtime].nil?
        data['DeadLetterConfig'] = DeadLetterConfig.build(input[:dead_letter_config]) unless input[:dead_letter_config].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['TracingConfig'] = TracingConfig.build(input[:tracing_config]) unless input[:tracing_config].nil?
        data['RevisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['Layers'] = LayerList.build(input[:layers]) unless input[:layers].nil?
        data['FileSystemConfigs'] = FileSystemConfigList.build(input[:file_system_configs]) unless input[:file_system_configs].nil?
        data['ImageConfig'] = ImageConfig.build(input[:image_config]) unless input[:image_config].nil?
        data['EphemeralStorage'] = EphemeralStorage.build(input[:ephemeral_storage]) unless input[:ephemeral_storage].nil?
        data['SnapStart'] = SnapStart.build(input[:snap_start]) unless input[:snap_start].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionEventInvokeConfig
    class UpdateFunctionEventInvokeConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2019-09-25/functions/%<FunctionName>s/event-invoke-config',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = input[:maximum_event_age_in_seconds] unless input[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunctionUrlConfig
    class UpdateFunctionUrlConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:function_name].to_s.empty?
          raise ArgumentError, "HTTP label :function_name cannot be empty."
        end
        http_req.append_path(format(
            '/2021-10-31/functions/%<FunctionName>s/url',
            FunctionName: Hearth::HTTP.uri_escape(input[:function_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['Qualifier'] = input[:qualifier].to_s unless input[:qualifier].nil?
        http_req.append_query_param_list(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AuthType'] = input[:auth_type] unless input[:auth_type].nil?
        data['Cors'] = Cors.build(input[:cors]) unless input[:cors].nil?
        data['InvokeMode'] = input[:invoke_mode] unless input[:invoke_mode].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end
  end
end
