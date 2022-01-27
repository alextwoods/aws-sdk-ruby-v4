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
      end
    end

    # List Builder for tagKeyListType
    class TagKeyListType
    end

    # List Builder for tagListType
    class TagListType
    end

    # Structure Builder for Tag
    class Tag
    end

    # List Builder for policyDescriptorListType
    class PolicyDescriptorListType
    end

    # Structure Builder for PolicyDescriptorType
    class PolicyDescriptorType
    end

    # Operation Builder for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetCallerIdentity
    class GetCallerIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetFederationToken
    class GetFederationToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end

    # Operation Builder for GetSessionToken
    class GetSessionToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
      end
    end
  end
end
