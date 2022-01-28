# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Sts
  module Builders

    # Operation Builder for AssumeRole
    class AssumeRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'AssumeRole'
        query['Version'] = '2011-06-15'
        query[context + 'RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        query[context + 'RoleSessionName'] = input[:role_session_name] unless input[:role_session_name].nil?
        Builders::PolicyDescriptorListType.build(input[:policy_arns], query, context: context + 'PolicyArns' + '.') unless input[:policy_arns].nil?
        query[context + 'Policy'] = input[:policy] unless input[:policy].nil?
        query[context + 'DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        Builders::TagListType.build(input[:tags], query, context: context + 'Tags' + '.') unless input[:tags].nil?
        Builders::TagKeyListType.build(input[:transitive_tag_keys], query, context: context + 'TransitiveTagKeys' + '.') unless input[:transitive_tag_keys].nil?
        query[context + 'ExternalId'] = input[:external_id] unless input[:external_id].nil?
        query[context + 'SerialNumber'] = input[:serial_number] unless input[:serial_number].nil?
        query[context + 'TokenCode'] = input[:token_code] unless input[:token_code].nil?
        query[context + 'SourceIdentity'] = input[:source_identity] unless input[:source_identity].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # List Builder for tagKeyListType
    class TagKeyListType
      def self.build(input, query, context: '')
        input.each_with_index do |element, index|
          query[context + "member.#{index+1}"] = element unless element.nil?
        end
      end
    end

    # List Builder for tagListType
    class TagListType
      def self.build(input, query, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, query, context: context + "member.#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, query, context: nil)
        query[context + 'Key'] = input[:key] unless input[:key].nil?
        query[context + 'Value'] = input[:value] unless input[:value].nil?
      end
    end

    # List Builder for policyDescriptorListType
    class PolicyDescriptorListType
      def self.build(input, query, context: '')
        input.each_with_index do |element, index|
          Builders::PolicyDescriptorType.build(element, query, context: context + "member.#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PolicyDescriptorType
    class PolicyDescriptorType
      def self.build(input, query, context: nil)
        query[context + 'arn'] = input[:arn] unless input[:arn].nil?
      end
    end

    # Operation Builder for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'AssumeRoleWithSAML'
        query['Version'] = '2011-06-15'
        query[context + 'RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        query[context + 'PrincipalArn'] = input[:principal_arn] unless input[:principal_arn].nil?
        query[context + 'SAMLAssertion'] = input[:saml_assertion] unless input[:saml_assertion].nil?
        Builders::PolicyDescriptorListType.build(input[:policy_arns], query, context: context + 'PolicyArns' + '.') unless input[:policy_arns].nil?
        query[context + 'Policy'] = input[:policy] unless input[:policy].nil?
        query[context + 'DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'AssumeRoleWithWebIdentity'
        query['Version'] = '2011-06-15'
        query[context + 'RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        query[context + 'RoleSessionName'] = input[:role_session_name] unless input[:role_session_name].nil?
        query[context + 'WebIdentityToken'] = input[:web_identity_token] unless input[:web_identity_token].nil?
        query[context + 'ProviderId'] = input[:provider_id] unless input[:provider_id].nil?
        Builders::PolicyDescriptorListType.build(input[:policy_arns], query, context: context + 'PolicyArns' + '.') unless input[:policy_arns].nil?
        query[context + 'Policy'] = input[:policy] unless input[:policy].nil?
        query[context + 'DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'DecodeAuthorizationMessage'
        query['Version'] = '2011-06-15'
        query[context + 'EncodedMessage'] = input[:encoded_message] unless input[:encoded_message].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'GetAccessKeyInfo'
        query['Version'] = '2011-06-15'
        query[context + 'AccessKeyId'] = input[:access_key_id] unless input[:access_key_id].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for GetCallerIdentity
    class GetCallerIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'GetCallerIdentity'
        query['Version'] = '2011-06-15'
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for GetFederationToken
    class GetFederationToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'GetFederationToken'
        query['Version'] = '2011-06-15'
        query[context + 'Name'] = input[:member_name] unless input[:member_name].nil?
        query[context + 'Policy'] = input[:policy] unless input[:policy].nil?
        Builders::PolicyDescriptorListType.build(input[:policy_arns], query, context: context + 'PolicyArns' + '.') unless input[:policy_arns].nil?
        query[context + 'DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        Builders::TagListType.build(input[:tags], query, context: context + 'Tags' + '.') unless input[:tags].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end

    # Operation Builder for GetSessionToken
    class GetSessionToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        query = {}
        context = ''
        query['Action'] = 'GetSessionToken'
        query['Version'] = '2011-06-15'
        query[context + 'DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        query[context + 'SerialNumber'] = input[:serial_number] unless input[:serial_number].nil?
        query[context + 'TokenCode'] = input[:token_code] unless input[:token_code].nil?
        params = query.map { |k, v| "#{k}=#{v}" }.join("&")
        http_req.body = StringIO.new(params)
      end
    end
  end
end
