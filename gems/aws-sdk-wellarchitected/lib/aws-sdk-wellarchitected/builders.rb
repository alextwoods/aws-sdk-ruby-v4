# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WellArchitected
  module Builders

    # Operation Builder for AssociateLenses
    class AssociateLenses
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/associateLenses',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LensAliases'] = Builders::LensAliases.build(input[:lens_aliases]) unless input[:lens_aliases].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LensAliases
    class LensAliases
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLensShare
    class CreateLensShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/shares',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SharedWith'] = input[:shared_with] unless input[:shared_with].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLensVersion
    class CreateLensVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/versions',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LensVersion'] = input[:lens_version] unless input[:lens_version].nil?
        data['IsMajorVersion'] = input[:is_major_version] unless input[:is_major_version].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMilestone
    class CreateMilestone
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/milestones',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MilestoneName'] = input[:milestone_name] unless input[:milestone_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkload
    class CreateWorkload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workloads')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkloadName'] = input[:workload_name] unless input[:workload_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Environment'] = input[:environment] unless input[:environment].nil?
        data['AccountIds'] = Builders::WorkloadAccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['AwsRegions'] = Builders::WorkloadAwsRegions.build(input[:aws_regions]) unless input[:aws_regions].nil?
        data['NonAwsRegions'] = Builders::WorkloadNonAwsRegions.build(input[:non_aws_regions]) unless input[:non_aws_regions].nil?
        data['PillarPriorities'] = Builders::WorkloadPillarPriorities.build(input[:pillar_priorities]) unless input[:pillar_priorities].nil?
        data['ArchitecturalDesign'] = input[:architectural_design] unless input[:architectural_design].nil?
        data['ReviewOwner'] = input[:review_owner] unless input[:review_owner].nil?
        data['IndustryType'] = input[:industry_type] unless input[:industry_type].nil?
        data['Industry'] = input[:industry] unless input[:industry].nil?
        data['Lenses'] = Builders::WorkloadLenses.build(input[:lenses]) unless input[:lenses].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for WorkloadLenses
    class WorkloadLenses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for WorkloadPillarPriorities
    class WorkloadPillarPriorities
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for WorkloadNonAwsRegions
    class WorkloadNonAwsRegions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for WorkloadAwsRegions
    class WorkloadAwsRegions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for WorkloadAccountIds
    class WorkloadAccountIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWorkloadShare
    class CreateWorkloadShare
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/shares',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SharedWith'] = input[:shared_with] unless input[:shared_with].nil?
        data['PermissionType'] = input[:permission_type] unless input[:permission_type].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLens
    class DeleteLens
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        params['LensStatus'] = input[:lens_status].to_s unless input[:lens_status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteLensShare
    class DeleteLensShare
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:share_id].to_s.empty?
          raise ArgumentError, "HTTP label :share_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/shares/%<ShareId>s',
            ShareId: Hearth::HTTP.uri_escape(input[:share_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkload
    class DeleteWorkload
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkloadShare
    class DeleteWorkloadShare
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:share_id].to_s.empty?
          raise ArgumentError, "HTTP label :share_id cannot be nil or empty."
        end
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/shares/%<ShareId>s',
            ShareId: Hearth::HTTP.uri_escape(input[:share_id].to_s),
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['ClientRequestToken'] = input[:client_request_token].to_s unless input[:client_request_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateLenses
    class DisassociateLenses
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/disassociateLenses',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LensAliases'] = Builders::LensAliases.build(input[:lens_aliases]) unless input[:lens_aliases].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExportLens
    class ExportLens
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/export',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['LensVersion'] = input[:lens_version].to_s unless input[:lens_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAnswer
    class GetAnswer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        if input[:question_id].to_s.empty?
          raise ArgumentError, "HTTP label :question_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/answers/%<QuestionId>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s),
            QuestionId: Hearth::HTTP.uri_escape(input[:question_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLens
    class GetLens
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['LensVersion'] = input[:lens_version].to_s unless input[:lens_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLensReview
    class GetLensReview
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLensReviewReport
    class GetLensReviewReport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/report',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLensVersionDifference
    class GetLensVersionDifference
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/versionDifference',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['BaseLensVersion'] = input[:base_lens_version].to_s unless input[:base_lens_version].nil?
        params['TargetLensVersion'] = input[:target_lens_version].to_s unless input[:target_lens_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMilestone
    class GetMilestone
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:milestone_number].to_s.empty?
          raise ArgumentError, "HTTP label :milestone_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/milestones/%<MilestoneNumber>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            MilestoneNumber: Hearth::HTTP.uri_escape(input[:milestone_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWorkload
    class GetWorkload
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportLens
    class ImportLens
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/importLens')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LensAlias'] = input[:lens_alias] unless input[:lens_alias].nil?
        data['JSONString'] = input[:json_string] unless input[:json_string].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnswers
    class ListAnswers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/answers',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['PillarId'] = input[:pillar_id].to_s unless input[:pillar_id].nil?
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLensReviewImprovements
    class ListLensReviewImprovements
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/improvements',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['PillarId'] = input[:pillar_id].to_s unless input[:pillar_id].nil?
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLensReviews
    class ListLensReviews
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MilestoneNumber'] = input[:milestone_number].to_s unless input[:milestone_number].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLensShares
    class ListLensShares
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/lenses/%<LensAlias>s/shares',
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['SharedWithPrefix'] = input[:shared_with_prefix].to_s unless input[:shared_with_prefix].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLenses
    class ListLenses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/lenses')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['LensType'] = input[:lens_type].to_s unless input[:lens_type].nil?
        params['LensStatus'] = input[:lens_status].to_s unless input[:lens_status].nil?
        params['LensName'] = input[:lens_name].to_s unless input[:lens_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMilestones
    class ListMilestones
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/milestonesSummaries',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNotifications
    class ListNotifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/notifications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkloadId'] = input[:workload_id] unless input[:workload_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListShareInvitations
    class ListShareInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/shareInvitations')
        params = Hearth::Query::ParamList.new
        params['WorkloadNamePrefix'] = input[:workload_name_prefix].to_s unless input[:workload_name_prefix].nil?
        params['LensNamePrefix'] = input[:lens_name_prefix].to_s unless input[:lens_name_prefix].nil?
        params['ShareResourceType'] = input[:share_resource_type].to_s unless input[:share_resource_type].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_arn].to_s.empty?
          raise ArgumentError, "HTTP label :workload_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<WorkloadArn>s',
            WorkloadArn: Hearth::HTTP.uri_escape(input[:workload_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorkloadShares
    class ListWorkloadShares
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/shares',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['SharedWithPrefix'] = input[:shared_with_prefix].to_s unless input[:shared_with_prefix].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorkloads
    class ListWorkloads
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workloadsSummaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkloadNamePrefix'] = input[:workload_name_prefix] unless input[:workload_name_prefix].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workload_arn].to_s.empty?
          raise ArgumentError, "HTTP label :workload_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<WorkloadArn>s',
            WorkloadArn: Hearth::HTTP.uri_escape(input[:workload_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workload_arn].to_s.empty?
          raise ArgumentError, "HTTP label :workload_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<WorkloadArn>s',
            WorkloadArn: Hearth::HTTP.uri_escape(input[:workload_arn].to_s)
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

    # Operation Builder for UpdateAnswer
    class UpdateAnswer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        if input[:question_id].to_s.empty?
          raise ArgumentError, "HTTP label :question_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/answers/%<QuestionId>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s),
            QuestionId: Hearth::HTTP.uri_escape(input[:question_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SelectedChoices'] = Builders::SelectedChoices.build(input[:selected_choices]) unless input[:selected_choices].nil?
        data['ChoiceUpdates'] = Builders::ChoiceUpdates.build(input[:choice_updates]) unless input[:choice_updates].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data['IsApplicable'] = input[:is_applicable] unless input[:is_applicable].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ChoiceUpdates
    class ChoiceUpdates
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ChoiceUpdate.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ChoiceUpdate
    class ChoiceUpdate
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['Reason'] = input[:reason] unless input[:reason].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data
      end
    end

    # List Builder for SelectedChoices
    class SelectedChoices
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateLensReview
    class UpdateLensReview
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LensNotes'] = input[:lens_notes] unless input[:lens_notes].nil?
        data['PillarNotes'] = Builders::PillarNotes.build(input[:pillar_notes]) unless input[:pillar_notes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for PillarNotes
    class PillarNotes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateShareInvitation
    class UpdateShareInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:share_invitation_id].to_s.empty?
          raise ArgumentError, "HTTP label :share_invitation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/shareInvitations/%<ShareInvitationId>s',
            ShareInvitationId: Hearth::HTTP.uri_escape(input[:share_invitation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ShareInvitationAction'] = input[:share_invitation_action] unless input[:share_invitation_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkload
    class UpdateWorkload
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['WorkloadName'] = input[:workload_name] unless input[:workload_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Environment'] = input[:environment] unless input[:environment].nil?
        data['AccountIds'] = Builders::WorkloadAccountIds.build(input[:account_ids]) unless input[:account_ids].nil?
        data['AwsRegions'] = Builders::WorkloadAwsRegions.build(input[:aws_regions]) unless input[:aws_regions].nil?
        data['NonAwsRegions'] = Builders::WorkloadNonAwsRegions.build(input[:non_aws_regions]) unless input[:non_aws_regions].nil?
        data['PillarPriorities'] = Builders::WorkloadPillarPriorities.build(input[:pillar_priorities]) unless input[:pillar_priorities].nil?
        data['ArchitecturalDesign'] = input[:architectural_design] unless input[:architectural_design].nil?
        data['ReviewOwner'] = input[:review_owner] unless input[:review_owner].nil?
        data['IsReviewOwnerUpdateAcknowledged'] = input[:is_review_owner_update_acknowledged] unless input[:is_review_owner_update_acknowledged].nil?
        data['IndustryType'] = input[:industry_type] unless input[:industry_type].nil?
        data['Industry'] = input[:industry] unless input[:industry].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data['ImprovementStatus'] = input[:improvement_status] unless input[:improvement_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkloadShare
    class UpdateWorkloadShare
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:share_id].to_s.empty?
          raise ArgumentError, "HTTP label :share_id cannot be nil or empty."
        end
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/shares/%<ShareId>s',
            ShareId: Hearth::HTTP.uri_escape(input[:share_id].to_s),
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PermissionType'] = input[:permission_type] unless input[:permission_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpgradeLensReview
    class UpgradeLensReview
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workload_id].to_s.empty?
          raise ArgumentError, "HTTP label :workload_id cannot be nil or empty."
        end
        if input[:lens_alias].to_s.empty?
          raise ArgumentError, "HTTP label :lens_alias cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workloads/%<WorkloadId>s/lensReviews/%<LensAlias>s/upgrade',
            WorkloadId: Hearth::HTTP.uri_escape(input[:workload_id].to_s),
            LensAlias: Hearth::HTTP.uri_escape(input[:lens_alias].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MilestoneName'] = input[:milestone_name] unless input[:milestone_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
