# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::STS
  # @api private
  module Builders

    # Operation Builder for AssumeRole
    class AssumeRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssumeRole'
        params['Version'] = '2011-06-15'
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'RoleSessionName'] = input[:role_session_name].to_s unless input[:role_session_name].nil?
        Types::PolicyDescriptorListType.build(input[:policy_arns], params, context: context + 'PolicyArns' + '.member') unless input[:policy_arns].nil?
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        Types::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        Types::TagKeyListType.build(input[:transitive_tag_keys], params, context: context + 'TransitiveTagKeys' + '.member') unless input[:transitive_tag_keys].nil?
        params[context + 'ExternalId'] = input[:external_id].to_s unless input[:external_id].nil?
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        params[context + 'TokenCode'] = input[:token_code].to_s unless input[:token_code].nil?
        params[context + 'SourceIdentity'] = input[:source_identity].to_s unless input[:source_identity].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssumeRoleWithSAML'
        params['Version'] = '2011-06-15'
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'PrincipalArn'] = input[:principal_arn].to_s unless input[:principal_arn].nil?
        params[context + 'SAMLAssertion'] = input[:saml_assertion].to_s unless input[:saml_assertion].nil?
        Types::PolicyDescriptorListType.build(input[:policy_arns], params, context: context + 'PolicyArns' + '.member') unless input[:policy_arns].nil?
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AssumeRoleWithWebIdentity'
        params['Version'] = '2011-06-15'
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'RoleSessionName'] = input[:role_session_name].to_s unless input[:role_session_name].nil?
        params[context + 'WebIdentityToken'] = input[:web_identity_token].to_s unless input[:web_identity_token].nil?
        params[context + 'ProviderId'] = input[:provider_id].to_s unless input[:provider_id].nil?
        Types::PolicyDescriptorListType.build(input[:policy_arns], params, context: context + 'PolicyArns' + '.member') unless input[:policy_arns].nil?
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DecodeAuthorizationMessage'
        params['Version'] = '2011-06-15'
        params[context + 'EncodedMessage'] = input[:encoded_message].to_s unless input[:encoded_message].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccessKeyInfo'
        params['Version'] = '2011-06-15'
        params[context + 'AccessKeyId'] = input[:access_key_id].to_s unless input[:access_key_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetCallerIdentity
    class GetCallerIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetCallerIdentity'
        params['Version'] = '2011-06-15'
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetFederationToken
    class GetFederationToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetFederationToken'
        params['Version'] = '2011-06-15'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Policy'] = input[:policy].to_s unless input[:policy].nil?
        Types::PolicyDescriptorListType.build(input[:policy_arns], params, context: context + 'PolicyArns' + '.member') unless input[:policy_arns].nil?
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        Types::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSessionToken
    class GetSessionToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSessionToken'
        params['Version'] = '2011-06-15'
        params[context + 'DurationSeconds'] = input[:duration_seconds].to_s unless input[:duration_seconds].nil?
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        params[context + 'TokenCode'] = input[:token_code].to_s unless input[:token_code].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for PolicyDescriptorType
    class PolicyDescriptorType
      def self.build(input, params, context: nil)
        params[context + 'arn'] = input[:arn].to_s unless input[:arn].nil?
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for policyDescriptorListType
    class PolicyDescriptorListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Types::PolicyDescriptorType.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # List Builder for tagKeyListType
    class TagKeyListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for tagListType
    class TagListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Types::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end
  end
end
