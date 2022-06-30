# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoT
  module Builders

    # Operation Builder for AcceptCertificateTransfer
    class AcceptCertificateTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accept-certificate-transfer/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['setAsActive'] = input[:set_as_active].to_s unless input[:set_as_active].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AddThingToBillingGroup
    class AddThingToBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/billing-groups/addThingToBillingGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['billingGroupName'] = input[:billing_group_name] unless input[:billing_group_name].nil?
        data['billingGroupArn'] = input[:billing_group_arn] unless input[:billing_group_arn].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['thingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddThingToThingGroup
    class AddThingToThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/thing-groups/addThingToThingGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingGroupName'] = input[:thing_group_name] unless input[:thing_group_name].nil?
        data['thingGroupArn'] = input[:thing_group_arn] unless input[:thing_group_arn].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['thingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        data['overrideDynamicGroups'] = input[:override_dynamic_groups] unless input[:override_dynamic_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateTargetsWithJob
    class AssociateTargetsWithJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s/targets',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targets'] = Builders::JobTargets.build(input[:targets]) unless input[:targets].nil?
        data['comment'] = input[:comment] unless input[:comment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobTargets
    class JobTargets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AttachPolicy
    class AttachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/target-policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['target'] = input[:target] unless input[:target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachPrincipalPolicy
    class AttachPrincipalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/principal-policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amzn-iot-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for AttachSecurityProfile
    class AttachSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s/targets',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['securityProfileTargetArn'] = input[:security_profile_target_arn].to_s unless input[:security_profile_target_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AttachThingPrincipal
    class AttachThingPrincipal
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/principals',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amzn-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for CancelAuditMitigationActionsTask
    class CancelAuditMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/mitigationactions/tasks/%<taskId>s/cancel',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelAuditTask
    class CancelAuditTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/tasks/%<taskId>s/cancel',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelCertificateTransfer
    class CancelCertificateTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cancel-certificate-transfer/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelDetectMitigationActionsTask
    class CancelDetectMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detect/mitigationactions/tasks/%<taskId>s/cancel',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s/cancel',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['force'] = input[:force].to_s unless input[:force].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['reasonCode'] = input[:reason_code] unless input[:reason_code].nil?
        data['comment'] = input[:comment] unless input[:comment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelJobExecution
    class CancelJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/%<jobId>s/cancel',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s),
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['force'] = input[:force].to_s unless input[:force].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        data['statusDetails'] = Builders::DetailsMap.build(input[:status_details]) unless input[:status_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for DetailsMap
    class DetailsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for ClearDefaultAuthorizer
    class ClearDefaultAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/default-authorizer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ConfirmTopicRuleDestination
    class ConfirmTopicRuleDestination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:confirmation_token].to_s.empty?
          raise ArgumentError, "HTTP label :confirmation_token cannot be nil or empty."
        end
        http_req.append_path(format(
            '/confirmdestination/%<confirmationToken>s',
            confirmationToken: (input[:confirmation_token].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateAuditSuppression
    class CreateAuditSuppression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/suppressions/create')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:expiration_date]).to_i unless input[:expiration_date].nil?
        data['suppressIndefinitely'] = input[:suppress_indefinitely] unless input[:suppress_indefinitely].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceIdentifier
    class ResourceIdentifier
      def self.build(input)
        data = {}
        data['deviceCertificateId'] = input[:device_certificate_id] unless input[:device_certificate_id].nil?
        data['caCertificateId'] = input[:ca_certificate_id] unless input[:ca_certificate_id].nil?
        data['cognitoIdentityPoolId'] = input[:cognito_identity_pool_id] unless input[:cognito_identity_pool_id].nil?
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['policyVersionIdentifier'] = Builders::PolicyVersionIdentifier.build(input[:policy_version_identifier]) unless input[:policy_version_identifier].nil?
        data['account'] = input[:account] unless input[:account].nil?
        data['iamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['roleAliasArn'] = input[:role_alias_arn] unless input[:role_alias_arn].nil?
        data
      end
    end

    # Structure Builder for PolicyVersionIdentifier
    class PolicyVersionIdentifier
      def self.build(input)
        data = {}
        data['policyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['policyVersionId'] = input[:policy_version_id] unless input[:policy_version_id].nil?
        data
      end
    end

    # Operation Builder for CreateAuthorizer
    class CreateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:authorizer_name].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/authorizer/%<authorizerName>s',
            authorizerName: Hearth::HTTP.uri_escape(input[:authorizer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerFunctionArn'] = input[:authorizer_function_arn] unless input[:authorizer_function_arn].nil?
        data['tokenKeyName'] = input[:token_key_name] unless input[:token_key_name].nil?
        data['tokenSigningPublicKeys'] = Builders::PublicKeyMap.build(input[:token_signing_public_keys]) unless input[:token_signing_public_keys].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['signingDisabled'] = input[:signing_disabled] unless input[:signing_disabled].nil?
        data['enableCachingForHttp'] = input[:enable_caching_for_http] unless input[:enable_caching_for_http].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Map Builder for PublicKeyMap
    class PublicKeyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBillingGroup
    class CreateBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:billing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :billing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/billing-groups/%<billingGroupName>s',
            billingGroupName: Hearth::HTTP.uri_escape(input[:billing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['billingGroupProperties'] = Builders::BillingGroupProperties.build(input[:billing_group_properties]) unless input[:billing_group_properties].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BillingGroupProperties
    class BillingGroupProperties
      def self.build(input)
        data = {}
        data['billingGroupDescription'] = input[:billing_group_description] unless input[:billing_group_description].nil?
        data
      end
    end

    # Operation Builder for CreateCertificateFromCsr
    class CreateCertificateFromCsr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/certificates')
        params = Hearth::Query::ParamList.new
        params['setAsActive'] = input[:set_as_active].to_s unless input[:set_as_active].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['certificateSigningRequest'] = input[:certificate_signing_request] unless input[:certificate_signing_request].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCustomMetric
    class CreateCustomMetric
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['metricType'] = input[:metric_type] unless input[:metric_type].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDimension
    class CreateDimension
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dimensions/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['stringValues'] = Builders::DimensionStringValues.build(input[:string_values]) unless input[:string_values].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DimensionStringValues
    class DimensionStringValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDomainConfiguration
    class CreateDomainConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainConfigurations/%<domainConfigurationName>s',
            domainConfigurationName: Hearth::HTTP.uri_escape(input[:domain_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['serverCertificateArns'] = Builders::ServerCertificateArns.build(input[:server_certificate_arns]) unless input[:server_certificate_arns].nil?
        data['validationCertificateArn'] = input[:validation_certificate_arn] unless input[:validation_certificate_arn].nil?
        data['authorizerConfig'] = Builders::AuthorizerConfig.build(input[:authorizer_config]) unless input[:authorizer_config].nil?
        data['serviceType'] = input[:service_type] unless input[:service_type].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AuthorizerConfig
    class AuthorizerConfig
      def self.build(input)
        data = {}
        data['defaultAuthorizerName'] = input[:default_authorizer_name] unless input[:default_authorizer_name].nil?
        data['allowAuthorizerOverride'] = input[:allow_authorizer_override] unless input[:allow_authorizer_override].nil?
        data
      end
    end

    # List Builder for ServerCertificateArns
    class ServerCertificateArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDynamicThingGroup
    class CreateDynamicThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dynamic-thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingGroupProperties'] = Builders::ThingGroupProperties.build(input[:thing_group_properties]) unless input[:thing_group_properties].nil?
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ThingGroupProperties
    class ThingGroupProperties
      def self.build(input)
        data = {}
        data['thingGroupDescription'] = input[:thing_group_description] unless input[:thing_group_description].nil?
        data['attributePayload'] = Builders::AttributePayload.build(input[:attribute_payload]) unless input[:attribute_payload].nil?
        data
      end
    end

    # Structure Builder for AttributePayload
    class AttributePayload
      def self.build(input)
        data = {}
        data['attributes'] = Builders::Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data['merge'] = input[:merge] unless input[:merge].nil?
        data
      end
    end

    # Map Builder for Attributes
    class Attributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFleetMetric
    class CreateFleetMetric
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fleet-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationType'] = Builders::AggregationType.build(input[:aggregation_type]) unless input[:aggregation_type].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AggregationType
    class AggregationType
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::AggregationTypeValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for AggregationTypeValues
    class AggregationTypeValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targets'] = Builders::JobTargets.build(input[:targets]) unless input[:targets].nil?
        data['documentSource'] = input[:document_source] unless input[:document_source].nil?
        data['document'] = input[:document] unless input[:document].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['presignedUrlConfig'] = Builders::PresignedUrlConfig.build(input[:presigned_url_config]) unless input[:presigned_url_config].nil?
        data['targetSelection'] = input[:target_selection] unless input[:target_selection].nil?
        data['jobExecutionsRolloutConfig'] = Builders::JobExecutionsRolloutConfig.build(input[:job_executions_rollout_config]) unless input[:job_executions_rollout_config].nil?
        data['abortConfig'] = Builders::AbortConfig.build(input[:abort_config]) unless input[:abort_config].nil?
        data['timeoutConfig'] = Builders::TimeoutConfig.build(input[:timeout_config]) unless input[:timeout_config].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['namespaceId'] = input[:namespace_id] unless input[:namespace_id].nil?
        data['jobTemplateArn'] = input[:job_template_arn] unless input[:job_template_arn].nil?
        data['jobExecutionsRetryConfig'] = Builders::JobExecutionsRetryConfig.build(input[:job_executions_retry_config]) unless input[:job_executions_retry_config].nil?
        data['documentParameters'] = Builders::ParameterMap.build(input[:document_parameters]) unless input[:document_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ParameterMap
    class ParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for JobExecutionsRetryConfig
    class JobExecutionsRetryConfig
      def self.build(input)
        data = {}
        data['criteriaList'] = Builders::RetryCriteriaList.build(input[:criteria_list]) unless input[:criteria_list].nil?
        data
      end
    end

    # List Builder for RetryCriteriaList
    class RetryCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RetryCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RetryCriteria
    class RetryCriteria
      def self.build(input)
        data = {}
        data['failureType'] = input[:failure_type] unless input[:failure_type].nil?
        data['numberOfRetries'] = input[:number_of_retries] unless input[:number_of_retries].nil?
        data
      end
    end

    # Structure Builder for TimeoutConfig
    class TimeoutConfig
      def self.build(input)
        data = {}
        data['inProgressTimeoutInMinutes'] = input[:in_progress_timeout_in_minutes] unless input[:in_progress_timeout_in_minutes].nil?
        data
      end
    end

    # Structure Builder for AbortConfig
    class AbortConfig
      def self.build(input)
        data = {}
        data['criteriaList'] = Builders::AbortCriteriaList.build(input[:criteria_list]) unless input[:criteria_list].nil?
        data
      end
    end

    # List Builder for AbortCriteriaList
    class AbortCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AbortCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AbortCriteria
    class AbortCriteria
      def self.build(input)
        data = {}
        data['failureType'] = input[:failure_type] unless input[:failure_type].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['thresholdPercentage'] = Hearth::NumberHelper.serialize(input[:threshold_percentage]) unless input[:threshold_percentage].nil?
        data['minNumberOfExecutedThings'] = input[:min_number_of_executed_things] unless input[:min_number_of_executed_things].nil?
        data
      end
    end

    # Structure Builder for JobExecutionsRolloutConfig
    class JobExecutionsRolloutConfig
      def self.build(input)
        data = {}
        data['maximumPerMinute'] = input[:maximum_per_minute] unless input[:maximum_per_minute].nil?
        data['exponentialRate'] = Builders::ExponentialRolloutRate.build(input[:exponential_rate]) unless input[:exponential_rate].nil?
        data
      end
    end

    # Structure Builder for ExponentialRolloutRate
    class ExponentialRolloutRate
      def self.build(input)
        data = {}
        data['baseRatePerMinute'] = input[:base_rate_per_minute] unless input[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(input[:increment_factor]) unless input[:increment_factor].nil?
        data['rateIncreaseCriteria'] = Builders::RateIncreaseCriteria.build(input[:rate_increase_criteria]) unless input[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Builder for RateIncreaseCriteria
    class RateIncreaseCriteria
      def self.build(input)
        data = {}
        data['numberOfNotifiedThings'] = input[:number_of_notified_things] unless input[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = input[:number_of_succeeded_things] unless input[:number_of_succeeded_things].nil?
        data
      end
    end

    # Structure Builder for PresignedUrlConfig
    class PresignedUrlConfig
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['expiresInSec'] = input[:expires_in_sec] unless input[:expires_in_sec].nil?
        data
      end
    end

    # Operation Builder for CreateJobTemplate
    class CreateJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/job-templates/%<jobTemplateId>s',
            jobTemplateId: Hearth::HTTP.uri_escape(input[:job_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobArn'] = input[:job_arn] unless input[:job_arn].nil?
        data['documentSource'] = input[:document_source] unless input[:document_source].nil?
        data['document'] = input[:document] unless input[:document].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['presignedUrlConfig'] = Builders::PresignedUrlConfig.build(input[:presigned_url_config]) unless input[:presigned_url_config].nil?
        data['jobExecutionsRolloutConfig'] = Builders::JobExecutionsRolloutConfig.build(input[:job_executions_rollout_config]) unless input[:job_executions_rollout_config].nil?
        data['abortConfig'] = Builders::AbortConfig.build(input[:abort_config]) unless input[:abort_config].nil?
        data['timeoutConfig'] = Builders::TimeoutConfig.build(input[:timeout_config]) unless input[:timeout_config].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['jobExecutionsRetryConfig'] = Builders::JobExecutionsRetryConfig.build(input[:job_executions_retry_config]) unless input[:job_executions_retry_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateKeysAndCertificate
    class CreateKeysAndCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/keys-and-certificate')
        params = Hearth::Query::ParamList.new
        params['setAsActive'] = input[:set_as_active].to_s unless input[:set_as_active].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateMitigationAction
    class CreateMitigationAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:action_name].to_s.empty?
          raise ArgumentError, "HTTP label :action_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/mitigationactions/actions/%<actionName>s',
            actionName: Hearth::HTTP.uri_escape(input[:action_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['actionParams'] = Builders::MitigationActionParams.build(input[:action_params]) unless input[:action_params].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MitigationActionParams
    class MitigationActionParams
      def self.build(input)
        data = {}
        data['updateDeviceCertificateParams'] = Builders::UpdateDeviceCertificateParams.build(input[:update_device_certificate_params]) unless input[:update_device_certificate_params].nil?
        data['updateCACertificateParams'] = Builders::UpdateCACertificateParams.build(input[:update_ca_certificate_params]) unless input[:update_ca_certificate_params].nil?
        data['addThingsToThingGroupParams'] = Builders::AddThingsToThingGroupParams.build(input[:add_things_to_thing_group_params]) unless input[:add_things_to_thing_group_params].nil?
        data['replaceDefaultPolicyVersionParams'] = Builders::ReplaceDefaultPolicyVersionParams.build(input[:replace_default_policy_version_params]) unless input[:replace_default_policy_version_params].nil?
        data['enableIoTLoggingParams'] = Builders::EnableIoTLoggingParams.build(input[:enable_io_t_logging_params]) unless input[:enable_io_t_logging_params].nil?
        data['publishFindingToSnsParams'] = Builders::PublishFindingToSnsParams.build(input[:publish_finding_to_sns_params]) unless input[:publish_finding_to_sns_params].nil?
        data
      end
    end

    # Structure Builder for PublishFindingToSnsParams
    class PublishFindingToSnsParams
      def self.build(input)
        data = {}
        data['topicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        data
      end
    end

    # Structure Builder for EnableIoTLoggingParams
    class EnableIoTLoggingParams
      def self.build(input)
        data = {}
        data['roleArnForLogging'] = input[:role_arn_for_logging] unless input[:role_arn_for_logging].nil?
        data['logLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Structure Builder for ReplaceDefaultPolicyVersionParams
    class ReplaceDefaultPolicyVersionParams
      def self.build(input)
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data
      end
    end

    # Structure Builder for AddThingsToThingGroupParams
    class AddThingsToThingGroupParams
      def self.build(input)
        data = {}
        data['thingGroupNames'] = Builders::ThingGroupNames.build(input[:thing_group_names]) unless input[:thing_group_names].nil?
        data['overrideDynamicGroups'] = input[:override_dynamic_groups] unless input[:override_dynamic_groups].nil?
        data
      end
    end

    # List Builder for ThingGroupNames
    class ThingGroupNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateCACertificateParams
    class UpdateCACertificateParams
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Structure Builder for UpdateDeviceCertificateParams
    class UpdateDeviceCertificateParams
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Operation Builder for CreateOTAUpdate
    class CreateOTAUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:ota_update_id].to_s.empty?
          raise ArgumentError, "HTTP label :ota_update_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/otaUpdates/%<otaUpdateId>s',
            otaUpdateId: Hearth::HTTP.uri_escape(input[:ota_update_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['targets'] = Builders::Targets.build(input[:targets]) unless input[:targets].nil?
        data['protocols'] = Builders::Protocols.build(input[:protocols]) unless input[:protocols].nil?
        data['targetSelection'] = input[:target_selection] unless input[:target_selection].nil?
        data['awsJobExecutionsRolloutConfig'] = Builders::AwsJobExecutionsRolloutConfig.build(input[:aws_job_executions_rollout_config]) unless input[:aws_job_executions_rollout_config].nil?
        data['awsJobPresignedUrlConfig'] = Builders::AwsJobPresignedUrlConfig.build(input[:aws_job_presigned_url_config]) unless input[:aws_job_presigned_url_config].nil?
        data['awsJobAbortConfig'] = Builders::AwsJobAbortConfig.build(input[:aws_job_abort_config]) unless input[:aws_job_abort_config].nil?
        data['awsJobTimeoutConfig'] = Builders::AwsJobTimeoutConfig.build(input[:aws_job_timeout_config]) unless input[:aws_job_timeout_config].nil?
        data['files'] = Builders::OTAUpdateFiles.build(input[:files]) unless input[:files].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['additionalParameters'] = Builders::AdditionalParameterMap.build(input[:additional_parameters]) unless input[:additional_parameters].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AdditionalParameterMap
    class AdditionalParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for OTAUpdateFiles
    class OTAUpdateFiles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OTAUpdateFile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OTAUpdateFile
    class OTAUpdateFile
      def self.build(input)
        data = {}
        data['fileName'] = input[:file_name] unless input[:file_name].nil?
        data['fileType'] = input[:file_type] unless input[:file_type].nil?
        data['fileVersion'] = input[:file_version] unless input[:file_version].nil?
        data['fileLocation'] = Builders::FileLocation.build(input[:file_location]) unless input[:file_location].nil?
        data['codeSigning'] = Builders::CodeSigning.build(input[:code_signing]) unless input[:code_signing].nil?
        data['attributes'] = Builders::AttributesMap.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # Map Builder for AttributesMap
    class AttributesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CodeSigning
    class CodeSigning
      def self.build(input)
        data = {}
        data['awsSignerJobId'] = input[:aws_signer_job_id] unless input[:aws_signer_job_id].nil?
        data['startSigningJobParameter'] = Builders::StartSigningJobParameter.build(input[:start_signing_job_parameter]) unless input[:start_signing_job_parameter].nil?
        data['customCodeSigning'] = Builders::CustomCodeSigning.build(input[:custom_code_signing]) unless input[:custom_code_signing].nil?
        data
      end
    end

    # Structure Builder for CustomCodeSigning
    class CustomCodeSigning
      def self.build(input)
        data = {}
        data['signature'] = Builders::CodeSigningSignature.build(input[:signature]) unless input[:signature].nil?
        data['certificateChain'] = Builders::CodeSigningCertificateChain.build(input[:certificate_chain]) unless input[:certificate_chain].nil?
        data['hashAlgorithm'] = input[:hash_algorithm] unless input[:hash_algorithm].nil?
        data['signatureAlgorithm'] = input[:signature_algorithm] unless input[:signature_algorithm].nil?
        data
      end
    end

    # Structure Builder for CodeSigningCertificateChain
    class CodeSigningCertificateChain
      def self.build(input)
        data = {}
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['inlineDocument'] = input[:inline_document] unless input[:inline_document].nil?
        data
      end
    end

    # Structure Builder for CodeSigningSignature
    class CodeSigningSignature
      def self.build(input)
        data = {}
        data['inlineDocument'] = Base64::encode64(input[:inline_document]).strip unless input[:inline_document].nil?
        data
      end
    end

    # Structure Builder for StartSigningJobParameter
    class StartSigningJobParameter
      def self.build(input)
        data = {}
        data['signingProfileParameter'] = Builders::SigningProfileParameter.build(input[:signing_profile_parameter]) unless input[:signing_profile_parameter].nil?
        data['signingProfileName'] = input[:signing_profile_name] unless input[:signing_profile_name].nil?
        data['destination'] = Builders::Destination.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for Destination
    class Destination
      def self.build(input)
        data = {}
        data['s3Destination'] = Builders::S3Destination.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data
      end
    end

    # Structure Builder for S3Destination
    class S3Destination
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for SigningProfileParameter
    class SigningProfileParameter
      def self.build(input)
        data = {}
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['certificatePathOnDevice'] = input[:certificate_path_on_device] unless input[:certificate_path_on_device].nil?
        data
      end
    end

    # Structure Builder for FileLocation
    class FileLocation
      def self.build(input)
        data = {}
        data['stream'] = Builders::Stream.build(input[:stream]) unless input[:stream].nil?
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Structure Builder for Stream
    class Stream
      def self.build(input)
        data = {}
        data['streamId'] = input[:stream_id] unless input[:stream_id].nil?
        data['fileId'] = input[:file_id] unless input[:file_id].nil?
        data
      end
    end

    # Structure Builder for AwsJobTimeoutConfig
    class AwsJobTimeoutConfig
      def self.build(input)
        data = {}
        data['inProgressTimeoutInMinutes'] = input[:in_progress_timeout_in_minutes] unless input[:in_progress_timeout_in_minutes].nil?
        data
      end
    end

    # Structure Builder for AwsJobAbortConfig
    class AwsJobAbortConfig
      def self.build(input)
        data = {}
        data['abortCriteriaList'] = Builders::AwsJobAbortCriteriaList.build(input[:abort_criteria_list]) unless input[:abort_criteria_list].nil?
        data
      end
    end

    # List Builder for AwsJobAbortCriteriaList
    class AwsJobAbortCriteriaList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AwsJobAbortCriteria.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsJobAbortCriteria
    class AwsJobAbortCriteria
      def self.build(input)
        data = {}
        data['failureType'] = input[:failure_type] unless input[:failure_type].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['thresholdPercentage'] = Hearth::NumberHelper.serialize(input[:threshold_percentage]) unless input[:threshold_percentage].nil?
        data['minNumberOfExecutedThings'] = input[:min_number_of_executed_things] unless input[:min_number_of_executed_things].nil?
        data
      end
    end

    # Structure Builder for AwsJobPresignedUrlConfig
    class AwsJobPresignedUrlConfig
      def self.build(input)
        data = {}
        data['expiresInSec'] = input[:expires_in_sec] unless input[:expires_in_sec].nil?
        data
      end
    end

    # Structure Builder for AwsJobExecutionsRolloutConfig
    class AwsJobExecutionsRolloutConfig
      def self.build(input)
        data = {}
        data['maximumPerMinute'] = input[:maximum_per_minute] unless input[:maximum_per_minute].nil?
        data['exponentialRate'] = Builders::AwsJobExponentialRolloutRate.build(input[:exponential_rate]) unless input[:exponential_rate].nil?
        data
      end
    end

    # Structure Builder for AwsJobExponentialRolloutRate
    class AwsJobExponentialRolloutRate
      def self.build(input)
        data = {}
        data['baseRatePerMinute'] = input[:base_rate_per_minute] unless input[:base_rate_per_minute].nil?
        data['incrementFactor'] = Hearth::NumberHelper.serialize(input[:increment_factor]) unless input[:increment_factor].nil?
        data['rateIncreaseCriteria'] = Builders::AwsJobRateIncreaseCriteria.build(input[:rate_increase_criteria]) unless input[:rate_increase_criteria].nil?
        data
      end
    end

    # Structure Builder for AwsJobRateIncreaseCriteria
    class AwsJobRateIncreaseCriteria
      def self.build(input)
        data = {}
        data['numberOfNotifiedThings'] = input[:number_of_notified_things] unless input[:number_of_notified_things].nil?
        data['numberOfSucceededThings'] = input[:number_of_succeeded_things] unless input[:number_of_succeeded_things].nil?
        data
      end
    end

    # List Builder for Protocols
    class Protocols
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Targets
    class Targets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePolicy
    class CreatePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePolicyVersion
    class CreatePolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s/version',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['setAsDefault'] = input[:set_as_default].to_s unless input[:set_as_default].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['policyDocument'] = input[:policy_document] unless input[:policy_document].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProvisioningClaim
    class CreateProvisioningClaim
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s/provisioning-claim',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateProvisioningTemplate
    class CreateProvisioningTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/provisioning-templates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['templateName'] = input[:template_name] unless input[:template_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['provisioningRoleArn'] = input[:provisioning_role_arn] unless input[:provisioning_role_arn].nil?
        data['preProvisioningHook'] = Builders::ProvisioningHook.build(input[:pre_provisioning_hook]) unless input[:pre_provisioning_hook].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProvisioningHook
    class ProvisioningHook
      def self.build(input)
        data = {}
        data['payloadVersion'] = input[:payload_version] unless input[:payload_version].nil?
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data
      end
    end

    # Operation Builder for CreateProvisioningTemplateVersion
    class CreateProvisioningTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s/versions',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['setAsDefault'] = input[:set_as_default].to_s unless input[:set_as_default].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRoleAlias
    class CreateRoleAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:role_alias].to_s.empty?
          raise ArgumentError, "HTTP label :role_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/role-aliases/%<roleAlias>s',
            roleAlias: Hearth::HTTP.uri_escape(input[:role_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['credentialDurationSeconds'] = input[:credential_duration_seconds] unless input[:credential_duration_seconds].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateScheduledAudit
    class CreateScheduledAudit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:scheduled_audit_name].to_s.empty?
          raise ArgumentError, "HTTP label :scheduled_audit_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/scheduledaudits/%<scheduledAuditName>s',
            scheduledAuditName: Hearth::HTTP.uri_escape(input[:scheduled_audit_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['frequency'] = input[:frequency] unless input[:frequency].nil?
        data['dayOfMonth'] = input[:day_of_month] unless input[:day_of_month].nil?
        data['dayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data['targetCheckNames'] = Builders::TargetAuditCheckNames.build(input[:target_check_names]) unless input[:target_check_names].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetAuditCheckNames
    class TargetAuditCheckNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSecurityProfile
    class CreateSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['securityProfileDescription'] = input[:security_profile_description] unless input[:security_profile_description].nil?
        data['behaviors'] = Builders::Behaviors.build(input[:behaviors]) unless input[:behaviors].nil?
        data['alertTargets'] = Builders::AlertTargets.build(input[:alert_targets]) unless input[:alert_targets].nil?
        data['additionalMetricsToRetain'] = Builders::AdditionalMetricsToRetainList.build(input[:additional_metrics_to_retain]) unless input[:additional_metrics_to_retain].nil?
        data['additionalMetricsToRetainV2'] = Builders::AdditionalMetricsToRetainV2List.build(input[:additional_metrics_to_retain_v2]) unless input[:additional_metrics_to_retain_v2].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AdditionalMetricsToRetainV2List
    class AdditionalMetricsToRetainV2List
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricToRetain.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricToRetain
    class MetricToRetain
      def self.build(input)
        data = {}
        data['metric'] = input[:metric] unless input[:metric].nil?
        data['metricDimension'] = Builders::MetricDimension.build(input[:metric_dimension]) unless input[:metric_dimension].nil?
        data
      end
    end

    # Structure Builder for MetricDimension
    class MetricDimension
      def self.build(input)
        data = {}
        data['dimensionName'] = input[:dimension_name] unless input[:dimension_name].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for AdditionalMetricsToRetainList
    class AdditionalMetricsToRetainList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for AlertTargets
    class AlertTargets
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AlertTarget.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AlertTarget
    class AlertTarget
      def self.build(input)
        data = {}
        data['alertTargetArn'] = input[:alert_target_arn] unless input[:alert_target_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for Behaviors
    class Behaviors
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Behavior.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Behavior
    class Behavior
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['metric'] = input[:metric] unless input[:metric].nil?
        data['metricDimension'] = Builders::MetricDimension.build(input[:metric_dimension]) unless input[:metric_dimension].nil?
        data['criteria'] = Builders::BehaviorCriteria.build(input[:criteria]) unless input[:criteria].nil?
        data['suppressAlerts'] = input[:suppress_alerts] unless input[:suppress_alerts].nil?
        data
      end
    end

    # Structure Builder for BehaviorCriteria
    class BehaviorCriteria
      def self.build(input)
        data = {}
        data['comparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['value'] = Builders::MetricValue.build(input[:value]) unless input[:value].nil?
        data['durationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        data['consecutiveDatapointsToAlarm'] = input[:consecutive_datapoints_to_alarm] unless input[:consecutive_datapoints_to_alarm].nil?
        data['consecutiveDatapointsToClear'] = input[:consecutive_datapoints_to_clear] unless input[:consecutive_datapoints_to_clear].nil?
        data['statisticalThreshold'] = Builders::StatisticalThreshold.build(input[:statistical_threshold]) unless input[:statistical_threshold].nil?
        data['mlDetectionConfig'] = Builders::MachineLearningDetectionConfig.build(input[:ml_detection_config]) unless input[:ml_detection_config].nil?
        data
      end
    end

    # Structure Builder for MachineLearningDetectionConfig
    class MachineLearningDetectionConfig
      def self.build(input)
        data = {}
        data['confidenceLevel'] = input[:confidence_level] unless input[:confidence_level].nil?
        data
      end
    end

    # Structure Builder for StatisticalThreshold
    class StatisticalThreshold
      def self.build(input)
        data = {}
        data['statistic'] = input[:statistic] unless input[:statistic].nil?
        data
      end
    end

    # Structure Builder for MetricValue
    class MetricValue
      def self.build(input)
        data = {}
        data['count'] = input[:count] unless input[:count].nil?
        data['cidrs'] = Builders::Cidrs.build(input[:cidrs]) unless input[:cidrs].nil?
        data['ports'] = Builders::Ports.build(input[:ports]) unless input[:ports].nil?
        data['number'] = Hearth::NumberHelper.serialize(input[:number]) unless input[:number].nil?
        data['numbers'] = Builders::NumberList.build(input[:numbers]) unless input[:numbers].nil?
        data['strings'] = Builders::StringList.build(input[:strings]) unless input[:strings].nil?
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

    # List Builder for NumberList
    class NumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for Ports
    class Ports
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Cidrs
    class Cidrs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStream
    class CreateStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/streams/%<streamId>s',
            streamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['files'] = Builders::StreamFiles.build(input[:files]) unless input[:files].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StreamFiles
    class StreamFiles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StreamFile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StreamFile
    class StreamFile
      def self.build(input)
        data = {}
        data['fileId'] = input[:file_id] unless input[:file_id].nil?
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Operation Builder for CreateThing
    class CreateThing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingTypeName'] = input[:thing_type_name] unless input[:thing_type_name].nil?
        data['attributePayload'] = Builders::AttributePayload.build(input[:attribute_payload]) unless input[:attribute_payload].nil?
        data['billingGroupName'] = input[:billing_group_name] unless input[:billing_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateThingGroup
    class CreateThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['parentGroupName'] = input[:parent_group_name] unless input[:parent_group_name].nil?
        data['thingGroupProperties'] = Builders::ThingGroupProperties.build(input[:thing_group_properties]) unless input[:thing_group_properties].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateThingType
    class CreateThingType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-types/%<thingTypeName>s',
            thingTypeName: Hearth::HTTP.uri_escape(input[:thing_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingTypeProperties'] = Builders::ThingTypeProperties.build(input[:thing_type_properties]) unless input[:thing_type_properties].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ThingTypeProperties
    class ThingTypeProperties
      def self.build(input)
        data = {}
        data['thingTypeDescription'] = input[:thing_type_description] unless input[:thing_type_description].nil?
        data['searchableAttributes'] = Builders::SearchableAttributes.build(input[:searchable_attributes]) unless input[:searchable_attributes].nil?
        data
      end
    end

    # List Builder for SearchableAttributes
    class SearchableAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTopicRule
    class CreateTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::TopicRulePayload.build(input[:topic_rule_payload]) unless input[:topic_rule_payload].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-tagging'] = input[:tags] unless input[:tags].nil? || input[:tags].empty?
      end
    end

    # Structure Builder for TopicRulePayload
    class TopicRulePayload
      def self.build(input)
        data = {}
        data['sql'] = input[:sql] unless input[:sql].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        data['ruleDisabled'] = input[:rule_disabled] unless input[:rule_disabled].nil?
        data['awsIotSqlVersion'] = input[:aws_iot_sql_version] unless input[:aws_iot_sql_version].nil?
        data['errorAction'] = Builders::Action.build(input[:error_action]) unless input[:error_action].nil?
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['dynamoDB'] = Builders::DynamoDBAction.build(input[:dynamo_db]) unless input[:dynamo_db].nil?
        data['dynamoDBv2'] = Builders::DynamoDBv2Action.build(input[:dynamo_d_bv2]) unless input[:dynamo_d_bv2].nil?
        data['lambda'] = Builders::LambdaAction.build(input[:lambda]) unless input[:lambda].nil?
        data['sns'] = Builders::SnsAction.build(input[:sns]) unless input[:sns].nil?
        data['sqs'] = Builders::SqsAction.build(input[:sqs]) unless input[:sqs].nil?
        data['kinesis'] = Builders::KinesisAction.build(input[:kinesis]) unless input[:kinesis].nil?
        data['republish'] = Builders::RepublishAction.build(input[:republish]) unless input[:republish].nil?
        data['s3'] = Builders::S3Action.build(input[:s3]) unless input[:s3].nil?
        data['firehose'] = Builders::FirehoseAction.build(input[:firehose]) unless input[:firehose].nil?
        data['cloudwatchMetric'] = Builders::CloudwatchMetricAction.build(input[:cloudwatch_metric]) unless input[:cloudwatch_metric].nil?
        data['cloudwatchAlarm'] = Builders::CloudwatchAlarmAction.build(input[:cloudwatch_alarm]) unless input[:cloudwatch_alarm].nil?
        data['cloudwatchLogs'] = Builders::CloudwatchLogsAction.build(input[:cloudwatch_logs]) unless input[:cloudwatch_logs].nil?
        data['elasticsearch'] = Builders::ElasticsearchAction.build(input[:elasticsearch]) unless input[:elasticsearch].nil?
        data['salesforce'] = Builders::SalesforceAction.build(input[:salesforce]) unless input[:salesforce].nil?
        data['iotAnalytics'] = Builders::IotAnalyticsAction.build(input[:iot_analytics]) unless input[:iot_analytics].nil?
        data['iotEvents'] = Builders::IotEventsAction.build(input[:iot_events]) unless input[:iot_events].nil?
        data['iotSiteWise'] = Builders::IotSiteWiseAction.build(input[:iot_site_wise]) unless input[:iot_site_wise].nil?
        data['stepFunctions'] = Builders::StepFunctionsAction.build(input[:step_functions]) unless input[:step_functions].nil?
        data['timestream'] = Builders::TimestreamAction.build(input[:timestream]) unless input[:timestream].nil?
        data['http'] = Builders::HttpAction.build(input[:http]) unless input[:http].nil?
        data['kafka'] = Builders::KafkaAction.build(input[:kafka]) unless input[:kafka].nil?
        data['openSearch'] = Builders::OpenSearchAction.build(input[:open_search]) unless input[:open_search].nil?
        data
      end
    end

    # Structure Builder for OpenSearchAction
    class OpenSearchAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['index'] = input[:index] unless input[:index].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for KafkaAction
    class KafkaAction
      def self.build(input)
        data = {}
        data['destinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['topic'] = input[:topic] unless input[:topic].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['partition'] = input[:partition] unless input[:partition].nil?
        data['clientProperties'] = Builders::ClientProperties.build(input[:client_properties]) unless input[:client_properties].nil?
        data
      end
    end

    # Map Builder for ClientProperties
    class ClientProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for HttpAction
    class HttpAction
      def self.build(input)
        data = {}
        data['url'] = input[:url] unless input[:url].nil?
        data['confirmationUrl'] = input[:confirmation_url] unless input[:confirmation_url].nil?
        data['headers'] = Builders::HeaderList.build(input[:headers]) unless input[:headers].nil?
        data['auth'] = Builders::HttpAuthorization.build(input[:auth]) unless input[:auth].nil?
        data
      end
    end

    # Structure Builder for HttpAuthorization
    class HttpAuthorization
      def self.build(input)
        data = {}
        data['sigv4'] = Builders::SigV4Authorization.build(input[:sigv4]) unless input[:sigv4].nil?
        data
      end
    end

    # Structure Builder for SigV4Authorization
    class SigV4Authorization
      def self.build(input)
        data = {}
        data['signingRegion'] = input[:signing_region] unless input[:signing_region].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for HeaderList
    class HeaderList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpActionHeader.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpActionHeader
    class HttpActionHeader
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for TimestreamAction
    class TimestreamAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['databaseName'] = input[:database_name] unless input[:database_name].nil?
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['dimensions'] = Builders::TimestreamDimensionList.build(input[:dimensions]) unless input[:dimensions].nil?
        data['timestamp'] = Builders::TimestreamTimestamp.build(input[:timestamp]) unless input[:timestamp].nil?
        data
      end
    end

    # Structure Builder for TimestreamTimestamp
    class TimestreamTimestamp
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # List Builder for TimestreamDimensionList
    class TimestreamDimensionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TimestreamDimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TimestreamDimension
    class TimestreamDimension
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for StepFunctionsAction
    class StepFunctionsAction
      def self.build(input)
        data = {}
        data['executionNamePrefix'] = input[:execution_name_prefix] unless input[:execution_name_prefix].nil?
        data['stateMachineName'] = input[:state_machine_name] unless input[:state_machine_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for IotSiteWiseAction
    class IotSiteWiseAction
      def self.build(input)
        data = {}
        data['putAssetPropertyValueEntries'] = Builders::PutAssetPropertyValueEntryList.build(input[:put_asset_property_value_entries]) unless input[:put_asset_property_value_entries].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for PutAssetPropertyValueEntryList
    class PutAssetPropertyValueEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PutAssetPropertyValueEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutAssetPropertyValueEntry
    class PutAssetPropertyValueEntry
      def self.build(input)
        data = {}
        data['entryId'] = input[:entry_id] unless input[:entry_id].nil?
        data['assetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['propertyId'] = input[:property_id] unless input[:property_id].nil?
        data['propertyAlias'] = input[:property_alias] unless input[:property_alias].nil?
        data['propertyValues'] = Builders::AssetPropertyValueList.build(input[:property_values]) unless input[:property_values].nil?
        data
      end
    end

    # List Builder for AssetPropertyValueList
    class AssetPropertyValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AssetPropertyValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssetPropertyValue
    class AssetPropertyValue
      def self.build(input)
        data = {}
        data['value'] = Builders::AssetPropertyVariant.build(input[:value]) unless input[:value].nil?
        data['timestamp'] = Builders::AssetPropertyTimestamp.build(input[:timestamp]) unless input[:timestamp].nil?
        data['quality'] = input[:quality] unless input[:quality].nil?
        data
      end
    end

    # Structure Builder for AssetPropertyTimestamp
    class AssetPropertyTimestamp
      def self.build(input)
        data = {}
        data['timeInSeconds'] = input[:time_in_seconds] unless input[:time_in_seconds].nil?
        data['offsetInNanos'] = input[:offset_in_nanos] unless input[:offset_in_nanos].nil?
        data
      end
    end

    # Structure Builder for AssetPropertyVariant
    class AssetPropertyVariant
      def self.build(input)
        data = {}
        case input
        when Types::AssetPropertyVariant::StringValue
          data['stringValue'] = input
        when Types::AssetPropertyVariant::IntegerValue
          data['integerValue'] = input
        when Types::AssetPropertyVariant::DoubleValue
          data['doubleValue'] = input
        when Types::AssetPropertyVariant::BooleanValue
          data['booleanValue'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AssetPropertyVariant"
        end

        data
      end
    end

    # Structure Builder for IotEventsAction
    class IotEventsAction
      def self.build(input)
        data = {}
        data['inputName'] = input[:input_name] unless input[:input_name].nil?
        data['messageId'] = input[:message_id] unless input[:message_id].nil?
        data['batchMode'] = input[:batch_mode] unless input[:batch_mode].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for IotAnalyticsAction
    class IotAnalyticsAction
      def self.build(input)
        data = {}
        data['channelArn'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['batchMode'] = input[:batch_mode] unless input[:batch_mode].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for SalesforceAction
    class SalesforceAction
      def self.build(input)
        data = {}
        data['token'] = input[:token] unless input[:token].nil?
        data['url'] = input[:url] unless input[:url].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchAction
    class ElasticsearchAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['index'] = input[:index] unless input[:index].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for CloudwatchLogsAction
    class CloudwatchLogsAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['logGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data
      end
    end

    # Structure Builder for CloudwatchAlarmAction
    class CloudwatchAlarmAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['alarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        data['stateReason'] = input[:state_reason] unless input[:state_reason].nil?
        data['stateValue'] = input[:state_value] unless input[:state_value].nil?
        data
      end
    end

    # Structure Builder for CloudwatchMetricAction
    class CloudwatchMetricAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['metricNamespace'] = input[:metric_namespace] unless input[:metric_namespace].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['metricValue'] = input[:metric_value] unless input[:metric_value].nil?
        data['metricUnit'] = input[:metric_unit] unless input[:metric_unit].nil?
        data['metricTimestamp'] = input[:metric_timestamp] unless input[:metric_timestamp].nil?
        data
      end
    end

    # Structure Builder for FirehoseAction
    class FirehoseAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['deliveryStreamName'] = input[:delivery_stream_name] unless input[:delivery_stream_name].nil?
        data['separator'] = input[:separator] unless input[:separator].nil?
        data['batchMode'] = input[:batch_mode] unless input[:batch_mode].nil?
        data
      end
    end

    # Structure Builder for S3Action
    class S3Action
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['cannedAcl'] = input[:canned_acl] unless input[:canned_acl].nil?
        data
      end
    end

    # Structure Builder for RepublishAction
    class RepublishAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['topic'] = input[:topic] unless input[:topic].nil?
        data['qos'] = input[:qos] unless input[:qos].nil?
        data
      end
    end

    # Structure Builder for KinesisAction
    class KinesisAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['partitionKey'] = input[:partition_key] unless input[:partition_key].nil?
        data
      end
    end

    # Structure Builder for SqsAction
    class SqsAction
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['queueUrl'] = input[:queue_url] unless input[:queue_url].nil?
        data['useBase64'] = input[:use_base64] unless input[:use_base64].nil?
        data
      end
    end

    # Structure Builder for SnsAction
    class SnsAction
      def self.build(input)
        data = {}
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['messageFormat'] = input[:message_format] unless input[:message_format].nil?
        data
      end
    end

    # Structure Builder for LambdaAction
    class LambdaAction
      def self.build(input)
        data = {}
        data['functionArn'] = input[:function_arn] unless input[:function_arn].nil?
        data
      end
    end

    # Structure Builder for DynamoDBv2Action
    class DynamoDBv2Action
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['putItem'] = Builders::PutItemInput.build(input[:put_item]) unless input[:put_item].nil?
        data
      end
    end

    # Structure Builder for PutItemInput
    class PutItemInput
      def self.build(input)
        data = {}
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data
      end
    end

    # Structure Builder for DynamoDBAction
    class DynamoDBAction
      def self.build(input)
        data = {}
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['operation'] = input[:operation] unless input[:operation].nil?
        data['hashKeyField'] = input[:hash_key_field] unless input[:hash_key_field].nil?
        data['hashKeyValue'] = input[:hash_key_value] unless input[:hash_key_value].nil?
        data['hashKeyType'] = input[:hash_key_type] unless input[:hash_key_type].nil?
        data['rangeKeyField'] = input[:range_key_field] unless input[:range_key_field].nil?
        data['rangeKeyValue'] = input[:range_key_value] unless input[:range_key_value].nil?
        data['rangeKeyType'] = input[:range_key_type] unless input[:range_key_type].nil?
        data['payloadField'] = input[:payload_field] unless input[:payload_field].nil?
        data
      end
    end

    # List Builder for ActionList
    class ActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Action.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTopicRuleDestination
    class CreateTopicRuleDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/destinations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['destinationConfiguration'] = Builders::TopicRuleDestinationConfiguration.build(input[:destination_configuration]) unless input[:destination_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TopicRuleDestinationConfiguration
    class TopicRuleDestinationConfiguration
      def self.build(input)
        data = {}
        data['httpUrlConfiguration'] = Builders::HttpUrlDestinationConfiguration.build(input[:http_url_configuration]) unless input[:http_url_configuration].nil?
        data['vpcConfiguration'] = Builders::VpcDestinationConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for VpcDestinationConfiguration
    class VpcDestinationConfiguration
      def self.build(input)
        data = {}
        data['subnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroups'] = Builders::SecurityGroupList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # List Builder for SecurityGroupList
    class SecurityGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpUrlDestinationConfiguration
    class HttpUrlDestinationConfiguration
      def self.build(input)
        data = {}
        data['confirmationUrl'] = input[:confirmation_url] unless input[:confirmation_url].nil?
        data
      end
    end

    # Operation Builder for DeleteAccountAuditConfiguration
    class DeleteAccountAuditConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/audit/configuration')
        params = Hearth::Query::ParamList.new
        params['deleteScheduledAudits'] = input[:delete_scheduled_audits].to_s unless input[:delete_scheduled_audits].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAuditSuppression
    class DeleteAuditSuppression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/suppressions/delete')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAuthorizer
    class DeleteAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:authorizer_name].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/authorizer/%<authorizerName>s',
            authorizerName: Hearth::HTTP.uri_escape(input[:authorizer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBillingGroup
    class DeleteBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:billing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :billing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/billing-groups/%<billingGroupName>s',
            billingGroupName: Hearth::HTTP.uri_escape(input[:billing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCACertificate
    class DeleteCACertificate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cacertificate/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCertificate
    class DeleteCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/certificates/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['forceDelete'] = input[:force_delete].to_s unless input[:force_delete].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCustomMetric
    class DeleteCustomMetric
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDimension
    class DeleteDimension
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dimensions/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDomainConfiguration
    class DeleteDomainConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainConfigurations/%<domainConfigurationName>s',
            domainConfigurationName: Hearth::HTTP.uri_escape(input[:domain_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDynamicThingGroup
    class DeleteDynamicThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dynamic-thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFleetMetric
    class DeleteFleetMetric
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fleet-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJob
    class DeleteJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['force'] = input[:force].to_s unless input[:force].nil?
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJobExecution
    class DeleteJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        if input[:execution_number].to_s.empty?
          raise ArgumentError, "HTTP label :execution_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/%<jobId>s/executionNumber/%<executionNumber>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s),
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s),
            executionNumber: Hearth::HTTP.uri_escape(input[:execution_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['force'] = input[:force].to_s unless input[:force].nil?
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJobTemplate
    class DeleteJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:job_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/job-templates/%<jobTemplateId>s',
            jobTemplateId: Hearth::HTTP.uri_escape(input[:job_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMitigationAction
    class DeleteMitigationAction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:action_name].to_s.empty?
          raise ArgumentError, "HTTP label :action_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/mitigationactions/actions/%<actionName>s',
            actionName: Hearth::HTTP.uri_escape(input[:action_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteOTAUpdate
    class DeleteOTAUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:ota_update_id].to_s.empty?
          raise ArgumentError, "HTTP label :ota_update_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/otaUpdates/%<otaUpdateId>s',
            otaUpdateId: Hearth::HTTP.uri_escape(input[:ota_update_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['deleteStream'] = input[:delete_stream].to_s unless input[:delete_stream].nil?
        params['forceDeleteAWSJob'] = input[:force_delete_aws_job].to_s unless input[:force_delete_aws_job].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePolicyVersion
    class DeletePolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s/version/%<policyVersionId>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s),
            policyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProvisioningTemplate
    class DeleteProvisioningTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProvisioningTemplateVersion
    class DeleteProvisioningTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s/versions/%<versionId>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s),
            versionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRegistrationCode
    class DeleteRegistrationCode
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/registrationcode')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoleAlias
    class DeleteRoleAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:role_alias].to_s.empty?
          raise ArgumentError, "HTTP label :role_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/role-aliases/%<roleAlias>s',
            roleAlias: Hearth::HTTP.uri_escape(input[:role_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteScheduledAudit
    class DeleteScheduledAudit
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:scheduled_audit_name].to_s.empty?
          raise ArgumentError, "HTTP label :scheduled_audit_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/scheduledaudits/%<scheduledAuditName>s',
            scheduledAuditName: Hearth::HTTP.uri_escape(input[:scheduled_audit_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSecurityProfile
    class DeleteSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteStream
    class DeleteStream
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/streams/%<streamId>s',
            streamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteThing
    class DeleteThing
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteThingGroup
    class DeleteThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteThingType
    class DeleteThingType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-types/%<thingTypeName>s',
            thingTypeName: Hearth::HTTP.uri_escape(input[:thing_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTopicRule
    class DeleteTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTopicRuleDestination
    class DeleteTopicRuleDestination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/destinations/%<arn>s',
            arn: (input[:arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteV2LoggingLevel
    class DeleteV2LoggingLevel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/v2LoggingLevel')
        params = Hearth::Query::ParamList.new
        params['targetType'] = input[:target_type].to_s unless input[:target_type].nil?
        params['targetName'] = input[:target_name].to_s unless input[:target_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeprecateThingType
    class DeprecateThingType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-types/%<thingTypeName>s/deprecate',
            thingTypeName: Hearth::HTTP.uri_escape(input[:thing_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['undoDeprecate'] = input[:undo_deprecate] unless input[:undo_deprecate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAuditConfiguration
    class DescribeAccountAuditConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAuditFinding
    class DescribeAuditFinding
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:finding_id].to_s.empty?
          raise ArgumentError, "HTTP label :finding_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/findings/%<findingId>s',
            findingId: Hearth::HTTP.uri_escape(input[:finding_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAuditMitigationActionsTask
    class DescribeAuditMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/mitigationactions/tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAuditSuppression
    class DescribeAuditSuppression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/suppressions/describe')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAuditTask
    class DescribeAuditTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAuthorizer
    class DescribeAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:authorizer_name].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/authorizer/%<authorizerName>s',
            authorizerName: Hearth::HTTP.uri_escape(input[:authorizer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeBillingGroup
    class DescribeBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:billing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :billing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/billing-groups/%<billingGroupName>s',
            billingGroupName: Hearth::HTTP.uri_escape(input[:billing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCACertificate
    class DescribeCACertificate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cacertificate/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCertificate
    class DescribeCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/certificates/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCustomMetric
    class DescribeCustomMetric
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDefaultAuthorizer
    class DescribeDefaultAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/default-authorizer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDetectMitigationActionsTask
    class DescribeDetectMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detect/mitigationactions/tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDimension
    class DescribeDimension
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dimensions/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDomainConfiguration
    class DescribeDomainConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainConfigurations/%<domainConfigurationName>s',
            domainConfigurationName: Hearth::HTTP.uri_escape(input[:domain_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeEndpoint
    class DescribeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/endpoint')
        params = Hearth::Query::ParamList.new
        params['endpointType'] = input[:endpoint_type].to_s unless input[:endpoint_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeEventConfigurations
    class DescribeEventConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/event-configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFleetMetric
    class DescribeFleetMetric
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fleet-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIndex
    class DescribeIndex
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:index_name].to_s.empty?
          raise ArgumentError, "HTTP label :index_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/indices/%<indexName>s',
            indexName: Hearth::HTTP.uri_escape(input[:index_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJob
    class DescribeJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJobExecution
    class DescribeJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s),
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['executionNumber'] = input[:execution_number].to_s unless input[:execution_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJobTemplate
    class DescribeJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_template_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/job-templates/%<jobTemplateId>s',
            jobTemplateId: Hearth::HTTP.uri_escape(input[:job_template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeManagedJobTemplate
    class DescribeManagedJobTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/managed-job-templates/%<templateName>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['templateVersion'] = input[:template_version].to_s unless input[:template_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMitigationAction
    class DescribeMitigationAction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:action_name].to_s.empty?
          raise ArgumentError, "HTTP label :action_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/mitigationactions/actions/%<actionName>s',
            actionName: Hearth::HTTP.uri_escape(input[:action_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProvisioningTemplate
    class DescribeProvisioningTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProvisioningTemplateVersion
    class DescribeProvisioningTemplateVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        if input[:version_id].to_s.empty?
          raise ArgumentError, "HTTP label :version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s/versions/%<versionId>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s),
            versionId: Hearth::HTTP.uri_escape(input[:version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRoleAlias
    class DescribeRoleAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:role_alias].to_s.empty?
          raise ArgumentError, "HTTP label :role_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/role-aliases/%<roleAlias>s',
            roleAlias: Hearth::HTTP.uri_escape(input[:role_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeScheduledAudit
    class DescribeScheduledAudit
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:scheduled_audit_name].to_s.empty?
          raise ArgumentError, "HTTP label :scheduled_audit_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/scheduledaudits/%<scheduledAuditName>s',
            scheduledAuditName: Hearth::HTTP.uri_escape(input[:scheduled_audit_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSecurityProfile
    class DescribeSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeStream
    class DescribeStream
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/streams/%<streamId>s',
            streamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThing
    class DescribeThing
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThingGroup
    class DescribeThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThingRegistrationTask
    class DescribeThingRegistrationTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-registration-tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThingType
    class DescribeThingType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_type_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-types/%<thingTypeName>s',
            thingTypeName: Hearth::HTTP.uri_escape(input[:thing_type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DetachPolicy
    class DetachPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/target-policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['target'] = input[:target] unless input[:target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachPrincipalPolicy
    class DetachPrincipalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/principal-policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amzn-iot-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for DetachSecurityProfile
    class DetachSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s/targets',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['securityProfileTargetArn'] = input[:security_profile_target_arn].to_s unless input[:security_profile_target_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DetachThingPrincipal
    class DetachThingPrincipal
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/principals',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amzn-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for DisableTopicRule
    class DisableTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s/disable',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for EnableTopicRule
    class EnableTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s/enable',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBehaviorModelTrainingSummaries
    class GetBehaviorModelTrainingSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/behavior-model-training/summaries')
        params = Hearth::Query::ParamList.new
        params['securityProfileName'] = input[:security_profile_name].to_s unless input[:security_profile_name].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBucketsAggregation
    class GetBucketsAggregation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indices/buckets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        data['bucketsAggregationType'] = Builders::BucketsAggregationType.build(input[:buckets_aggregation_type]) unless input[:buckets_aggregation_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BucketsAggregationType
    class BucketsAggregationType
      def self.build(input)
        data = {}
        data['termsAggregation'] = Builders::TermsAggregation.build(input[:terms_aggregation]) unless input[:terms_aggregation].nil?
        data
      end
    end

    # Structure Builder for TermsAggregation
    class TermsAggregation
      def self.build(input)
        data = {}
        data['maxBuckets'] = input[:max_buckets] unless input[:max_buckets].nil?
        data
      end
    end

    # Operation Builder for GetCardinality
    class GetCardinality
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indices/cardinality')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEffectivePolicies
    class GetEffectivePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/effective-policies')
        params = Hearth::Query::ParamList.new
        params['thingName'] = input[:thing_name].to_s unless input[:thing_name].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['cognitoIdentityPoolId'] = input[:cognito_identity_pool_id] unless input[:cognito_identity_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIndexingConfiguration
    class GetIndexingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/indexing/config')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJobDocument
    class GetJobDocument
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s/job-document',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLoggingOptions
    class GetLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/loggingOptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetOTAUpdate
    class GetOTAUpdate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:ota_update_id].to_s.empty?
          raise ArgumentError, "HTTP label :ota_update_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/otaUpdates/%<otaUpdateId>s',
            otaUpdateId: Hearth::HTTP.uri_escape(input[:ota_update_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPercentiles
    class GetPercentiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indices/percentiles')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        data['percents'] = Builders::PercentList.build(input[:percents]) unless input[:percents].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PercentList
    class PercentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPolicyVersion
    class GetPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s/version/%<policyVersionId>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s),
            policyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRegistrationCode
    class GetRegistrationCode
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/registrationcode')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStatistics
    class GetStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indices/statistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTopicRule
    class GetTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTopicRuleDestination
    class GetTopicRuleDestination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:arn].to_s.empty?
          raise ArgumentError, "HTTP label :arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/destinations/%<arn>s',
            arn: (input[:arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetV2LoggingOptions
    class GetV2LoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v2LoggingOptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListActiveViolations
    class ListActiveViolations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/active-violations')
        params = Hearth::Query::ParamList.new
        params['thingName'] = input[:thing_name].to_s unless input[:thing_name].nil?
        params['securityProfileName'] = input[:security_profile_name].to_s unless input[:security_profile_name].nil?
        params['behaviorCriteriaType'] = input[:behavior_criteria_type].to_s unless input[:behavior_criteria_type].nil?
        params['listSuppressedAlerts'] = input[:list_suppressed_alerts].to_s unless input[:list_suppressed_alerts].nil?
        params['verificationState'] = input[:verification_state].to_s unless input[:verification_state].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttachedPolicies
    class ListAttachedPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:target].to_s.empty?
          raise ArgumentError, "HTTP label :target cannot be nil or empty."
        end
        http_req.append_path(format(
            '/attached-policies/%<target>s',
            target: Hearth::HTTP.uri_escape(input[:target].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['recursive'] = input[:recursive].to_s unless input[:recursive].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAuditFindings
    class ListAuditFindings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/findings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['taskId'] = input[:task_id] unless input[:task_id].nil?
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['listSuppressedFindings'] = input[:list_suppressed_findings] unless input[:list_suppressed_findings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAuditMitigationActionsExecutions
    class ListAuditMitigationActionsExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/mitigationactions/executions')
        params = Hearth::Query::ParamList.new
        params['taskId'] = input[:task_id].to_s unless input[:task_id].nil?
        params['actionStatus'] = input[:action_status].to_s unless input[:action_status].nil?
        params['findingId'] = input[:finding_id].to_s unless input[:finding_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAuditMitigationActionsTasks
    class ListAuditMitigationActionsTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/mitigationactions/tasks')
        params = Hearth::Query::ParamList.new
        params['auditTaskId'] = input[:audit_task_id].to_s unless input[:audit_task_id].nil?
        params['findingId'] = input[:finding_id].to_s unless input[:finding_id].nil?
        params['taskStatus'] = input[:task_status].to_s unless input[:task_status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAuditSuppressions
    class ListAuditSuppressions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/suppressions/list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        data['ascendingOrder'] = input[:ascending_order] unless input[:ascending_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAuditTasks
    class ListAuditTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/tasks')
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['taskType'] = input[:task_type].to_s unless input[:task_type].nil?
        params['taskStatus'] = input[:task_status].to_s unless input[:task_status].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAuthorizers
    class ListAuthorizers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/authorizers')
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBillingGroups
    class ListBillingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/billing-groups')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['namePrefixFilter'] = input[:name_prefix_filter].to_s unless input[:name_prefix_filter].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCACertificates
    class ListCACertificates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/cacertificates')
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCertificates
    class ListCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/certificates')
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCertificatesByCA
    class ListCertificatesByCA
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:ca_certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :ca_certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/certificates-by-ca/%<caCertificateId>s',
            caCertificateId: Hearth::HTTP.uri_escape(input[:ca_certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCustomMetrics
    class ListCustomMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/custom-metrics')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDetectMitigationActionsExecutions
    class ListDetectMitigationActionsExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/detect/mitigationactions/executions')
        params = Hearth::Query::ParamList.new
        params['taskId'] = input[:task_id].to_s unless input[:task_id].nil?
        params['violationId'] = input[:violation_id].to_s unless input[:violation_id].nil?
        params['thingName'] = input[:thing_name].to_s unless input[:thing_name].nil?
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDetectMitigationActionsTasks
    class ListDetectMitigationActionsTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/detect/mitigationactions/tasks')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDimensions
    class ListDimensions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/dimensions')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainConfigurations
    class ListDomainConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/domainConfigurations')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['serviceType'] = input[:service_type].to_s unless input[:service_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFleetMetrics
    class ListFleetMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/fleet-metrics')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIndices
    class ListIndices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/indices')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobExecutionsForJob
    class ListJobExecutionsForJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s/things',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobExecutionsForThing
    class ListJobExecutionsForThing
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/jobs',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['jobId'] = input[:job_id].to_s unless input[:job_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobTemplates
    class ListJobTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/job-templates')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['targetSelection'] = input[:target_selection].to_s unless input[:target_selection].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['thingGroupName'] = input[:thing_group_name].to_s unless input[:thing_group_name].nil?
        params['thingGroupId'] = input[:thing_group_id].to_s unless input[:thing_group_id].nil?
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListManagedJobTemplates
    class ListManagedJobTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/managed-job-templates')
        params = Hearth::Query::ParamList.new
        params['templateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMetricValues
    class ListMetricValues
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/metric-values')
        params = Hearth::Query::ParamList.new
        params['thingName'] = input[:thing_name].to_s unless input[:thing_name].nil?
        params['metricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        params['dimensionName'] = input[:dimension_name].to_s unless input[:dimension_name].nil?
        params['dimensionValueOperator'] = input[:dimension_value_operator].to_s unless input[:dimension_value_operator].nil?
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMitigationActions
    class ListMitigationActions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/mitigationactions/actions')
        params = Hearth::Query::ParamList.new
        params['actionType'] = input[:action_type].to_s unless input[:action_type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOTAUpdates
    class ListOTAUpdates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/otaUpdates')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['otaUpdateStatus'] = input[:ota_update_status].to_s unless input[:ota_update_status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOutgoingCertificates
    class ListOutgoingCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/certificates-out-going')
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPolicies
    class ListPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/policies')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPolicyPrincipals
    class ListPolicyPrincipals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/policy-principals')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amzn-iot-policy'] = input[:policy_name] unless input[:policy_name].nil? || input[:policy_name].empty?
      end
    end

    # Operation Builder for ListPolicyVersions
    class ListPolicyVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s/version',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPrincipalPolicies
    class ListPrincipalPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/principal-policies')
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amzn-iot-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for ListPrincipalThings
    class ListPrincipalThings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/principals/things')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amzn-principal'] = input[:principal] unless input[:principal].nil? || input[:principal].empty?
      end
    end

    # Operation Builder for ListProvisioningTemplateVersions
    class ListProvisioningTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s/versions',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProvisioningTemplates
    class ListProvisioningTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/provisioning-templates')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoleAliases
    class ListRoleAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/role-aliases')
        params = Hearth::Query::ParamList.new
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListScheduledAudits
    class ListScheduledAudits
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/audit/scheduledaudits')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSecurityProfiles
    class ListSecurityProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/security-profiles')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['dimensionName'] = input[:dimension_name].to_s unless input[:dimension_name].nil?
        params['metricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSecurityProfilesForTarget
    class ListSecurityProfilesForTarget
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/security-profiles-for-target')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['recursive'] = input[:recursive].to_s unless input[:recursive].nil?
        params['securityProfileTargetArn'] = input[:security_profile_target_arn].to_s unless input[:security_profile_target_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStreams
    class ListStreams
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/streams')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['isAscendingOrder'] = input[:ascending_order].to_s unless input[:ascending_order].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceArn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTargetsForPolicy
    class ListTargetsForPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policy-targets/%<policyName>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['marker'] = input[:marker].to_s unless input[:marker].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTargetsForSecurityProfile
    class ListTargetsForSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s/targets',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingGroups
    class ListThingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/thing-groups')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['parentGroup'] = input[:parent_group].to_s unless input[:parent_group].nil?
        params['namePrefixFilter'] = input[:name_prefix_filter].to_s unless input[:name_prefix_filter].nil?
        params['recursive'] = input[:recursive].to_s unless input[:recursive].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingGroupsForThing
    class ListThingGroupsForThing
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/thing-groups',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingPrincipals
    class ListThingPrincipals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/principals',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingRegistrationTaskReports
    class ListThingRegistrationTaskReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-registration-tasks/%<taskId>s/reports',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['reportType'] = input[:report_type].to_s unless input[:report_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingRegistrationTasks
    class ListThingRegistrationTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/thing-registration-tasks')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingTypes
    class ListThingTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/thing-types')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['thingTypeName'] = input[:thing_type_name].to_s unless input[:thing_type_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThings
    class ListThings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/things')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['attributeName'] = input[:attribute_name].to_s unless input[:attribute_name].nil?
        params['attributeValue'] = input[:attribute_value].to_s unless input[:attribute_value].nil?
        params['thingTypeName'] = input[:thing_type_name].to_s unless input[:thing_type_name].nil?
        params['usePrefixAttributeValue'] = input[:use_prefix_attribute_value].to_s unless input[:use_prefix_attribute_value].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingsInBillingGroup
    class ListThingsInBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:billing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :billing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/billing-groups/%<billingGroupName>s/things',
            billingGroupName: Hearth::HTTP.uri_escape(input[:billing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThingsInThingGroup
    class ListThingsInThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-groups/%<thingGroupName>s/things',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['recursive'] = input[:recursive].to_s unless input[:recursive].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTopicRuleDestinations
    class ListTopicRuleDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/destinations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTopicRules
    class ListTopicRules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/rules')
        params = Hearth::Query::ParamList.new
        params['topic'] = input[:topic].to_s unless input[:topic].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['ruleDisabled'] = input[:rule_disabled].to_s unless input[:rule_disabled].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListV2LoggingLevels
    class ListV2LoggingLevels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v2LoggingLevel')
        params = Hearth::Query::ParamList.new
        params['targetType'] = input[:target_type].to_s unless input[:target_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListViolationEvents
    class ListViolationEvents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/violation-events')
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['thingName'] = input[:thing_name].to_s unless input[:thing_name].nil?
        params['securityProfileName'] = input[:security_profile_name].to_s unless input[:security_profile_name].nil?
        params['behaviorCriteriaType'] = input[:behavior_criteria_type].to_s unless input[:behavior_criteria_type].nil?
        params['listSuppressedAlerts'] = input[:list_suppressed_alerts].to_s unless input[:list_suppressed_alerts].nil?
        params['verificationState'] = input[:verification_state].to_s unless input[:verification_state].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutVerificationStateOnViolation
    class PutVerificationStateOnViolation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:violation_id].to_s.empty?
          raise ArgumentError, "HTTP label :violation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/violations/verification-state/%<violationId>s',
            violationId: Hearth::HTTP.uri_escape(input[:violation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['verificationState'] = input[:verification_state] unless input[:verification_state].nil?
        data['verificationStateDescription'] = input[:verification_state_description] unless input[:verification_state_description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterCACertificate
    class RegisterCACertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cacertificate')
        params = Hearth::Query::ParamList.new
        params['setAsActive'] = input[:set_as_active].to_s unless input[:set_as_active].nil?
        params['allowAutoRegistration'] = input[:allow_auto_registration].to_s unless input[:allow_auto_registration].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['caCertificate'] = input[:ca_certificate] unless input[:ca_certificate].nil?
        data['verificationCertificate'] = input[:verification_certificate] unless input[:verification_certificate].nil?
        data['registrationConfig'] = Builders::RegistrationConfig.build(input[:registration_config]) unless input[:registration_config].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RegistrationConfig
    class RegistrationConfig
      def self.build(input)
        data = {}
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Operation Builder for RegisterCertificate
    class RegisterCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/certificate/register')
        params = Hearth::Query::ParamList.new
        params['setAsActive'] = input[:set_as_active].to_s unless input[:set_as_active].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['certificatePem'] = input[:certificate_pem] unless input[:certificate_pem].nil?
        data['caCertificatePem'] = input[:ca_certificate_pem] unless input[:ca_certificate_pem].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterCertificateWithoutCA
    class RegisterCertificateWithoutCA
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/certificate/register-no-ca')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['certificatePem'] = input[:certificate_pem] unless input[:certificate_pem].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterThing
    class RegisterThing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/things')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Parameters
    class Parameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for RejectCertificateTransfer
    class RejectCertificateTransfer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/reject-certificate-transfer/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['rejectReason'] = input[:reject_reason] unless input[:reject_reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveThingFromBillingGroup
    class RemoveThingFromBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/billing-groups/removeThingFromBillingGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['billingGroupName'] = input[:billing_group_name] unless input[:billing_group_name].nil?
        data['billingGroupArn'] = input[:billing_group_arn] unless input[:billing_group_arn].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['thingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveThingFromThingGroup
    class RemoveThingFromThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/thing-groups/removeThingFromThingGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingGroupName'] = input[:thing_group_name] unless input[:thing_group_name].nil?
        data['thingGroupArn'] = input[:thing_group_arn] unless input[:thing_group_arn].nil?
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['thingArn'] = input[:thing_arn] unless input[:thing_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReplaceTopicRule
    class ReplaceTopicRule
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rule_name].to_s.empty?
          raise ArgumentError, "HTTP label :rule_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rules/%<ruleName>s',
            ruleName: Hearth::HTTP.uri_escape(input[:rule_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::TopicRulePayload.build(input[:topic_rule_payload]) unless input[:topic_rule_payload].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchIndex
    class SearchIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indices/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetDefaultAuthorizer
    class SetDefaultAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/default-authorizer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerName'] = input[:authorizer_name] unless input[:authorizer_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:policy_name].to_s.empty?
          raise ArgumentError, "HTTP label :policy_name cannot be nil or empty."
        end
        if input[:policy_version_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_version_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<policyName>s/version/%<policyVersionId>s',
            policyName: Hearth::HTTP.uri_escape(input[:policy_name].to_s),
            policyVersionId: Hearth::HTTP.uri_escape(input[:policy_version_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SetLoggingOptions
    class SetLoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/loggingOptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = Builders::LoggingOptionsPayload.build(input[:logging_options_payload]) unless input[:logging_options_payload].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingOptionsPayload
    class LoggingOptionsPayload
      def self.build(input)
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['logLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Operation Builder for SetV2LoggingLevel
    class SetV2LoggingLevel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v2LoggingLevel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['logTarget'] = Builders::LogTarget.build(input[:log_target]) unless input[:log_target].nil?
        data['logLevel'] = input[:log_level] unless input[:log_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LogTarget
    class LogTarget
      def self.build(input)
        data = {}
        data['targetType'] = input[:target_type] unless input[:target_type].nil?
        data['targetName'] = input[:target_name] unless input[:target_name].nil?
        data
      end
    end

    # Operation Builder for SetV2LoggingOptions
    class SetV2LoggingOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v2LoggingOptions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['defaultLogLevel'] = input[:default_log_level] unless input[:default_log_level].nil?
        data['disableAllLogs'] = input[:disable_all_logs] unless input[:disable_all_logs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartAuditMitigationActionsTask
    class StartAuditMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/mitigationactions/tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['target'] = Builders::AuditMitigationActionsTaskTarget.build(input[:target]) unless input[:target].nil?
        data['auditCheckToActionsMapping'] = Builders::AuditCheckToActionsMapping.build(input[:audit_check_to_actions_mapping]) unless input[:audit_check_to_actions_mapping].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AuditCheckToActionsMapping
    class AuditCheckToActionsMapping
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::MitigationActionNameList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for MitigationActionNameList
    class MitigationActionNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AuditMitigationActionsTaskTarget
    class AuditMitigationActionsTaskTarget
      def self.build(input)
        data = {}
        data['auditTaskId'] = input[:audit_task_id] unless input[:audit_task_id].nil?
        data['findingIds'] = Builders::FindingIds.build(input[:finding_ids]) unless input[:finding_ids].nil?
        data['auditCheckToReasonCodeFilter'] = Builders::AuditCheckToReasonCodeFilter.build(input[:audit_check_to_reason_code_filter]) unless input[:audit_check_to_reason_code_filter].nil?
        data
      end
    end

    # Map Builder for AuditCheckToReasonCodeFilter
    class AuditCheckToReasonCodeFilter
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ReasonForNonComplianceCodes.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for ReasonForNonComplianceCodes
    class ReasonForNonComplianceCodes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for FindingIds
    class FindingIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartDetectMitigationActionsTask
    class StartDetectMitigationActionsTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/detect/mitigationactions/tasks/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['target'] = Builders::DetectMitigationActionsTaskTarget.build(input[:target]) unless input[:target].nil?
        data['actions'] = Builders::DetectMitigationActionsToExecuteList.build(input[:actions]) unless input[:actions].nil?
        data['violationEventOccurrenceRange'] = Builders::ViolationEventOccurrenceRange.build(input[:violation_event_occurrence_range]) unless input[:violation_event_occurrence_range].nil?
        data['includeOnlyActiveViolations'] = input[:include_only_active_violations] unless input[:include_only_active_violations].nil?
        data['includeSuppressedAlerts'] = input[:include_suppressed_alerts] unless input[:include_suppressed_alerts].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ViolationEventOccurrenceRange
    class ViolationEventOccurrenceRange
      def self.build(input)
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data
      end
    end

    # List Builder for DetectMitigationActionsToExecuteList
    class DetectMitigationActionsToExecuteList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DetectMitigationActionsTaskTarget
    class DetectMitigationActionsTaskTarget
      def self.build(input)
        data = {}
        data['violationIds'] = Builders::TargetViolationIdsForDetectMitigationActions.build(input[:violation_ids]) unless input[:violation_ids].nil?
        data['securityProfileName'] = input[:security_profile_name] unless input[:security_profile_name].nil?
        data['behaviorName'] = input[:behavior_name] unless input[:behavior_name].nil?
        data
      end
    end

    # List Builder for TargetViolationIdsForDetectMitigationActions
    class TargetViolationIdsForDetectMitigationActions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartOnDemandAuditTask
    class StartOnDemandAuditTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/audit/tasks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targetCheckNames'] = Builders::TargetAuditCheckNames.build(input[:target_check_names]) unless input[:target_check_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartThingRegistrationTask
    class StartThingRegistrationTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/thing-registration-tasks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['templateBody'] = input[:template_body] unless input[:template_body].nil?
        data['inputFileBucket'] = input[:input_file_bucket] unless input[:input_file_bucket].nil?
        data['inputFileKey'] = input[:input_file_key] unless input[:input_file_key].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopThingRegistrationTask
    class StopThingRegistrationTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-registration-tasks/%<taskId>s/cancel',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestAuthorization
    class TestAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/test-authorization')
        params = Hearth::Query::ParamList.new
        params['clientId'] = input[:client_id].to_s unless input[:client_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['principal'] = input[:principal] unless input[:principal].nil?
        data['cognitoIdentityPoolId'] = input[:cognito_identity_pool_id] unless input[:cognito_identity_pool_id].nil?
        data['authInfos'] = Builders::AuthInfos.build(input[:auth_infos]) unless input[:auth_infos].nil?
        data['policyNamesToAdd'] = Builders::PolicyNames.build(input[:policy_names_to_add]) unless input[:policy_names_to_add].nil?
        data['policyNamesToSkip'] = Builders::PolicyNames.build(input[:policy_names_to_skip]) unless input[:policy_names_to_skip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PolicyNames
    class PolicyNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AuthInfos
    class AuthInfos
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AuthInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AuthInfo
    class AuthInfo
      def self.build(input)
        data = {}
        data['actionType'] = input[:action_type] unless input[:action_type].nil?
        data['resources'] = Builders::Resources.build(input[:resources]) unless input[:resources].nil?
        data
      end
    end

    # List Builder for Resources
    class Resources
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:authorizer_name].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/authorizer/%<authorizerName>s/test',
            authorizerName: Hearth::HTTP.uri_escape(input[:authorizer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['token'] = input[:token] unless input[:token].nil?
        data['tokenSignature'] = input[:token_signature] unless input[:token_signature].nil?
        data['httpContext'] = Builders::HttpContext.build(input[:http_context]) unless input[:http_context].nil?
        data['mqttContext'] = Builders::MqttContext.build(input[:mqtt_context]) unless input[:mqtt_context].nil?
        data['tlsContext'] = Builders::TlsContext.build(input[:tls_context]) unless input[:tls_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TlsContext
    class TlsContext
      def self.build(input)
        data = {}
        data['serverName'] = input[:server_name] unless input[:server_name].nil?
        data
      end
    end

    # Structure Builder for MqttContext
    class MqttContext
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = Base64::encode64(input[:password]).strip unless input[:password].nil?
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data
      end
    end

    # Structure Builder for HttpContext
    class HttpContext
      def self.build(input)
        data = {}
        data['headers'] = Builders::HttpHeaders.build(input[:headers]) unless input[:headers].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data
      end
    end

    # Map Builder for HttpHeaders
    class HttpHeaders
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for TransferCertificate
    class TransferCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/transfer-certificate/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['targetAwsAccount'] = input[:target_aws_account].to_s unless input[:target_aws_account].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['transferMessage'] = input[:transfer_message] unless input[:transfer_message].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/untag')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateAccountAuditConfiguration
    class UpdateAccountAuditConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/audit/configuration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['auditNotificationTargetConfigurations'] = Builders::AuditNotificationTargetConfigurations.build(input[:audit_notification_target_configurations]) unless input[:audit_notification_target_configurations].nil?
        data['auditCheckConfigurations'] = Builders::AuditCheckConfigurations.build(input[:audit_check_configurations]) unless input[:audit_check_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for AuditCheckConfigurations
    class AuditCheckConfigurations
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AuditCheckConfiguration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AuditCheckConfiguration
    class AuditCheckConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Map Builder for AuditNotificationTargetConfigurations
    class AuditNotificationTargetConfigurations
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AuditNotificationTarget.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AuditNotificationTarget
    class AuditNotificationTarget
      def self.build(input)
        data = {}
        data['targetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateAuditSuppression
    class UpdateAuditSuppression
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/audit/suppressions/update')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['checkName'] = input[:check_name] unless input[:check_name].nil?
        data['resourceIdentifier'] = Builders::ResourceIdentifier.build(input[:resource_identifier]) unless input[:resource_identifier].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(input[:expiration_date]).to_i unless input[:expiration_date].nil?
        data['suppressIndefinitely'] = input[:suppress_indefinitely] unless input[:suppress_indefinitely].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAuthorizer
    class UpdateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:authorizer_name].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/authorizer/%<authorizerName>s',
            authorizerName: Hearth::HTTP.uri_escape(input[:authorizer_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerFunctionArn'] = input[:authorizer_function_arn] unless input[:authorizer_function_arn].nil?
        data['tokenKeyName'] = input[:token_key_name] unless input[:token_key_name].nil?
        data['tokenSigningPublicKeys'] = Builders::PublicKeyMap.build(input[:token_signing_public_keys]) unless input[:token_signing_public_keys].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['enableCachingForHttp'] = input[:enable_caching_for_http] unless input[:enable_caching_for_http].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBillingGroup
    class UpdateBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:billing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :billing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/billing-groups/%<billingGroupName>s',
            billingGroupName: Hearth::HTTP.uri_escape(input[:billing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['billingGroupProperties'] = Builders::BillingGroupProperties.build(input[:billing_group_properties]) unless input[:billing_group_properties].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCACertificate
    class UpdateCACertificate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cacertificate/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['newStatus'] = input[:new_status].to_s unless input[:new_status].nil?
        params['newAutoRegistrationStatus'] = input[:new_auto_registration_status].to_s unless input[:new_auto_registration_status].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['registrationConfig'] = Builders::RegistrationConfig.build(input[:registration_config]) unless input[:registration_config].nil?
        data['removeAutoRegistration'] = input[:remove_auto_registration] unless input[:remove_auto_registration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCertificate
    class UpdateCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/certificates/%<certificateId>s',
            certificateId: Hearth::HTTP.uri_escape(input[:certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['newStatus'] = input[:new_status].to_s unless input[:new_status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateCustomMetric
    class UpdateCustomMetric
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/custom-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDimension
    class UpdateDimension
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dimensions/%<name>s',
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['stringValues'] = Builders::DimensionStringValues.build(input[:string_values]) unless input[:string_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainConfiguration
    class UpdateDomainConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:domain_configuration_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_configuration_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainConfigurations/%<domainConfigurationName>s',
            domainConfigurationName: Hearth::HTTP.uri_escape(input[:domain_configuration_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerConfig'] = Builders::AuthorizerConfig.build(input[:authorizer_config]) unless input[:authorizer_config].nil?
        data['domainConfigurationStatus'] = input[:domain_configuration_status] unless input[:domain_configuration_status].nil?
        data['removeAuthorizerConfig'] = input[:remove_authorizer_config] unless input[:remove_authorizer_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDynamicThingGroup
    class UpdateDynamicThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/dynamic-thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingGroupProperties'] = Builders::ThingGroupProperties.build(input[:thing_group_properties]) unless input[:thing_group_properties].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventConfigurations
    class UpdateEventConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/event-configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['eventConfigurations'] = Builders::EventConfigurations.build(input[:event_configurations]) unless input[:event_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for EventConfigurations
    class EventConfigurations
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Configuration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Operation Builder for UpdateFleetMetric
    class UpdateFleetMetric
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:metric_name].to_s.empty?
          raise ArgumentError, "HTTP label :metric_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/fleet-metric/%<metricName>s',
            metricName: Hearth::HTTP.uri_escape(input[:metric_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['queryString'] = input[:query_string] unless input[:query_string].nil?
        data['aggregationType'] = Builders::AggregationType.build(input[:aggregation_type]) unless input[:aggregation_type].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data['aggregationField'] = input[:aggregation_field] unless input[:aggregation_field].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['queryVersion'] = input[:query_version] unless input[:query_version].nil?
        data['indexName'] = input[:index_name] unless input[:index_name].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIndexingConfiguration
    class UpdateIndexingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/indexing/config')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingIndexingConfiguration'] = Builders::ThingIndexingConfiguration.build(input[:thing_indexing_configuration]) unless input[:thing_indexing_configuration].nil?
        data['thingGroupIndexingConfiguration'] = Builders::ThingGroupIndexingConfiguration.build(input[:thing_group_indexing_configuration]) unless input[:thing_group_indexing_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ThingGroupIndexingConfiguration
    class ThingGroupIndexingConfiguration
      def self.build(input)
        data = {}
        data['thingGroupIndexingMode'] = input[:thing_group_indexing_mode] unless input[:thing_group_indexing_mode].nil?
        data['managedFields'] = Builders::Fields.build(input[:managed_fields]) unless input[:managed_fields].nil?
        data['customFields'] = Builders::Fields.build(input[:custom_fields]) unless input[:custom_fields].nil?
        data
      end
    end

    # List Builder for Fields
    class Fields
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Field.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Field
    class Field
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ThingIndexingConfiguration
    class ThingIndexingConfiguration
      def self.build(input)
        data = {}
        data['thingIndexingMode'] = input[:thing_indexing_mode] unless input[:thing_indexing_mode].nil?
        data['thingConnectivityIndexingMode'] = input[:thing_connectivity_indexing_mode] unless input[:thing_connectivity_indexing_mode].nil?
        data['deviceDefenderIndexingMode'] = input[:device_defender_indexing_mode] unless input[:device_defender_indexing_mode].nil?
        data['namedShadowIndexingMode'] = input[:named_shadow_indexing_mode] unless input[:named_shadow_indexing_mode].nil?
        data['managedFields'] = Builders::Fields.build(input[:managed_fields]) unless input[:managed_fields].nil?
        data['customFields'] = Builders::Fields.build(input[:custom_fields]) unless input[:custom_fields].nil?
        data
      end
    end

    # Operation Builder for UpdateJob
    class UpdateJob
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<jobId>s',
            jobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespaceId'] = input[:namespace_id].to_s unless input[:namespace_id].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['presignedUrlConfig'] = Builders::PresignedUrlConfig.build(input[:presigned_url_config]) unless input[:presigned_url_config].nil?
        data['jobExecutionsRolloutConfig'] = Builders::JobExecutionsRolloutConfig.build(input[:job_executions_rollout_config]) unless input[:job_executions_rollout_config].nil?
        data['abortConfig'] = Builders::AbortConfig.build(input[:abort_config]) unless input[:abort_config].nil?
        data['timeoutConfig'] = Builders::TimeoutConfig.build(input[:timeout_config]) unless input[:timeout_config].nil?
        data['jobExecutionsRetryConfig'] = Builders::JobExecutionsRetryConfig.build(input[:job_executions_retry_config]) unless input[:job_executions_retry_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMitigationAction
    class UpdateMitigationAction
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:action_name].to_s.empty?
          raise ArgumentError, "HTTP label :action_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/mitigationactions/actions/%<actionName>s',
            actionName: Hearth::HTTP.uri_escape(input[:action_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['actionParams'] = Builders::MitigationActionParams.build(input[:action_params]) unless input[:action_params].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProvisioningTemplate
    class UpdateProvisioningTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:template_name].to_s.empty?
          raise ArgumentError, "HTTP label :template_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/provisioning-templates/%<templateName>s',
            templateName: Hearth::HTTP.uri_escape(input[:template_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['defaultVersionId'] = input[:default_version_id] unless input[:default_version_id].nil?
        data['provisioningRoleArn'] = input[:provisioning_role_arn] unless input[:provisioning_role_arn].nil?
        data['preProvisioningHook'] = Builders::ProvisioningHook.build(input[:pre_provisioning_hook]) unless input[:pre_provisioning_hook].nil?
        data['removePreProvisioningHook'] = input[:remove_pre_provisioning_hook] unless input[:remove_pre_provisioning_hook].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoleAlias
    class UpdateRoleAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:role_alias].to_s.empty?
          raise ArgumentError, "HTTP label :role_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/role-aliases/%<roleAlias>s',
            roleAlias: Hearth::HTTP.uri_escape(input[:role_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['credentialDurationSeconds'] = input[:credential_duration_seconds] unless input[:credential_duration_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateScheduledAudit
    class UpdateScheduledAudit
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:scheduled_audit_name].to_s.empty?
          raise ArgumentError, "HTTP label :scheduled_audit_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/audit/scheduledaudits/%<scheduledAuditName>s',
            scheduledAuditName: Hearth::HTTP.uri_escape(input[:scheduled_audit_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['frequency'] = input[:frequency] unless input[:frequency].nil?
        data['dayOfMonth'] = input[:day_of_month] unless input[:day_of_month].nil?
        data['dayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data['targetCheckNames'] = Builders::TargetAuditCheckNames.build(input[:target_check_names]) unless input[:target_check_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSecurityProfile
    class UpdateSecurityProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:security_profile_name].to_s.empty?
          raise ArgumentError, "HTTP label :security_profile_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/security-profiles/%<securityProfileName>s',
            securityProfileName: Hearth::HTTP.uri_escape(input[:security_profile_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['expectedVersion'] = input[:expected_version].to_s unless input[:expected_version].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['securityProfileDescription'] = input[:security_profile_description] unless input[:security_profile_description].nil?
        data['behaviors'] = Builders::Behaviors.build(input[:behaviors]) unless input[:behaviors].nil?
        data['alertTargets'] = Builders::AlertTargets.build(input[:alert_targets]) unless input[:alert_targets].nil?
        data['additionalMetricsToRetain'] = Builders::AdditionalMetricsToRetainList.build(input[:additional_metrics_to_retain]) unless input[:additional_metrics_to_retain].nil?
        data['additionalMetricsToRetainV2'] = Builders::AdditionalMetricsToRetainV2List.build(input[:additional_metrics_to_retain_v2]) unless input[:additional_metrics_to_retain_v2].nil?
        data['deleteBehaviors'] = input[:delete_behaviors] unless input[:delete_behaviors].nil?
        data['deleteAlertTargets'] = input[:delete_alert_targets] unless input[:delete_alert_targets].nil?
        data['deleteAdditionalMetricsToRetain'] = input[:delete_additional_metrics_to_retain] unless input[:delete_additional_metrics_to_retain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStream
    class UpdateStream
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/streams/%<streamId>s',
            streamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['files'] = Builders::StreamFiles.build(input[:files]) unless input[:files].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThing
    class UpdateThing
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingTypeName'] = input[:thing_type_name] unless input[:thing_type_name].nil?
        data['attributePayload'] = Builders::AttributePayload.build(input[:attribute_payload]) unless input[:attribute_payload].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        data['removeThingType'] = input[:remove_thing_type] unless input[:remove_thing_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThingGroup
    class UpdateThingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:thing_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/thing-groups/%<thingGroupName>s',
            thingGroupName: Hearth::HTTP.uri_escape(input[:thing_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingGroupProperties'] = Builders::ThingGroupProperties.build(input[:thing_group_properties]) unless input[:thing_group_properties].nil?
        data['expectedVersion'] = input[:expected_version] unless input[:expected_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThingGroupsForThing
    class UpdateThingGroupsForThing
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/thing-groups/updateThingGroupsForThing')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['thingGroupsToAdd'] = Builders::ThingGroupList.build(input[:thing_groups_to_add]) unless input[:thing_groups_to_add].nil?
        data['thingGroupsToRemove'] = Builders::ThingGroupList.build(input[:thing_groups_to_remove]) unless input[:thing_groups_to_remove].nil?
        data['overrideDynamicGroups'] = input[:override_dynamic_groups] unless input[:override_dynamic_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ThingGroupList
    class ThingGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateTopicRuleDestination
    class UpdateTopicRuleDestination
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/destinations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidateSecurityProfileBehaviors
    class ValidateSecurityProfileBehaviors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/security-profile-behaviors/validate')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['behaviors'] = Builders::Behaviors.build(input[:behaviors]) unless input[:behaviors].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
