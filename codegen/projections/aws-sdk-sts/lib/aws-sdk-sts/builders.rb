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
    end

    # List Builder for tagKeyListType
    class TagKeyListType
      def self.build(input, query, context: '')
        input.each_with_index do |element, index|
          query[context + ".#{index+1}"] = element unless element.nil?
        end
      end
    end

    # List Builder for tagListType
    class TagListType
      def self.build(input, query, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, query, context: context + ".#{index+1}" + '.') unless element.nil?
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
          Builders::PolicyDescriptorType.build(element, query, context: context + ".#{index+1}" + '.') unless element.nil?
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
    end

    # Operation Builder for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
    end

    # Operation Builder for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
    end

    # Operation Builder for GetAccessKeyInfo
    class GetAccessKeyInfo
    end

    # Operation Builder for GetCallerIdentity
    class GetCallerIdentity
    end

    # Operation Builder for GetFederationToken
    class GetFederationToken
    end

    # Operation Builder for GetSessionToken
    class GetSessionToken
    end
  end
end
