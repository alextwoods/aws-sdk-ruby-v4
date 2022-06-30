# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudHSM
  module Builders

    # Operation Builder for AddTagsToResource
    class AddTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.AddTagsToResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagList'] = Builders::TagList.build(input[:tag_list]) unless input[:tag_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateHapg
    class CreateHapg
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.CreateHapg'
        data = {}
        data['Label'] = input[:label] unless input[:label].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateHsm
    class CreateHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.CreateHsm'
        data = {}
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['SshKey'] = input[:ssh_key] unless input[:ssh_key].nil?
        data['EniIp'] = input[:eni_ip] unless input[:eni_ip].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        data['SubscriptionType'] = input[:subscription_type] unless input[:subscription_type].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['SyslogIp'] = input[:syslog_ip] unless input[:syslog_ip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateLunaClient
    class CreateLunaClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.CreateLunaClient'
        data = {}
        data['Label'] = input[:label] unless input[:label].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteHapg
    class DeleteHapg
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DeleteHapg'
        data = {}
        data['HapgArn'] = input[:hapg_arn] unless input[:hapg_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteHsm
    class DeleteHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DeleteHsm'
        data = {}
        data['HsmArn'] = input[:hsm_arn] unless input[:hsm_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLunaClient
    class DeleteLunaClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DeleteLunaClient'
        data = {}
        data['ClientArn'] = input[:client_arn] unless input[:client_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHapg
    class DescribeHapg
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DescribeHapg'
        data = {}
        data['HapgArn'] = input[:hapg_arn] unless input[:hapg_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHsm
    class DescribeHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DescribeHsm'
        data = {}
        data['HsmArn'] = input[:hsm_arn] unless input[:hsm_arn].nil?
        data['HsmSerialNumber'] = input[:hsm_serial_number] unless input[:hsm_serial_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLunaClient
    class DescribeLunaClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.DescribeLunaClient'
        data = {}
        data['ClientArn'] = input[:client_arn] unless input[:client_arn].nil?
        data['CertificateFingerprint'] = input[:certificate_fingerprint] unless input[:certificate_fingerprint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetConfig
    class GetConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.GetConfig'
        data = {}
        data['ClientArn'] = input[:client_arn] unless input[:client_arn].nil?
        data['ClientVersion'] = input[:client_version] unless input[:client_version].nil?
        data['HapgList'] = Builders::HapgList.build(input[:hapg_list]) unless input[:hapg_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for HapgList
    class HapgList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAvailableZones
    class ListAvailableZones
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ListAvailableZones'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHapgs
    class ListHapgs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ListHapgs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHsms
    class ListHsms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ListHsms'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLunaClients
    class ListLunaClients
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ListLunaClients'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyHapg
    class ModifyHapg
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ModifyHapg'
        data = {}
        data['HapgArn'] = input[:hapg_arn] unless input[:hapg_arn].nil?
        data['Label'] = input[:label] unless input[:label].nil?
        data['PartitionSerialList'] = Builders::PartitionSerialList.build(input[:partition_serial_list]) unless input[:partition_serial_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PartitionSerialList
    class PartitionSerialList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ModifyHsm
    class ModifyHsm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ModifyHsm'
        data = {}
        data['HsmArn'] = input[:hsm_arn] unless input[:hsm_arn].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['EniIp'] = input[:eni_ip] unless input[:eni_ip].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        data['SyslogIp'] = input[:syslog_ip] unless input[:syslog_ip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyLunaClient
    class ModifyLunaClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.ModifyLunaClient'
        data = {}
        data['ClientArn'] = input[:client_arn] unless input[:client_arn].nil?
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTagsFromResource
    class RemoveTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CloudHsmFrontendService.RemoveTagsFromResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeyList'] = Builders::TagKeyList.build(input[:tag_key_list]) unless input[:tag_key_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
  end
end
