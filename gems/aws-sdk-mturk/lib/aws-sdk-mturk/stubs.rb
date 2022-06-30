# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MTurk
  module Stubs

    # Operation Stubber for AcceptQualificationRequest
    class AcceptQualificationRequest
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ApproveAssignment
    class ApproveAssignment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateQualificationWithWorker
    class AssociateQualificationWithWorker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAdditionalAssignmentsForHIT
    class CreateAdditionalAssignmentsForHIT
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHIT
    class CreateHIT
      def self.default(visited=[])
        {
          hit: Stubs::HIT.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HIT'] = Stubs::HIT.stub(stub[:hit]) unless stub[:hit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for HIT
    class HIT
      def self.default(visited=[])
        return nil if visited.include?('HIT')
        visited = visited + ['HIT']
        {
          hit_id: 'hit_id',
          hit_type_id: 'hit_type_id',
          hit_group_id: 'hit_group_id',
          hit_layout_id: 'hit_layout_id',
          creation_time: Time.now,
          title: 'title',
          description: 'description',
          question: 'question',
          keywords: 'keywords',
          hit_status: 'hit_status',
          max_assignments: 1,
          reward: 'reward',
          auto_approval_delay_in_seconds: 1,
          expiration: Time.now,
          assignment_duration_in_seconds: 1,
          requester_annotation: 'requester_annotation',
          qualification_requirements: Stubs::QualificationRequirementList.default(visited),
          hit_review_status: 'hit_review_status',
          number_of_assignments_pending: 1,
          number_of_assignments_available: 1,
          number_of_assignments_completed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HIT.new
        data = {}
        data['HITId'] = stub[:hit_id] unless stub[:hit_id].nil?
        data['HITTypeId'] = stub[:hit_type_id] unless stub[:hit_type_id].nil?
        data['HITGroupId'] = stub[:hit_group_id] unless stub[:hit_group_id].nil?
        data['HITLayoutId'] = stub[:hit_layout_id] unless stub[:hit_layout_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Question'] = stub[:question] unless stub[:question].nil?
        data['Keywords'] = stub[:keywords] unless stub[:keywords].nil?
        data['HITStatus'] = stub[:hit_status] unless stub[:hit_status].nil?
        data['MaxAssignments'] = stub[:max_assignments] unless stub[:max_assignments].nil?
        data['Reward'] = stub[:reward] unless stub[:reward].nil?
        data['AutoApprovalDelayInSeconds'] = stub[:auto_approval_delay_in_seconds] unless stub[:auto_approval_delay_in_seconds].nil?
        data['Expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        data['AssignmentDurationInSeconds'] = stub[:assignment_duration_in_seconds] unless stub[:assignment_duration_in_seconds].nil?
        data['RequesterAnnotation'] = stub[:requester_annotation] unless stub[:requester_annotation].nil?
        data['QualificationRequirements'] = Stubs::QualificationRequirementList.stub(stub[:qualification_requirements]) unless stub[:qualification_requirements].nil?
        data['HITReviewStatus'] = stub[:hit_review_status] unless stub[:hit_review_status].nil?
        data['NumberOfAssignmentsPending'] = stub[:number_of_assignments_pending] unless stub[:number_of_assignments_pending].nil?
        data['NumberOfAssignmentsAvailable'] = stub[:number_of_assignments_available] unless stub[:number_of_assignments_available].nil?
        data['NumberOfAssignmentsCompleted'] = stub[:number_of_assignments_completed] unless stub[:number_of_assignments_completed].nil?
        data
      end
    end

    # List Stubber for QualificationRequirementList
    class QualificationRequirementList
      def self.default(visited=[])
        return nil if visited.include?('QualificationRequirementList')
        visited = visited + ['QualificationRequirementList']
        [
          Stubs::QualificationRequirement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QualificationRequirement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QualificationRequirement
    class QualificationRequirement
      def self.default(visited=[])
        return nil if visited.include?('QualificationRequirement')
        visited = visited + ['QualificationRequirement']
        {
          qualification_type_id: 'qualification_type_id',
          comparator: 'comparator',
          integer_values: Stubs::IntegerList.default(visited),
          locale_values: Stubs::LocaleList.default(visited),
          required_to_preview: false,
          actions_guarded: 'actions_guarded',
        }
      end

      def self.stub(stub)
        stub ||= Types::QualificationRequirement.new
        data = {}
        data['QualificationTypeId'] = stub[:qualification_type_id] unless stub[:qualification_type_id].nil?
        data['Comparator'] = stub[:comparator] unless stub[:comparator].nil?
        data['IntegerValues'] = Stubs::IntegerList.stub(stub[:integer_values]) unless stub[:integer_values].nil?
        data['LocaleValues'] = Stubs::LocaleList.stub(stub[:locale_values]) unless stub[:locale_values].nil?
        data['RequiredToPreview'] = stub[:required_to_preview] unless stub[:required_to_preview].nil?
        data['ActionsGuarded'] = stub[:actions_guarded] unless stub[:actions_guarded].nil?
        data
      end
    end

    # List Stubber for LocaleList
    class LocaleList
      def self.default(visited=[])
        return nil if visited.include?('LocaleList')
        visited = visited + ['LocaleList']
        [
          Stubs::Locale.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Locale.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Locale
    class Locale
      def self.default(visited=[])
        return nil if visited.include?('Locale')
        visited = visited + ['Locale']
        {
          country: 'country',
          subdivision: 'subdivision',
        }
      end

      def self.stub(stub)
        stub ||= Types::Locale.new
        data = {}
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['Subdivision'] = stub[:subdivision] unless stub[:subdivision].nil?
        data
      end
    end

    # List Stubber for IntegerList
    class IntegerList
      def self.default(visited=[])
        return nil if visited.include?('IntegerList')
        visited = visited + ['IntegerList']
        [
          1
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

    # Operation Stubber for CreateHITType
    class CreateHITType
      def self.default(visited=[])
        {
          hit_type_id: 'hit_type_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HITTypeId'] = stub[:hit_type_id] unless stub[:hit_type_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateHITWithHITType
    class CreateHITWithHITType
      def self.default(visited=[])
        {
          hit: Stubs::HIT.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HIT'] = Stubs::HIT.stub(stub[:hit]) unless stub[:hit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateQualificationType
    class CreateQualificationType
      def self.default(visited=[])
        {
          qualification_type: Stubs::QualificationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QualificationType'] = Stubs::QualificationType.stub(stub[:qualification_type]) unless stub[:qualification_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for QualificationType
    class QualificationType
      def self.default(visited=[])
        return nil if visited.include?('QualificationType')
        visited = visited + ['QualificationType']
        {
          qualification_type_id: 'qualification_type_id',
          creation_time: Time.now,
          name: 'name',
          description: 'description',
          keywords: 'keywords',
          qualification_type_status: 'qualification_type_status',
          test: 'test',
          test_duration_in_seconds: 1,
          answer_key: 'answer_key',
          retry_delay_in_seconds: 1,
          is_requestable: false,
          auto_granted: false,
          auto_granted_value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::QualificationType.new
        data = {}
        data['QualificationTypeId'] = stub[:qualification_type_id] unless stub[:qualification_type_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Keywords'] = stub[:keywords] unless stub[:keywords].nil?
        data['QualificationTypeStatus'] = stub[:qualification_type_status] unless stub[:qualification_type_status].nil?
        data['Test'] = stub[:test] unless stub[:test].nil?
        data['TestDurationInSeconds'] = stub[:test_duration_in_seconds] unless stub[:test_duration_in_seconds].nil?
        data['AnswerKey'] = stub[:answer_key] unless stub[:answer_key].nil?
        data['RetryDelayInSeconds'] = stub[:retry_delay_in_seconds] unless stub[:retry_delay_in_seconds].nil?
        data['IsRequestable'] = stub[:is_requestable] unless stub[:is_requestable].nil?
        data['AutoGranted'] = stub[:auto_granted] unless stub[:auto_granted].nil?
        data['AutoGrantedValue'] = stub[:auto_granted_value] unless stub[:auto_granted_value].nil?
        data
      end
    end

    # Operation Stubber for CreateWorkerBlock
    class CreateWorkerBlock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHIT
    class DeleteHIT
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteQualificationType
    class DeleteQualificationType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkerBlock
    class DeleteWorkerBlock
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateQualificationFromWorker
    class DisassociateQualificationFromWorker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccountBalance
    class GetAccountBalance
      def self.default(visited=[])
        {
          available_balance: 'available_balance',
          on_hold_balance: 'on_hold_balance',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AvailableBalance'] = stub[:available_balance] unless stub[:available_balance].nil?
        data['OnHoldBalance'] = stub[:on_hold_balance] unless stub[:on_hold_balance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAssignment
    class GetAssignment
      def self.default(visited=[])
        {
          assignment: Stubs::Assignment.default(visited),
          hit: Stubs::HIT.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Assignment'] = Stubs::Assignment.stub(stub[:assignment]) unless stub[:assignment].nil?
        data['HIT'] = Stubs::HIT.stub(stub[:hit]) unless stub[:hit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Assignment
    class Assignment
      def self.default(visited=[])
        return nil if visited.include?('Assignment')
        visited = visited + ['Assignment']
        {
          assignment_id: 'assignment_id',
          worker_id: 'worker_id',
          hit_id: 'hit_id',
          assignment_status: 'assignment_status',
          auto_approval_time: Time.now,
          accept_time: Time.now,
          submit_time: Time.now,
          approval_time: Time.now,
          rejection_time: Time.now,
          deadline: Time.now,
          answer: 'answer',
          requester_feedback: 'requester_feedback',
        }
      end

      def self.stub(stub)
        stub ||= Types::Assignment.new
        data = {}
        data['AssignmentId'] = stub[:assignment_id] unless stub[:assignment_id].nil?
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data['HITId'] = stub[:hit_id] unless stub[:hit_id].nil?
        data['AssignmentStatus'] = stub[:assignment_status] unless stub[:assignment_status].nil?
        data['AutoApprovalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:auto_approval_time]).to_i unless stub[:auto_approval_time].nil?
        data['AcceptTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:accept_time]).to_i unless stub[:accept_time].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['ApprovalTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approval_time]).to_i unless stub[:approval_time].nil?
        data['RejectionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:rejection_time]).to_i unless stub[:rejection_time].nil?
        data['Deadline'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deadline]).to_i unless stub[:deadline].nil?
        data['Answer'] = stub[:answer] unless stub[:answer].nil?
        data['RequesterFeedback'] = stub[:requester_feedback] unless stub[:requester_feedback].nil?
        data
      end
    end

    # Operation Stubber for GetFileUploadURL
    class GetFileUploadURL
      def self.default(visited=[])
        {
          file_upload_url: 'file_upload_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FileUploadURL'] = stub[:file_upload_url] unless stub[:file_upload_url].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetHIT
    class GetHIT
      def self.default(visited=[])
        {
          hit: Stubs::HIT.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HIT'] = Stubs::HIT.stub(stub[:hit]) unless stub[:hit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetQualificationScore
    class GetQualificationScore
      def self.default(visited=[])
        {
          qualification: Stubs::Qualification.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Qualification'] = Stubs::Qualification.stub(stub[:qualification]) unless stub[:qualification].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Qualification
    class Qualification
      def self.default(visited=[])
        return nil if visited.include?('Qualification')
        visited = visited + ['Qualification']
        {
          qualification_type_id: 'qualification_type_id',
          worker_id: 'worker_id',
          grant_time: Time.now,
          integer_value: 1,
          locale_value: Stubs::Locale.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Qualification.new
        data = {}
        data['QualificationTypeId'] = stub[:qualification_type_id] unless stub[:qualification_type_id].nil?
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data['GrantTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:grant_time]).to_i unless stub[:grant_time].nil?
        data['IntegerValue'] = stub[:integer_value] unless stub[:integer_value].nil?
        data['LocaleValue'] = Stubs::Locale.stub(stub[:locale_value]) unless stub[:locale_value].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for GetQualificationType
    class GetQualificationType
      def self.default(visited=[])
        {
          qualification_type: Stubs::QualificationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QualificationType'] = Stubs::QualificationType.stub(stub[:qualification_type]) unless stub[:qualification_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAssignmentsForHIT
    class ListAssignmentsForHIT
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          assignments: Stubs::AssignmentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['Assignments'] = Stubs::AssignmentList.stub(stub[:assignments]) unless stub[:assignments].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssignmentList
    class AssignmentList
      def self.default(visited=[])
        return nil if visited.include?('AssignmentList')
        visited = visited + ['AssignmentList']
        [
          Stubs::Assignment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Assignment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBonusPayments
    class ListBonusPayments
      def self.default(visited=[])
        {
          num_results: 1,
          next_token: 'next_token',
          bonus_payments: Stubs::BonusPaymentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['BonusPayments'] = Stubs::BonusPaymentList.stub(stub[:bonus_payments]) unless stub[:bonus_payments].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BonusPaymentList
    class BonusPaymentList
      def self.default(visited=[])
        return nil if visited.include?('BonusPaymentList')
        visited = visited + ['BonusPaymentList']
        [
          Stubs::BonusPayment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BonusPayment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BonusPayment
    class BonusPayment
      def self.default(visited=[])
        return nil if visited.include?('BonusPayment')
        visited = visited + ['BonusPayment']
        {
          worker_id: 'worker_id',
          bonus_amount: 'bonus_amount',
          assignment_id: 'assignment_id',
          reason: 'reason',
          grant_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BonusPayment.new
        data = {}
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data['BonusAmount'] = stub[:bonus_amount] unless stub[:bonus_amount].nil?
        data['AssignmentId'] = stub[:assignment_id] unless stub[:assignment_id].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['GrantTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:grant_time]).to_i unless stub[:grant_time].nil?
        data
      end
    end

    # Operation Stubber for ListHITs
    class ListHITs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          hi_ts: Stubs::HITList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['HITs'] = Stubs::HITList.stub(stub[:hi_ts]) unless stub[:hi_ts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HITList
    class HITList
      def self.default(visited=[])
        return nil if visited.include?('HITList')
        visited = visited + ['HITList']
        [
          Stubs::HIT.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HIT.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListHITsForQualificationType
    class ListHITsForQualificationType
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          hi_ts: Stubs::HITList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['HITs'] = Stubs::HITList.stub(stub[:hi_ts]) unless stub[:hi_ts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListQualificationRequests
    class ListQualificationRequests
      def self.default(visited=[])
        {
          num_results: 1,
          next_token: 'next_token',
          qualification_requests: Stubs::QualificationRequestList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QualificationRequests'] = Stubs::QualificationRequestList.stub(stub[:qualification_requests]) unless stub[:qualification_requests].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QualificationRequestList
    class QualificationRequestList
      def self.default(visited=[])
        return nil if visited.include?('QualificationRequestList')
        visited = visited + ['QualificationRequestList']
        [
          Stubs::QualificationRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QualificationRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QualificationRequest
    class QualificationRequest
      def self.default(visited=[])
        return nil if visited.include?('QualificationRequest')
        visited = visited + ['QualificationRequest']
        {
          qualification_request_id: 'qualification_request_id',
          qualification_type_id: 'qualification_type_id',
          worker_id: 'worker_id',
          test: 'test',
          answer: 'answer',
          submit_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::QualificationRequest.new
        data = {}
        data['QualificationRequestId'] = stub[:qualification_request_id] unless stub[:qualification_request_id].nil?
        data['QualificationTypeId'] = stub[:qualification_type_id] unless stub[:qualification_type_id].nil?
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data['Test'] = stub[:test] unless stub[:test].nil?
        data['Answer'] = stub[:answer] unless stub[:answer].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data
      end
    end

    # Operation Stubber for ListQualificationTypes
    class ListQualificationTypes
      def self.default(visited=[])
        {
          num_results: 1,
          next_token: 'next_token',
          qualification_types: Stubs::QualificationTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QualificationTypes'] = Stubs::QualificationTypeList.stub(stub[:qualification_types]) unless stub[:qualification_types].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QualificationTypeList
    class QualificationTypeList
      def self.default(visited=[])
        return nil if visited.include?('QualificationTypeList')
        visited = visited + ['QualificationTypeList']
        [
          Stubs::QualificationType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::QualificationType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListReviewPolicyResultsForHIT
    class ListReviewPolicyResultsForHIT
      def self.default(visited=[])
        {
          hit_id: 'hit_id',
          assignment_review_policy: Stubs::ReviewPolicy.default(visited),
          hit_review_policy: Stubs::ReviewPolicy.default(visited),
          assignment_review_report: Stubs::ReviewReport.default(visited),
          hit_review_report: Stubs::ReviewReport.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HITId'] = stub[:hit_id] unless stub[:hit_id].nil?
        data['AssignmentReviewPolicy'] = Stubs::ReviewPolicy.stub(stub[:assignment_review_policy]) unless stub[:assignment_review_policy].nil?
        data['HITReviewPolicy'] = Stubs::ReviewPolicy.stub(stub[:hit_review_policy]) unless stub[:hit_review_policy].nil?
        data['AssignmentReviewReport'] = Stubs::ReviewReport.stub(stub[:assignment_review_report]) unless stub[:assignment_review_report].nil?
        data['HITReviewReport'] = Stubs::ReviewReport.stub(stub[:hit_review_report]) unless stub[:hit_review_report].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ReviewReport
    class ReviewReport
      def self.default(visited=[])
        return nil if visited.include?('ReviewReport')
        visited = visited + ['ReviewReport']
        {
          review_results: Stubs::ReviewResultDetailList.default(visited),
          review_actions: Stubs::ReviewActionDetailList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewReport.new
        data = {}
        data['ReviewResults'] = Stubs::ReviewResultDetailList.stub(stub[:review_results]) unless stub[:review_results].nil?
        data['ReviewActions'] = Stubs::ReviewActionDetailList.stub(stub[:review_actions]) unless stub[:review_actions].nil?
        data
      end
    end

    # List Stubber for ReviewActionDetailList
    class ReviewActionDetailList
      def self.default(visited=[])
        return nil if visited.include?('ReviewActionDetailList')
        visited = visited + ['ReviewActionDetailList']
        [
          Stubs::ReviewActionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReviewActionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReviewActionDetail
    class ReviewActionDetail
      def self.default(visited=[])
        return nil if visited.include?('ReviewActionDetail')
        visited = visited + ['ReviewActionDetail']
        {
          action_id: 'action_id',
          action_name: 'action_name',
          target_id: 'target_id',
          target_type: 'target_type',
          status: 'status',
          complete_time: Time.now,
          result: 'result',
          error_code: 'error_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewActionDetail.new
        data = {}
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['ActionName'] = stub[:action_name] unless stub[:action_name].nil?
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CompleteTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:complete_time]).to_i unless stub[:complete_time].nil?
        data['Result'] = stub[:result] unless stub[:result].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data
      end
    end

    # List Stubber for ReviewResultDetailList
    class ReviewResultDetailList
      def self.default(visited=[])
        return nil if visited.include?('ReviewResultDetailList')
        visited = visited + ['ReviewResultDetailList']
        [
          Stubs::ReviewResultDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReviewResultDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReviewResultDetail
    class ReviewResultDetail
      def self.default(visited=[])
        return nil if visited.include?('ReviewResultDetail')
        visited = visited + ['ReviewResultDetail']
        {
          action_id: 'action_id',
          subject_id: 'subject_id',
          subject_type: 'subject_type',
          question_id: 'question_id',
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewResultDetail.new
        data = {}
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        data['SubjectId'] = stub[:subject_id] unless stub[:subject_id].nil?
        data['SubjectType'] = stub[:subject_type] unless stub[:subject_type].nil?
        data['QuestionId'] = stub[:question_id] unless stub[:question_id].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for ReviewPolicy
    class ReviewPolicy
      def self.default(visited=[])
        return nil if visited.include?('ReviewPolicy')
        visited = visited + ['ReviewPolicy']
        {
          policy_name: 'policy_name',
          parameters: Stubs::PolicyParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReviewPolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['Parameters'] = Stubs::PolicyParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # List Stubber for PolicyParameterList
    class PolicyParameterList
      def self.default(visited=[])
        return nil if visited.include?('PolicyParameterList')
        visited = visited + ['PolicyParameterList']
        [
          Stubs::PolicyParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PolicyParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PolicyParameter
    class PolicyParameter
      def self.default(visited=[])
        return nil if visited.include?('PolicyParameter')
        visited = visited + ['PolicyParameter']
        {
          key: 'key',
          values: Stubs::StringList.default(visited),
          map_entries: Stubs::ParameterMapEntryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyParameter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::StringList.stub(stub[:values]) unless stub[:values].nil?
        data['MapEntries'] = Stubs::ParameterMapEntryList.stub(stub[:map_entries]) unless stub[:map_entries].nil?
        data
      end
    end

    # List Stubber for ParameterMapEntryList
    class ParameterMapEntryList
      def self.default(visited=[])
        return nil if visited.include?('ParameterMapEntryList')
        visited = visited + ['ParameterMapEntryList']
        [
          Stubs::ParameterMapEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterMapEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterMapEntry
    class ParameterMapEntry
      def self.default(visited=[])
        return nil if visited.include?('ParameterMapEntry')
        visited = visited + ['ParameterMapEntry']
        {
          key: 'key',
          values: Stubs::StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterMapEntry.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::StringList.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for ListReviewableHITs
    class ListReviewableHITs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          hi_ts: Stubs::HITList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['HITs'] = Stubs::HITList.stub(stub[:hi_ts]) unless stub[:hi_ts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListWorkerBlocks
    class ListWorkerBlocks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          worker_blocks: Stubs::WorkerBlockList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['WorkerBlocks'] = Stubs::WorkerBlockList.stub(stub[:worker_blocks]) unless stub[:worker_blocks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkerBlockList
    class WorkerBlockList
      def self.default(visited=[])
        return nil if visited.include?('WorkerBlockList')
        visited = visited + ['WorkerBlockList']
        [
          Stubs::WorkerBlock.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkerBlock.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkerBlock
    class WorkerBlock
      def self.default(visited=[])
        return nil if visited.include?('WorkerBlock')
        visited = visited + ['WorkerBlock']
        {
          worker_id: 'worker_id',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkerBlock.new
        data = {}
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for ListWorkersWithQualificationType
    class ListWorkersWithQualificationType
      def self.default(visited=[])
        {
          next_token: 'next_token',
          num_results: 1,
          qualifications: Stubs::QualificationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['NumResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['Qualifications'] = Stubs::QualificationList.stub(stub[:qualifications]) unless stub[:qualifications].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QualificationList
    class QualificationList
      def self.default(visited=[])
        return nil if visited.include?('QualificationList')
        visited = visited + ['QualificationList']
        [
          Stubs::Qualification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Qualification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for NotifyWorkers
    class NotifyWorkers
      def self.default(visited=[])
        {
          notify_workers_failure_statuses: Stubs::NotifyWorkersFailureStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NotifyWorkersFailureStatuses'] = Stubs::NotifyWorkersFailureStatusList.stub(stub[:notify_workers_failure_statuses]) unless stub[:notify_workers_failure_statuses].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NotifyWorkersFailureStatusList
    class NotifyWorkersFailureStatusList
      def self.default(visited=[])
        return nil if visited.include?('NotifyWorkersFailureStatusList')
        visited = visited + ['NotifyWorkersFailureStatusList']
        [
          Stubs::NotifyWorkersFailureStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotifyWorkersFailureStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotifyWorkersFailureStatus
    class NotifyWorkersFailureStatus
      def self.default(visited=[])
        return nil if visited.include?('NotifyWorkersFailureStatus')
        visited = visited + ['NotifyWorkersFailureStatus']
        {
          notify_workers_failure_code: 'notify_workers_failure_code',
          notify_workers_failure_message: 'notify_workers_failure_message',
          worker_id: 'worker_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotifyWorkersFailureStatus.new
        data = {}
        data['NotifyWorkersFailureCode'] = stub[:notify_workers_failure_code] unless stub[:notify_workers_failure_code].nil?
        data['NotifyWorkersFailureMessage'] = stub[:notify_workers_failure_message] unless stub[:notify_workers_failure_message].nil?
        data['WorkerId'] = stub[:worker_id] unless stub[:worker_id].nil?
        data
      end
    end

    # Operation Stubber for RejectAssignment
    class RejectAssignment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RejectQualificationRequest
    class RejectQualificationRequest
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendBonus
    class SendBonus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendTestEventNotification
    class SendTestEventNotification
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateExpirationForHIT
    class UpdateExpirationForHIT
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateHITReviewStatus
    class UpdateHITReviewStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateHITTypeOfHIT
    class UpdateHITTypeOfHIT
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNotificationSettings
    class UpdateNotificationSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQualificationType
    class UpdateQualificationType
      def self.default(visited=[])
        {
          qualification_type: Stubs::QualificationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QualificationType'] = Stubs::QualificationType.stub(stub[:qualification_type]) unless stub[:qualification_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
