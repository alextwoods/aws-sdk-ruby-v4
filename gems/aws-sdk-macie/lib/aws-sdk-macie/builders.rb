# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Macie
  module Builders

    # Operation Builder for AssociateMemberAccount
    class AssociateMemberAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.AssociateMemberAccount'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateS3Resources
    class AssociateS3Resources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.AssociateS3Resources'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        data['s3Resources'] = Builders::S3ResourcesClassification.build(input[:s3_resources]) unless input[:s3_resources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for S3ResourcesClassification
    class S3ResourcesClassification
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3ResourceClassification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3ResourceClassification
    class S3ResourceClassification
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data['classificationType'] = Builders::ClassificationType.build(input[:classification_type]) unless input[:classification_type].nil?
        data
      end
    end

    # Structure Builder for ClassificationType
    class ClassificationType
      def self.build(input)
        data = {}
        data['oneTime'] = input[:one_time] unless input[:one_time].nil?
        data['continuous'] = input[:continuous] unless input[:continuous].nil?
        data
      end
    end

    # Operation Builder for DisassociateMemberAccount
    class DisassociateMemberAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.DisassociateMemberAccount'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateS3Resources
    class DisassociateS3Resources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.DisassociateS3Resources'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        data['associatedS3Resources'] = Builders::S3Resources.build(input[:associated_s3_resources]) unless input[:associated_s3_resources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for S3Resources
    class S3Resources
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3Resource
    class S3Resource
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for ListMemberAccounts
    class ListMemberAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.ListMemberAccounts'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListS3Resources
    class ListS3Resources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.ListS3Resources'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateS3Resources
    class UpdateS3Resources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'MacieService.UpdateS3Resources'
        data = {}
        data['memberAccountId'] = input[:member_account_id] unless input[:member_account_id].nil?
        data['s3ResourcesUpdate'] = Builders::S3ResourcesClassificationUpdate.build(input[:s3_resources_update]) unless input[:s3_resources_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for S3ResourcesClassificationUpdate
    class S3ResourcesClassificationUpdate
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::S3ResourceClassificationUpdate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3ResourceClassificationUpdate
    class S3ResourceClassificationUpdate
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data['classificationTypeUpdate'] = Builders::ClassificationTypeUpdate.build(input[:classification_type_update]) unless input[:classification_type_update].nil?
        data
      end
    end

    # Structure Builder for ClassificationTypeUpdate
    class ClassificationTypeUpdate
      def self.build(input)
        data = {}
        data['oneTime'] = input[:one_time] unless input[:one_time].nil?
        data['continuous'] = input[:continuous] unless input[:continuous].nil?
        data
      end
    end
  end
end
