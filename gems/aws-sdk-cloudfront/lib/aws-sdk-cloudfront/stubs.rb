# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFront
  module Stubs

    # Operation Stubber for AssociateAlias
    class AssociateAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCachePolicy
    class CreateCachePolicy
      def self.default(visited=[])
        {
          cache_policy: Stubs::CachePolicy.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CachePolicy.build('CachePolicy', stub[:cache_policy]) unless stub[:cache_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CachePolicy
    class CachePolicy
      def self.default(visited=[])
        return nil if visited.include?('CachePolicy')
        visited = visited + ['CachePolicy']
        {
          id: 'id',
          last_modified_time: Time.now,
          cache_policy_config: Stubs::CachePolicyConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::CachePolicyConfig.stub('CachePolicyConfig', stub[:cache_policy_config]) unless stub[:cache_policy_config].nil?
        xml
      end
    end

    # Structure Stubber for CachePolicyConfig
    class CachePolicyConfig
      def self.default(visited=[])
        return nil if visited.include?('CachePolicyConfig')
        visited = visited + ['CachePolicyConfig']
        {
          comment: 'comment',
          name: 'name',
          default_ttl: 1,
          max_ttl: 1,
          min_ttl: 1,
          parameters_in_cache_key_and_forwarded_to_origin: Stubs::ParametersInCacheKeyAndForwardedToOrigin.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicyConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', stub[:default_ttl].to_s) unless stub[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', stub[:max_ttl].to_s) unless stub[:max_ttl].nil?
        xml << Hearth::XML::Node.new('MinTTL', stub[:min_ttl].to_s) unless stub[:min_ttl].nil?
        xml << Stubs::ParametersInCacheKeyAndForwardedToOrigin.stub('ParametersInCacheKeyAndForwardedToOrigin', stub[:parameters_in_cache_key_and_forwarded_to_origin]) unless stub[:parameters_in_cache_key_and_forwarded_to_origin].nil?
        xml
      end
    end

    # Structure Stubber for ParametersInCacheKeyAndForwardedToOrigin
    class ParametersInCacheKeyAndForwardedToOrigin
      def self.default(visited=[])
        return nil if visited.include?('ParametersInCacheKeyAndForwardedToOrigin')
        visited = visited + ['ParametersInCacheKeyAndForwardedToOrigin']
        {
          enable_accept_encoding_gzip: false,
          enable_accept_encoding_brotli: false,
          headers_config: Stubs::CachePolicyHeadersConfig.default(visited),
          cookies_config: Stubs::CachePolicyCookiesConfig.default(visited),
          query_strings_config: Stubs::CachePolicyQueryStringsConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ParametersInCacheKeyAndForwardedToOrigin.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EnableAcceptEncodingGzip', stub[:enable_accept_encoding_gzip].to_s) unless stub[:enable_accept_encoding_gzip].nil?
        xml << Hearth::XML::Node.new('EnableAcceptEncodingBrotli', stub[:enable_accept_encoding_brotli].to_s) unless stub[:enable_accept_encoding_brotli].nil?
        xml << Stubs::CachePolicyHeadersConfig.stub('HeadersConfig', stub[:headers_config]) unless stub[:headers_config].nil?
        xml << Stubs::CachePolicyCookiesConfig.stub('CookiesConfig', stub[:cookies_config]) unless stub[:cookies_config].nil?
        xml << Stubs::CachePolicyQueryStringsConfig.stub('QueryStringsConfig', stub[:query_strings_config]) unless stub[:query_strings_config].nil?
        xml
      end
    end

    # Structure Stubber for CachePolicyQueryStringsConfig
    class CachePolicyQueryStringsConfig
      def self.default(visited=[])
        return nil if visited.include?('CachePolicyQueryStringsConfig')
        visited = visited + ['CachePolicyQueryStringsConfig']
        {
          query_string_behavior: 'query_string_behavior',
          query_strings: Stubs::QueryStringNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicyQueryStringsConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryStringBehavior', stub[:query_string_behavior].to_s) unless stub[:query_string_behavior].nil?
        xml << Stubs::QueryStringNames.stub('QueryStrings', stub[:query_strings]) unless stub[:query_strings].nil?
        xml
      end
    end

    # Structure Stubber for QueryStringNames
    class QueryStringNames
      def self.default(visited=[])
        return nil if visited.include?('QueryStringNames')
        visited = visited + ['QueryStringNames']
        {
          quantity: 1,
          items: Stubs::QueryStringNamesList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryStringNames.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::QueryStringNamesList.stub('Name', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for QueryStringNamesList
    class QueryStringNamesList
      def self.default(visited=[])
        return nil if visited.include?('QueryStringNamesList')
        visited = visited + ['QueryStringNamesList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CachePolicyCookiesConfig
    class CachePolicyCookiesConfig
      def self.default(visited=[])
        return nil if visited.include?('CachePolicyCookiesConfig')
        visited = visited + ['CachePolicyCookiesConfig']
        {
          cookie_behavior: 'cookie_behavior',
          cookies: Stubs::CookieNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicyCookiesConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CookieBehavior', stub[:cookie_behavior].to_s) unless stub[:cookie_behavior].nil?
        xml << Stubs::CookieNames.stub('Cookies', stub[:cookies]) unless stub[:cookies].nil?
        xml
      end
    end

    # Structure Stubber for CookieNames
    class CookieNames
      def self.default(visited=[])
        return nil if visited.include?('CookieNames')
        visited = visited + ['CookieNames']
        {
          quantity: 1,
          items: Stubs::CookieNameList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CookieNames.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::CookieNameList.stub('Name', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for CookieNameList
    class CookieNameList
      def self.default(visited=[])
        return nil if visited.include?('CookieNameList')
        visited = visited + ['CookieNameList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CachePolicyHeadersConfig
    class CachePolicyHeadersConfig
      def self.default(visited=[])
        return nil if visited.include?('CachePolicyHeadersConfig')
        visited = visited + ['CachePolicyHeadersConfig']
        {
          header_behavior: 'header_behavior',
          headers: Stubs::Headers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicyHeadersConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderBehavior', stub[:header_behavior].to_s) unless stub[:header_behavior].nil?
        xml << Stubs::Headers.stub('Headers', stub[:headers]) unless stub[:headers].nil?
        xml
      end
    end

    # Structure Stubber for Headers
    class Headers
      def self.default(visited=[])
        return nil if visited.include?('Headers')
        visited = visited + ['Headers']
        {
          quantity: 1,
          items: Stubs::HeaderList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Headers.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::HeaderList.stub('Name', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for HeaderList
    class HeaderList
      def self.default(visited=[])
        return nil if visited.include?('HeaderList')
        visited = visited + ['HeaderList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateCloudFrontOriginAccessIdentity
    class CreateCloudFrontOriginAccessIdentity
      def self.default(visited=[])
        {
          cloud_front_origin_access_identity: Stubs::CloudFrontOriginAccessIdentity.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CloudFrontOriginAccessIdentity.build('CloudFrontOriginAccessIdentity', stub[:cloud_front_origin_access_identity]) unless stub[:cloud_front_origin_access_identity].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CloudFrontOriginAccessIdentity
    class CloudFrontOriginAccessIdentity
      def self.default(visited=[])
        return nil if visited.include?('CloudFrontOriginAccessIdentity')
        visited = visited + ['CloudFrontOriginAccessIdentity']
        {
          id: 'id',
          s3_canonical_user_id: 's3_canonical_user_id',
          cloud_front_origin_access_identity_config: Stubs::CloudFrontOriginAccessIdentityConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudFrontOriginAccessIdentity.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('S3CanonicalUserId', stub[:s3_canonical_user_id].to_s) unless stub[:s3_canonical_user_id].nil?
        xml << Stubs::CloudFrontOriginAccessIdentityConfig.stub('CloudFrontOriginAccessIdentityConfig', stub[:cloud_front_origin_access_identity_config]) unless stub[:cloud_front_origin_access_identity_config].nil?
        xml
      end
    end

    # Structure Stubber for CloudFrontOriginAccessIdentityConfig
    class CloudFrontOriginAccessIdentityConfig
      def self.default(visited=[])
        return nil if visited.include?('CloudFrontOriginAccessIdentityConfig')
        visited = visited + ['CloudFrontOriginAccessIdentityConfig']
        {
          caller_reference: 'caller_reference',
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudFrontOriginAccessIdentityConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for CreateDistribution
    class CreateDistribution
      def self.default(visited=[])
        {
          distribution: Stubs::Distribution.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Distribution.build('Distribution', stub[:distribution]) unless stub[:distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for Distribution
    class Distribution
      def self.default(visited=[])
        return nil if visited.include?('Distribution')
        visited = visited + ['Distribution']
        {
          id: 'id',
          arn: 'arn',
          status: 'status',
          last_modified_time: Time.now,
          in_progress_invalidation_batches: 1,
          domain_name: 'domain_name',
          active_trusted_signers: Stubs::ActiveTrustedSigners.default(visited),
          active_trusted_key_groups: Stubs::ActiveTrustedKeyGroups.default(visited),
          distribution_config: Stubs::DistributionConfig.default(visited),
          alias_icp_recordals: Stubs::AliasICPRecordals.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Distribution.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('InProgressInvalidationBatches', stub[:in_progress_invalidation_batches].to_s) unless stub[:in_progress_invalidation_batches].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Stubs::ActiveTrustedSigners.stub('ActiveTrustedSigners', stub[:active_trusted_signers]) unless stub[:active_trusted_signers].nil?
        xml << Stubs::ActiveTrustedKeyGroups.stub('ActiveTrustedKeyGroups', stub[:active_trusted_key_groups]) unless stub[:active_trusted_key_groups].nil?
        xml << Stubs::DistributionConfig.stub('DistributionConfig', stub[:distribution_config]) unless stub[:distribution_config].nil?
        xml << Hearth::XML::Node.new('AliasICPRecordals', Stubs::AliasICPRecordals.stub('AliasICPRecordal', stub[:alias_icp_recordals])) unless stub[:alias_icp_recordals].nil?
        xml
      end
    end

    # List Stubber for AliasICPRecordals
    class AliasICPRecordals
      def self.default(visited=[])
        return nil if visited.include?('AliasICPRecordals')
        visited = visited + ['AliasICPRecordals']
        [
          Stubs::AliasICPRecordal.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::AliasICPRecordal.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AliasICPRecordal
    class AliasICPRecordal
      def self.default(visited=[])
        return nil if visited.include?('AliasICPRecordal')
        visited = visited + ['AliasICPRecordal']
        {
          cname: 'cname',
          icp_recordal_status: 'icp_recordal_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AliasICPRecordal.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CNAME', stub[:cname].to_s) unless stub[:cname].nil?
        xml << Hearth::XML::Node.new('ICPRecordalStatus', stub[:icp_recordal_status].to_s) unless stub[:icp_recordal_status].nil?
        xml
      end
    end

    # Structure Stubber for DistributionConfig
    class DistributionConfig
      def self.default(visited=[])
        return nil if visited.include?('DistributionConfig')
        visited = visited + ['DistributionConfig']
        {
          caller_reference: 'caller_reference',
          aliases: Stubs::Aliases.default(visited),
          default_root_object: 'default_root_object',
          origins: Stubs::Origins.default(visited),
          origin_groups: Stubs::OriginGroups.default(visited),
          default_cache_behavior: Stubs::DefaultCacheBehavior.default(visited),
          cache_behaviors: Stubs::CacheBehaviors.default(visited),
          custom_error_responses: Stubs::CustomErrorResponses.default(visited),
          comment: 'comment',
          logging: Stubs::LoggingConfig.default(visited),
          price_class: 'price_class',
          enabled: false,
          viewer_certificate: Stubs::ViewerCertificate.default(visited),
          restrictions: Stubs::Restrictions.default(visited),
          web_acl_id: 'web_acl_id',
          http_version: 'http_version',
          is_ipv6_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DistributionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Stubs::Aliases.stub('Aliases', stub[:aliases]) unless stub[:aliases].nil?
        xml << Hearth::XML::Node.new('DefaultRootObject', stub[:default_root_object].to_s) unless stub[:default_root_object].nil?
        xml << Stubs::Origins.stub('Origins', stub[:origins]) unless stub[:origins].nil?
        xml << Stubs::OriginGroups.stub('OriginGroups', stub[:origin_groups]) unless stub[:origin_groups].nil?
        xml << Stubs::DefaultCacheBehavior.stub('DefaultCacheBehavior', stub[:default_cache_behavior]) unless stub[:default_cache_behavior].nil?
        xml << Stubs::CacheBehaviors.stub('CacheBehaviors', stub[:cache_behaviors]) unless stub[:cache_behaviors].nil?
        xml << Stubs::CustomErrorResponses.stub('CustomErrorResponses', stub[:custom_error_responses]) unless stub[:custom_error_responses].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Stubs::LoggingConfig.stub('Logging', stub[:logging]) unless stub[:logging].nil?
        xml << Hearth::XML::Node.new('PriceClass', stub[:price_class].to_s) unless stub[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Stubs::ViewerCertificate.stub('ViewerCertificate', stub[:viewer_certificate]) unless stub[:viewer_certificate].nil?
        xml << Stubs::Restrictions.stub('Restrictions', stub[:restrictions]) unless stub[:restrictions].nil?
        xml << Hearth::XML::Node.new('WebACLId', stub[:web_acl_id].to_s) unless stub[:web_acl_id].nil?
        xml << Hearth::XML::Node.new('HttpVersion', stub[:http_version].to_s) unless stub[:http_version].nil?
        xml << Hearth::XML::Node.new('IsIPV6Enabled', stub[:is_ipv6_enabled].to_s) unless stub[:is_ipv6_enabled].nil?
        xml
      end
    end

    # Structure Stubber for Restrictions
    class Restrictions
      def self.default(visited=[])
        return nil if visited.include?('Restrictions')
        visited = visited + ['Restrictions']
        {
          geo_restriction: Stubs::GeoRestriction.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Restrictions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::GeoRestriction.stub('GeoRestriction', stub[:geo_restriction]) unless stub[:geo_restriction].nil?
        xml
      end
    end

    # Structure Stubber for GeoRestriction
    class GeoRestriction
      def self.default(visited=[])
        return nil if visited.include?('GeoRestriction')
        visited = visited + ['GeoRestriction']
        {
          restriction_type: 'restriction_type',
          quantity: 1,
          items: Stubs::LocationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GeoRestriction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RestrictionType', stub[:restriction_type].to_s) unless stub[:restriction_type].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::LocationList.stub('Location', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for LocationList
    class LocationList
      def self.default(visited=[])
        return nil if visited.include?('LocationList')
        visited = visited + ['LocationList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ViewerCertificate
    class ViewerCertificate
      def self.default(visited=[])
        return nil if visited.include?('ViewerCertificate')
        visited = visited + ['ViewerCertificate']
        {
          cloud_front_default_certificate: false,
          iam_certificate_id: 'iam_certificate_id',
          acm_certificate_arn: 'acm_certificate_arn',
          ssl_support_method: 'ssl_support_method',
          minimum_protocol_version: 'minimum_protocol_version',
          certificate: 'certificate',
          certificate_source: 'certificate_source',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ViewerCertificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CloudFrontDefaultCertificate', stub[:cloud_front_default_certificate].to_s) unless stub[:cloud_front_default_certificate].nil?
        xml << Hearth::XML::Node.new('IAMCertificateId', stub[:iam_certificate_id].to_s) unless stub[:iam_certificate_id].nil?
        xml << Hearth::XML::Node.new('ACMCertificateArn', stub[:acm_certificate_arn].to_s) unless stub[:acm_certificate_arn].nil?
        xml << Hearth::XML::Node.new('SSLSupportMethod', stub[:ssl_support_method].to_s) unless stub[:ssl_support_method].nil?
        xml << Hearth::XML::Node.new('MinimumProtocolVersion', stub[:minimum_protocol_version].to_s) unless stub[:minimum_protocol_version].nil?
        xml << Hearth::XML::Node.new('Certificate', stub[:certificate].to_s) unless stub[:certificate].nil?
        xml << Hearth::XML::Node.new('CertificateSource', stub[:certificate_source].to_s) unless stub[:certificate_source].nil?
        xml
      end
    end

    # Structure Stubber for LoggingConfig
    class LoggingConfig
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfig')
        visited = visited + ['LoggingConfig']
        {
          enabled: false,
          include_cookies: false,
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoggingConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('IncludeCookies', stub[:include_cookies].to_s) unless stub[:include_cookies].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml
      end
    end

    # Structure Stubber for CustomErrorResponses
    class CustomErrorResponses
      def self.default(visited=[])
        return nil if visited.include?('CustomErrorResponses')
        visited = visited + ['CustomErrorResponses']
        {
          quantity: 1,
          items: Stubs::CustomErrorResponseList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomErrorResponses.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::CustomErrorResponseList.stub('CustomErrorResponse', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for CustomErrorResponseList
    class CustomErrorResponseList
      def self.default(visited=[])
        return nil if visited.include?('CustomErrorResponseList')
        visited = visited + ['CustomErrorResponseList']
        [
          Stubs::CustomErrorResponse.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CustomErrorResponse.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CustomErrorResponse
    class CustomErrorResponse
      def self.default(visited=[])
        return nil if visited.include?('CustomErrorResponse')
        visited = visited + ['CustomErrorResponse']
        {
          error_code: 1,
          response_page_path: 'response_page_path',
          response_code: 'response_code',
          error_caching_min_ttl: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomErrorResponse.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ErrorCode', stub[:error_code].to_s) unless stub[:error_code].nil?
        xml << Hearth::XML::Node.new('ResponsePagePath', stub[:response_page_path].to_s) unless stub[:response_page_path].nil?
        xml << Hearth::XML::Node.new('ResponseCode', stub[:response_code].to_s) unless stub[:response_code].nil?
        xml << Hearth::XML::Node.new('ErrorCachingMinTTL', stub[:error_caching_min_ttl].to_s) unless stub[:error_caching_min_ttl].nil?
        xml
      end
    end

    # Structure Stubber for CacheBehaviors
    class CacheBehaviors
      def self.default(visited=[])
        return nil if visited.include?('CacheBehaviors')
        visited = visited + ['CacheBehaviors']
        {
          quantity: 1,
          items: Stubs::CacheBehaviorList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheBehaviors.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::CacheBehaviorList.stub('CacheBehavior', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for CacheBehaviorList
    class CacheBehaviorList
      def self.default(visited=[])
        return nil if visited.include?('CacheBehaviorList')
        visited = visited + ['CacheBehaviorList']
        [
          Stubs::CacheBehavior.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CacheBehavior.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CacheBehavior
    class CacheBehavior
      def self.default(visited=[])
        return nil if visited.include?('CacheBehavior')
        visited = visited + ['CacheBehavior']
        {
          path_pattern: 'path_pattern',
          target_origin_id: 'target_origin_id',
          trusted_signers: Stubs::TrustedSigners.default(visited),
          trusted_key_groups: Stubs::TrustedKeyGroups.default(visited),
          viewer_protocol_policy: 'viewer_protocol_policy',
          allowed_methods: Stubs::AllowedMethods.default(visited),
          smooth_streaming: false,
          compress: false,
          lambda_function_associations: Stubs::LambdaFunctionAssociations.default(visited),
          function_associations: Stubs::FunctionAssociations.default(visited),
          field_level_encryption_id: 'field_level_encryption_id',
          realtime_log_config_arn: 'realtime_log_config_arn',
          cache_policy_id: 'cache_policy_id',
          origin_request_policy_id: 'origin_request_policy_id',
          response_headers_policy_id: 'response_headers_policy_id',
          forwarded_values: Stubs::ForwardedValues.default(visited),
          min_ttl: 1,
          default_ttl: 1,
          max_ttl: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CacheBehavior.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PathPattern', stub[:path_pattern].to_s) unless stub[:path_pattern].nil?
        xml << Hearth::XML::Node.new('TargetOriginId', stub[:target_origin_id].to_s) unless stub[:target_origin_id].nil?
        xml << Stubs::TrustedSigners.stub('TrustedSigners', stub[:trusted_signers]) unless stub[:trusted_signers].nil?
        xml << Stubs::TrustedKeyGroups.stub('TrustedKeyGroups', stub[:trusted_key_groups]) unless stub[:trusted_key_groups].nil?
        xml << Hearth::XML::Node.new('ViewerProtocolPolicy', stub[:viewer_protocol_policy].to_s) unless stub[:viewer_protocol_policy].nil?
        xml << Stubs::AllowedMethods.stub('AllowedMethods', stub[:allowed_methods]) unless stub[:allowed_methods].nil?
        xml << Hearth::XML::Node.new('SmoothStreaming', stub[:smooth_streaming].to_s) unless stub[:smooth_streaming].nil?
        xml << Hearth::XML::Node.new('Compress', stub[:compress].to_s) unless stub[:compress].nil?
        xml << Stubs::LambdaFunctionAssociations.stub('LambdaFunctionAssociations', stub[:lambda_function_associations]) unless stub[:lambda_function_associations].nil?
        xml << Stubs::FunctionAssociations.stub('FunctionAssociations', stub[:function_associations]) unless stub[:function_associations].nil?
        xml << Hearth::XML::Node.new('FieldLevelEncryptionId', stub[:field_level_encryption_id].to_s) unless stub[:field_level_encryption_id].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigArn', stub[:realtime_log_config_arn].to_s) unless stub[:realtime_log_config_arn].nil?
        xml << Hearth::XML::Node.new('CachePolicyId', stub[:cache_policy_id].to_s) unless stub[:cache_policy_id].nil?
        xml << Hearth::XML::Node.new('OriginRequestPolicyId', stub[:origin_request_policy_id].to_s) unless stub[:origin_request_policy_id].nil?
        xml << Hearth::XML::Node.new('ResponseHeadersPolicyId', stub[:response_headers_policy_id].to_s) unless stub[:response_headers_policy_id].nil?
        xml << Stubs::ForwardedValues.stub('ForwardedValues', stub[:forwarded_values]) unless stub[:forwarded_values].nil?
        xml << Hearth::XML::Node.new('MinTTL', stub[:min_ttl].to_s) unless stub[:min_ttl].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', stub[:default_ttl].to_s) unless stub[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', stub[:max_ttl].to_s) unless stub[:max_ttl].nil?
        xml
      end
    end

    # Structure Stubber for ForwardedValues
    class ForwardedValues
      def self.default(visited=[])
        return nil if visited.include?('ForwardedValues')
        visited = visited + ['ForwardedValues']
        {
          query_string: false,
          cookies: Stubs::CookiePreference.default(visited),
          headers: Stubs::Headers.default(visited),
          query_string_cache_keys: Stubs::QueryStringCacheKeys.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ForwardedValues.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryString', stub[:query_string].to_s) unless stub[:query_string].nil?
        xml << Stubs::CookiePreference.stub('Cookies', stub[:cookies]) unless stub[:cookies].nil?
        xml << Stubs::Headers.stub('Headers', stub[:headers]) unless stub[:headers].nil?
        xml << Stubs::QueryStringCacheKeys.stub('QueryStringCacheKeys', stub[:query_string_cache_keys]) unless stub[:query_string_cache_keys].nil?
        xml
      end
    end

    # Structure Stubber for QueryStringCacheKeys
    class QueryStringCacheKeys
      def self.default(visited=[])
        return nil if visited.include?('QueryStringCacheKeys')
        visited = visited + ['QueryStringCacheKeys']
        {
          quantity: 1,
          items: Stubs::QueryStringCacheKeysList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryStringCacheKeys.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::QueryStringCacheKeysList.stub('Name', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for QueryStringCacheKeysList
    class QueryStringCacheKeysList
      def self.default(visited=[])
        return nil if visited.include?('QueryStringCacheKeysList')
        visited = visited + ['QueryStringCacheKeysList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CookiePreference
    class CookiePreference
      def self.default(visited=[])
        return nil if visited.include?('CookiePreference')
        visited = visited + ['CookiePreference']
        {
          forward: 'forward',
          whitelisted_names: Stubs::CookieNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CookiePreference.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Forward', stub[:forward].to_s) unless stub[:forward].nil?
        xml << Stubs::CookieNames.stub('WhitelistedNames', stub[:whitelisted_names]) unless stub[:whitelisted_names].nil?
        xml
      end
    end

    # Structure Stubber for FunctionAssociations
    class FunctionAssociations
      def self.default(visited=[])
        return nil if visited.include?('FunctionAssociations')
        visited = visited + ['FunctionAssociations']
        {
          quantity: 1,
          items: Stubs::FunctionAssociationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionAssociations.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::FunctionAssociationList.stub('FunctionAssociation', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for FunctionAssociationList
    class FunctionAssociationList
      def self.default(visited=[])
        return nil if visited.include?('FunctionAssociationList')
        visited = visited + ['FunctionAssociationList']
        [
          Stubs::FunctionAssociation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::FunctionAssociation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for FunctionAssociation
    class FunctionAssociation
      def self.default(visited=[])
        return nil if visited.include?('FunctionAssociation')
        visited = visited + ['FunctionAssociation']
        {
          function_arn: 'function_arn',
          event_type: 'event_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionAssociation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionARN', stub[:function_arn].to_s) unless stub[:function_arn].nil?
        xml << Hearth::XML::Node.new('EventType', stub[:event_type].to_s) unless stub[:event_type].nil?
        xml
      end
    end

    # Structure Stubber for LambdaFunctionAssociations
    class LambdaFunctionAssociations
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionAssociations')
        visited = visited + ['LambdaFunctionAssociations']
        {
          quantity: 1,
          items: Stubs::LambdaFunctionAssociationList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LambdaFunctionAssociations.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::LambdaFunctionAssociationList.stub('LambdaFunctionAssociation', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for LambdaFunctionAssociationList
    class LambdaFunctionAssociationList
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionAssociationList')
        visited = visited + ['LambdaFunctionAssociationList']
        [
          Stubs::LambdaFunctionAssociation.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::LambdaFunctionAssociation.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LambdaFunctionAssociation
    class LambdaFunctionAssociation
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionAssociation')
        visited = visited + ['LambdaFunctionAssociation']
        {
          lambda_function_arn: 'lambda_function_arn',
          event_type: 'event_type',
          include_body: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LambdaFunctionAssociation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LambdaFunctionARN', stub[:lambda_function_arn].to_s) unless stub[:lambda_function_arn].nil?
        xml << Hearth::XML::Node.new('EventType', stub[:event_type].to_s) unless stub[:event_type].nil?
        xml << Hearth::XML::Node.new('IncludeBody', stub[:include_body].to_s) unless stub[:include_body].nil?
        xml
      end
    end

    # Structure Stubber for AllowedMethods
    class AllowedMethods
      def self.default(visited=[])
        return nil if visited.include?('AllowedMethods')
        visited = visited + ['AllowedMethods']
        {
          quantity: 1,
          items: Stubs::MethodsList.default(visited),
          cached_methods: Stubs::CachedMethods.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AllowedMethods.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::MethodsList.stub('Method', stub[:items])) unless stub[:items].nil?
        xml << Stubs::CachedMethods.stub('CachedMethods', stub[:cached_methods]) unless stub[:cached_methods].nil?
        xml
      end
    end

    # Structure Stubber for CachedMethods
    class CachedMethods
      def self.default(visited=[])
        return nil if visited.include?('CachedMethods')
        visited = visited + ['CachedMethods']
        {
          quantity: 1,
          items: Stubs::MethodsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachedMethods.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::MethodsList.stub('Method', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for MethodsList
    class MethodsList
      def self.default(visited=[])
        return nil if visited.include?('MethodsList')
        visited = visited + ['MethodsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TrustedKeyGroups
    class TrustedKeyGroups
      def self.default(visited=[])
        return nil if visited.include?('TrustedKeyGroups')
        visited = visited + ['TrustedKeyGroups']
        {
          enabled: false,
          quantity: 1,
          items: Stubs::TrustedKeyGroupIdList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrustedKeyGroups.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::TrustedKeyGroupIdList.stub('KeyGroup', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for TrustedKeyGroupIdList
    class TrustedKeyGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('TrustedKeyGroupIdList')
        visited = visited + ['TrustedKeyGroupIdList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TrustedSigners
    class TrustedSigners
      def self.default(visited=[])
        return nil if visited.include?('TrustedSigners')
        visited = visited + ['TrustedSigners']
        {
          enabled: false,
          quantity: 1,
          items: Stubs::AwsAccountNumberList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrustedSigners.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AwsAccountNumberList.stub('AwsAccountNumber', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AwsAccountNumberList
    class AwsAccountNumberList
      def self.default(visited=[])
        return nil if visited.include?('AwsAccountNumberList')
        visited = visited + ['AwsAccountNumberList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DefaultCacheBehavior
    class DefaultCacheBehavior
      def self.default(visited=[])
        return nil if visited.include?('DefaultCacheBehavior')
        visited = visited + ['DefaultCacheBehavior']
        {
          target_origin_id: 'target_origin_id',
          trusted_signers: Stubs::TrustedSigners.default(visited),
          trusted_key_groups: Stubs::TrustedKeyGroups.default(visited),
          viewer_protocol_policy: 'viewer_protocol_policy',
          allowed_methods: Stubs::AllowedMethods.default(visited),
          smooth_streaming: false,
          compress: false,
          lambda_function_associations: Stubs::LambdaFunctionAssociations.default(visited),
          function_associations: Stubs::FunctionAssociations.default(visited),
          field_level_encryption_id: 'field_level_encryption_id',
          realtime_log_config_arn: 'realtime_log_config_arn',
          cache_policy_id: 'cache_policy_id',
          origin_request_policy_id: 'origin_request_policy_id',
          response_headers_policy_id: 'response_headers_policy_id',
          forwarded_values: Stubs::ForwardedValues.default(visited),
          min_ttl: 1,
          default_ttl: 1,
          max_ttl: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DefaultCacheBehavior.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetOriginId', stub[:target_origin_id].to_s) unless stub[:target_origin_id].nil?
        xml << Stubs::TrustedSigners.stub('TrustedSigners', stub[:trusted_signers]) unless stub[:trusted_signers].nil?
        xml << Stubs::TrustedKeyGroups.stub('TrustedKeyGroups', stub[:trusted_key_groups]) unless stub[:trusted_key_groups].nil?
        xml << Hearth::XML::Node.new('ViewerProtocolPolicy', stub[:viewer_protocol_policy].to_s) unless stub[:viewer_protocol_policy].nil?
        xml << Stubs::AllowedMethods.stub('AllowedMethods', stub[:allowed_methods]) unless stub[:allowed_methods].nil?
        xml << Hearth::XML::Node.new('SmoothStreaming', stub[:smooth_streaming].to_s) unless stub[:smooth_streaming].nil?
        xml << Hearth::XML::Node.new('Compress', stub[:compress].to_s) unless stub[:compress].nil?
        xml << Stubs::LambdaFunctionAssociations.stub('LambdaFunctionAssociations', stub[:lambda_function_associations]) unless stub[:lambda_function_associations].nil?
        xml << Stubs::FunctionAssociations.stub('FunctionAssociations', stub[:function_associations]) unless stub[:function_associations].nil?
        xml << Hearth::XML::Node.new('FieldLevelEncryptionId', stub[:field_level_encryption_id].to_s) unless stub[:field_level_encryption_id].nil?
        xml << Hearth::XML::Node.new('RealtimeLogConfigArn', stub[:realtime_log_config_arn].to_s) unless stub[:realtime_log_config_arn].nil?
        xml << Hearth::XML::Node.new('CachePolicyId', stub[:cache_policy_id].to_s) unless stub[:cache_policy_id].nil?
        xml << Hearth::XML::Node.new('OriginRequestPolicyId', stub[:origin_request_policy_id].to_s) unless stub[:origin_request_policy_id].nil?
        xml << Hearth::XML::Node.new('ResponseHeadersPolicyId', stub[:response_headers_policy_id].to_s) unless stub[:response_headers_policy_id].nil?
        xml << Stubs::ForwardedValues.stub('ForwardedValues', stub[:forwarded_values]) unless stub[:forwarded_values].nil?
        xml << Hearth::XML::Node.new('MinTTL', stub[:min_ttl].to_s) unless stub[:min_ttl].nil?
        xml << Hearth::XML::Node.new('DefaultTTL', stub[:default_ttl].to_s) unless stub[:default_ttl].nil?
        xml << Hearth::XML::Node.new('MaxTTL', stub[:max_ttl].to_s) unless stub[:max_ttl].nil?
        xml
      end
    end

    # Structure Stubber for OriginGroups
    class OriginGroups
      def self.default(visited=[])
        return nil if visited.include?('OriginGroups')
        visited = visited + ['OriginGroups']
        {
          quantity: 1,
          items: Stubs::OriginGroupList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginGroups.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::OriginGroupList.stub('OriginGroup', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for OriginGroupList
    class OriginGroupList
      def self.default(visited=[])
        return nil if visited.include?('OriginGroupList')
        visited = visited + ['OriginGroupList']
        [
          Stubs::OriginGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::OriginGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OriginGroup
    class OriginGroup
      def self.default(visited=[])
        return nil if visited.include?('OriginGroup')
        visited = visited + ['OriginGroup']
        {
          id: 'id',
          failover_criteria: Stubs::OriginGroupFailoverCriteria.default(visited),
          members: Stubs::OriginGroupMembers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Stubs::OriginGroupFailoverCriteria.stub('FailoverCriteria', stub[:failover_criteria]) unless stub[:failover_criteria].nil?
        xml << Stubs::OriginGroupMembers.stub('Members', stub[:members]) unless stub[:members].nil?
        xml
      end
    end

    # Structure Stubber for OriginGroupMembers
    class OriginGroupMembers
      def self.default(visited=[])
        return nil if visited.include?('OriginGroupMembers')
        visited = visited + ['OriginGroupMembers']
        {
          quantity: 1,
          items: Stubs::OriginGroupMemberList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginGroupMembers.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::OriginGroupMemberList.stub('OriginGroupMember', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for OriginGroupMemberList
    class OriginGroupMemberList
      def self.default(visited=[])
        return nil if visited.include?('OriginGroupMemberList')
        visited = visited + ['OriginGroupMemberList']
        [
          Stubs::OriginGroupMember.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::OriginGroupMember.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OriginGroupMember
    class OriginGroupMember
      def self.default(visited=[])
        return nil if visited.include?('OriginGroupMember')
        visited = visited + ['OriginGroupMember']
        {
          origin_id: 'origin_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginGroupMember.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OriginId', stub[:origin_id].to_s) unless stub[:origin_id].nil?
        xml
      end
    end

    # Structure Stubber for OriginGroupFailoverCriteria
    class OriginGroupFailoverCriteria
      def self.default(visited=[])
        return nil if visited.include?('OriginGroupFailoverCriteria')
        visited = visited + ['OriginGroupFailoverCriteria']
        {
          status_codes: Stubs::StatusCodes.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginGroupFailoverCriteria.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::StatusCodes.stub('StatusCodes', stub[:status_codes]) unless stub[:status_codes].nil?
        xml
      end
    end

    # Structure Stubber for StatusCodes
    class StatusCodes
      def self.default(visited=[])
        return nil if visited.include?('StatusCodes')
        visited = visited + ['StatusCodes']
        {
          quantity: 1,
          items: Stubs::StatusCodeList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StatusCodes.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::StatusCodeList.stub('StatusCode', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for StatusCodeList
    class StatusCodeList
      def self.default(visited=[])
        return nil if visited.include?('StatusCodeList')
        visited = visited + ['StatusCodeList']
        [
          1
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Origins
    class Origins
      def self.default(visited=[])
        return nil if visited.include?('Origins')
        visited = visited + ['Origins']
        {
          quantity: 1,
          items: Stubs::OriginList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Origins.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::OriginList.stub('Origin', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for OriginList
    class OriginList
      def self.default(visited=[])
        return nil if visited.include?('OriginList')
        visited = visited + ['OriginList']
        [
          Stubs::Origin.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Origin.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Origin
    class Origin
      def self.default(visited=[])
        return nil if visited.include?('Origin')
        visited = visited + ['Origin']
        {
          id: 'id',
          domain_name: 'domain_name',
          origin_path: 'origin_path',
          custom_headers: Stubs::CustomHeaders.default(visited),
          s3_origin_config: Stubs::S3OriginConfig.default(visited),
          custom_origin_config: Stubs::CustomOriginConfig.default(visited),
          connection_attempts: 1,
          connection_timeout: 1,
          origin_shield: Stubs::OriginShield.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Origin.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Hearth::XML::Node.new('OriginPath', stub[:origin_path].to_s) unless stub[:origin_path].nil?
        xml << Stubs::CustomHeaders.stub('CustomHeaders', stub[:custom_headers]) unless stub[:custom_headers].nil?
        xml << Stubs::S3OriginConfig.stub('S3OriginConfig', stub[:s3_origin_config]) unless stub[:s3_origin_config].nil?
        xml << Stubs::CustomOriginConfig.stub('CustomOriginConfig', stub[:custom_origin_config]) unless stub[:custom_origin_config].nil?
        xml << Hearth::XML::Node.new('ConnectionAttempts', stub[:connection_attempts].to_s) unless stub[:connection_attempts].nil?
        xml << Hearth::XML::Node.new('ConnectionTimeout', stub[:connection_timeout].to_s) unless stub[:connection_timeout].nil?
        xml << Stubs::OriginShield.stub('OriginShield', stub[:origin_shield]) unless stub[:origin_shield].nil?
        xml
      end
    end

    # Structure Stubber for OriginShield
    class OriginShield
      def self.default(visited=[])
        return nil if visited.include?('OriginShield')
        visited = visited + ['OriginShield']
        {
          enabled: false,
          origin_shield_region: 'origin_shield_region',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginShield.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('OriginShieldRegion', stub[:origin_shield_region].to_s) unless stub[:origin_shield_region].nil?
        xml
      end
    end

    # Structure Stubber for CustomOriginConfig
    class CustomOriginConfig
      def self.default(visited=[])
        return nil if visited.include?('CustomOriginConfig')
        visited = visited + ['CustomOriginConfig']
        {
          http_port: 1,
          https_port: 1,
          origin_protocol_policy: 'origin_protocol_policy',
          origin_ssl_protocols: Stubs::OriginSslProtocols.default(visited),
          origin_read_timeout: 1,
          origin_keepalive_timeout: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomOriginConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HTTPPort', stub[:http_port].to_s) unless stub[:http_port].nil?
        xml << Hearth::XML::Node.new('HTTPSPort', stub[:https_port].to_s) unless stub[:https_port].nil?
        xml << Hearth::XML::Node.new('OriginProtocolPolicy', stub[:origin_protocol_policy].to_s) unless stub[:origin_protocol_policy].nil?
        xml << Stubs::OriginSslProtocols.stub('OriginSslProtocols', stub[:origin_ssl_protocols]) unless stub[:origin_ssl_protocols].nil?
        xml << Hearth::XML::Node.new('OriginReadTimeout', stub[:origin_read_timeout].to_s) unless stub[:origin_read_timeout].nil?
        xml << Hearth::XML::Node.new('OriginKeepaliveTimeout', stub[:origin_keepalive_timeout].to_s) unless stub[:origin_keepalive_timeout].nil?
        xml
      end
    end

    # Structure Stubber for OriginSslProtocols
    class OriginSslProtocols
      def self.default(visited=[])
        return nil if visited.include?('OriginSslProtocols')
        visited = visited + ['OriginSslProtocols']
        {
          quantity: 1,
          items: Stubs::SslProtocolsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginSslProtocols.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::SslProtocolsList.stub('SslProtocol', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for SslProtocolsList
    class SslProtocolsList
      def self.default(visited=[])
        return nil if visited.include?('SslProtocolsList')
        visited = visited + ['SslProtocolsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for S3OriginConfig
    class S3OriginConfig
      def self.default(visited=[])
        return nil if visited.include?('S3OriginConfig')
        visited = visited + ['S3OriginConfig']
        {
          origin_access_identity: 'origin_access_identity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3OriginConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OriginAccessIdentity', stub[:origin_access_identity].to_s) unless stub[:origin_access_identity].nil?
        xml
      end
    end

    # Structure Stubber for CustomHeaders
    class CustomHeaders
      def self.default(visited=[])
        return nil if visited.include?('CustomHeaders')
        visited = visited + ['CustomHeaders']
        {
          quantity: 1,
          items: Stubs::OriginCustomHeadersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomHeaders.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::OriginCustomHeadersList.stub('OriginCustomHeader', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for OriginCustomHeadersList
    class OriginCustomHeadersList
      def self.default(visited=[])
        return nil if visited.include?('OriginCustomHeadersList')
        visited = visited + ['OriginCustomHeadersList']
        [
          Stubs::OriginCustomHeader.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::OriginCustomHeader.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OriginCustomHeader
    class OriginCustomHeader
      def self.default(visited=[])
        return nil if visited.include?('OriginCustomHeader')
        visited = visited + ['OriginCustomHeader']
        {
          header_name: 'header_name',
          header_value: 'header_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginCustomHeader.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderName', stub[:header_name].to_s) unless stub[:header_name].nil?
        xml << Hearth::XML::Node.new('HeaderValue', stub[:header_value].to_s) unless stub[:header_value].nil?
        xml
      end
    end

    # Structure Stubber for Aliases
    class Aliases
      def self.default(visited=[])
        return nil if visited.include?('Aliases')
        visited = visited + ['Aliases']
        {
          quantity: 1,
          items: Stubs::AliasList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Aliases.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AliasList.stub('CNAME', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AliasList
    class AliasList
      def self.default(visited=[])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ActiveTrustedKeyGroups
    class ActiveTrustedKeyGroups
      def self.default(visited=[])
        return nil if visited.include?('ActiveTrustedKeyGroups')
        visited = visited + ['ActiveTrustedKeyGroups']
        {
          enabled: false,
          quantity: 1,
          items: Stubs::KGKeyPairIdsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ActiveTrustedKeyGroups.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::KGKeyPairIdsList.stub('KeyGroup', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for KGKeyPairIdsList
    class KGKeyPairIdsList
      def self.default(visited=[])
        return nil if visited.include?('KGKeyPairIdsList')
        visited = visited + ['KGKeyPairIdsList']
        [
          Stubs::KGKeyPairIds.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::KGKeyPairIds.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for KGKeyPairIds
    class KGKeyPairIds
      def self.default(visited=[])
        return nil if visited.include?('KGKeyPairIds')
        visited = visited + ['KGKeyPairIds']
        {
          key_group_id: 'key_group_id',
          key_pair_ids: Stubs::KeyPairIds.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KGKeyPairIds.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('KeyGroupId', stub[:key_group_id].to_s) unless stub[:key_group_id].nil?
        xml << Stubs::KeyPairIds.stub('KeyPairIds', stub[:key_pair_ids]) unless stub[:key_pair_ids].nil?
        xml
      end
    end

    # Structure Stubber for KeyPairIds
    class KeyPairIds
      def self.default(visited=[])
        return nil if visited.include?('KeyPairIds')
        visited = visited + ['KeyPairIds']
        {
          quantity: 1,
          items: Stubs::KeyPairIdList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeyPairIds.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::KeyPairIdList.stub('KeyPairId', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for KeyPairIdList
    class KeyPairIdList
      def self.default(visited=[])
        return nil if visited.include?('KeyPairIdList')
        visited = visited + ['KeyPairIdList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ActiveTrustedSigners
    class ActiveTrustedSigners
      def self.default(visited=[])
        return nil if visited.include?('ActiveTrustedSigners')
        visited = visited + ['ActiveTrustedSigners']
        {
          enabled: false,
          quantity: 1,
          items: Stubs::SignerList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ActiveTrustedSigners.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::SignerList.stub('Signer', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for SignerList
    class SignerList
      def self.default(visited=[])
        return nil if visited.include?('SignerList')
        visited = visited + ['SignerList']
        [
          Stubs::Signer.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Signer.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Signer
    class Signer
      def self.default(visited=[])
        return nil if visited.include?('Signer')
        visited = visited + ['Signer']
        {
          aws_account_number: 'aws_account_number',
          key_pair_ids: Stubs::KeyPairIds.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Signer.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AwsAccountNumber', stub[:aws_account_number].to_s) unless stub[:aws_account_number].nil?
        xml << Stubs::KeyPairIds.stub('KeyPairIds', stub[:key_pair_ids]) unless stub[:key_pair_ids].nil?
        xml
      end
    end

    # Operation Stubber for CreateDistributionWithTags
    class CreateDistributionWithTags
      def self.default(visited=[])
        {
          distribution: Stubs::Distribution.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Distribution.build('Distribution', stub[:distribution]) unless stub[:distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for CreateFieldLevelEncryptionConfig
    class CreateFieldLevelEncryptionConfig
      def self.default(visited=[])
        {
          field_level_encryption: Stubs::FieldLevelEncryption.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryption.build('FieldLevelEncryption', stub[:field_level_encryption]) unless stub[:field_level_encryption].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FieldLevelEncryption
    class FieldLevelEncryption
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryption')
        visited = visited + ['FieldLevelEncryption']
        {
          id: 'id',
          last_modified_time: Time.now,
          field_level_encryption_config: Stubs::FieldLevelEncryptionConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryption.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::FieldLevelEncryptionConfig.stub('FieldLevelEncryptionConfig', stub[:field_level_encryption_config]) unless stub[:field_level_encryption_config].nil?
        xml
      end
    end

    # Structure Stubber for FieldLevelEncryptionConfig
    class FieldLevelEncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionConfig')
        visited = visited + ['FieldLevelEncryptionConfig']
        {
          caller_reference: 'caller_reference',
          comment: 'comment',
          query_arg_profile_config: Stubs::QueryArgProfileConfig.default(visited),
          content_type_profile_config: Stubs::ContentTypeProfileConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Stubs::QueryArgProfileConfig.stub('QueryArgProfileConfig', stub[:query_arg_profile_config]) unless stub[:query_arg_profile_config].nil?
        xml << Stubs::ContentTypeProfileConfig.stub('ContentTypeProfileConfig', stub[:content_type_profile_config]) unless stub[:content_type_profile_config].nil?
        xml
      end
    end

    # Structure Stubber for ContentTypeProfileConfig
    class ContentTypeProfileConfig
      def self.default(visited=[])
        return nil if visited.include?('ContentTypeProfileConfig')
        visited = visited + ['ContentTypeProfileConfig']
        {
          forward_when_content_type_is_unknown: false,
          content_type_profiles: Stubs::ContentTypeProfiles.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ContentTypeProfileConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ForwardWhenContentTypeIsUnknown', stub[:forward_when_content_type_is_unknown].to_s) unless stub[:forward_when_content_type_is_unknown].nil?
        xml << Stubs::ContentTypeProfiles.stub('ContentTypeProfiles', stub[:content_type_profiles]) unless stub[:content_type_profiles].nil?
        xml
      end
    end

    # Structure Stubber for ContentTypeProfiles
    class ContentTypeProfiles
      def self.default(visited=[])
        return nil if visited.include?('ContentTypeProfiles')
        visited = visited + ['ContentTypeProfiles']
        {
          quantity: 1,
          items: Stubs::ContentTypeProfileList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ContentTypeProfiles.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::ContentTypeProfileList.stub('ContentTypeProfile', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for ContentTypeProfileList
    class ContentTypeProfileList
      def self.default(visited=[])
        return nil if visited.include?('ContentTypeProfileList')
        visited = visited + ['ContentTypeProfileList']
        [
          Stubs::ContentTypeProfile.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ContentTypeProfile.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ContentTypeProfile
    class ContentTypeProfile
      def self.default(visited=[])
        return nil if visited.include?('ContentTypeProfile')
        visited = visited + ['ContentTypeProfile']
        {
          format: 'format',
          profile_id: 'profile_id',
          content_type: 'content_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ContentTypeProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Format', stub[:format].to_s) unless stub[:format].nil?
        xml << Hearth::XML::Node.new('ProfileId', stub[:profile_id].to_s) unless stub[:profile_id].nil?
        xml << Hearth::XML::Node.new('ContentType', stub[:content_type].to_s) unless stub[:content_type].nil?
        xml
      end
    end

    # Structure Stubber for QueryArgProfileConfig
    class QueryArgProfileConfig
      def self.default(visited=[])
        return nil if visited.include?('QueryArgProfileConfig')
        visited = visited + ['QueryArgProfileConfig']
        {
          forward_when_query_arg_profile_is_unknown: false,
          query_arg_profiles: Stubs::QueryArgProfiles.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryArgProfileConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ForwardWhenQueryArgProfileIsUnknown', stub[:forward_when_query_arg_profile_is_unknown].to_s) unless stub[:forward_when_query_arg_profile_is_unknown].nil?
        xml << Stubs::QueryArgProfiles.stub('QueryArgProfiles', stub[:query_arg_profiles]) unless stub[:query_arg_profiles].nil?
        xml
      end
    end

    # Structure Stubber for QueryArgProfiles
    class QueryArgProfiles
      def self.default(visited=[])
        return nil if visited.include?('QueryArgProfiles')
        visited = visited + ['QueryArgProfiles']
        {
          quantity: 1,
          items: Stubs::QueryArgProfileList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryArgProfiles.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::QueryArgProfileList.stub('QueryArgProfile', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for QueryArgProfileList
    class QueryArgProfileList
      def self.default(visited=[])
        return nil if visited.include?('QueryArgProfileList')
        visited = visited + ['QueryArgProfileList']
        [
          Stubs::QueryArgProfile.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::QueryArgProfile.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for QueryArgProfile
    class QueryArgProfile
      def self.default(visited=[])
        return nil if visited.include?('QueryArgProfile')
        visited = visited + ['QueryArgProfile']
        {
          query_arg: 'query_arg',
          profile_id: 'profile_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::QueryArgProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryArg', stub[:query_arg].to_s) unless stub[:query_arg].nil?
        xml << Hearth::XML::Node.new('ProfileId', stub[:profile_id].to_s) unless stub[:profile_id].nil?
        xml
      end
    end

    # Operation Stubber for CreateFieldLevelEncryptionProfile
    class CreateFieldLevelEncryptionProfile
      def self.default(visited=[])
        {
          field_level_encryption_profile: Stubs::FieldLevelEncryptionProfile.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionProfile.build('FieldLevelEncryptionProfile', stub[:field_level_encryption_profile]) unless stub[:field_level_encryption_profile].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FieldLevelEncryptionProfile
    class FieldLevelEncryptionProfile
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionProfile')
        visited = visited + ['FieldLevelEncryptionProfile']
        {
          id: 'id',
          last_modified_time: Time.now,
          field_level_encryption_profile_config: Stubs::FieldLevelEncryptionProfileConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::FieldLevelEncryptionProfileConfig.stub('FieldLevelEncryptionProfileConfig', stub[:field_level_encryption_profile_config]) unless stub[:field_level_encryption_profile_config].nil?
        xml
      end
    end

    # Structure Stubber for FieldLevelEncryptionProfileConfig
    class FieldLevelEncryptionProfileConfig
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionProfileConfig')
        visited = visited + ['FieldLevelEncryptionProfileConfig']
        {
          name: 'name',
          caller_reference: 'caller_reference',
          comment: 'comment',
          encryption_entities: Stubs::EncryptionEntities.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionProfileConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Stubs::EncryptionEntities.stub('EncryptionEntities', stub[:encryption_entities]) unless stub[:encryption_entities].nil?
        xml
      end
    end

    # Structure Stubber for EncryptionEntities
    class EncryptionEntities
      def self.default(visited=[])
        return nil if visited.include?('EncryptionEntities')
        visited = visited + ['EncryptionEntities']
        {
          quantity: 1,
          items: Stubs::EncryptionEntityList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EncryptionEntities.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::EncryptionEntityList.stub('EncryptionEntity', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for EncryptionEntityList
    class EncryptionEntityList
      def self.default(visited=[])
        return nil if visited.include?('EncryptionEntityList')
        visited = visited + ['EncryptionEntityList']
        [
          Stubs::EncryptionEntity.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::EncryptionEntity.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EncryptionEntity
    class EncryptionEntity
      def self.default(visited=[])
        return nil if visited.include?('EncryptionEntity')
        visited = visited + ['EncryptionEntity']
        {
          public_key_id: 'public_key_id',
          provider_id: 'provider_id',
          field_patterns: Stubs::FieldPatterns.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EncryptionEntity.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PublicKeyId', stub[:public_key_id].to_s) unless stub[:public_key_id].nil?
        xml << Hearth::XML::Node.new('ProviderId', stub[:provider_id].to_s) unless stub[:provider_id].nil?
        xml << Stubs::FieldPatterns.stub('FieldPatterns', stub[:field_patterns]) unless stub[:field_patterns].nil?
        xml
      end
    end

    # Structure Stubber for FieldPatterns
    class FieldPatterns
      def self.default(visited=[])
        return nil if visited.include?('FieldPatterns')
        visited = visited + ['FieldPatterns']
        {
          quantity: 1,
          items: Stubs::FieldPatternList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldPatterns.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::FieldPatternList.stub('FieldPattern', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for FieldPatternList
    class FieldPatternList
      def self.default(visited=[])
        return nil if visited.include?('FieldPatternList')
        visited = visited + ['FieldPatternList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateFunction
    class CreateFunction
      def self.default(visited=[])
        {
          function_summary: Stubs::FunctionSummary.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FunctionSummary.build('FunctionSummary', stub[:function_summary]) unless stub[:function_summary].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FunctionSummary
    class FunctionSummary
      def self.default(visited=[])
        return nil if visited.include?('FunctionSummary')
        visited = visited + ['FunctionSummary']
        {
          name: 'name',
          status: 'status',
          function_config: Stubs::FunctionConfig.default(visited),
          function_metadata: Stubs::FunctionMetadata.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::FunctionConfig.stub('FunctionConfig', stub[:function_config]) unless stub[:function_config].nil?
        xml << Stubs::FunctionMetadata.stub('FunctionMetadata', stub[:function_metadata]) unless stub[:function_metadata].nil?
        xml
      end
    end

    # Structure Stubber for FunctionMetadata
    class FunctionMetadata
      def self.default(visited=[])
        return nil if visited.include?('FunctionMetadata')
        visited = visited + ['FunctionMetadata']
        {
          function_arn: 'function_arn',
          stage: 'stage',
          created_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FunctionARN', stub[:function_arn].to_s) unless stub[:function_arn].nil?
        xml << Hearth::XML::Node.new('Stage', stub[:stage].to_s) unless stub[:stage].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml
      end
    end

    # Structure Stubber for FunctionConfig
    class FunctionConfig
      def self.default(visited=[])
        return nil if visited.include?('FunctionConfig')
        visited = visited + ['FunctionConfig']
        {
          comment: 'comment',
          runtime: 'runtime',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('Runtime', stub[:runtime].to_s) unless stub[:runtime].nil?
        xml
      end
    end

    # Operation Stubber for CreateInvalidation
    class CreateInvalidation
      def self.default(visited=[])
        {
          location: 'location',
          invalidation: Stubs::Invalidation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Invalidation.build('Invalidation', stub[:invalidation]) unless stub[:invalidation].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for Invalidation
    class Invalidation
      def self.default(visited=[])
        return nil if visited.include?('Invalidation')
        visited = visited + ['Invalidation']
        {
          id: 'id',
          status: 'status',
          create_time: Time.now,
          invalidation_batch: Stubs::InvalidationBatch.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Invalidation.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Stubs::InvalidationBatch.stub('InvalidationBatch', stub[:invalidation_batch]) unless stub[:invalidation_batch].nil?
        xml
      end
    end

    # Structure Stubber for InvalidationBatch
    class InvalidationBatch
      def self.default(visited=[])
        return nil if visited.include?('InvalidationBatch')
        visited = visited + ['InvalidationBatch']
        {
          paths: Stubs::Paths.default(visited),
          caller_reference: 'caller_reference',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InvalidationBatch.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Paths.stub('Paths', stub[:paths]) unless stub[:paths].nil?
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml
      end
    end

    # Structure Stubber for Paths
    class Paths
      def self.default(visited=[])
        return nil if visited.include?('Paths')
        visited = visited + ['Paths']
        {
          quantity: 1,
          items: Stubs::PathList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Paths.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::PathList.stub('Path', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for PathList
    class PathList
      def self.default(visited=[])
        return nil if visited.include?('PathList')
        visited = visited + ['PathList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateKeyGroup
    class CreateKeyGroup
      def self.default(visited=[])
        {
          key_group: Stubs::KeyGroup.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::KeyGroup.build('KeyGroup', stub[:key_group]) unless stub[:key_group].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for KeyGroup
    class KeyGroup
      def self.default(visited=[])
        return nil if visited.include?('KeyGroup')
        visited = visited + ['KeyGroup']
        {
          id: 'id',
          last_modified_time: Time.now,
          key_group_config: Stubs::KeyGroupConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeyGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::KeyGroupConfig.stub('KeyGroupConfig', stub[:key_group_config]) unless stub[:key_group_config].nil?
        xml
      end
    end

    # Structure Stubber for KeyGroupConfig
    class KeyGroupConfig
      def self.default(visited=[])
        return nil if visited.include?('KeyGroupConfig')
        visited = visited + ['KeyGroupConfig']
        {
          name: 'name',
          items: Stubs::PublicKeyIdList.default(visited),
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeyGroupConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::PublicKeyIdList.stub('PublicKey', stub[:items])) unless stub[:items].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # List Stubber for PublicKeyIdList
    class PublicKeyIdList
      def self.default(visited=[])
        return nil if visited.include?('PublicKeyIdList')
        visited = visited + ['PublicKeyIdList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateMonitoringSubscription
    class CreateMonitoringSubscription
      def self.default(visited=[])
        {
          monitoring_subscription: Stubs::MonitoringSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::MonitoringSubscription.build('MonitoringSubscription', stub[:monitoring_subscription]) unless stub[:monitoring_subscription].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for MonitoringSubscription
    class MonitoringSubscription
      def self.default(visited=[])
        return nil if visited.include?('MonitoringSubscription')
        visited = visited + ['MonitoringSubscription']
        {
          realtime_metrics_subscription_config: Stubs::RealtimeMetricsSubscriptionConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MonitoringSubscription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::RealtimeMetricsSubscriptionConfig.stub('RealtimeMetricsSubscriptionConfig', stub[:realtime_metrics_subscription_config]) unless stub[:realtime_metrics_subscription_config].nil?
        xml
      end
    end

    # Structure Stubber for RealtimeMetricsSubscriptionConfig
    class RealtimeMetricsSubscriptionConfig
      def self.default(visited=[])
        return nil if visited.include?('RealtimeMetricsSubscriptionConfig')
        visited = visited + ['RealtimeMetricsSubscriptionConfig']
        {
          realtime_metrics_subscription_status: 'realtime_metrics_subscription_status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RealtimeMetricsSubscriptionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RealtimeMetricsSubscriptionStatus', stub[:realtime_metrics_subscription_status].to_s) unless stub[:realtime_metrics_subscription_status].nil?
        xml
      end
    end

    # Operation Stubber for CreateOriginRequestPolicy
    class CreateOriginRequestPolicy
      def self.default(visited=[])
        {
          origin_request_policy: Stubs::OriginRequestPolicy.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OriginRequestPolicy.build('OriginRequestPolicy', stub[:origin_request_policy]) unless stub[:origin_request_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for OriginRequestPolicy
    class OriginRequestPolicy
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicy')
        visited = visited + ['OriginRequestPolicy']
        {
          id: 'id',
          last_modified_time: Time.now,
          origin_request_policy_config: Stubs::OriginRequestPolicyConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::OriginRequestPolicyConfig.stub('OriginRequestPolicyConfig', stub[:origin_request_policy_config]) unless stub[:origin_request_policy_config].nil?
        xml
      end
    end

    # Structure Stubber for OriginRequestPolicyConfig
    class OriginRequestPolicyConfig
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicyConfig')
        visited = visited + ['OriginRequestPolicyConfig']
        {
          comment: 'comment',
          name: 'name',
          headers_config: Stubs::OriginRequestPolicyHeadersConfig.default(visited),
          cookies_config: Stubs::OriginRequestPolicyCookiesConfig.default(visited),
          query_strings_config: Stubs::OriginRequestPolicyQueryStringsConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicyConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::OriginRequestPolicyHeadersConfig.stub('HeadersConfig', stub[:headers_config]) unless stub[:headers_config].nil?
        xml << Stubs::OriginRequestPolicyCookiesConfig.stub('CookiesConfig', stub[:cookies_config]) unless stub[:cookies_config].nil?
        xml << Stubs::OriginRequestPolicyQueryStringsConfig.stub('QueryStringsConfig', stub[:query_strings_config]) unless stub[:query_strings_config].nil?
        xml
      end
    end

    # Structure Stubber for OriginRequestPolicyQueryStringsConfig
    class OriginRequestPolicyQueryStringsConfig
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicyQueryStringsConfig')
        visited = visited + ['OriginRequestPolicyQueryStringsConfig']
        {
          query_string_behavior: 'query_string_behavior',
          query_strings: Stubs::QueryStringNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicyQueryStringsConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('QueryStringBehavior', stub[:query_string_behavior].to_s) unless stub[:query_string_behavior].nil?
        xml << Stubs::QueryStringNames.stub('QueryStrings', stub[:query_strings]) unless stub[:query_strings].nil?
        xml
      end
    end

    # Structure Stubber for OriginRequestPolicyCookiesConfig
    class OriginRequestPolicyCookiesConfig
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicyCookiesConfig')
        visited = visited + ['OriginRequestPolicyCookiesConfig']
        {
          cookie_behavior: 'cookie_behavior',
          cookies: Stubs::CookieNames.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicyCookiesConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CookieBehavior', stub[:cookie_behavior].to_s) unless stub[:cookie_behavior].nil?
        xml << Stubs::CookieNames.stub('Cookies', stub[:cookies]) unless stub[:cookies].nil?
        xml
      end
    end

    # Structure Stubber for OriginRequestPolicyHeadersConfig
    class OriginRequestPolicyHeadersConfig
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicyHeadersConfig')
        visited = visited + ['OriginRequestPolicyHeadersConfig']
        {
          header_behavior: 'header_behavior',
          headers: Stubs::Headers.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicyHeadersConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HeaderBehavior', stub[:header_behavior].to_s) unless stub[:header_behavior].nil?
        xml << Stubs::Headers.stub('Headers', stub[:headers]) unless stub[:headers].nil?
        xml
      end
    end

    # Operation Stubber for CreatePublicKey
    class CreatePublicKey
      def self.default(visited=[])
        {
          public_key: Stubs::PublicKey.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicKey.build('PublicKey', stub[:public_key]) unless stub[:public_key].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for PublicKey
    class PublicKey
      def self.default(visited=[])
        return nil if visited.include?('PublicKey')
        visited = visited + ['PublicKey']
        {
          id: 'id',
          created_time: Time.now,
          public_key_config: Stubs::PublicKeyConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublicKey.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Stubs::PublicKeyConfig.stub('PublicKeyConfig', stub[:public_key_config]) unless stub[:public_key_config].nil?
        xml
      end
    end

    # Structure Stubber for PublicKeyConfig
    class PublicKeyConfig
      def self.default(visited=[])
        return nil if visited.include?('PublicKeyConfig')
        visited = visited + ['PublicKeyConfig']
        {
          caller_reference: 'caller_reference',
          name: 'name',
          encoded_key: 'encoded_key',
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublicKeyConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('EncodedKey', stub[:encoded_key].to_s) unless stub[:encoded_key].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for CreateRealtimeLogConfig
    class CreateRealtimeLogConfig
      def self.default(visited=[])
        {
          realtime_log_config: Stubs::RealtimeLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('CreateRealtimeLogConfigResult')
        xml.attributes['xmlns'] = 'http://cloudfront.amazonaws.com/doc/2020-05-31/'
        xml << Stubs::RealtimeLogConfig.stub('RealtimeLogConfig', stub[:realtime_log_config]) unless stub[:realtime_log_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for RealtimeLogConfig
    class RealtimeLogConfig
      def self.default(visited=[])
        return nil if visited.include?('RealtimeLogConfig')
        visited = visited + ['RealtimeLogConfig']
        {
          arn: 'arn',
          name: 'name',
          sampling_rate: 1,
          end_points: Stubs::EndPointList.default(visited),
          fields: Stubs::FieldList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RealtimeLogConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('SamplingRate', stub[:sampling_rate].to_s) unless stub[:sampling_rate].nil?
        xml << Hearth::XML::Node.new('EndPoints', Stubs::EndPointList.stub('member', stub[:end_points])) unless stub[:end_points].nil?
        xml << Hearth::XML::Node.new('Fields', Stubs::FieldList.stub('Field', stub[:fields])) unless stub[:fields].nil?
        xml
      end
    end

    # List Stubber for FieldList
    class FieldList
      def self.default(visited=[])
        return nil if visited.include?('FieldList')
        visited = visited + ['FieldList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for EndPointList
    class EndPointList
      def self.default(visited=[])
        return nil if visited.include?('EndPointList')
        visited = visited + ['EndPointList']
        [
          Stubs::EndPoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::EndPoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EndPoint
    class EndPoint
      def self.default(visited=[])
        return nil if visited.include?('EndPoint')
        visited = visited + ['EndPoint']
        {
          stream_type: 'stream_type',
          kinesis_stream_config: Stubs::KinesisStreamConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EndPoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StreamType', stub[:stream_type].to_s) unless stub[:stream_type].nil?
        xml << Stubs::KinesisStreamConfig.stub('KinesisStreamConfig', stub[:kinesis_stream_config]) unless stub[:kinesis_stream_config].nil?
        xml
      end
    end

    # Structure Stubber for KinesisStreamConfig
    class KinesisStreamConfig
      def self.default(visited=[])
        return nil if visited.include?('KinesisStreamConfig')
        visited = visited + ['KinesisStreamConfig']
        {
          role_arn: 'role_arn',
          stream_arn: 'stream_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KinesisStreamConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleARN', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('StreamARN', stub[:stream_arn].to_s) unless stub[:stream_arn].nil?
        xml
      end
    end

    # Operation Stubber for CreateResponseHeadersPolicy
    class CreateResponseHeadersPolicy
      def self.default(visited=[])
        {
          response_headers_policy: Stubs::ResponseHeadersPolicy.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ResponseHeadersPolicy.build('ResponseHeadersPolicy', stub[:response_headers_policy]) unless stub[:response_headers_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ResponseHeadersPolicy
    class ResponseHeadersPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicy')
        visited = visited + ['ResponseHeadersPolicy']
        {
          id: 'id',
          last_modified_time: Time.now,
          response_headers_policy_config: Stubs::ResponseHeadersPolicyConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Stubs::ResponseHeadersPolicyConfig.stub('ResponseHeadersPolicyConfig', stub[:response_headers_policy_config]) unless stub[:response_headers_policy_config].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyConfig
    class ResponseHeadersPolicyConfig
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyConfig')
        visited = visited + ['ResponseHeadersPolicyConfig']
        {
          comment: 'comment',
          name: 'name',
          cors_config: Stubs::ResponseHeadersPolicyCorsConfig.default(visited),
          security_headers_config: Stubs::ResponseHeadersPolicySecurityHeadersConfig.default(visited),
          custom_headers_config: Stubs::ResponseHeadersPolicyCustomHeadersConfig.default(visited),
          server_timing_headers_config: Stubs::ResponseHeadersPolicyServerTimingHeadersConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::ResponseHeadersPolicyCorsConfig.stub('CorsConfig', stub[:cors_config]) unless stub[:cors_config].nil?
        xml << Stubs::ResponseHeadersPolicySecurityHeadersConfig.stub('SecurityHeadersConfig', stub[:security_headers_config]) unless stub[:security_headers_config].nil?
        xml << Stubs::ResponseHeadersPolicyCustomHeadersConfig.stub('CustomHeadersConfig', stub[:custom_headers_config]) unless stub[:custom_headers_config].nil?
        xml << Stubs::ResponseHeadersPolicyServerTimingHeadersConfig.stub('ServerTimingHeadersConfig', stub[:server_timing_headers_config]) unless stub[:server_timing_headers_config].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyServerTimingHeadersConfig
    class ResponseHeadersPolicyServerTimingHeadersConfig
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyServerTimingHeadersConfig')
        visited = visited + ['ResponseHeadersPolicyServerTimingHeadersConfig']
        {
          enabled: false,
          sampling_rate: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyServerTimingHeadersConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('SamplingRate', Hearth::NumberHelper.serialize(stub[:sampling_rate]).to_s) unless stub[:sampling_rate].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyCustomHeadersConfig
    class ResponseHeadersPolicyCustomHeadersConfig
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyCustomHeadersConfig')
        visited = visited + ['ResponseHeadersPolicyCustomHeadersConfig']
        {
          quantity: 1,
          items: Stubs::ResponseHeadersPolicyCustomHeaderList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyCustomHeadersConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::ResponseHeadersPolicyCustomHeaderList.stub('ResponseHeadersPolicyCustomHeader', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for ResponseHeadersPolicyCustomHeaderList
    class ResponseHeadersPolicyCustomHeaderList
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyCustomHeaderList')
        visited = visited + ['ResponseHeadersPolicyCustomHeaderList']
        [
          Stubs::ResponseHeadersPolicyCustomHeader.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ResponseHeadersPolicyCustomHeader.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyCustomHeader
    class ResponseHeadersPolicyCustomHeader
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyCustomHeader')
        visited = visited + ['ResponseHeadersPolicyCustomHeader']
        {
          header: 'header',
          value: 'value',
          override: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyCustomHeader.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Header', stub[:header].to_s) unless stub[:header].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicySecurityHeadersConfig
    class ResponseHeadersPolicySecurityHeadersConfig
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicySecurityHeadersConfig')
        visited = visited + ['ResponseHeadersPolicySecurityHeadersConfig']
        {
          xss_protection: Stubs::ResponseHeadersPolicyXSSProtection.default(visited),
          frame_options: Stubs::ResponseHeadersPolicyFrameOptions.default(visited),
          referrer_policy: Stubs::ResponseHeadersPolicyReferrerPolicy.default(visited),
          content_security_policy: Stubs::ResponseHeadersPolicyContentSecurityPolicy.default(visited),
          content_type_options: Stubs::ResponseHeadersPolicyContentTypeOptions.default(visited),
          strict_transport_security: Stubs::ResponseHeadersPolicyStrictTransportSecurity.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicySecurityHeadersConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ResponseHeadersPolicyXSSProtection.stub('XSSProtection', stub[:xss_protection]) unless stub[:xss_protection].nil?
        xml << Stubs::ResponseHeadersPolicyFrameOptions.stub('FrameOptions', stub[:frame_options]) unless stub[:frame_options].nil?
        xml << Stubs::ResponseHeadersPolicyReferrerPolicy.stub('ReferrerPolicy', stub[:referrer_policy]) unless stub[:referrer_policy].nil?
        xml << Stubs::ResponseHeadersPolicyContentSecurityPolicy.stub('ContentSecurityPolicy', stub[:content_security_policy]) unless stub[:content_security_policy].nil?
        xml << Stubs::ResponseHeadersPolicyContentTypeOptions.stub('ContentTypeOptions', stub[:content_type_options]) unless stub[:content_type_options].nil?
        xml << Stubs::ResponseHeadersPolicyStrictTransportSecurity.stub('StrictTransportSecurity', stub[:strict_transport_security]) unless stub[:strict_transport_security].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyStrictTransportSecurity
    class ResponseHeadersPolicyStrictTransportSecurity
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyStrictTransportSecurity')
        visited = visited + ['ResponseHeadersPolicyStrictTransportSecurity']
        {
          override: false,
          include_subdomains: false,
          preload: false,
          access_control_max_age_sec: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyStrictTransportSecurity.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml << Hearth::XML::Node.new('IncludeSubdomains', stub[:include_subdomains].to_s) unless stub[:include_subdomains].nil?
        xml << Hearth::XML::Node.new('Preload', stub[:preload].to_s) unless stub[:preload].nil?
        xml << Hearth::XML::Node.new('AccessControlMaxAgeSec', stub[:access_control_max_age_sec].to_s) unless stub[:access_control_max_age_sec].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyContentTypeOptions
    class ResponseHeadersPolicyContentTypeOptions
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyContentTypeOptions')
        visited = visited + ['ResponseHeadersPolicyContentTypeOptions']
        {
          override: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyContentTypeOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyContentSecurityPolicy
    class ResponseHeadersPolicyContentSecurityPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyContentSecurityPolicy')
        visited = visited + ['ResponseHeadersPolicyContentSecurityPolicy']
        {
          override: false,
          content_security_policy: 'content_security_policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyContentSecurityPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml << Hearth::XML::Node.new('ContentSecurityPolicy', stub[:content_security_policy].to_s) unless stub[:content_security_policy].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyReferrerPolicy
    class ResponseHeadersPolicyReferrerPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyReferrerPolicy')
        visited = visited + ['ResponseHeadersPolicyReferrerPolicy']
        {
          override: false,
          referrer_policy: 'referrer_policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyReferrerPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml << Hearth::XML::Node.new('ReferrerPolicy', stub[:referrer_policy].to_s) unless stub[:referrer_policy].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyFrameOptions
    class ResponseHeadersPolicyFrameOptions
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyFrameOptions')
        visited = visited + ['ResponseHeadersPolicyFrameOptions']
        {
          override: false,
          frame_option: 'frame_option',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyFrameOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml << Hearth::XML::Node.new('FrameOption', stub[:frame_option].to_s) unless stub[:frame_option].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyXSSProtection
    class ResponseHeadersPolicyXSSProtection
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyXSSProtection')
        visited = visited + ['ResponseHeadersPolicyXSSProtection']
        {
          override: false,
          protection: false,
          mode_block: false,
          report_uri: 'report_uri',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyXSSProtection.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Override', stub[:override].to_s) unless stub[:override].nil?
        xml << Hearth::XML::Node.new('Protection', stub[:protection].to_s) unless stub[:protection].nil?
        xml << Hearth::XML::Node.new('ModeBlock', stub[:mode_block].to_s) unless stub[:mode_block].nil?
        xml << Hearth::XML::Node.new('ReportUri', stub[:report_uri].to_s) unless stub[:report_uri].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyCorsConfig
    class ResponseHeadersPolicyCorsConfig
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyCorsConfig')
        visited = visited + ['ResponseHeadersPolicyCorsConfig']
        {
          access_control_allow_origins: Stubs::ResponseHeadersPolicyAccessControlAllowOrigins.default(visited),
          access_control_allow_headers: Stubs::ResponseHeadersPolicyAccessControlAllowHeaders.default(visited),
          access_control_allow_methods: Stubs::ResponseHeadersPolicyAccessControlAllowMethods.default(visited),
          access_control_allow_credentials: false,
          access_control_expose_headers: Stubs::ResponseHeadersPolicyAccessControlExposeHeaders.default(visited),
          access_control_max_age_sec: 1,
          origin_override: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyCorsConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::ResponseHeadersPolicyAccessControlAllowOrigins.stub('AccessControlAllowOrigins', stub[:access_control_allow_origins]) unless stub[:access_control_allow_origins].nil?
        xml << Stubs::ResponseHeadersPolicyAccessControlAllowHeaders.stub('AccessControlAllowHeaders', stub[:access_control_allow_headers]) unless stub[:access_control_allow_headers].nil?
        xml << Stubs::ResponseHeadersPolicyAccessControlAllowMethods.stub('AccessControlAllowMethods', stub[:access_control_allow_methods]) unless stub[:access_control_allow_methods].nil?
        xml << Hearth::XML::Node.new('AccessControlAllowCredentials', stub[:access_control_allow_credentials].to_s) unless stub[:access_control_allow_credentials].nil?
        xml << Stubs::ResponseHeadersPolicyAccessControlExposeHeaders.stub('AccessControlExposeHeaders', stub[:access_control_expose_headers]) unless stub[:access_control_expose_headers].nil?
        xml << Hearth::XML::Node.new('AccessControlMaxAgeSec', stub[:access_control_max_age_sec].to_s) unless stub[:access_control_max_age_sec].nil?
        xml << Hearth::XML::Node.new('OriginOverride', stub[:origin_override].to_s) unless stub[:origin_override].nil?
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyAccessControlExposeHeaders
    class ResponseHeadersPolicyAccessControlExposeHeaders
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyAccessControlExposeHeaders')
        visited = visited + ['ResponseHeadersPolicyAccessControlExposeHeaders']
        {
          quantity: 1,
          items: Stubs::AccessControlExposeHeadersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyAccessControlExposeHeaders.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AccessControlExposeHeadersList.stub('Header', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AccessControlExposeHeadersList
    class AccessControlExposeHeadersList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlExposeHeadersList')
        visited = visited + ['AccessControlExposeHeadersList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyAccessControlAllowMethods
    class ResponseHeadersPolicyAccessControlAllowMethods
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyAccessControlAllowMethods')
        visited = visited + ['ResponseHeadersPolicyAccessControlAllowMethods']
        {
          quantity: 1,
          items: Stubs::AccessControlAllowMethodsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyAccessControlAllowMethods.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AccessControlAllowMethodsList.stub('Method', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AccessControlAllowMethodsList
    class AccessControlAllowMethodsList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAllowMethodsList')
        visited = visited + ['AccessControlAllowMethodsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyAccessControlAllowHeaders
    class ResponseHeadersPolicyAccessControlAllowHeaders
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyAccessControlAllowHeaders')
        visited = visited + ['ResponseHeadersPolicyAccessControlAllowHeaders']
        {
          quantity: 1,
          items: Stubs::AccessControlAllowHeadersList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyAccessControlAllowHeaders.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AccessControlAllowHeadersList.stub('Header', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AccessControlAllowHeadersList
    class AccessControlAllowHeadersList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAllowHeadersList')
        visited = visited + ['AccessControlAllowHeadersList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicyAccessControlAllowOrigins
    class ResponseHeadersPolicyAccessControlAllowOrigins
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyAccessControlAllowOrigins')
        visited = visited + ['ResponseHeadersPolicyAccessControlAllowOrigins']
        {
          quantity: 1,
          items: Stubs::AccessControlAllowOriginsList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyAccessControlAllowOrigins.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::AccessControlAllowOriginsList.stub('Origin', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for AccessControlAllowOriginsList
    class AccessControlAllowOriginsList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAllowOriginsList')
        visited = visited + ['AccessControlAllowOriginsList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateStreamingDistribution
    class CreateStreamingDistribution
      def self.default(visited=[])
        {
          streaming_distribution: Stubs::StreamingDistribution.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistribution.build('StreamingDistribution', stub[:streaming_distribution]) unless stub[:streaming_distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for StreamingDistribution
    class StreamingDistribution
      def self.default(visited=[])
        return nil if visited.include?('StreamingDistribution')
        visited = visited + ['StreamingDistribution']
        {
          id: 'id',
          arn: 'arn',
          status: 'status',
          last_modified_time: Time.now,
          domain_name: 'domain_name',
          active_trusted_signers: Stubs::ActiveTrustedSigners.default(visited),
          streaming_distribution_config: Stubs::StreamingDistributionConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StreamingDistribution.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Stubs::ActiveTrustedSigners.stub('ActiveTrustedSigners', stub[:active_trusted_signers]) unless stub[:active_trusted_signers].nil?
        xml << Stubs::StreamingDistributionConfig.stub('StreamingDistributionConfig', stub[:streaming_distribution_config]) unless stub[:streaming_distribution_config].nil?
        xml
      end
    end

    # Structure Stubber for StreamingDistributionConfig
    class StreamingDistributionConfig
      def self.default(visited=[])
        return nil if visited.include?('StreamingDistributionConfig')
        visited = visited + ['StreamingDistributionConfig']
        {
          caller_reference: 'caller_reference',
          s3_origin: Stubs::S3Origin.default(visited),
          aliases: Stubs::Aliases.default(visited),
          comment: 'comment',
          logging: Stubs::StreamingLoggingConfig.default(visited),
          trusted_signers: Stubs::TrustedSigners.default(visited),
          price_class: 'price_class',
          enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StreamingDistributionConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CallerReference', stub[:caller_reference].to_s) unless stub[:caller_reference].nil?
        xml << Stubs::S3Origin.stub('S3Origin', stub[:s3_origin]) unless stub[:s3_origin].nil?
        xml << Stubs::Aliases.stub('Aliases', stub[:aliases]) unless stub[:aliases].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Stubs::StreamingLoggingConfig.stub('Logging', stub[:logging]) unless stub[:logging].nil?
        xml << Stubs::TrustedSigners.stub('TrustedSigners', stub[:trusted_signers]) unless stub[:trusted_signers].nil?
        xml << Hearth::XML::Node.new('PriceClass', stub[:price_class].to_s) unless stub[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml
      end
    end

    # Structure Stubber for StreamingLoggingConfig
    class StreamingLoggingConfig
      def self.default(visited=[])
        return nil if visited.include?('StreamingLoggingConfig')
        visited = visited + ['StreamingLoggingConfig']
        {
          enabled: false,
          bucket: 'bucket',
          prefix: 'prefix',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StreamingLoggingConfig.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Hearth::XML::Node.new('Bucket', stub[:bucket].to_s) unless stub[:bucket].nil?
        xml << Hearth::XML::Node.new('Prefix', stub[:prefix].to_s) unless stub[:prefix].nil?
        xml
      end
    end

    # Structure Stubber for S3Origin
    class S3Origin
      def self.default(visited=[])
        return nil if visited.include?('S3Origin')
        visited = visited + ['S3Origin']
        {
          domain_name: 'domain_name',
          origin_access_identity: 'origin_access_identity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::S3Origin.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Hearth::XML::Node.new('OriginAccessIdentity', stub[:origin_access_identity].to_s) unless stub[:origin_access_identity].nil?
        xml
      end
    end

    # Operation Stubber for CreateStreamingDistributionWithTags
    class CreateStreamingDistributionWithTags
      def self.default(visited=[])
        {
          streaming_distribution: Stubs::StreamingDistribution.default(visited),
          location: 'location',
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Location'] = stub[:location] unless stub[:location].nil? || stub[:location].empty?
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistribution.build('StreamingDistribution', stub[:streaming_distribution]) unless stub[:streaming_distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for DeleteCachePolicy
    class DeleteCachePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCloudFrontOriginAccessIdentity
    class DeleteCloudFrontOriginAccessIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDistribution
    class DeleteDistribution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFieldLevelEncryptionConfig
    class DeleteFieldLevelEncryptionConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFieldLevelEncryptionProfile
    class DeleteFieldLevelEncryptionProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFunction
    class DeleteFunction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteKeyGroup
    class DeleteKeyGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMonitoringSubscription
    class DeleteMonitoringSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOriginRequestPolicy
    class DeleteOriginRequestPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeletePublicKey
    class DeletePublicKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRealtimeLogConfig
    class DeleteRealtimeLogConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteResponseHeadersPolicy
    class DeleteResponseHeadersPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteStreamingDistribution
    class DeleteStreamingDistribution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeFunction
    class DescribeFunction
      def self.default(visited=[])
        {
          function_summary: Stubs::FunctionSummary.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FunctionSummary.build('FunctionSummary', stub[:function_summary]) unless stub[:function_summary].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetCachePolicy
    class GetCachePolicy
      def self.default(visited=[])
        {
          cache_policy: Stubs::CachePolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CachePolicy.build('CachePolicy', stub[:cache_policy]) unless stub[:cache_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetCachePolicyConfig
    class GetCachePolicyConfig
      def self.default(visited=[])
        {
          cache_policy_config: Stubs::CachePolicyConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CachePolicyConfig.build('CachePolicyConfig', stub[:cache_policy_config]) unless stub[:cache_policy_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetCloudFrontOriginAccessIdentity
    class GetCloudFrontOriginAccessIdentity
      def self.default(visited=[])
        {
          cloud_front_origin_access_identity: Stubs::CloudFrontOriginAccessIdentity.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CloudFrontOriginAccessIdentity.build('CloudFrontOriginAccessIdentity', stub[:cloud_front_origin_access_identity]) unless stub[:cloud_front_origin_access_identity].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetCloudFrontOriginAccessIdentityConfig
    class GetCloudFrontOriginAccessIdentityConfig
      def self.default(visited=[])
        {
          cloud_front_origin_access_identity_config: Stubs::CloudFrontOriginAccessIdentityConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CloudFrontOriginAccessIdentityConfig.build('CloudFrontOriginAccessIdentityConfig', stub[:cloud_front_origin_access_identity_config]) unless stub[:cloud_front_origin_access_identity_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetDistribution
    class GetDistribution
      def self.default(visited=[])
        {
          distribution: Stubs::Distribution.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Distribution.build('Distribution', stub[:distribution]) unless stub[:distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetDistributionConfig
    class GetDistributionConfig
      def self.default(visited=[])
        {
          distribution_config: Stubs::DistributionConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionConfig.build('DistributionConfig', stub[:distribution_config]) unless stub[:distribution_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetFieldLevelEncryption
    class GetFieldLevelEncryption
      def self.default(visited=[])
        {
          field_level_encryption: Stubs::FieldLevelEncryption.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryption.build('FieldLevelEncryption', stub[:field_level_encryption]) unless stub[:field_level_encryption].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetFieldLevelEncryptionConfig
    class GetFieldLevelEncryptionConfig
      def self.default(visited=[])
        {
          field_level_encryption_config: Stubs::FieldLevelEncryptionConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionConfig.build('FieldLevelEncryptionConfig', stub[:field_level_encryption_config]) unless stub[:field_level_encryption_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetFieldLevelEncryptionProfile
    class GetFieldLevelEncryptionProfile
      def self.default(visited=[])
        {
          field_level_encryption_profile: Stubs::FieldLevelEncryptionProfile.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionProfile.build('FieldLevelEncryptionProfile', stub[:field_level_encryption_profile]) unless stub[:field_level_encryption_profile].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetFieldLevelEncryptionProfileConfig
    class GetFieldLevelEncryptionProfileConfig
      def self.default(visited=[])
        {
          field_level_encryption_profile_config: Stubs::FieldLevelEncryptionProfileConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionProfileConfig.build('FieldLevelEncryptionProfileConfig', stub[:field_level_encryption_profile_config]) unless stub[:field_level_encryption_profile_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetFunction
    class GetFunction
      def self.default(visited=[])
        {
          function_code: 'function_code',
          e_tag: 'e_tag',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:function_code] || '')
      end
    end

    # Operation Stubber for GetInvalidation
    class GetInvalidation
      def self.default(visited=[])
        {
          invalidation: Stubs::Invalidation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Invalidation.build('Invalidation', stub[:invalidation]) unless stub[:invalidation].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetKeyGroup
    class GetKeyGroup
      def self.default(visited=[])
        {
          key_group: Stubs::KeyGroup.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::KeyGroup.build('KeyGroup', stub[:key_group]) unless stub[:key_group].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetKeyGroupConfig
    class GetKeyGroupConfig
      def self.default(visited=[])
        {
          key_group_config: Stubs::KeyGroupConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::KeyGroupConfig.build('KeyGroupConfig', stub[:key_group_config]) unless stub[:key_group_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetMonitoringSubscription
    class GetMonitoringSubscription
      def self.default(visited=[])
        {
          monitoring_subscription: Stubs::MonitoringSubscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::MonitoringSubscription.build('MonitoringSubscription', stub[:monitoring_subscription]) unless stub[:monitoring_subscription].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetOriginRequestPolicy
    class GetOriginRequestPolicy
      def self.default(visited=[])
        {
          origin_request_policy: Stubs::OriginRequestPolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OriginRequestPolicy.build('OriginRequestPolicy', stub[:origin_request_policy]) unless stub[:origin_request_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetOriginRequestPolicyConfig
    class GetOriginRequestPolicyConfig
      def self.default(visited=[])
        {
          origin_request_policy_config: Stubs::OriginRequestPolicyConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OriginRequestPolicyConfig.build('OriginRequestPolicyConfig', stub[:origin_request_policy_config]) unless stub[:origin_request_policy_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetPublicKey
    class GetPublicKey
      def self.default(visited=[])
        {
          public_key: Stubs::PublicKey.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicKey.build('PublicKey', stub[:public_key]) unless stub[:public_key].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetPublicKeyConfig
    class GetPublicKeyConfig
      def self.default(visited=[])
        {
          public_key_config: Stubs::PublicKeyConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicKeyConfig.build('PublicKeyConfig', stub[:public_key_config]) unless stub[:public_key_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetRealtimeLogConfig
    class GetRealtimeLogConfig
      def self.default(visited=[])
        {
          realtime_log_config: Stubs::RealtimeLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('GetRealtimeLogConfigResult')
        xml.attributes['xmlns'] = 'http://cloudfront.amazonaws.com/doc/2020-05-31/'
        xml << Stubs::RealtimeLogConfig.stub('RealtimeLogConfig', stub[:realtime_log_config]) unless stub[:realtime_log_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetResponseHeadersPolicy
    class GetResponseHeadersPolicy
      def self.default(visited=[])
        {
          response_headers_policy: Stubs::ResponseHeadersPolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ResponseHeadersPolicy.build('ResponseHeadersPolicy', stub[:response_headers_policy]) unless stub[:response_headers_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetResponseHeadersPolicyConfig
    class GetResponseHeadersPolicyConfig
      def self.default(visited=[])
        {
          response_headers_policy_config: Stubs::ResponseHeadersPolicyConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ResponseHeadersPolicyConfig.build('ResponseHeadersPolicyConfig', stub[:response_headers_policy_config]) unless stub[:response_headers_policy_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetStreamingDistribution
    class GetStreamingDistribution
      def self.default(visited=[])
        {
          streaming_distribution: Stubs::StreamingDistribution.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistribution.build('StreamingDistribution', stub[:streaming_distribution]) unless stub[:streaming_distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for GetStreamingDistributionConfig
    class GetStreamingDistributionConfig
      def self.default(visited=[])
        {
          streaming_distribution_config: Stubs::StreamingDistributionConfig.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistributionConfig.build('StreamingDistributionConfig', stub[:streaming_distribution_config]) unless stub[:streaming_distribution_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListCachePolicies
    class ListCachePolicies
      def self.default(visited=[])
        {
          cache_policy_list: Stubs::CachePolicyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CachePolicyList.build('CachePolicyList', stub[:cache_policy_list]) unless stub[:cache_policy_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CachePolicyList
    class CachePolicyList
      def self.default(visited=[])
        return nil if visited.include?('CachePolicyList')
        visited = visited + ['CachePolicyList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::CachePolicySummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicyList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::CachePolicySummaryList.stub('CachePolicySummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for CachePolicySummaryList
    class CachePolicySummaryList
      def self.default(visited=[])
        return nil if visited.include?('CachePolicySummaryList')
        visited = visited + ['CachePolicySummaryList']
        [
          Stubs::CachePolicySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CachePolicySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CachePolicySummary
    class CachePolicySummary
      def self.default(visited=[])
        return nil if visited.include?('CachePolicySummary')
        visited = visited + ['CachePolicySummary']
        {
          type: 'type',
          cache_policy: Stubs::CachePolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CachePolicySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Stubs::CachePolicy.stub('CachePolicy', stub[:cache_policy]) unless stub[:cache_policy].nil?
        xml
      end
    end

    # Operation Stubber for ListCloudFrontOriginAccessIdentities
    class ListCloudFrontOriginAccessIdentities
      def self.default(visited=[])
        {
          cloud_front_origin_access_identity_list: Stubs::CloudFrontOriginAccessIdentityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CloudFrontOriginAccessIdentityList.build('CloudFrontOriginAccessIdentityList', stub[:cloud_front_origin_access_identity_list]) unless stub[:cloud_front_origin_access_identity_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for CloudFrontOriginAccessIdentityList
    class CloudFrontOriginAccessIdentityList
      def self.default(visited=[])
        return nil if visited.include?('CloudFrontOriginAccessIdentityList')
        visited = visited + ['CloudFrontOriginAccessIdentityList']
        {
          marker: 'marker',
          next_marker: 'next_marker',
          max_items: 1,
          is_truncated: false,
          quantity: 1,
          items: Stubs::CloudFrontOriginAccessIdentitySummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudFrontOriginAccessIdentityList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::CloudFrontOriginAccessIdentitySummaryList.stub('CloudFrontOriginAccessIdentitySummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for CloudFrontOriginAccessIdentitySummaryList
    class CloudFrontOriginAccessIdentitySummaryList
      def self.default(visited=[])
        return nil if visited.include?('CloudFrontOriginAccessIdentitySummaryList')
        visited = visited + ['CloudFrontOriginAccessIdentitySummaryList']
        [
          Stubs::CloudFrontOriginAccessIdentitySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::CloudFrontOriginAccessIdentitySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CloudFrontOriginAccessIdentitySummary
    class CloudFrontOriginAccessIdentitySummary
      def self.default(visited=[])
        return nil if visited.include?('CloudFrontOriginAccessIdentitySummary')
        visited = visited + ['CloudFrontOriginAccessIdentitySummary']
        {
          id: 'id',
          s3_canonical_user_id: 's3_canonical_user_id',
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CloudFrontOriginAccessIdentitySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('S3CanonicalUserId', stub[:s3_canonical_user_id].to_s) unless stub[:s3_canonical_user_id].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for ListConflictingAliases
    class ListConflictingAliases
      def self.default(visited=[])
        {
          conflicting_aliases_list: Stubs::ConflictingAliasesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ConflictingAliasesList.build('ConflictingAliasesList', stub[:conflicting_aliases_list]) unless stub[:conflicting_aliases_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ConflictingAliasesList
    class ConflictingAliasesList
      def self.default(visited=[])
        return nil if visited.include?('ConflictingAliasesList')
        visited = visited + ['ConflictingAliasesList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::ConflictingAliases.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConflictingAliasesList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::ConflictingAliases.stub('ConflictingAlias', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for ConflictingAliases
    class ConflictingAliases
      def self.default(visited=[])
        return nil if visited.include?('ConflictingAliases')
        visited = visited + ['ConflictingAliases']
        [
          Stubs::ConflictingAlias.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ConflictingAlias.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ConflictingAlias
    class ConflictingAlias
      def self.default(visited=[])
        return nil if visited.include?('ConflictingAlias')
        visited = visited + ['ConflictingAlias']
        {
          alias: 'alias',
          distribution_id: 'distribution_id',
          account_id: 'account_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ConflictingAlias.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Alias', stub[:alias].to_s) unless stub[:alias].nil?
        xml << Hearth::XML::Node.new('DistributionId', stub[:distribution_id].to_s) unless stub[:distribution_id].nil?
        xml << Hearth::XML::Node.new('AccountId', stub[:account_id].to_s) unless stub[:account_id].nil?
        xml
      end
    end

    # Operation Stubber for ListDistributions
    class ListDistributions
      def self.default(visited=[])
        {
          distribution_list: Stubs::DistributionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionList.build('DistributionList', stub[:distribution_list]) unless stub[:distribution_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for DistributionList
    class DistributionList
      def self.default(visited=[])
        return nil if visited.include?('DistributionList')
        visited = visited + ['DistributionList']
        {
          marker: 'marker',
          next_marker: 'next_marker',
          max_items: 1,
          is_truncated: false,
          quantity: 1,
          items: Stubs::DistributionSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DistributionList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::DistributionSummaryList.stub('DistributionSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for DistributionSummaryList
    class DistributionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DistributionSummaryList')
        visited = visited + ['DistributionSummaryList']
        [
          Stubs::DistributionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::DistributionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DistributionSummary
    class DistributionSummary
      def self.default(visited=[])
        return nil if visited.include?('DistributionSummary')
        visited = visited + ['DistributionSummary']
        {
          id: 'id',
          arn: 'arn',
          status: 'status',
          last_modified_time: Time.now,
          domain_name: 'domain_name',
          aliases: Stubs::Aliases.default(visited),
          origins: Stubs::Origins.default(visited),
          origin_groups: Stubs::OriginGroups.default(visited),
          default_cache_behavior: Stubs::DefaultCacheBehavior.default(visited),
          cache_behaviors: Stubs::CacheBehaviors.default(visited),
          custom_error_responses: Stubs::CustomErrorResponses.default(visited),
          comment: 'comment',
          price_class: 'price_class',
          enabled: false,
          viewer_certificate: Stubs::ViewerCertificate.default(visited),
          restrictions: Stubs::Restrictions.default(visited),
          web_acl_id: 'web_acl_id',
          http_version: 'http_version',
          is_ipv6_enabled: false,
          alias_icp_recordals: Stubs::AliasICPRecordals.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DistributionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Stubs::Aliases.stub('Aliases', stub[:aliases]) unless stub[:aliases].nil?
        xml << Stubs::Origins.stub('Origins', stub[:origins]) unless stub[:origins].nil?
        xml << Stubs::OriginGroups.stub('OriginGroups', stub[:origin_groups]) unless stub[:origin_groups].nil?
        xml << Stubs::DefaultCacheBehavior.stub('DefaultCacheBehavior', stub[:default_cache_behavior]) unless stub[:default_cache_behavior].nil?
        xml << Stubs::CacheBehaviors.stub('CacheBehaviors', stub[:cache_behaviors]) unless stub[:cache_behaviors].nil?
        xml << Stubs::CustomErrorResponses.stub('CustomErrorResponses', stub[:custom_error_responses]) unless stub[:custom_error_responses].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('PriceClass', stub[:price_class].to_s) unless stub[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Stubs::ViewerCertificate.stub('ViewerCertificate', stub[:viewer_certificate]) unless stub[:viewer_certificate].nil?
        xml << Stubs::Restrictions.stub('Restrictions', stub[:restrictions]) unless stub[:restrictions].nil?
        xml << Hearth::XML::Node.new('WebACLId', stub[:web_acl_id].to_s) unless stub[:web_acl_id].nil?
        xml << Hearth::XML::Node.new('HttpVersion', stub[:http_version].to_s) unless stub[:http_version].nil?
        xml << Hearth::XML::Node.new('IsIPV6Enabled', stub[:is_ipv6_enabled].to_s) unless stub[:is_ipv6_enabled].nil?
        xml << Hearth::XML::Node.new('AliasICPRecordals', Stubs::AliasICPRecordals.stub('AliasICPRecordal', stub[:alias_icp_recordals])) unless stub[:alias_icp_recordals].nil?
        xml
      end
    end

    # Operation Stubber for ListDistributionsByCachePolicyId
    class ListDistributionsByCachePolicyId
      def self.default(visited=[])
        {
          distribution_id_list: Stubs::DistributionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionIdList.build('DistributionIdList', stub[:distribution_id_list]) unless stub[:distribution_id_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for DistributionIdList
    class DistributionIdList
      def self.default(visited=[])
        return nil if visited.include?('DistributionIdList')
        visited = visited + ['DistributionIdList']
        {
          marker: 'marker',
          next_marker: 'next_marker',
          max_items: 1,
          is_truncated: false,
          quantity: 1,
          items: Stubs::DistributionIdListSummary.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DistributionIdList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::DistributionIdListSummary.stub('DistributionId', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for DistributionIdListSummary
    class DistributionIdListSummary
      def self.default(visited=[])
        return nil if visited.include?('DistributionIdListSummary')
        visited = visited + ['DistributionIdListSummary']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListDistributionsByKeyGroup
    class ListDistributionsByKeyGroup
      def self.default(visited=[])
        {
          distribution_id_list: Stubs::DistributionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionIdList.build('DistributionIdList', stub[:distribution_id_list]) unless stub[:distribution_id_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListDistributionsByOriginRequestPolicyId
    class ListDistributionsByOriginRequestPolicyId
      def self.default(visited=[])
        {
          distribution_id_list: Stubs::DistributionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionIdList.build('DistributionIdList', stub[:distribution_id_list]) unless stub[:distribution_id_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListDistributionsByRealtimeLogConfig
    class ListDistributionsByRealtimeLogConfig
      def self.default(visited=[])
        {
          distribution_list: Stubs::DistributionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionList.build('DistributionList', stub[:distribution_list]) unless stub[:distribution_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListDistributionsByResponseHeadersPolicyId
    class ListDistributionsByResponseHeadersPolicyId
      def self.default(visited=[])
        {
          distribution_id_list: Stubs::DistributionIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionIdList.build('DistributionIdList', stub[:distribution_id_list]) unless stub[:distribution_id_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListDistributionsByWebACLId
    class ListDistributionsByWebACLId
      def self.default(visited=[])
        {
          distribution_list: Stubs::DistributionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::DistributionList.build('DistributionList', stub[:distribution_list]) unless stub[:distribution_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for ListFieldLevelEncryptionConfigs
    class ListFieldLevelEncryptionConfigs
      def self.default(visited=[])
        {
          field_level_encryption_list: Stubs::FieldLevelEncryptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionList.build('FieldLevelEncryptionList', stub[:field_level_encryption_list]) unless stub[:field_level_encryption_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FieldLevelEncryptionList
    class FieldLevelEncryptionList
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionList')
        visited = visited + ['FieldLevelEncryptionList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::FieldLevelEncryptionSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::FieldLevelEncryptionSummaryList.stub('FieldLevelEncryptionSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for FieldLevelEncryptionSummaryList
    class FieldLevelEncryptionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionSummaryList')
        visited = visited + ['FieldLevelEncryptionSummaryList']
        [
          Stubs::FieldLevelEncryptionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::FieldLevelEncryptionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for FieldLevelEncryptionSummary
    class FieldLevelEncryptionSummary
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionSummary')
        visited = visited + ['FieldLevelEncryptionSummary']
        {
          id: 'id',
          last_modified_time: Time.now,
          comment: 'comment',
          query_arg_profile_config: Stubs::QueryArgProfileConfig.default(visited),
          content_type_profile_config: Stubs::ContentTypeProfileConfig.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Stubs::QueryArgProfileConfig.stub('QueryArgProfileConfig', stub[:query_arg_profile_config]) unless stub[:query_arg_profile_config].nil?
        xml << Stubs::ContentTypeProfileConfig.stub('ContentTypeProfileConfig', stub[:content_type_profile_config]) unless stub[:content_type_profile_config].nil?
        xml
      end
    end

    # Operation Stubber for ListFieldLevelEncryptionProfiles
    class ListFieldLevelEncryptionProfiles
      def self.default(visited=[])
        {
          field_level_encryption_profile_list: Stubs::FieldLevelEncryptionProfileList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionProfileList.build('FieldLevelEncryptionProfileList', stub[:field_level_encryption_profile_list]) unless stub[:field_level_encryption_profile_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FieldLevelEncryptionProfileList
    class FieldLevelEncryptionProfileList
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionProfileList')
        visited = visited + ['FieldLevelEncryptionProfileList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::FieldLevelEncryptionProfileSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionProfileList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::FieldLevelEncryptionProfileSummaryList.stub('FieldLevelEncryptionProfileSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for FieldLevelEncryptionProfileSummaryList
    class FieldLevelEncryptionProfileSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionProfileSummaryList')
        visited = visited + ['FieldLevelEncryptionProfileSummaryList']
        [
          Stubs::FieldLevelEncryptionProfileSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::FieldLevelEncryptionProfileSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for FieldLevelEncryptionProfileSummary
    class FieldLevelEncryptionProfileSummary
      def self.default(visited=[])
        return nil if visited.include?('FieldLevelEncryptionProfileSummary')
        visited = visited + ['FieldLevelEncryptionProfileSummary']
        {
          id: 'id',
          last_modified_time: Time.now,
          name: 'name',
          encryption_entities: Stubs::EncryptionEntities.default(visited),
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FieldLevelEncryptionProfileSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Stubs::EncryptionEntities.stub('EncryptionEntities', stub[:encryption_entities]) unless stub[:encryption_entities].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for ListFunctions
    class ListFunctions
      def self.default(visited=[])
        {
          function_list: Stubs::FunctionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FunctionList.build('FunctionList', stub[:function_list]) unless stub[:function_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for FunctionList
    class FunctionList
      def self.default(visited=[])
        return nil if visited.include?('FunctionList')
        visited = visited + ['FunctionList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::FunctionSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FunctionList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::FunctionSummaryList.stub('FunctionSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for FunctionSummaryList
    class FunctionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('FunctionSummaryList')
        visited = visited + ['FunctionSummaryList']
        [
          Stubs::FunctionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::FunctionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListInvalidations
    class ListInvalidations
      def self.default(visited=[])
        {
          invalidation_list: Stubs::InvalidationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::InvalidationList.build('InvalidationList', stub[:invalidation_list]) unless stub[:invalidation_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for InvalidationList
    class InvalidationList
      def self.default(visited=[])
        return nil if visited.include?('InvalidationList')
        visited = visited + ['InvalidationList']
        {
          marker: 'marker',
          next_marker: 'next_marker',
          max_items: 1,
          is_truncated: false,
          quantity: 1,
          items: Stubs::InvalidationSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InvalidationList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::InvalidationSummaryList.stub('InvalidationSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for InvalidationSummaryList
    class InvalidationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InvalidationSummaryList')
        visited = visited + ['InvalidationSummaryList']
        [
          Stubs::InvalidationSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::InvalidationSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InvalidationSummary
    class InvalidationSummary
      def self.default(visited=[])
        return nil if visited.include?('InvalidationSummary')
        visited = visited + ['InvalidationSummary']
        {
          id: 'id',
          create_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InvalidationSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('CreateTime', Hearth::TimeHelper.to_date_time(stub[:create_time])) unless stub[:create_time].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for ListKeyGroups
    class ListKeyGroups
      def self.default(visited=[])
        {
          key_group_list: Stubs::KeyGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::KeyGroupList.build('KeyGroupList', stub[:key_group_list]) unless stub[:key_group_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for KeyGroupList
    class KeyGroupList
      def self.default(visited=[])
        return nil if visited.include?('KeyGroupList')
        visited = visited + ['KeyGroupList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::KeyGroupSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeyGroupList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::KeyGroupSummaryList.stub('KeyGroupSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for KeyGroupSummaryList
    class KeyGroupSummaryList
      def self.default(visited=[])
        return nil if visited.include?('KeyGroupSummaryList')
        visited = visited + ['KeyGroupSummaryList']
        [
          Stubs::KeyGroupSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::KeyGroupSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for KeyGroupSummary
    class KeyGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('KeyGroupSummary')
        visited = visited + ['KeyGroupSummary']
        {
          key_group: Stubs::KeyGroup.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::KeyGroupSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::KeyGroup.stub('KeyGroup', stub[:key_group]) unless stub[:key_group].nil?
        xml
      end
    end

    # Operation Stubber for ListOriginRequestPolicies
    class ListOriginRequestPolicies
      def self.default(visited=[])
        {
          origin_request_policy_list: Stubs::OriginRequestPolicyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OriginRequestPolicyList.build('OriginRequestPolicyList', stub[:origin_request_policy_list]) unless stub[:origin_request_policy_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for OriginRequestPolicyList
    class OriginRequestPolicyList
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicyList')
        visited = visited + ['OriginRequestPolicyList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::OriginRequestPolicySummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicyList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::OriginRequestPolicySummaryList.stub('OriginRequestPolicySummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for OriginRequestPolicySummaryList
    class OriginRequestPolicySummaryList
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicySummaryList')
        visited = visited + ['OriginRequestPolicySummaryList']
        [
          Stubs::OriginRequestPolicySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::OriginRequestPolicySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OriginRequestPolicySummary
    class OriginRequestPolicySummary
      def self.default(visited=[])
        return nil if visited.include?('OriginRequestPolicySummary')
        visited = visited + ['OriginRequestPolicySummary']
        {
          type: 'type',
          origin_request_policy: Stubs::OriginRequestPolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OriginRequestPolicySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Stubs::OriginRequestPolicy.stub('OriginRequestPolicy', stub[:origin_request_policy]) unless stub[:origin_request_policy].nil?
        xml
      end
    end

    # Operation Stubber for ListPublicKeys
    class ListPublicKeys
      def self.default(visited=[])
        {
          public_key_list: Stubs::PublicKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicKeyList.build('PublicKeyList', stub[:public_key_list]) unless stub[:public_key_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for PublicKeyList
    class PublicKeyList
      def self.default(visited=[])
        return nil if visited.include?('PublicKeyList')
        visited = visited + ['PublicKeyList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::PublicKeySummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublicKeyList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::PublicKeySummaryList.stub('PublicKeySummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for PublicKeySummaryList
    class PublicKeySummaryList
      def self.default(visited=[])
        return nil if visited.include?('PublicKeySummaryList')
        visited = visited + ['PublicKeySummaryList']
        [
          Stubs::PublicKeySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::PublicKeySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PublicKeySummary
    class PublicKeySummary
      def self.default(visited=[])
        return nil if visited.include?('PublicKeySummary')
        visited = visited + ['PublicKeySummary']
        {
          id: 'id',
          name: 'name',
          created_time: Time.now,
          encoded_key: 'encoded_key',
          comment: 'comment',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PublicKeySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('EncodedKey', stub[:encoded_key].to_s) unless stub[:encoded_key].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml
      end
    end

    # Operation Stubber for ListRealtimeLogConfigs
    class ListRealtimeLogConfigs
      def self.default(visited=[])
        {
          realtime_log_configs: Stubs::RealtimeLogConfigs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::RealtimeLogConfigs.build('RealtimeLogConfigs', stub[:realtime_log_configs]) unless stub[:realtime_log_configs].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for RealtimeLogConfigs
    class RealtimeLogConfigs
      def self.default(visited=[])
        return nil if visited.include?('RealtimeLogConfigs')
        visited = visited + ['RealtimeLogConfigs']
        {
          max_items: 1,
          items: Stubs::RealtimeLogConfigList.default(visited),
          is_truncated: false,
          marker: 'marker',
          next_marker: 'next_marker',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RealtimeLogConfigs.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::RealtimeLogConfigList.stub('member', stub[:items])) unless stub[:items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml
      end
    end

    # List Stubber for RealtimeLogConfigList
    class RealtimeLogConfigList
      def self.default(visited=[])
        return nil if visited.include?('RealtimeLogConfigList')
        visited = visited + ['RealtimeLogConfigList']
        [
          Stubs::RealtimeLogConfig.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::RealtimeLogConfig.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListResponseHeadersPolicies
    class ListResponseHeadersPolicies
      def self.default(visited=[])
        {
          response_headers_policy_list: Stubs::ResponseHeadersPolicyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ResponseHeadersPolicyList.build('ResponseHeadersPolicyList', stub[:response_headers_policy_list]) unless stub[:response_headers_policy_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for ResponseHeadersPolicyList
    class ResponseHeadersPolicyList
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicyList')
        visited = visited + ['ResponseHeadersPolicyList']
        {
          next_marker: 'next_marker',
          max_items: 1,
          quantity: 1,
          items: Stubs::ResponseHeadersPolicySummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicyList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::ResponseHeadersPolicySummaryList.stub('ResponseHeadersPolicySummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for ResponseHeadersPolicySummaryList
    class ResponseHeadersPolicySummaryList
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicySummaryList')
        visited = visited + ['ResponseHeadersPolicySummaryList']
        [
          Stubs::ResponseHeadersPolicySummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::ResponseHeadersPolicySummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResponseHeadersPolicySummary
    class ResponseHeadersPolicySummary
      def self.default(visited=[])
        return nil if visited.include?('ResponseHeadersPolicySummary')
        visited = visited + ['ResponseHeadersPolicySummary']
        {
          type: 'type',
          response_headers_policy: Stubs::ResponseHeadersPolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResponseHeadersPolicySummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Stubs::ResponseHeadersPolicy.stub('ResponseHeadersPolicy', stub[:response_headers_policy]) unless stub[:response_headers_policy].nil?
        xml
      end
    end

    # Operation Stubber for ListStreamingDistributions
    class ListStreamingDistributions
      def self.default(visited=[])
        {
          streaming_distribution_list: Stubs::StreamingDistributionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistributionList.build('StreamingDistributionList', stub[:streaming_distribution_list]) unless stub[:streaming_distribution_list].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for StreamingDistributionList
    class StreamingDistributionList
      def self.default(visited=[])
        return nil if visited.include?('StreamingDistributionList')
        visited = visited + ['StreamingDistributionList']
        {
          marker: 'marker',
          next_marker: 'next_marker',
          max_items: 1,
          is_truncated: false,
          quantity: 1,
          items: Stubs::StreamingDistributionSummaryList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StreamingDistributionList.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << Hearth::XML::Node.new('NextMarker', stub[:next_marker].to_s) unless stub[:next_marker].nil?
        xml << Hearth::XML::Node.new('MaxItems', stub[:max_items].to_s) unless stub[:max_items].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Quantity', stub[:quantity].to_s) unless stub[:quantity].nil?
        xml << Hearth::XML::Node.new('Items', Stubs::StreamingDistributionSummaryList.stub('StreamingDistributionSummary', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for StreamingDistributionSummaryList
    class StreamingDistributionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('StreamingDistributionSummaryList')
        visited = visited + ['StreamingDistributionSummaryList']
        [
          Stubs::StreamingDistributionSummary.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::StreamingDistributionSummary.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StreamingDistributionSummary
    class StreamingDistributionSummary
      def self.default(visited=[])
        return nil if visited.include?('StreamingDistributionSummary')
        visited = visited + ['StreamingDistributionSummary']
        {
          id: 'id',
          arn: 'arn',
          status: 'status',
          last_modified_time: Time.now,
          domain_name: 'domain_name',
          s3_origin: Stubs::S3Origin.default(visited),
          aliases: Stubs::Aliases.default(visited),
          trusted_signers: Stubs::TrustedSigners.default(visited),
          comment: 'comment',
          price_class: 'price_class',
          enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StreamingDistributionSummary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('LastModifiedTime', Hearth::TimeHelper.to_date_time(stub[:last_modified_time])) unless stub[:last_modified_time].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Stubs::S3Origin.stub('S3Origin', stub[:s3_origin]) unless stub[:s3_origin].nil?
        xml << Stubs::Aliases.stub('Aliases', stub[:aliases]) unless stub[:aliases].nil?
        xml << Stubs::TrustedSigners.stub('TrustedSigners', stub[:trusted_signers]) unless stub[:trusted_signers].nil?
        xml << Hearth::XML::Node.new('Comment', stub[:comment].to_s) unless stub[:comment].nil?
        xml << Hearth::XML::Node.new('PriceClass', stub[:price_class].to_s) unless stub[:price_class].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Tags.build('Tags', stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          items: Stubs::TagList.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tags.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Items', Stubs::TagList.stub('Tag', stub[:items])) unless stub[:items].nil?
        xml
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Stubs::Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for PublishFunction
    class PublishFunction
      def self.default(visited=[])
        {
          function_summary: Stubs::FunctionSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FunctionSummary.build('FunctionSummary', stub[:function_summary]) unless stub[:function_summary].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for TestFunction
    class TestFunction
      def self.default(visited=[])
        {
          test_result: Stubs::TestResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::TestResult.build('TestResult', stub[:test_result]) unless stub[:test_result].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Structure Stubber for TestResult
    class TestResult
      def self.default(visited=[])
        return nil if visited.include?('TestResult')
        visited = visited + ['TestResult']
        {
          function_summary: Stubs::FunctionSummary.default(visited),
          compute_utilization: 'compute_utilization',
          function_execution_logs: Stubs::FunctionExecutionLogList.default(visited),
          function_error_message: 'function_error_message',
          function_output: 'function_output',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TestResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::FunctionSummary.stub('FunctionSummary', stub[:function_summary]) unless stub[:function_summary].nil?
        xml << Hearth::XML::Node.new('ComputeUtilization', stub[:compute_utilization].to_s) unless stub[:compute_utilization].nil?
        xml << Hearth::XML::Node.new('FunctionExecutionLogs', Stubs::FunctionExecutionLogList.stub('member', stub[:function_execution_logs])) unless stub[:function_execution_logs].nil?
        xml << Hearth::XML::Node.new('FunctionErrorMessage', stub[:function_error_message].to_s) unless stub[:function_error_message].nil?
        xml << Hearth::XML::Node.new('FunctionOutput', stub[:function_output].to_s) unless stub[:function_output].nil?
        xml
      end
    end

    # List Stubber for FunctionExecutionLogList
    class FunctionExecutionLogList
      def self.default(visited=[])
        return nil if visited.include?('FunctionExecutionLogList')
        visited = visited + ['FunctionExecutionLogList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        stub ||= []
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateCachePolicy
    class UpdateCachePolicy
      def self.default(visited=[])
        {
          cache_policy: Stubs::CachePolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CachePolicy.build('CachePolicy', stub[:cache_policy]) unless stub[:cache_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateCloudFrontOriginAccessIdentity
    class UpdateCloudFrontOriginAccessIdentity
      def self.default(visited=[])
        {
          cloud_front_origin_access_identity: Stubs::CloudFrontOriginAccessIdentity.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::CloudFrontOriginAccessIdentity.build('CloudFrontOriginAccessIdentity', stub[:cloud_front_origin_access_identity]) unless stub[:cloud_front_origin_access_identity].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateDistribution
    class UpdateDistribution
      def self.default(visited=[])
        {
          distribution: Stubs::Distribution.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::Distribution.build('Distribution', stub[:distribution]) unless stub[:distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateFieldLevelEncryptionConfig
    class UpdateFieldLevelEncryptionConfig
      def self.default(visited=[])
        {
          field_level_encryption: Stubs::FieldLevelEncryption.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryption.build('FieldLevelEncryption', stub[:field_level_encryption]) unless stub[:field_level_encryption].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateFieldLevelEncryptionProfile
    class UpdateFieldLevelEncryptionProfile
      def self.default(visited=[])
        {
          field_level_encryption_profile: Stubs::FieldLevelEncryptionProfile.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FieldLevelEncryptionProfile.build('FieldLevelEncryptionProfile', stub[:field_level_encryption_profile]) unless stub[:field_level_encryption_profile].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateFunction
    class UpdateFunction
      def self.default(visited=[])
        {
          function_summary: Stubs::FunctionSummary.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETtag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::FunctionSummary.build('FunctionSummary', stub[:function_summary]) unless stub[:function_summary].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateKeyGroup
    class UpdateKeyGroup
      def self.default(visited=[])
        {
          key_group: Stubs::KeyGroup.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::KeyGroup.build('KeyGroup', stub[:key_group]) unless stub[:key_group].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateOriginRequestPolicy
    class UpdateOriginRequestPolicy
      def self.default(visited=[])
        {
          origin_request_policy: Stubs::OriginRequestPolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::OriginRequestPolicy.build('OriginRequestPolicy', stub[:origin_request_policy]) unless stub[:origin_request_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdatePublicKey
    class UpdatePublicKey
      def self.default(visited=[])
        {
          public_key: Stubs::PublicKey.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::PublicKey.build('PublicKey', stub[:public_key]) unless stub[:public_key].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateRealtimeLogConfig
    class UpdateRealtimeLogConfig
      def self.default(visited=[])
        {
          realtime_log_config: Stubs::RealtimeLogConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200

        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Hearth::XML::Node.new('UpdateRealtimeLogConfigResult')
        xml.attributes['xmlns'] = 'http://cloudfront.amazonaws.com/doc/2020-05-31/'
        xml << Stubs::RealtimeLogConfig.stub('RealtimeLogConfig', stub[:realtime_log_config]) unless stub[:realtime_log_config].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateResponseHeadersPolicy
    class UpdateResponseHeadersPolicy
      def self.default(visited=[])
        {
          response_headers_policy: Stubs::ResponseHeadersPolicy.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::ResponseHeadersPolicy.build('ResponseHeadersPolicy', stub[:response_headers_policy]) unless stub[:response_headers_policy].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end

    # Operation Stubber for UpdateStreamingDistribution
    class UpdateStreamingDistribution
      def self.default(visited=[])
        {
          streaming_distribution: Stubs::StreamingDistribution.default(visited),
          e_tag: 'e_tag',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['ETag'] = stub[:e_tag] unless stub[:e_tag].nil? || stub[:e_tag].empty?
        http_resp.headers['Content-Type'] = 'application/xml'
        xml = Builders::StreamingDistribution.build('StreamingDistribution', stub[:streaming_distribution]) unless stub[:streaming_distribution].nil?
        http_resp.body = StringIO.new(xml.to_str)
      end
    end
  end
end
