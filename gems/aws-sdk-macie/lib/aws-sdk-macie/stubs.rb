# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie
  module Stubs

    # Operation Stubber for AssociateMemberAccount
    class AssociateMemberAccount
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

    # Operation Stubber for AssociateS3Resources
    class AssociateS3Resources
      def self.default(visited=[])
        {
          failed_s3_resources: Stubs::FailedS3Resources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['failedS3Resources'] = Stubs::FailedS3Resources.stub(stub[:failed_s3_resources]) unless stub[:failed_s3_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedS3Resources
    class FailedS3Resources
      def self.default(visited=[])
        return nil if visited.include?('FailedS3Resources')
        visited = visited + ['FailedS3Resources']
        [
          Stubs::FailedS3Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FailedS3Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedS3Resource
    class FailedS3Resource
      def self.default(visited=[])
        return nil if visited.include?('FailedS3Resource')
        visited = visited + ['FailedS3Resource']
        {
          failed_item: Stubs::S3Resource.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedS3Resource.new
        data = {}
        data['failedItem'] = Stubs::S3Resource.stub(stub[:failed_item]) unless stub[:failed_item].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for S3Resource
    class S3Resource
      def self.default(visited=[])
        return nil if visited.include?('S3Resource')
        visited = visited + ['S3Resource']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Resource.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Operation Stubber for DisassociateMemberAccount
    class DisassociateMemberAccount
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

    # Operation Stubber for DisassociateS3Resources
    class DisassociateS3Resources
      def self.default(visited=[])
        {
          failed_s3_resources: Stubs::FailedS3Resources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['failedS3Resources'] = Stubs::FailedS3Resources.stub(stub[:failed_s3_resources]) unless stub[:failed_s3_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListMemberAccounts
    class ListMemberAccounts
      def self.default(visited=[])
        {
          member_accounts: Stubs::MemberAccounts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['memberAccounts'] = Stubs::MemberAccounts.stub(stub[:member_accounts]) unless stub[:member_accounts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MemberAccounts
    class MemberAccounts
      def self.default(visited=[])
        return nil if visited.include?('MemberAccounts')
        visited = visited + ['MemberAccounts']
        [
          Stubs::MemberAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberAccount
    class MemberAccount
      def self.default(visited=[])
        return nil if visited.include?('MemberAccount')
        visited = visited + ['MemberAccount']
        {
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberAccount.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Operation Stubber for ListS3Resources
    class ListS3Resources
      def self.default(visited=[])
        {
          s3_resources: Stubs::S3ResourcesClassification.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['s3Resources'] = Stubs::S3ResourcesClassification.stub(stub[:s3_resources]) unless stub[:s3_resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for S3ResourcesClassification
    class S3ResourcesClassification
      def self.default(visited=[])
        return nil if visited.include?('S3ResourcesClassification')
        visited = visited + ['S3ResourcesClassification']
        [
          Stubs::S3ResourceClassification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::S3ResourceClassification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3ResourceClassification
    class S3ResourceClassification
      def self.default(visited=[])
        return nil if visited.include?('S3ResourceClassification')
        visited = visited + ['S3ResourceClassification']
        {
          bucket_name: 'bucket_name',
          prefix: 'prefix',
          classification_type: Stubs::ClassificationType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ResourceClassification.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['classificationType'] = Stubs::ClassificationType.stub(stub[:classification_type]) unless stub[:classification_type].nil?
        data
      end
    end

    # Structure Stubber for ClassificationType
    class ClassificationType
      def self.default(visited=[])
        return nil if visited.include?('ClassificationType')
        visited = visited + ['ClassificationType']
        {
          one_time: 'one_time',
          continuous: 'continuous',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassificationType.new
        data = {}
        data['oneTime'] = stub[:one_time] unless stub[:one_time].nil?
        data['continuous'] = stub[:continuous] unless stub[:continuous].nil?
        data
      end
    end

    # Operation Stubber for UpdateS3Resources
    class UpdateS3Resources
      def self.default(visited=[])
        {
          failed_s3_resources: Stubs::FailedS3Resources.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['failedS3Resources'] = Stubs::FailedS3Resources.stub(stub[:failed_s3_resources]) unless stub[:failed_s3_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
