# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MarketplaceCatalog
  module Stubs

    # Operation Stubber for CancelChangeSet
    class CancelChangeSet
      def self.default(visited=[])
        {
          change_set_id: 'change_set_id',
          change_set_arn: 'change_set_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangeSetId'] = stub[:change_set_id] unless stub[:change_set_id].nil?
        data['ChangeSetArn'] = stub[:change_set_arn] unless stub[:change_set_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeChangeSet
    class DescribeChangeSet
      def self.default(visited=[])
        {
          change_set_id: 'change_set_id',
          change_set_arn: 'change_set_arn',
          change_set_name: 'change_set_name',
          start_time: 'start_time',
          end_time: 'end_time',
          status: 'status',
          failure_code: 'failure_code',
          failure_description: 'failure_description',
          change_set: ChangeSetDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangeSetId'] = stub[:change_set_id] unless stub[:change_set_id].nil?
        data['ChangeSetArn'] = stub[:change_set_arn] unless stub[:change_set_arn].nil?
        data['ChangeSetName'] = stub[:change_set_name] unless stub[:change_set_name].nil?
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['FailureDescription'] = stub[:failure_description] unless stub[:failure_description].nil?
        data['ChangeSet'] = ChangeSetDescription.stub(stub[:change_set]) unless stub[:change_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChangeSetDescription
    class ChangeSetDescription
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetDescription')
        visited = visited + ['ChangeSetDescription']
        [
          ChangeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChangeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangeSummary
    class ChangeSummary
      def self.default(visited=[])
        return nil if visited.include?('ChangeSummary')
        visited = visited + ['ChangeSummary']
        {
          change_type: 'change_type',
          entity: Entity.default(visited),
          details: 'details',
          error_detail_list: ErrorDetailList.default(visited),
          change_name: 'change_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeSummary.new
        data = {}
        data['ChangeType'] = stub[:change_type] unless stub[:change_type].nil?
        data['Entity'] = Entity.stub(stub[:entity]) unless stub[:entity].nil?
        data['Details'] = stub[:details] unless stub[:details].nil?
        data['ErrorDetailList'] = ErrorDetailList.stub(stub[:error_detail_list]) unless stub[:error_detail_list].nil?
        data['ChangeName'] = stub[:change_name] unless stub[:change_name].nil?
        data
      end
    end

    # List Stubber for ErrorDetailList
    class ErrorDetailList
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetailList')
        visited = visited + ['ErrorDetailList']
        [
          ErrorDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ErrorDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorDetail
    class ErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetail')
        visited = visited + ['ErrorDetail']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetail.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for Entity
    class Entity
      def self.default(visited=[])
        return nil if visited.include?('Entity')
        visited = visited + ['Entity']
        {
          type: 'type',
          identifier: 'identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::Entity.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data
      end
    end

    # Operation Stubber for DescribeEntity
    class DescribeEntity
      def self.default(visited=[])
        {
          entity_type: 'entity_type',
          entity_identifier: 'entity_identifier',
          entity_arn: 'entity_arn',
          last_modified_date: 'last_modified_date',
          details: 'details',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EntityType'] = stub[:entity_type] unless stub[:entity_type].nil?
        data['EntityIdentifier'] = stub[:entity_identifier] unless stub[:entity_identifier].nil?
        data['EntityArn'] = stub[:entity_arn] unless stub[:entity_arn].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Details'] = stub[:details] unless stub[:details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListChangeSets
    class ListChangeSets
      def self.default(visited=[])
        {
          change_set_summary_list: ChangeSetSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangeSetSummaryList'] = ChangeSetSummaryList.stub(stub[:change_set_summary_list]) unless stub[:change_set_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChangeSetSummaryList
    class ChangeSetSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetSummaryList')
        visited = visited + ['ChangeSetSummaryList']
        [
          ChangeSetSummaryListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChangeSetSummaryListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangeSetSummaryListItem
    class ChangeSetSummaryListItem
      def self.default(visited=[])
        return nil if visited.include?('ChangeSetSummaryListItem')
        visited = visited + ['ChangeSetSummaryListItem']
        {
          change_set_id: 'change_set_id',
          change_set_arn: 'change_set_arn',
          change_set_name: 'change_set_name',
          start_time: 'start_time',
          end_time: 'end_time',
          status: 'status',
          entity_id_list: ResourceIdList.default(visited),
          failure_code: 'failure_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangeSetSummaryListItem.new
        data = {}
        data['ChangeSetId'] = stub[:change_set_id] unless stub[:change_set_id].nil?
        data['ChangeSetArn'] = stub[:change_set_arn] unless stub[:change_set_arn].nil?
        data['ChangeSetName'] = stub[:change_set_name] unless stub[:change_set_name].nil?
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['EntityIdList'] = ResourceIdList.stub(stub[:entity_id_list]) unless stub[:entity_id_list].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data
      end
    end

    # List Stubber for ResourceIdList
    class ResourceIdList
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdList')
        visited = visited + ['ResourceIdList']
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

    # Operation Stubber for ListEntities
    class ListEntities
      def self.default(visited=[])
        {
          entity_summary_list: EntitySummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EntitySummaryList'] = EntitySummaryList.stub(stub[:entity_summary_list]) unless stub[:entity_summary_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EntitySummaryList
    class EntitySummaryList
      def self.default(visited=[])
        return nil if visited.include?('EntitySummaryList')
        visited = visited + ['EntitySummaryList']
        [
          EntitySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntitySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitySummary
    class EntitySummary
      def self.default(visited=[])
        return nil if visited.include?('EntitySummary')
        visited = visited + ['EntitySummary']
        {
          name: 'name',
          entity_type: 'entity_type',
          entity_id: 'entity_id',
          entity_arn: 'entity_arn',
          last_modified_date: 'last_modified_date',
          visibility: 'visibility',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitySummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['EntityType'] = stub[:entity_type] unless stub[:entity_type].nil?
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['EntityArn'] = stub[:entity_arn] unless stub[:entity_arn].nil?
        data['LastModifiedDate'] = stub[:last_modified_date] unless stub[:last_modified_date].nil?
        data['Visibility'] = stub[:visibility] unless stub[:visibility].nil?
        data
      end
    end

    # Operation Stubber for StartChangeSet
    class StartChangeSet
      def self.default(visited=[])
        {
          change_set_id: 'change_set_id',
          change_set_arn: 'change_set_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChangeSetId'] = stub[:change_set_id] unless stub[:change_set_id].nil?
        data['ChangeSetArn'] = stub[:change_set_arn] unless stub[:change_set_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
