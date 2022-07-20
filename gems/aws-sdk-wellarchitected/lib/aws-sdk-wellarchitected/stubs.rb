# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WellArchitected
  module Stubs

    # Operation Stubber for AssociateLenses
    class AssociateLenses
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLensShare
    class CreateLensShare
      def self.default(visited=[])
        {
          share_id: 'share_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateLensVersion
    class CreateLensVersion
      def self.default(visited=[])
        {
          lens_arn: 'lens_arn',
          lens_version: 'lens_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['LensVersion'] = stub[:lens_version] unless stub[:lens_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMilestone
    class CreateMilestone
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorkload
    class CreateWorkload
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          workload_arn: 'workload_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadArn'] = stub[:workload_arn] unless stub[:workload_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorkloadShare
    class CreateWorkloadShare
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          share_id: 'share_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteLens
    class DeleteLens
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLensShare
    class DeleteLensShare
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkload
    class DeleteWorkload
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkloadShare
    class DeleteWorkloadShare
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateLenses
    class DisassociateLenses
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportLens
    class ExportLens
      def self.default(visited=[])
        {
          lens_json: 'lens_json',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensJSON'] = stub[:lens_json] unless stub[:lens_json].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAnswer
    class GetAnswer
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          answer: Answer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['Answer'] = Stubs::Answer.stub(stub[:answer]) unless stub[:answer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Answer
    class Answer
      def self.default(visited=[])
        return nil if visited.include?('Answer')
        visited = visited + ['Answer']
        {
          question_id: 'question_id',
          pillar_id: 'pillar_id',
          question_title: 'question_title',
          question_description: 'question_description',
          improvement_plan_url: 'improvement_plan_url',
          helpful_resource_url: 'helpful_resource_url',
          helpful_resource_display_text: 'helpful_resource_display_text',
          choices: Choices.default(visited),
          selected_choices: SelectedChoices.default(visited),
          choice_answers: ChoiceAnswers.default(visited),
          is_applicable: false,
          risk: 'risk',
          notes: 'notes',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::Answer.new
        data = {}
        data['QuestionId'] = stub[:question_id] unless stub[:question_id].nil?
        data['PillarId'] = stub[:pillar_id] unless stub[:pillar_id].nil?
        data['QuestionTitle'] = stub[:question_title] unless stub[:question_title].nil?
        data['QuestionDescription'] = stub[:question_description] unless stub[:question_description].nil?
        data['ImprovementPlanUrl'] = stub[:improvement_plan_url] unless stub[:improvement_plan_url].nil?
        data['HelpfulResourceUrl'] = stub[:helpful_resource_url] unless stub[:helpful_resource_url].nil?
        data['HelpfulResourceDisplayText'] = stub[:helpful_resource_display_text] unless stub[:helpful_resource_display_text].nil?
        data['Choices'] = Stubs::Choices.stub(stub[:choices]) unless stub[:choices].nil?
        data['SelectedChoices'] = Stubs::SelectedChoices.stub(stub[:selected_choices]) unless stub[:selected_choices].nil?
        data['ChoiceAnswers'] = Stubs::ChoiceAnswers.stub(stub[:choice_answers]) unless stub[:choice_answers].nil?
        data['IsApplicable'] = stub[:is_applicable] unless stub[:is_applicable].nil?
        data['Risk'] = stub[:risk] unless stub[:risk].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ChoiceAnswers
    class ChoiceAnswers
      def self.default(visited=[])
        return nil if visited.include?('ChoiceAnswers')
        visited = visited + ['ChoiceAnswers']
        [
          ChoiceAnswer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChoiceAnswer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChoiceAnswer
    class ChoiceAnswer
      def self.default(visited=[])
        return nil if visited.include?('ChoiceAnswer')
        visited = visited + ['ChoiceAnswer']
        {
          choice_id: 'choice_id',
          status: 'status',
          reason: 'reason',
          notes: 'notes',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChoiceAnswer.new
        data = {}
        data['ChoiceId'] = stub[:choice_id] unless stub[:choice_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data
      end
    end

    # List Stubber for SelectedChoices
    class SelectedChoices
      def self.default(visited=[])
        return nil if visited.include?('SelectedChoices')
        visited = visited + ['SelectedChoices']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Choices
    class Choices
      def self.default(visited=[])
        return nil if visited.include?('Choices')
        visited = visited + ['Choices']
        [
          Choice.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Choice.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Choice
    class Choice
      def self.default(visited=[])
        return nil if visited.include?('Choice')
        visited = visited + ['Choice']
        {
          choice_id: 'choice_id',
          title: 'title',
          description: 'description',
          helpful_resource: ChoiceContent.default(visited),
          improvement_plan: ChoiceContent.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Choice.new
        data = {}
        data['ChoiceId'] = stub[:choice_id] unless stub[:choice_id].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['HelpfulResource'] = Stubs::ChoiceContent.stub(stub[:helpful_resource]) unless stub[:helpful_resource].nil?
        data['ImprovementPlan'] = Stubs::ChoiceContent.stub(stub[:improvement_plan]) unless stub[:improvement_plan].nil?
        data
      end
    end

    # Structure Stubber for ChoiceContent
    class ChoiceContent
      def self.default(visited=[])
        return nil if visited.include?('ChoiceContent')
        visited = visited + ['ChoiceContent']
        {
          display_text: 'display_text',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChoiceContent.new
        data = {}
        data['DisplayText'] = stub[:display_text] unless stub[:display_text].nil?
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for GetLens
    class GetLens
      def self.default(visited=[])
        {
          lens: Lens.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Lens'] = Stubs::Lens.stub(stub[:lens]) unless stub[:lens].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Lens
    class Lens
      def self.default(visited=[])
        return nil if visited.include?('Lens')
        visited = visited + ['Lens']
        {
          lens_arn: 'lens_arn',
          lens_version: 'lens_version',
          name: 'name',
          description: 'description',
          owner: 'owner',
          share_invitation_id: 'share_invitation_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Lens.new
        data = {}
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['LensVersion'] = stub[:lens_version] unless stub[:lens_version].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ShareInvitationId'] = stub[:share_invitation_id] unless stub[:share_invitation_id].nil?
        data
      end
    end

    # Operation Stubber for GetLensReview
    class GetLensReview
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_review: LensReview.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensReview'] = Stubs::LensReview.stub(stub[:lens_review]) unless stub[:lens_review].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LensReview
    class LensReview
      def self.default(visited=[])
        return nil if visited.include?('LensReview')
        visited = visited + ['LensReview']
        {
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          lens_version: 'lens_version',
          lens_name: 'lens_name',
          lens_status: 'lens_status',
          pillar_review_summaries: PillarReviewSummaries.default(visited),
          updated_at: Time.now,
          notes: 'notes',
          risk_counts: RiskCounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::LensReview.new
        data = {}
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['LensVersion'] = stub[:lens_version] unless stub[:lens_version].nil?
        data['LensName'] = stub[:lens_name] unless stub[:lens_name].nil?
        data['LensStatus'] = stub[:lens_status] unless stub[:lens_status].nil?
        data['PillarReviewSummaries'] = Stubs::PillarReviewSummaries.stub(stub[:pillar_review_summaries]) unless stub[:pillar_review_summaries].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data['RiskCounts'] = Stubs::RiskCounts.stub(stub[:risk_counts]) unless stub[:risk_counts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data
      end
    end

    # Map Stubber for RiskCounts
    class RiskCounts
      def self.default(visited=[])
        return nil if visited.include?('RiskCounts')
        visited = visited + ['RiskCounts']
        {
          test_key: 1
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for PillarReviewSummaries
    class PillarReviewSummaries
      def self.default(visited=[])
        return nil if visited.include?('PillarReviewSummaries')
        visited = visited + ['PillarReviewSummaries']
        [
          PillarReviewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PillarReviewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PillarReviewSummary
    class PillarReviewSummary
      def self.default(visited=[])
        return nil if visited.include?('PillarReviewSummary')
        visited = visited + ['PillarReviewSummary']
        {
          pillar_id: 'pillar_id',
          pillar_name: 'pillar_name',
          notes: 'notes',
          risk_counts: RiskCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PillarReviewSummary.new
        data = {}
        data['PillarId'] = stub[:pillar_id] unless stub[:pillar_id].nil?
        data['PillarName'] = stub[:pillar_name] unless stub[:pillar_name].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data['RiskCounts'] = Stubs::RiskCounts.stub(stub[:risk_counts]) unless stub[:risk_counts].nil?
        data
      end
    end

    # Operation Stubber for GetLensReviewReport
    class GetLensReviewReport
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_review_report: LensReviewReport.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensReviewReport'] = Stubs::LensReviewReport.stub(stub[:lens_review_report]) unless stub[:lens_review_report].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LensReviewReport
    class LensReviewReport
      def self.default(visited=[])
        return nil if visited.include?('LensReviewReport')
        visited = visited + ['LensReviewReport']
        {
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          base64_string: 'base64_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::LensReviewReport.new
        data = {}
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['Base64String'] = stub[:base64_string] unless stub[:base64_string].nil?
        data
      end
    end

    # Operation Stubber for GetLensVersionDifference
    class GetLensVersionDifference
      def self.default(visited=[])
        {
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          base_lens_version: 'base_lens_version',
          target_lens_version: 'target_lens_version',
          latest_lens_version: 'latest_lens_version',
          version_differences: VersionDifferences.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['BaseLensVersion'] = stub[:base_lens_version] unless stub[:base_lens_version].nil?
        data['TargetLensVersion'] = stub[:target_lens_version] unless stub[:target_lens_version].nil?
        data['LatestLensVersion'] = stub[:latest_lens_version] unless stub[:latest_lens_version].nil?
        data['VersionDifferences'] = Stubs::VersionDifferences.stub(stub[:version_differences]) unless stub[:version_differences].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VersionDifferences
    class VersionDifferences
      def self.default(visited=[])
        return nil if visited.include?('VersionDifferences')
        visited = visited + ['VersionDifferences']
        {
          pillar_differences: PillarDifferences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VersionDifferences.new
        data = {}
        data['PillarDifferences'] = Stubs::PillarDifferences.stub(stub[:pillar_differences]) unless stub[:pillar_differences].nil?
        data
      end
    end

    # List Stubber for PillarDifferences
    class PillarDifferences
      def self.default(visited=[])
        return nil if visited.include?('PillarDifferences')
        visited = visited + ['PillarDifferences']
        [
          PillarDifference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PillarDifference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PillarDifference
    class PillarDifference
      def self.default(visited=[])
        return nil if visited.include?('PillarDifference')
        visited = visited + ['PillarDifference']
        {
          pillar_id: 'pillar_id',
          pillar_name: 'pillar_name',
          difference_status: 'difference_status',
          question_differences: QuestionDifferences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PillarDifference.new
        data = {}
        data['PillarId'] = stub[:pillar_id] unless stub[:pillar_id].nil?
        data['PillarName'] = stub[:pillar_name] unless stub[:pillar_name].nil?
        data['DifferenceStatus'] = stub[:difference_status] unless stub[:difference_status].nil?
        data['QuestionDifferences'] = Stubs::QuestionDifferences.stub(stub[:question_differences]) unless stub[:question_differences].nil?
        data
      end
    end

    # List Stubber for QuestionDifferences
    class QuestionDifferences
      def self.default(visited=[])
        return nil if visited.include?('QuestionDifferences')
        visited = visited + ['QuestionDifferences']
        [
          QuestionDifference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QuestionDifference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QuestionDifference
    class QuestionDifference
      def self.default(visited=[])
        return nil if visited.include?('QuestionDifference')
        visited = visited + ['QuestionDifference']
        {
          question_id: 'question_id',
          question_title: 'question_title',
          difference_status: 'difference_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::QuestionDifference.new
        data = {}
        data['QuestionId'] = stub[:question_id] unless stub[:question_id].nil?
        data['QuestionTitle'] = stub[:question_title] unless stub[:question_title].nil?
        data['DifferenceStatus'] = stub[:difference_status] unless stub[:difference_status].nil?
        data
      end
    end

    # Operation Stubber for GetMilestone
    class GetMilestone
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone: Milestone.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['Milestone'] = Stubs::Milestone.stub(stub[:milestone]) unless stub[:milestone].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Milestone
    class Milestone
      def self.default(visited=[])
        return nil if visited.include?('Milestone')
        visited = visited + ['Milestone']
        {
          milestone_number: 1,
          milestone_name: 'milestone_name',
          recorded_at: Time.now,
          workload: Workload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Milestone.new
        data = {}
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['MilestoneName'] = stub[:milestone_name] unless stub[:milestone_name].nil?
        data['RecordedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:recorded_at]).to_i unless stub[:recorded_at].nil?
        data['Workload'] = Stubs::Workload.stub(stub[:workload]) unless stub[:workload].nil?
        data
      end
    end

    # Structure Stubber for Workload
    class Workload
      def self.default(visited=[])
        return nil if visited.include?('Workload')
        visited = visited + ['Workload']
        {
          workload_id: 'workload_id',
          workload_arn: 'workload_arn',
          workload_name: 'workload_name',
          description: 'description',
          environment: 'environment',
          updated_at: Time.now,
          account_ids: WorkloadAccountIds.default(visited),
          aws_regions: WorkloadAwsRegions.default(visited),
          non_aws_regions: WorkloadNonAwsRegions.default(visited),
          architectural_design: 'architectural_design',
          review_owner: 'review_owner',
          review_restriction_date: Time.now,
          is_review_owner_update_acknowledged: false,
          industry_type: 'industry_type',
          industry: 'industry',
          notes: 'notes',
          improvement_status: 'improvement_status',
          risk_counts: RiskCounts.default(visited),
          pillar_priorities: WorkloadPillarPriorities.default(visited),
          lenses: WorkloadLenses.default(visited),
          owner: 'owner',
          share_invitation_id: 'share_invitation_id',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Workload.new
        data = {}
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadArn'] = stub[:workload_arn] unless stub[:workload_arn].nil?
        data['WorkloadName'] = stub[:workload_name] unless stub[:workload_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Environment'] = stub[:environment] unless stub[:environment].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['AccountIds'] = Stubs::WorkloadAccountIds.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['AwsRegions'] = Stubs::WorkloadAwsRegions.stub(stub[:aws_regions]) unless stub[:aws_regions].nil?
        data['NonAwsRegions'] = Stubs::WorkloadNonAwsRegions.stub(stub[:non_aws_regions]) unless stub[:non_aws_regions].nil?
        data['ArchitecturalDesign'] = stub[:architectural_design] unless stub[:architectural_design].nil?
        data['ReviewOwner'] = stub[:review_owner] unless stub[:review_owner].nil?
        data['ReviewRestrictionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:review_restriction_date]).to_i unless stub[:review_restriction_date].nil?
        data['IsReviewOwnerUpdateAcknowledged'] = stub[:is_review_owner_update_acknowledged] unless stub[:is_review_owner_update_acknowledged].nil?
        data['IndustryType'] = stub[:industry_type] unless stub[:industry_type].nil?
        data['Industry'] = stub[:industry] unless stub[:industry].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data['ImprovementStatus'] = stub[:improvement_status] unless stub[:improvement_status].nil?
        data['RiskCounts'] = Stubs::RiskCounts.stub(stub[:risk_counts]) unless stub[:risk_counts].nil?
        data['PillarPriorities'] = Stubs::WorkloadPillarPriorities.stub(stub[:pillar_priorities]) unless stub[:pillar_priorities].nil?
        data['Lenses'] = Stubs::WorkloadLenses.stub(stub[:lenses]) unless stub[:lenses].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ShareInvitationId'] = stub[:share_invitation_id] unless stub[:share_invitation_id].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for WorkloadLenses
    class WorkloadLenses
      def self.default(visited=[])
        return nil if visited.include?('WorkloadLenses')
        visited = visited + ['WorkloadLenses']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for WorkloadPillarPriorities
    class WorkloadPillarPriorities
      def self.default(visited=[])
        return nil if visited.include?('WorkloadPillarPriorities')
        visited = visited + ['WorkloadPillarPriorities']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for WorkloadNonAwsRegions
    class WorkloadNonAwsRegions
      def self.default(visited=[])
        return nil if visited.include?('WorkloadNonAwsRegions')
        visited = visited + ['WorkloadNonAwsRegions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for WorkloadAwsRegions
    class WorkloadAwsRegions
      def self.default(visited=[])
        return nil if visited.include?('WorkloadAwsRegions')
        visited = visited + ['WorkloadAwsRegions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for WorkloadAccountIds
    class WorkloadAccountIds
      def self.default(visited=[])
        return nil if visited.include?('WorkloadAccountIds')
        visited = visited + ['WorkloadAccountIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetWorkload
    class GetWorkload
      def self.default(visited=[])
        {
          workload: Workload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Workload'] = Stubs::Workload.stub(stub[:workload]) unless stub[:workload].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportLens
    class ImportLens
      def self.default(visited=[])
        {
          lens_arn: 'lens_arn',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAnswers
    class ListAnswers
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          answer_summaries: AnswerSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['AnswerSummaries'] = Stubs::AnswerSummaries.stub(stub[:answer_summaries]) unless stub[:answer_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AnswerSummaries
    class AnswerSummaries
      def self.default(visited=[])
        return nil if visited.include?('AnswerSummaries')
        visited = visited + ['AnswerSummaries']
        [
          AnswerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnswerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnswerSummary
    class AnswerSummary
      def self.default(visited=[])
        return nil if visited.include?('AnswerSummary')
        visited = visited + ['AnswerSummary']
        {
          question_id: 'question_id',
          pillar_id: 'pillar_id',
          question_title: 'question_title',
          choices: Choices.default(visited),
          selected_choices: SelectedChoices.default(visited),
          choice_answer_summaries: ChoiceAnswerSummaries.default(visited),
          is_applicable: false,
          risk: 'risk',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnswerSummary.new
        data = {}
        data['QuestionId'] = stub[:question_id] unless stub[:question_id].nil?
        data['PillarId'] = stub[:pillar_id] unless stub[:pillar_id].nil?
        data['QuestionTitle'] = stub[:question_title] unless stub[:question_title].nil?
        data['Choices'] = Stubs::Choices.stub(stub[:choices]) unless stub[:choices].nil?
        data['SelectedChoices'] = Stubs::SelectedChoices.stub(stub[:selected_choices]) unless stub[:selected_choices].nil?
        data['ChoiceAnswerSummaries'] = Stubs::ChoiceAnswerSummaries.stub(stub[:choice_answer_summaries]) unless stub[:choice_answer_summaries].nil?
        data['IsApplicable'] = stub[:is_applicable] unless stub[:is_applicable].nil?
        data['Risk'] = stub[:risk] unless stub[:risk].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for ChoiceAnswerSummaries
    class ChoiceAnswerSummaries
      def self.default(visited=[])
        return nil if visited.include?('ChoiceAnswerSummaries')
        visited = visited + ['ChoiceAnswerSummaries']
        [
          ChoiceAnswerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChoiceAnswerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChoiceAnswerSummary
    class ChoiceAnswerSummary
      def self.default(visited=[])
        return nil if visited.include?('ChoiceAnswerSummary')
        visited = visited + ['ChoiceAnswerSummary']
        {
          choice_id: 'choice_id',
          status: 'status',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChoiceAnswerSummary.new
        data = {}
        data['ChoiceId'] = stub[:choice_id] unless stub[:choice_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for ListLensReviewImprovements
    class ListLensReviewImprovements
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          improvement_summaries: ImprovementSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['ImprovementSummaries'] = Stubs::ImprovementSummaries.stub(stub[:improvement_summaries]) unless stub[:improvement_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ImprovementSummaries
    class ImprovementSummaries
      def self.default(visited=[])
        return nil if visited.include?('ImprovementSummaries')
        visited = visited + ['ImprovementSummaries']
        [
          ImprovementSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImprovementSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImprovementSummary
    class ImprovementSummary
      def self.default(visited=[])
        return nil if visited.include?('ImprovementSummary')
        visited = visited + ['ImprovementSummary']
        {
          question_id: 'question_id',
          pillar_id: 'pillar_id',
          question_title: 'question_title',
          risk: 'risk',
          improvement_plan_url: 'improvement_plan_url',
          improvement_plans: ChoiceImprovementPlans.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImprovementSummary.new
        data = {}
        data['QuestionId'] = stub[:question_id] unless stub[:question_id].nil?
        data['PillarId'] = stub[:pillar_id] unless stub[:pillar_id].nil?
        data['QuestionTitle'] = stub[:question_title] unless stub[:question_title].nil?
        data['Risk'] = stub[:risk] unless stub[:risk].nil?
        data['ImprovementPlanUrl'] = stub[:improvement_plan_url] unless stub[:improvement_plan_url].nil?
        data['ImprovementPlans'] = Stubs::ChoiceImprovementPlans.stub(stub[:improvement_plans]) unless stub[:improvement_plans].nil?
        data
      end
    end

    # List Stubber for ChoiceImprovementPlans
    class ChoiceImprovementPlans
      def self.default(visited=[])
        return nil if visited.include?('ChoiceImprovementPlans')
        visited = visited + ['ChoiceImprovementPlans']
        [
          ChoiceImprovementPlan.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChoiceImprovementPlan.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChoiceImprovementPlan
    class ChoiceImprovementPlan
      def self.default(visited=[])
        return nil if visited.include?('ChoiceImprovementPlan')
        visited = visited + ['ChoiceImprovementPlan']
        {
          choice_id: 'choice_id',
          display_text: 'display_text',
          improvement_plan_url: 'improvement_plan_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChoiceImprovementPlan.new
        data = {}
        data['ChoiceId'] = stub[:choice_id] unless stub[:choice_id].nil?
        data['DisplayText'] = stub[:display_text] unless stub[:display_text].nil?
        data['ImprovementPlanUrl'] = stub[:improvement_plan_url] unless stub[:improvement_plan_url].nil?
        data
      end
    end

    # Operation Stubber for ListLensReviews
    class ListLensReviews
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_number: 1,
          lens_review_summaries: LensReviewSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['LensReviewSummaries'] = Stubs::LensReviewSummaries.stub(stub[:lens_review_summaries]) unless stub[:lens_review_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LensReviewSummaries
    class LensReviewSummaries
      def self.default(visited=[])
        return nil if visited.include?('LensReviewSummaries')
        visited = visited + ['LensReviewSummaries']
        [
          LensReviewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LensReviewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LensReviewSummary
    class LensReviewSummary
      def self.default(visited=[])
        return nil if visited.include?('LensReviewSummary')
        visited = visited + ['LensReviewSummary']
        {
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          lens_version: 'lens_version',
          lens_name: 'lens_name',
          lens_status: 'lens_status',
          updated_at: Time.now,
          risk_counts: RiskCounts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LensReviewSummary.new
        data = {}
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['LensVersion'] = stub[:lens_version] unless stub[:lens_version].nil?
        data['LensName'] = stub[:lens_name] unless stub[:lens_name].nil?
        data['LensStatus'] = stub[:lens_status] unless stub[:lens_status].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['RiskCounts'] = Stubs::RiskCounts.stub(stub[:risk_counts]) unless stub[:risk_counts].nil?
        data
      end
    end

    # Operation Stubber for ListLensShares
    class ListLensShares
      def self.default(visited=[])
        {
          lens_share_summaries: LensShareSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensShareSummaries'] = Stubs::LensShareSummaries.stub(stub[:lens_share_summaries]) unless stub[:lens_share_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LensShareSummaries
    class LensShareSummaries
      def self.default(visited=[])
        return nil if visited.include?('LensShareSummaries')
        visited = visited + ['LensShareSummaries']
        [
          LensShareSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LensShareSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LensShareSummary
    class LensShareSummary
      def self.default(visited=[])
        return nil if visited.include?('LensShareSummary')
        visited = visited + ['LensShareSummary']
        {
          share_id: 'share_id',
          shared_with: 'shared_with',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LensShareSummary.new
        data = {}
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        data['SharedWith'] = stub[:shared_with] unless stub[:shared_with].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListLenses
    class ListLenses
      def self.default(visited=[])
        {
          lens_summaries: LensSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LensSummaries'] = Stubs::LensSummaries.stub(stub[:lens_summaries]) unless stub[:lens_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LensSummaries
    class LensSummaries
      def self.default(visited=[])
        return nil if visited.include?('LensSummaries')
        visited = visited + ['LensSummaries']
        [
          LensSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LensSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LensSummary
    class LensSummary
      def self.default(visited=[])
        return nil if visited.include?('LensSummary')
        visited = visited + ['LensSummary']
        {
          lens_arn: 'lens_arn',
          lens_alias: 'lens_alias',
          lens_name: 'lens_name',
          lens_type: 'lens_type',
          description: 'description',
          created_at: Time.now,
          updated_at: Time.now,
          lens_version: 'lens_version',
          owner: 'owner',
          lens_status: 'lens_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LensSummary.new
        data = {}
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensName'] = stub[:lens_name] unless stub[:lens_name].nil?
        data['LensType'] = stub[:lens_type] unless stub[:lens_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['LensVersion'] = stub[:lens_version] unless stub[:lens_version].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['LensStatus'] = stub[:lens_status] unless stub[:lens_status].nil?
        data
      end
    end

    # Operation Stubber for ListMilestones
    class ListMilestones
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          milestone_summaries: MilestoneSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['MilestoneSummaries'] = Stubs::MilestoneSummaries.stub(stub[:milestone_summaries]) unless stub[:milestone_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MilestoneSummaries
    class MilestoneSummaries
      def self.default(visited=[])
        return nil if visited.include?('MilestoneSummaries')
        visited = visited + ['MilestoneSummaries']
        [
          MilestoneSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MilestoneSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MilestoneSummary
    class MilestoneSummary
      def self.default(visited=[])
        return nil if visited.include?('MilestoneSummary')
        visited = visited + ['MilestoneSummary']
        {
          milestone_number: 1,
          milestone_name: 'milestone_name',
          recorded_at: Time.now,
          workload_summary: WorkloadSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MilestoneSummary.new
        data = {}
        data['MilestoneNumber'] = stub[:milestone_number] unless stub[:milestone_number].nil?
        data['MilestoneName'] = stub[:milestone_name] unless stub[:milestone_name].nil?
        data['RecordedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:recorded_at]).to_i unless stub[:recorded_at].nil?
        data['WorkloadSummary'] = Stubs::WorkloadSummary.stub(stub[:workload_summary]) unless stub[:workload_summary].nil?
        data
      end
    end

    # Structure Stubber for WorkloadSummary
    class WorkloadSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkloadSummary')
        visited = visited + ['WorkloadSummary']
        {
          workload_id: 'workload_id',
          workload_arn: 'workload_arn',
          workload_name: 'workload_name',
          owner: 'owner',
          updated_at: Time.now,
          lenses: WorkloadLenses.default(visited),
          risk_counts: RiskCounts.default(visited),
          improvement_status: 'improvement_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkloadSummary.new
        data = {}
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadArn'] = stub[:workload_arn] unless stub[:workload_arn].nil?
        data['WorkloadName'] = stub[:workload_name] unless stub[:workload_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Lenses'] = Stubs::WorkloadLenses.stub(stub[:lenses]) unless stub[:lenses].nil?
        data['RiskCounts'] = Stubs::RiskCounts.stub(stub[:risk_counts]) unless stub[:risk_counts].nil?
        data['ImprovementStatus'] = stub[:improvement_status] unless stub[:improvement_status].nil?
        data
      end
    end

    # Operation Stubber for ListNotifications
    class ListNotifications
      def self.default(visited=[])
        {
          notification_summaries: NotificationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NotificationSummaries'] = Stubs::NotificationSummaries.stub(stub[:notification_summaries]) unless stub[:notification_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NotificationSummaries
    class NotificationSummaries
      def self.default(visited=[])
        return nil if visited.include?('NotificationSummaries')
        visited = visited + ['NotificationSummaries']
        [
          NotificationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotificationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotificationSummary
    class NotificationSummary
      def self.default(visited=[])
        return nil if visited.include?('NotificationSummary')
        visited = visited + ['NotificationSummary']
        {
          type: 'type',
          lens_upgrade_summary: LensUpgradeSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationSummary.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LensUpgradeSummary'] = Stubs::LensUpgradeSummary.stub(stub[:lens_upgrade_summary]) unless stub[:lens_upgrade_summary].nil?
        data
      end
    end

    # Structure Stubber for LensUpgradeSummary
    class LensUpgradeSummary
      def self.default(visited=[])
        return nil if visited.include?('LensUpgradeSummary')
        visited = visited + ['LensUpgradeSummary']
        {
          workload_id: 'workload_id',
          workload_name: 'workload_name',
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          current_lens_version: 'current_lens_version',
          latest_lens_version: 'latest_lens_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::LensUpgradeSummary.new
        data = {}
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadName'] = stub[:workload_name] unless stub[:workload_name].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['CurrentLensVersion'] = stub[:current_lens_version] unless stub[:current_lens_version].nil?
        data['LatestLensVersion'] = stub[:latest_lens_version] unless stub[:latest_lens_version].nil?
        data
      end
    end

    # Operation Stubber for ListShareInvitations
    class ListShareInvitations
      def self.default(visited=[])
        {
          share_invitation_summaries: ShareInvitationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ShareInvitationSummaries'] = Stubs::ShareInvitationSummaries.stub(stub[:share_invitation_summaries]) unless stub[:share_invitation_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ShareInvitationSummaries
    class ShareInvitationSummaries
      def self.default(visited=[])
        return nil if visited.include?('ShareInvitationSummaries')
        visited = visited + ['ShareInvitationSummaries']
        [
          ShareInvitationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ShareInvitationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShareInvitationSummary
    class ShareInvitationSummary
      def self.default(visited=[])
        return nil if visited.include?('ShareInvitationSummary')
        visited = visited + ['ShareInvitationSummary']
        {
          share_invitation_id: 'share_invitation_id',
          shared_by: 'shared_by',
          shared_with: 'shared_with',
          permission_type: 'permission_type',
          share_resource_type: 'share_resource_type',
          workload_name: 'workload_name',
          workload_id: 'workload_id',
          lens_name: 'lens_name',
          lens_arn: 'lens_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareInvitationSummary.new
        data = {}
        data['ShareInvitationId'] = stub[:share_invitation_id] unless stub[:share_invitation_id].nil?
        data['SharedBy'] = stub[:shared_by] unless stub[:shared_by].nil?
        data['SharedWith'] = stub[:shared_with] unless stub[:shared_with].nil?
        data['PermissionType'] = stub[:permission_type] unless stub[:permission_type].nil?
        data['ShareResourceType'] = stub[:share_resource_type] unless stub[:share_resource_type].nil?
        data['WorkloadName'] = stub[:workload_name] unless stub[:workload_name].nil?
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['LensName'] = stub[:lens_name] unless stub[:lens_name].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWorkloadShares
    class ListWorkloadShares
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          workload_share_summaries: WorkloadShareSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadShareSummaries'] = Stubs::WorkloadShareSummaries.stub(stub[:workload_share_summaries]) unless stub[:workload_share_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkloadShareSummaries
    class WorkloadShareSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorkloadShareSummaries')
        visited = visited + ['WorkloadShareSummaries']
        [
          WorkloadShareSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkloadShareSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkloadShareSummary
    class WorkloadShareSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkloadShareSummary')
        visited = visited + ['WorkloadShareSummary']
        {
          share_id: 'share_id',
          shared_with: 'shared_with',
          permission_type: 'permission_type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkloadShareSummary.new
        data = {}
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        data['SharedWith'] = stub[:shared_with] unless stub[:shared_with].nil?
        data['PermissionType'] = stub[:permission_type] unless stub[:permission_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListWorkloads
    class ListWorkloads
      def self.default(visited=[])
        {
          workload_summaries: WorkloadSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadSummaries'] = Stubs::WorkloadSummaries.stub(stub[:workload_summaries]) unless stub[:workload_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkloadSummaries
    class WorkloadSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorkloadSummaries')
        visited = visited + ['WorkloadSummaries']
        [
          WorkloadSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkloadSummary.stub(element) unless element.nil?
        end
        data
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAnswer
    class UpdateAnswer
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
          answer: Answer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data['Answer'] = Stubs::Answer.stub(stub[:answer]) unless stub[:answer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLensReview
    class UpdateLensReview
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          lens_review: LensReview.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['LensReview'] = Stubs::LensReview.stub(stub[:lens_review]) unless stub[:lens_review].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateShareInvitation
    class UpdateShareInvitation
      def self.default(visited=[])
        {
          share_invitation: ShareInvitation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ShareInvitation'] = Stubs::ShareInvitation.stub(stub[:share_invitation]) unless stub[:share_invitation].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ShareInvitation
    class ShareInvitation
      def self.default(visited=[])
        return nil if visited.include?('ShareInvitation')
        visited = visited + ['ShareInvitation']
        {
          share_invitation_id: 'share_invitation_id',
          share_resource_type: 'share_resource_type',
          workload_id: 'workload_id',
          lens_alias: 'lens_alias',
          lens_arn: 'lens_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareInvitation.new
        data = {}
        data['ShareInvitationId'] = stub[:share_invitation_id] unless stub[:share_invitation_id].nil?
        data['ShareResourceType'] = stub[:share_resource_type] unless stub[:share_resource_type].nil?
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['LensAlias'] = stub[:lens_alias] unless stub[:lens_alias].nil?
        data['LensArn'] = stub[:lens_arn] unless stub[:lens_arn].nil?
        data
      end
    end

    # Operation Stubber for UpdateWorkload
    class UpdateWorkload
      def self.default(visited=[])
        {
          workload: Workload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Workload'] = Stubs::Workload.stub(stub[:workload]) unless stub[:workload].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateWorkloadShare
    class UpdateWorkloadShare
      def self.default(visited=[])
        {
          workload_id: 'workload_id',
          workload_share: WorkloadShare.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data['WorkloadShare'] = Stubs::WorkloadShare.stub(stub[:workload_share]) unless stub[:workload_share].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkloadShare
    class WorkloadShare
      def self.default(visited=[])
        return nil if visited.include?('WorkloadShare')
        visited = visited + ['WorkloadShare']
        {
          share_id: 'share_id',
          shared_by: 'shared_by',
          shared_with: 'shared_with',
          permission_type: 'permission_type',
          status: 'status',
          workload_name: 'workload_name',
          workload_id: 'workload_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkloadShare.new
        data = {}
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        data['SharedBy'] = stub[:shared_by] unless stub[:shared_by].nil?
        data['SharedWith'] = stub[:shared_with] unless stub[:shared_with].nil?
        data['PermissionType'] = stub[:permission_type] unless stub[:permission_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['WorkloadName'] = stub[:workload_name] unless stub[:workload_name].nil?
        data['WorkloadId'] = stub[:workload_id] unless stub[:workload_id].nil?
        data
      end
    end

    # Operation Stubber for UpgradeLensReview
    class UpgradeLensReview
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
