# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53RecoveryReadiness
  module Builders

    # Operation Builder for CreateCell
    class CreateCell
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cells')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cellName'] = input[:cell_name] unless input[:cell_name].nil?
        data['cells'] = List____listOf__string.build(input[:cells]) unless input[:cells].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
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

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCrossAccountAuthorization
    class CreateCrossAccountAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/crossaccountauthorizations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['crossAccountAuthorization'] = input[:cross_account_authorization] unless input[:cross_account_authorization].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateReadinessCheck
    class CreateReadinessCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/readinesschecks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['readinessCheckName'] = input[:readiness_check_name] unless input[:readiness_check_name].nil?
        data['resourceSetName'] = input[:resource_set_name] unless input[:resource_set_name].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRecoveryGroup
    class CreateRecoveryGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/recoverygroups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cells'] = List____listOf__string.build(input[:cells]) unless input[:cells].nil?
        data['recoveryGroupName'] = input[:recovery_group_name] unless input[:recovery_group_name].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResourceSet
    class CreateResourceSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/resourcesets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceSetName'] = input[:resource_set_name] unless input[:resource_set_name].nil?
        data['resourceSetType'] = input[:resource_set_type] unless input[:resource_set_type].nil?
        data['resources'] = List____listOfResource.build(input[:resources]) unless input[:resources].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for __listOfResource
    class List____listOfResource
      def self.build(input)
        data = []
        input.each do |element|
          data << Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['componentId'] = input[:component_id] unless input[:component_id].nil?
        data['dnsTargetResource'] = DNSTargetResource.build(input[:dns_target_resource]) unless input[:dns_target_resource].nil?
        data['readinessScopes'] = List____listOf__string.build(input[:readiness_scopes]) unless input[:readiness_scopes].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Structure Builder for DNSTargetResource
    class DNSTargetResource
      def self.build(input)
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['hostedZoneArn'] = input[:hosted_zone_arn] unless input[:hosted_zone_arn].nil?
        data['recordSetId'] = input[:record_set_id] unless input[:record_set_id].nil?
        data['recordType'] = input[:record_type] unless input[:record_type].nil?
        data['targetResource'] = TargetResource.build(input[:target_resource]) unless input[:target_resource].nil?
        data
      end
    end

    # Structure Builder for TargetResource
    class TargetResource
      def self.build(input)
        data = {}
        data['nLBResource'] = NLBResource.build(input[:nlb_resource]) unless input[:nlb_resource].nil?
        data['r53Resource'] = R53ResourceRecord.build(input[:r53_resource]) unless input[:r53_resource].nil?
        data
      end
    end

    # Structure Builder for R53ResourceRecord
    class R53ResourceRecord
      def self.build(input)
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['recordSetId'] = input[:record_set_id] unless input[:record_set_id].nil?
        data
      end
    end

    # Structure Builder for NLBResource
    class NLBResource
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Operation Builder for DeleteCell
    class DeleteCell
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cell_name].to_s.empty?
          raise ArgumentError, "HTTP label :cell_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cells/%<CellName>s',
            CellName: Hearth::HTTP.uri_escape(input[:cell_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCrossAccountAuthorization
    class DeleteCrossAccountAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cross_account_authorization].to_s.empty?
          raise ArgumentError, "HTTP label :cross_account_authorization cannot be nil or empty."
        end
        http_req.append_path(format(
            '/crossaccountauthorizations/%<CrossAccountAuthorization>s',
            CrossAccountAuthorization: Hearth::HTTP.uri_escape(input[:cross_account_authorization].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteReadinessCheck
    class DeleteReadinessCheck
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:readiness_check_name].to_s.empty?
          raise ArgumentError, "HTTP label :readiness_check_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/readinesschecks/%<ReadinessCheckName>s',
            ReadinessCheckName: Hearth::HTTP.uri_escape(input[:readiness_check_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRecoveryGroup
    class DeleteRecoveryGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:recovery_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recoverygroups/%<RecoveryGroupName>s',
            RecoveryGroupName: Hearth::HTTP.uri_escape(input[:recovery_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResourceSet
    class DeleteResourceSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :resource_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resourcesets/%<ResourceSetName>s',
            ResourceSetName: Hearth::HTTP.uri_escape(input[:resource_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetArchitectureRecommendations
    class GetArchitectureRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:recovery_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recoverygroups/%<RecoveryGroupName>s/architectureRecommendations',
            RecoveryGroupName: Hearth::HTTP.uri_escape(input[:recovery_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCell
    class GetCell
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cell_name].to_s.empty?
          raise ArgumentError, "HTTP label :cell_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cells/%<CellName>s',
            CellName: Hearth::HTTP.uri_escape(input[:cell_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCellReadinessSummary
    class GetCellReadinessSummary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cell_name].to_s.empty?
          raise ArgumentError, "HTTP label :cell_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cellreadiness/%<CellName>s',
            CellName: Hearth::HTTP.uri_escape(input[:cell_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReadinessCheck
    class GetReadinessCheck
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:readiness_check_name].to_s.empty?
          raise ArgumentError, "HTTP label :readiness_check_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/readinesschecks/%<ReadinessCheckName>s',
            ReadinessCheckName: Hearth::HTTP.uri_escape(input[:readiness_check_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReadinessCheckResourceStatus
    class GetReadinessCheckResourceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:readiness_check_name].to_s.empty?
          raise ArgumentError, "HTTP label :readiness_check_name cannot be nil or empty."
        end
        if input[:resource_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :resource_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/readinesschecks/%<ReadinessCheckName>s/resource/%<ResourceIdentifier>s/status',
            ReadinessCheckName: Hearth::HTTP.uri_escape(input[:readiness_check_name].to_s),
            ResourceIdentifier: Hearth::HTTP.uri_escape(input[:resource_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetReadinessCheckStatus
    class GetReadinessCheckStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:readiness_check_name].to_s.empty?
          raise ArgumentError, "HTTP label :readiness_check_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/readinesschecks/%<ReadinessCheckName>s/status',
            ReadinessCheckName: Hearth::HTTP.uri_escape(input[:readiness_check_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecoveryGroup
    class GetRecoveryGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:recovery_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recoverygroups/%<RecoveryGroupName>s',
            RecoveryGroupName: Hearth::HTTP.uri_escape(input[:recovery_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecoveryGroupReadinessSummary
    class GetRecoveryGroupReadinessSummary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:recovery_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recoverygroupreadiness/%<RecoveryGroupName>s',
            RecoveryGroupName: Hearth::HTTP.uri_escape(input[:recovery_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceSet
    class GetResourceSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :resource_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resourcesets/%<ResourceSetName>s',
            ResourceSetName: Hearth::HTTP.uri_escape(input[:resource_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCells
    class ListCells
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/cells')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCrossAccountAuthorizations
    class ListCrossAccountAuthorizations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/crossaccountauthorizations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListReadinessChecks
    class ListReadinessChecks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/readinesschecks')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecoveryGroups
    class ListRecoveryGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/recoverygroups')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResourceSets
    class ListResourceSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/resourcesets')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRules
    class ListRules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/rules')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['resourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResources
    class ListTagsForResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateCell
    class UpdateCell
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:cell_name].to_s.empty?
          raise ArgumentError, "HTTP label :cell_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cells/%<CellName>s',
            CellName: Hearth::HTTP.uri_escape(input[:cell_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cells'] = List____listOf__string.build(input[:cells]) unless input[:cells].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateReadinessCheck
    class UpdateReadinessCheck
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:readiness_check_name].to_s.empty?
          raise ArgumentError, "HTTP label :readiness_check_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/readinesschecks/%<ReadinessCheckName>s',
            ReadinessCheckName: Hearth::HTTP.uri_escape(input[:readiness_check_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceSetName'] = input[:resource_set_name] unless input[:resource_set_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRecoveryGroup
    class UpdateRecoveryGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:recovery_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :recovery_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recoverygroups/%<RecoveryGroupName>s',
            RecoveryGroupName: Hearth::HTTP.uri_escape(input[:recovery_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cells'] = List____listOf__string.build(input[:cells]) unless input[:cells].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResourceSet
    class UpdateResourceSet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :resource_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resourcesets/%<ResourceSetName>s',
            ResourceSetName: Hearth::HTTP.uri_escape(input[:resource_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceSetType'] = input[:resource_set_type] unless input[:resource_set_type].nil?
        data['resources'] = List____listOfResource.build(input[:resources]) unless input[:resources].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
