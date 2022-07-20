# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Lightsail
  module Stubs

    # Operation Stubber for AllocateStaticIp
    class AllocateStaticIp
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OperationList
    class OperationList
      def self.default(visited=[])
        return nil if visited.include?('OperationList')
        visited = visited + ['OperationList']
        [
          Operation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Operation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Operation
    class Operation
      def self.default(visited=[])
        return nil if visited.include?('Operation')
        visited = visited + ['Operation']
        {
          id: 'id',
          resource_name: 'resource_name',
          resource_type: 'resource_type',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          is_terminal: false,
          operation_details: 'operation_details',
          operation_type: 'operation_type',
          status: 'status',
          status_changed_at: Time.now,
          error_code: 'error_code',
          error_details: 'error_details',
        }
      end

      def self.stub(stub)
        stub ||= Types::Operation.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['isTerminal'] = stub[:is_terminal] unless stub[:is_terminal].nil?
        data['operationDetails'] = stub[:operation_details] unless stub[:operation_details].nil?
        data['operationType'] = stub[:operation_type] unless stub[:operation_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusChangedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_changed_at]).to_i unless stub[:status_changed_at].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorDetails'] = stub[:error_details] unless stub[:error_details].nil?
        data
      end
    end

    # Structure Stubber for ResourceLocation
    class ResourceLocation
      def self.default(visited=[])
        return nil if visited.include?('ResourceLocation')
        visited = visited + ['ResourceLocation']
        {
          availability_zone: 'availability_zone',
          region_name: 'region_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceLocation.new
        data = {}
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['regionName'] = stub[:region_name] unless stub[:region_name].nil?
        data
      end
    end

    # Operation Stubber for AttachCertificateToDistribution
    class AttachCertificateToDistribution
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachDisk
    class AttachDisk
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachInstancesToLoadBalancer
    class AttachInstancesToLoadBalancer
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachLoadBalancerTlsCertificate
    class AttachLoadBalancerTlsCertificate
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachStaticIp
    class AttachStaticIp
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CloseInstancePublicPorts
    class CloseInstancePublicPorts
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CopySnapshot
    class CopySnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBucket
    class CreateBucket
      def self.default(visited=[])
        {
          bucket: Bucket.default(visited),
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bucket'] = Bucket.stub(stub[:bucket]) unless stub[:bucket].nil?
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Bucket
    class Bucket
      def self.default(visited=[])
        return nil if visited.include?('Bucket')
        visited = visited + ['Bucket']
        {
          resource_type: 'resource_type',
          access_rules: AccessRules.default(visited),
          arn: 'arn',
          bundle_id: 'bundle_id',
          created_at: Time.now,
          url: 'url',
          location: ResourceLocation.default(visited),
          name: 'name',
          support_code: 'support_code',
          tags: TagList.default(visited),
          object_versioning: 'object_versioning',
          able_to_update_bundle: false,
          readonly_access_accounts: PartnerIdList.default(visited),
          resources_receiving_access: AccessReceiverList.default(visited),
          state: BucketState.default(visited),
          access_log_config: BucketAccessLogConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Bucket.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['accessRules'] = AccessRules.stub(stub[:access_rules]) unless stub[:access_rules].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['objectVersioning'] = stub[:object_versioning] unless stub[:object_versioning].nil?
        data['ableToUpdateBundle'] = stub[:able_to_update_bundle] unless stub[:able_to_update_bundle].nil?
        data['readonlyAccessAccounts'] = PartnerIdList.stub(stub[:readonly_access_accounts]) unless stub[:readonly_access_accounts].nil?
        data['resourcesReceivingAccess'] = AccessReceiverList.stub(stub[:resources_receiving_access]) unless stub[:resources_receiving_access].nil?
        data['state'] = BucketState.stub(stub[:state]) unless stub[:state].nil?
        data['accessLogConfig'] = BucketAccessLogConfig.stub(stub[:access_log_config]) unless stub[:access_log_config].nil?
        data
      end
    end

    # Structure Stubber for BucketAccessLogConfig
    class BucketAccessLogConfig
      def self.default(visited=[])
        return nil if visited.include?('BucketAccessLogConfig')
        visited = visited + ['BucketAccessLogConfig']
        {
          enabled: false,
          destination: 'destination',
          prefix: 'prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketAccessLogConfig.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data
      end
    end

    # Structure Stubber for BucketState
    class BucketState
      def self.default(visited=[])
        return nil if visited.include?('BucketState')
        visited = visited + ['BucketState']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketState.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for AccessReceiverList
    class AccessReceiverList
      def self.default(visited=[])
        return nil if visited.include?('AccessReceiverList')
        visited = visited + ['AccessReceiverList']
        [
          ResourceReceivingAccess.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceReceivingAccess.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceReceivingAccess
    class ResourceReceivingAccess
      def self.default(visited=[])
        return nil if visited.include?('ResourceReceivingAccess')
        visited = visited + ['ResourceReceivingAccess']
        {
          name: 'name',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceReceivingAccess.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # List Stubber for PartnerIdList
    class PartnerIdList
      def self.default(visited=[])
        return nil if visited.include?('PartnerIdList')
        visited = visited + ['PartnerIdList']
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

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AccessRules
    class AccessRules
      def self.default(visited=[])
        return nil if visited.include?('AccessRules')
        visited = visited + ['AccessRules']
        {
          get_object: 'get_object',
          allow_public_overrides: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessRules.new
        data = {}
        data['getObject'] = stub[:get_object] unless stub[:get_object].nil?
        data['allowPublicOverrides'] = stub[:allow_public_overrides] unless stub[:allow_public_overrides].nil?
        data
      end
    end

    # Operation Stubber for CreateBucketAccessKey
    class CreateBucketAccessKey
      def self.default(visited=[])
        {
          access_key: AccessKey.default(visited),
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accessKey'] = AccessKey.stub(stub[:access_key]) unless stub[:access_key].nil?
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccessKey
    class AccessKey
      def self.default(visited=[])
        return nil if visited.include?('AccessKey')
        visited = visited + ['AccessKey']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          status: 'status',
          created_at: Time.now,
          last_used: AccessKeyLastUsed.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessKey.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['secretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUsed'] = AccessKeyLastUsed.stub(stub[:last_used]) unless stub[:last_used].nil?
        data
      end
    end

    # Structure Stubber for AccessKeyLastUsed
    class AccessKeyLastUsed
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyLastUsed')
        visited = visited + ['AccessKeyLastUsed']
        {
          last_used_date: Time.now,
          region: 'region',
          service_name: 'service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessKeyLastUsed.new
        data = {}
        data['lastUsedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_used_date]).to_i unless stub[:last_used_date].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data
      end
    end

    # Operation Stubber for CreateCertificate
    class CreateCertificate
      def self.default(visited=[])
        {
          certificate: CertificateSummary.default(visited),
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['certificate'] = CertificateSummary.stub(stub[:certificate]) unless stub[:certificate].nil?
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CertificateSummary
    class CertificateSummary
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummary')
        visited = visited + ['CertificateSummary']
        {
          certificate_arn: 'certificate_arn',
          certificate_name: 'certificate_name',
          domain_name: 'domain_name',
          certificate_detail: Certificate.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateSummary.new
        data = {}
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['certificateDetail'] = Certificate.stub(stub[:certificate_detail]) unless stub[:certificate_detail].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          arn: 'arn',
          name: 'name',
          domain_name: 'domain_name',
          status: 'status',
          serial_number: 'serial_number',
          subject_alternative_names: SubjectAlternativeNameList.default(visited),
          domain_validation_records: DomainValidationRecordList.default(visited),
          request_failure_reason: 'request_failure_reason',
          in_use_resource_count: 1,
          key_algorithm: 'key_algorithm',
          created_at: Time.now,
          issued_at: Time.now,
          issuer_ca: 'issuer_ca',
          not_before: Time.now,
          not_after: Time.now,
          eligible_to_renew: 'eligible_to_renew',
          renewal_summary: RenewalSummary.default(visited),
          revoked_at: Time.now,
          revocation_reason: 'revocation_reason',
          tags: TagList.default(visited),
          support_code: 'support_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['serialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['subjectAlternativeNames'] = SubjectAlternativeNameList.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data['domainValidationRecords'] = DomainValidationRecordList.stub(stub[:domain_validation_records]) unless stub[:domain_validation_records].nil?
        data['requestFailureReason'] = stub[:request_failure_reason] unless stub[:request_failure_reason].nil?
        data['inUseResourceCount'] = stub[:in_use_resource_count] unless stub[:in_use_resource_count].nil?
        data['keyAlgorithm'] = stub[:key_algorithm] unless stub[:key_algorithm].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['issuedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:issued_at]).to_i unless stub[:issued_at].nil?
        data['issuerCA'] = stub[:issuer_ca] unless stub[:issuer_ca].nil?
        data['notBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_before]).to_i unless stub[:not_before].nil?
        data['notAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_after]).to_i unless stub[:not_after].nil?
        data['eligibleToRenew'] = stub[:eligible_to_renew] unless stub[:eligible_to_renew].nil?
        data['renewalSummary'] = RenewalSummary.stub(stub[:renewal_summary]) unless stub[:renewal_summary].nil?
        data['revokedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revoked_at]).to_i unless stub[:revoked_at].nil?
        data['revocationReason'] = stub[:revocation_reason] unless stub[:revocation_reason].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data
      end
    end

    # Structure Stubber for RenewalSummary
    class RenewalSummary
      def self.default(visited=[])
        return nil if visited.include?('RenewalSummary')
        visited = visited + ['RenewalSummary']
        {
          domain_validation_records: DomainValidationRecordList.default(visited),
          renewal_status: 'renewal_status',
          renewal_status_reason: 'renewal_status_reason',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RenewalSummary.new
        data = {}
        data['domainValidationRecords'] = DomainValidationRecordList.stub(stub[:domain_validation_records]) unless stub[:domain_validation_records].nil?
        data['renewalStatus'] = stub[:renewal_status] unless stub[:renewal_status].nil?
        data['renewalStatusReason'] = stub[:renewal_status_reason] unless stub[:renewal_status_reason].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # List Stubber for DomainValidationRecordList
    class DomainValidationRecordList
      def self.default(visited=[])
        return nil if visited.include?('DomainValidationRecordList')
        visited = visited + ['DomainValidationRecordList']
        [
          DomainValidationRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainValidationRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainValidationRecord
    class DomainValidationRecord
      def self.default(visited=[])
        return nil if visited.include?('DomainValidationRecord')
        visited = visited + ['DomainValidationRecord']
        {
          domain_name: 'domain_name',
          resource_record: ResourceRecord.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainValidationRecord.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['resourceRecord'] = ResourceRecord.stub(stub[:resource_record]) unless stub[:resource_record].nil?
        data
      end
    end

    # Structure Stubber for ResourceRecord
    class ResourceRecord
      def self.default(visited=[])
        return nil if visited.include?('ResourceRecord')
        visited = visited + ['ResourceRecord']
        {
          name: 'name',
          type: 'type',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceRecord.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for SubjectAlternativeNameList
    class SubjectAlternativeNameList
      def self.default(visited=[])
        return nil if visited.include?('SubjectAlternativeNameList')
        visited = visited + ['SubjectAlternativeNameList']
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

    # Operation Stubber for CreateCloudFormationStack
    class CreateCloudFormationStack
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContactMethod
    class CreateContactMethod
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContainerService
    class CreateContainerService
      def self.default(visited=[])
        {
          container_service: ContainerService.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerService'] = ContainerService.stub(stub[:container_service]) unless stub[:container_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContainerService
    class ContainerService
      def self.default(visited=[])
        return nil if visited.include?('ContainerService')
        visited = visited + ['ContainerService']
        {
          container_service_name: 'container_service_name',
          arn: 'arn',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          power: 'power',
          power_id: 'power_id',
          state: 'state',
          state_detail: ContainerServiceStateDetail.default(visited),
          scale: 1,
          current_deployment: ContainerServiceDeployment.default(visited),
          next_deployment: ContainerServiceDeployment.default(visited),
          is_disabled: false,
          principal_arn: 'principal_arn',
          private_domain_name: 'private_domain_name',
          public_domain_names: ContainerServicePublicDomains.default(visited),
          url: 'url',
          private_registry_access: PrivateRegistryAccess.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerService.new
        data = {}
        data['containerServiceName'] = stub[:container_service_name] unless stub[:container_service_name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['power'] = stub[:power] unless stub[:power].nil?
        data['powerId'] = stub[:power_id] unless stub[:power_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['stateDetail'] = ContainerServiceStateDetail.stub(stub[:state_detail]) unless stub[:state_detail].nil?
        data['scale'] = stub[:scale] unless stub[:scale].nil?
        data['currentDeployment'] = ContainerServiceDeployment.stub(stub[:current_deployment]) unless stub[:current_deployment].nil?
        data['nextDeployment'] = ContainerServiceDeployment.stub(stub[:next_deployment]) unless stub[:next_deployment].nil?
        data['isDisabled'] = stub[:is_disabled] unless stub[:is_disabled].nil?
        data['principalArn'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data['privateDomainName'] = stub[:private_domain_name] unless stub[:private_domain_name].nil?
        data['publicDomainNames'] = ContainerServicePublicDomains.stub(stub[:public_domain_names]) unless stub[:public_domain_names].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['privateRegistryAccess'] = PrivateRegistryAccess.stub(stub[:private_registry_access]) unless stub[:private_registry_access].nil?
        data
      end
    end

    # Structure Stubber for PrivateRegistryAccess
    class PrivateRegistryAccess
      def self.default(visited=[])
        return nil if visited.include?('PrivateRegistryAccess')
        visited = visited + ['PrivateRegistryAccess']
        {
          ecr_image_puller_role: ContainerServiceECRImagePullerRole.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrivateRegistryAccess.new
        data = {}
        data['ecrImagePullerRole'] = ContainerServiceECRImagePullerRole.stub(stub[:ecr_image_puller_role]) unless stub[:ecr_image_puller_role].nil?
        data
      end
    end

    # Structure Stubber for ContainerServiceECRImagePullerRole
    class ContainerServiceECRImagePullerRole
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceECRImagePullerRole')
        visited = visited + ['ContainerServiceECRImagePullerRole']
        {
          is_active: false,
          principal_arn: 'principal_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceECRImagePullerRole.new
        data = {}
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data['principalArn'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data
      end
    end

    # Map Stubber for ContainerServicePublicDomains
    class ContainerServicePublicDomains
      def self.default(visited=[])
        return nil if visited.include?('ContainerServicePublicDomains')
        visited = visited + ['ContainerServicePublicDomains']
        {
          test_key: ContainerServicePublicDomainsList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ContainerServicePublicDomainsList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ContainerServicePublicDomainsList
    class ContainerServicePublicDomainsList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServicePublicDomainsList')
        visited = visited + ['ContainerServicePublicDomainsList']
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

    # Structure Stubber for ContainerServiceDeployment
    class ContainerServiceDeployment
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceDeployment')
        visited = visited + ['ContainerServiceDeployment']
        {
          version: 1,
          state: 'state',
          containers: ContainerMap.default(visited),
          public_endpoint: ContainerServiceEndpoint.default(visited),
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceDeployment.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['containers'] = ContainerMap.stub(stub[:containers]) unless stub[:containers].nil?
        data['publicEndpoint'] = ContainerServiceEndpoint.stub(stub[:public_endpoint]) unless stub[:public_endpoint].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Structure Stubber for ContainerServiceEndpoint
    class ContainerServiceEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceEndpoint')
        visited = visited + ['ContainerServiceEndpoint']
        {
          container_name: 'container_name',
          container_port: 1,
          health_check: ContainerServiceHealthCheckConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceEndpoint.new
        data = {}
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['containerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['healthCheck'] = ContainerServiceHealthCheckConfig.stub(stub[:health_check]) unless stub[:health_check].nil?
        data
      end
    end

    # Structure Stubber for ContainerServiceHealthCheckConfig
    class ContainerServiceHealthCheckConfig
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceHealthCheckConfig')
        visited = visited + ['ContainerServiceHealthCheckConfig']
        {
          healthy_threshold: 1,
          unhealthy_threshold: 1,
          timeout_seconds: 1,
          interval_seconds: 1,
          path: 'path',
          success_codes: 'success_codes',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceHealthCheckConfig.new
        data = {}
        data['healthyThreshold'] = stub[:healthy_threshold] unless stub[:healthy_threshold].nil?
        data['unhealthyThreshold'] = stub[:unhealthy_threshold] unless stub[:unhealthy_threshold].nil?
        data['timeoutSeconds'] = stub[:timeout_seconds] unless stub[:timeout_seconds].nil?
        data['intervalSeconds'] = stub[:interval_seconds] unless stub[:interval_seconds].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['successCodes'] = stub[:success_codes] unless stub[:success_codes].nil?
        data
      end
    end

    # Map Stubber for ContainerMap
    class ContainerMap
      def self.default(visited=[])
        return nil if visited.include?('ContainerMap')
        visited = visited + ['ContainerMap']
        {
          test_key: Container.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Container.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Container
    class Container
      def self.default(visited=[])
        return nil if visited.include?('Container')
        visited = visited + ['Container']
        {
          image: 'image',
          command: StringList.default(visited),
          environment: Environment.default(visited),
          ports: PortMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Container.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['command'] = StringList.stub(stub[:command]) unless stub[:command].nil?
        data['environment'] = Environment.stub(stub[:environment]) unless stub[:environment].nil?
        data['ports'] = PortMap.stub(stub[:ports]) unless stub[:ports].nil?
        data
      end
    end

    # Map Stubber for PortMap
    class PortMap
      def self.default(visited=[])
        return nil if visited.include?('PortMap')
        visited = visited + ['PortMap']
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

    # Map Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
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

    # Structure Stubber for ContainerServiceStateDetail
    class ContainerServiceStateDetail
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceStateDetail')
        visited = visited + ['ContainerServiceStateDetail']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceStateDetail.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateContainerServiceDeployment
    class CreateContainerServiceDeployment
      def self.default(visited=[])
        {
          container_service: ContainerService.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerService'] = ContainerService.stub(stub[:container_service]) unless stub[:container_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateContainerServiceRegistryLogin
    class CreateContainerServiceRegistryLogin
      def self.default(visited=[])
        {
          registry_login: ContainerServiceRegistryLogin.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['registryLogin'] = ContainerServiceRegistryLogin.stub(stub[:registry_login]) unless stub[:registry_login].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContainerServiceRegistryLogin
    class ContainerServiceRegistryLogin
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceRegistryLogin')
        visited = visited + ['ContainerServiceRegistryLogin']
        {
          username: 'username',
          password: 'password',
          expires_at: Time.now,
          registry: 'registry',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceRegistryLogin.new
        data = {}
        data['username'] = stub[:username] unless stub[:username].nil?
        data['password'] = stub[:password] unless stub[:password].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_at]).to_i unless stub[:expires_at].nil?
        data['registry'] = stub[:registry] unless stub[:registry].nil?
        data
      end
    end

    # Operation Stubber for CreateDisk
    class CreateDisk
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDiskFromSnapshot
    class CreateDiskFromSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDiskSnapshot
    class CreateDiskSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDistribution
    class CreateDistribution
      def self.default(visited=[])
        {
          distribution: LightsailDistribution.default(visited),
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['distribution'] = LightsailDistribution.stub(stub[:distribution]) unless stub[:distribution].nil?
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LightsailDistribution
    class LightsailDistribution
      def self.default(visited=[])
        return nil if visited.include?('LightsailDistribution')
        visited = visited + ['LightsailDistribution']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          alternative_domain_names: StringList.default(visited),
          status: 'status',
          is_enabled: false,
          domain_name: 'domain_name',
          bundle_id: 'bundle_id',
          certificate_name: 'certificate_name',
          origin: Origin.default(visited),
          origin_public_dns: 'origin_public_dns',
          default_cache_behavior: CacheBehavior.default(visited),
          cache_behavior_settings: CacheSettings.default(visited),
          cache_behaviors: CacheBehaviorList.default(visited),
          able_to_update_bundle: false,
          ip_address_type: 'ip_address_type',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LightsailDistribution.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['alternativeDomainNames'] = StringList.stub(stub[:alternative_domain_names]) unless stub[:alternative_domain_names].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['isEnabled'] = stub[:is_enabled] unless stub[:is_enabled].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['origin'] = Origin.stub(stub[:origin]) unless stub[:origin].nil?
        data['originPublicDNS'] = stub[:origin_public_dns] unless stub[:origin_public_dns].nil?
        data['defaultCacheBehavior'] = CacheBehavior.stub(stub[:default_cache_behavior]) unless stub[:default_cache_behavior].nil?
        data['cacheBehaviorSettings'] = CacheSettings.stub(stub[:cache_behavior_settings]) unless stub[:cache_behavior_settings].nil?
        data['cacheBehaviors'] = CacheBehaviorList.stub(stub[:cache_behaviors]) unless stub[:cache_behaviors].nil?
        data['ableToUpdateBundle'] = stub[:able_to_update_bundle] unless stub[:able_to_update_bundle].nil?
        data['ipAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for CacheBehaviorList
    class CacheBehaviorList
      def self.default(visited=[])
        return nil if visited.include?('CacheBehaviorList')
        visited = visited + ['CacheBehaviorList']
        [
          CacheBehaviorPerPath.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CacheBehaviorPerPath.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CacheBehaviorPerPath
    class CacheBehaviorPerPath
      def self.default(visited=[])
        return nil if visited.include?('CacheBehaviorPerPath')
        visited = visited + ['CacheBehaviorPerPath']
        {
          path: 'path',
          behavior: 'behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::CacheBehaviorPerPath.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data['behavior'] = stub[:behavior] unless stub[:behavior].nil?
        data
      end
    end

    # Structure Stubber for CacheSettings
    class CacheSettings
      def self.default(visited=[])
        return nil if visited.include?('CacheSettings')
        visited = visited + ['CacheSettings']
        {
          default_ttl: 1,
          minimum_ttl: 1,
          maximum_ttl: 1,
          allowed_http_methods: 'allowed_http_methods',
          cached_http_methods: 'cached_http_methods',
          forwarded_cookies: CookieObject.default(visited),
          forwarded_headers: HeaderObject.default(visited),
          forwarded_query_strings: QueryStringObject.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CacheSettings.new
        data = {}
        data['defaultTTL'] = stub[:default_ttl] unless stub[:default_ttl].nil?
        data['minimumTTL'] = stub[:minimum_ttl] unless stub[:minimum_ttl].nil?
        data['maximumTTL'] = stub[:maximum_ttl] unless stub[:maximum_ttl].nil?
        data['allowedHTTPMethods'] = stub[:allowed_http_methods] unless stub[:allowed_http_methods].nil?
        data['cachedHTTPMethods'] = stub[:cached_http_methods] unless stub[:cached_http_methods].nil?
        data['forwardedCookies'] = CookieObject.stub(stub[:forwarded_cookies]) unless stub[:forwarded_cookies].nil?
        data['forwardedHeaders'] = HeaderObject.stub(stub[:forwarded_headers]) unless stub[:forwarded_headers].nil?
        data['forwardedQueryStrings'] = QueryStringObject.stub(stub[:forwarded_query_strings]) unless stub[:forwarded_query_strings].nil?
        data
      end
    end

    # Structure Stubber for QueryStringObject
    class QueryStringObject
      def self.default(visited=[])
        return nil if visited.include?('QueryStringObject')
        visited = visited + ['QueryStringObject']
        {
          option: false,
          query_strings_allow_list: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryStringObject.new
        data = {}
        data['option'] = stub[:option] unless stub[:option].nil?
        data['queryStringsAllowList'] = StringList.stub(stub[:query_strings_allow_list]) unless stub[:query_strings_allow_list].nil?
        data
      end
    end

    # Structure Stubber for HeaderObject
    class HeaderObject
      def self.default(visited=[])
        return nil if visited.include?('HeaderObject')
        visited = visited + ['HeaderObject']
        {
          option: 'option',
          headers_allow_list: HeaderForwardList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HeaderObject.new
        data = {}
        data['option'] = stub[:option] unless stub[:option].nil?
        data['headersAllowList'] = HeaderForwardList.stub(stub[:headers_allow_list]) unless stub[:headers_allow_list].nil?
        data
      end
    end

    # List Stubber for HeaderForwardList
    class HeaderForwardList
      def self.default(visited=[])
        return nil if visited.include?('HeaderForwardList')
        visited = visited + ['HeaderForwardList']
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

    # Structure Stubber for CookieObject
    class CookieObject
      def self.default(visited=[])
        return nil if visited.include?('CookieObject')
        visited = visited + ['CookieObject']
        {
          option: 'option',
          cookies_allow_list: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CookieObject.new
        data = {}
        data['option'] = stub[:option] unless stub[:option].nil?
        data['cookiesAllowList'] = StringList.stub(stub[:cookies_allow_list]) unless stub[:cookies_allow_list].nil?
        data
      end
    end

    # Structure Stubber for CacheBehavior
    class CacheBehavior
      def self.default(visited=[])
        return nil if visited.include?('CacheBehavior')
        visited = visited + ['CacheBehavior']
        {
          behavior: 'behavior',
        }
      end

      def self.stub(stub)
        stub ||= Types::CacheBehavior.new
        data = {}
        data['behavior'] = stub[:behavior] unless stub[:behavior].nil?
        data
      end
    end

    # Structure Stubber for Origin
    class Origin
      def self.default(visited=[])
        return nil if visited.include?('Origin')
        visited = visited + ['Origin']
        {
          name: 'name',
          resource_type: 'resource_type',
          region_name: 'region_name',
          protocol_policy: 'protocol_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::Origin.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['regionName'] = stub[:region_name] unless stub[:region_name].nil?
        data['protocolPolicy'] = stub[:protocol_policy] unless stub[:protocol_policy].nil?
        data
      end
    end

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDomainEntry
    class CreateDomainEntry
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInstanceSnapshot
    class CreateInstanceSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInstances
    class CreateInstances
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateInstancesFromSnapshot
    class CreateInstancesFromSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateKeyPair
    class CreateKeyPair
      def self.default(visited=[])
        {
          key_pair: KeyPair.default(visited),
          public_key_base64: 'public_key_base64',
          private_key_base64: 'private_key_base64',
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['keyPair'] = KeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        data['publicKeyBase64'] = stub[:public_key_base64] unless stub[:public_key_base64].nil?
        data['privateKeyBase64'] = stub[:private_key_base64] unless stub[:private_key_base64].nil?
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KeyPair
    class KeyPair
      def self.default(visited=[])
        return nil if visited.include?('KeyPair')
        visited = visited + ['KeyPair']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          fingerprint: 'fingerprint',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyPair.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['fingerprint'] = stub[:fingerprint] unless stub[:fingerprint].nil?
        data
      end
    end

    # Operation Stubber for CreateLoadBalancer
    class CreateLoadBalancer
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLoadBalancerTlsCertificate
    class CreateLoadBalancerTlsCertificate
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRelationalDatabase
    class CreateRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRelationalDatabaseFromSnapshot
    class CreateRelationalDatabaseFromSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRelationalDatabaseSnapshot
    class CreateRelationalDatabaseSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAlarm
    class DeleteAlarm
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAutoSnapshot
    class DeleteAutoSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucket
    class DeleteBucket
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBucketAccessKey
    class DeleteBucketAccessKey
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCertificate
    class DeleteCertificate
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContactMethod
    class DeleteContactMethod
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContainerImage
    class DeleteContainerImage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteContainerService
    class DeleteContainerService
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDisk
    class DeleteDisk
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDiskSnapshot
    class DeleteDiskSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDistribution
    class DeleteDistribution
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomainEntry
    class DeleteDomainEntry
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstance
    class DeleteInstance
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstanceSnapshot
    class DeleteInstanceSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteKeyPair
    class DeleteKeyPair
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteKnownHostKeys
    class DeleteKnownHostKeys
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancer
    class DeleteLoadBalancer
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoadBalancerTlsCertificate
    class DeleteLoadBalancerTlsCertificate
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRelationalDatabase
    class DeleteRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRelationalDatabaseSnapshot
    class DeleteRelationalDatabaseSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachCertificateFromDistribution
    class DetachCertificateFromDistribution
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachDisk
    class DetachDisk
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachInstancesFromLoadBalancer
    class DetachInstancesFromLoadBalancer
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachStaticIp
    class DetachStaticIp
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableAddOn
    class DisableAddOn
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DownloadDefaultKeyPair
    class DownloadDefaultKeyPair
      def self.default(visited=[])
        {
          public_key_base64: 'public_key_base64',
          private_key_base64: 'private_key_base64',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['publicKeyBase64'] = stub[:public_key_base64] unless stub[:public_key_base64].nil?
        data['privateKeyBase64'] = stub[:private_key_base64] unless stub[:private_key_base64].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableAddOn
    class EnableAddOn
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportSnapshot
    class ExportSnapshot
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetActiveNames
    class GetActiveNames
      def self.default(visited=[])
        {
          active_names: StringList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['activeNames'] = StringList.stub(stub[:active_names]) unless stub[:active_names].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAlarms
    class GetAlarms
      def self.default(visited=[])
        {
          alarms: AlarmsList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['alarms'] = AlarmsList.stub(stub[:alarms]) unless stub[:alarms].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AlarmsList
    class AlarmsList
      def self.default(visited=[])
        return nil if visited.include?('AlarmsList')
        visited = visited + ['AlarmsList']
        [
          Alarm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alarm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          support_code: 'support_code',
          monitored_resource_info: MonitoredResourceInfo.default(visited),
          comparison_operator: 'comparison_operator',
          evaluation_periods: 1,
          period: 1,
          threshold: 1.0,
          datapoints_to_alarm: 1,
          treat_missing_data: 'treat_missing_data',
          statistic: 'statistic',
          metric_name: 'metric_name',
          state: 'state',
          unit: 'unit',
          contact_protocols: ContactProtocolsList.default(visited),
          notification_triggers: NotificationTriggerList.default(visited),
          notification_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarm.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['monitoredResourceInfo'] = MonitoredResourceInfo.stub(stub[:monitored_resource_info]) unless stub[:monitored_resource_info].nil?
        data['comparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['evaluationPeriods'] = stub[:evaluation_periods] unless stub[:evaluation_periods].nil?
        data['period'] = stub[:period] unless stub[:period].nil?
        data['threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data['datapointsToAlarm'] = stub[:datapoints_to_alarm] unless stub[:datapoints_to_alarm].nil?
        data['treatMissingData'] = stub[:treat_missing_data] unless stub[:treat_missing_data].nil?
        data['statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['contactProtocols'] = ContactProtocolsList.stub(stub[:contact_protocols]) unless stub[:contact_protocols].nil?
        data['notificationTriggers'] = NotificationTriggerList.stub(stub[:notification_triggers]) unless stub[:notification_triggers].nil?
        data['notificationEnabled'] = stub[:notification_enabled] unless stub[:notification_enabled].nil?
        data
      end
    end

    # List Stubber for NotificationTriggerList
    class NotificationTriggerList
      def self.default(visited=[])
        return nil if visited.include?('NotificationTriggerList')
        visited = visited + ['NotificationTriggerList']
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

    # List Stubber for ContactProtocolsList
    class ContactProtocolsList
      def self.default(visited=[])
        return nil if visited.include?('ContactProtocolsList')
        visited = visited + ['ContactProtocolsList']
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

    # Structure Stubber for MonitoredResourceInfo
    class MonitoredResourceInfo
      def self.default(visited=[])
        return nil if visited.include?('MonitoredResourceInfo')
        visited = visited + ['MonitoredResourceInfo']
        {
          arn: 'arn',
          name: 'name',
          resource_type: 'resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitoredResourceInfo.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data
      end
    end

    # Operation Stubber for GetAutoSnapshots
    class GetAutoSnapshots
      def self.default(visited=[])
        {
          resource_name: 'resource_name',
          resource_type: 'resource_type',
          auto_snapshots: AutoSnapshotDetailsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['autoSnapshots'] = AutoSnapshotDetailsList.stub(stub[:auto_snapshots]) unless stub[:auto_snapshots].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AutoSnapshotDetailsList
    class AutoSnapshotDetailsList
      def self.default(visited=[])
        return nil if visited.include?('AutoSnapshotDetailsList')
        visited = visited + ['AutoSnapshotDetailsList']
        [
          AutoSnapshotDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AutoSnapshotDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoSnapshotDetails
    class AutoSnapshotDetails
      def self.default(visited=[])
        return nil if visited.include?('AutoSnapshotDetails')
        visited = visited + ['AutoSnapshotDetails']
        {
          date: 'date',
          created_at: Time.now,
          status: 'status',
          from_attached_disks: AttachedDiskList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoSnapshotDetails.new
        data = {}
        data['date'] = stub[:date] unless stub[:date].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['fromAttachedDisks'] = AttachedDiskList.stub(stub[:from_attached_disks]) unless stub[:from_attached_disks].nil?
        data
      end
    end

    # List Stubber for AttachedDiskList
    class AttachedDiskList
      def self.default(visited=[])
        return nil if visited.include?('AttachedDiskList')
        visited = visited + ['AttachedDiskList']
        [
          AttachedDisk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttachedDisk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachedDisk
    class AttachedDisk
      def self.default(visited=[])
        return nil if visited.include?('AttachedDisk')
        visited = visited + ['AttachedDisk']
        {
          path: 'path',
          size_in_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachedDisk.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data
      end
    end

    # Operation Stubber for GetBlueprints
    class GetBlueprints
      def self.default(visited=[])
        {
          blueprints: BlueprintList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['blueprints'] = BlueprintList.stub(stub[:blueprints]) unless stub[:blueprints].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BlueprintList
    class BlueprintList
      def self.default(visited=[])
        return nil if visited.include?('BlueprintList')
        visited = visited + ['BlueprintList']
        [
          Blueprint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Blueprint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Blueprint
    class Blueprint
      def self.default(visited=[])
        return nil if visited.include?('Blueprint')
        visited = visited + ['Blueprint']
        {
          blueprint_id: 'blueprint_id',
          name: 'name',
          group: 'group',
          type: 'type',
          description: 'description',
          is_active: false,
          min_power: 1,
          version: 'version',
          version_code: 'version_code',
          product_url: 'product_url',
          license_url: 'license_url',
          platform: 'platform',
        }
      end

      def self.stub(stub)
        stub ||= Types::Blueprint.new
        data = {}
        data['blueprintId'] = stub[:blueprint_id] unless stub[:blueprint_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['group'] = stub[:group] unless stub[:group].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data['minPower'] = stub[:min_power] unless stub[:min_power].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['versionCode'] = stub[:version_code] unless stub[:version_code].nil?
        data['productUrl'] = stub[:product_url] unless stub[:product_url].nil?
        data['licenseUrl'] = stub[:license_url] unless stub[:license_url].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data
      end
    end

    # Operation Stubber for GetBucketAccessKeys
    class GetBucketAccessKeys
      def self.default(visited=[])
        {
          access_keys: AccessKeyList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accessKeys'] = AccessKeyList.stub(stub[:access_keys]) unless stub[:access_keys].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccessKeyList
    class AccessKeyList
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyList')
        visited = visited + ['AccessKeyList']
        [
          AccessKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccessKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetBucketBundles
    class GetBucketBundles
      def self.default(visited=[])
        {
          bundles: BucketBundleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bundles'] = BucketBundleList.stub(stub[:bundles]) unless stub[:bundles].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BucketBundleList
    class BucketBundleList
      def self.default(visited=[])
        return nil if visited.include?('BucketBundleList')
        visited = visited + ['BucketBundleList']
        [
          BucketBundle.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BucketBundle.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BucketBundle
    class BucketBundle
      def self.default(visited=[])
        return nil if visited.include?('BucketBundle')
        visited = visited + ['BucketBundle']
        {
          bundle_id: 'bundle_id',
          name: 'name',
          price: 1.0,
          storage_per_month_in_gb: 1,
          transfer_per_month_in_gb: 1,
          is_active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BucketBundle.new
        data = {}
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['storagePerMonthInGb'] = stub[:storage_per_month_in_gb] unless stub[:storage_per_month_in_gb].nil?
        data['transferPerMonthInGb'] = stub[:transfer_per_month_in_gb] unless stub[:transfer_per_month_in_gb].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data
      end
    end

    # Operation Stubber for GetBucketMetricData
    class GetBucketMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetricDatapointList
    class MetricDatapointList
      def self.default(visited=[])
        return nil if visited.include?('MetricDatapointList')
        visited = visited + ['MetricDatapointList']
        [
          MetricDatapoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDatapoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDatapoint
    class MetricDatapoint
      def self.default(visited=[])
        return nil if visited.include?('MetricDatapoint')
        visited = visited + ['MetricDatapoint']
        {
          average: 1.0,
          maximum: 1.0,
          minimum: 1.0,
          sample_count: 1.0,
          sum: 1.0,
          timestamp: Time.now,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDatapoint.new
        data = {}
        data['average'] = Hearth::NumberHelper.serialize(stub[:average])
        data['maximum'] = Hearth::NumberHelper.serialize(stub[:maximum])
        data['minimum'] = Hearth::NumberHelper.serialize(stub[:minimum])
        data['sampleCount'] = Hearth::NumberHelper.serialize(stub[:sample_count])
        data['sum'] = Hearth::NumberHelper.serialize(stub[:sum])
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for GetBuckets
    class GetBuckets
      def self.default(visited=[])
        {
          buckets: BucketList.default(visited),
          next_page_token: 'next_page_token',
          account_level_bpa_sync: AccountLevelBpaSync.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buckets'] = BucketList.stub(stub[:buckets]) unless stub[:buckets].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        data['accountLevelBpaSync'] = AccountLevelBpaSync.stub(stub[:account_level_bpa_sync]) unless stub[:account_level_bpa_sync].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccountLevelBpaSync
    class AccountLevelBpaSync
      def self.default(visited=[])
        return nil if visited.include?('AccountLevelBpaSync')
        visited = visited + ['AccountLevelBpaSync']
        {
          status: 'status',
          last_synced_at: Time.now,
          message: 'message',
          bpa_impacts_lightsail: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountLevelBpaSync.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastSyncedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_synced_at]).to_i unless stub[:last_synced_at].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['bpaImpactsLightsail'] = stub[:bpa_impacts_lightsail] unless stub[:bpa_impacts_lightsail].nil?
        data
      end
    end

    # List Stubber for BucketList
    class BucketList
      def self.default(visited=[])
        return nil if visited.include?('BucketList')
        visited = visited + ['BucketList']
        [
          Bucket.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Bucket.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetBundles
    class GetBundles
      def self.default(visited=[])
        {
          bundles: BundleList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bundles'] = BundleList.stub(stub[:bundles]) unless stub[:bundles].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BundleList
    class BundleList
      def self.default(visited=[])
        return nil if visited.include?('BundleList')
        visited = visited + ['BundleList']
        [
          Bundle.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Bundle.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Bundle
    class Bundle
      def self.default(visited=[])
        return nil if visited.include?('Bundle')
        visited = visited + ['Bundle']
        {
          price: 1.0,
          cpu_count: 1,
          disk_size_in_gb: 1,
          bundle_id: 'bundle_id',
          instance_type: 'instance_type',
          is_active: false,
          name: 'name',
          power: 1,
          ram_size_in_gb: 1.0,
          transfer_per_month_in_gb: 1,
          supported_platforms: InstancePlatformList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Bundle.new
        data = {}
        data['price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['cpuCount'] = stub[:cpu_count] unless stub[:cpu_count].nil?
        data['diskSizeInGb'] = stub[:disk_size_in_gb] unless stub[:disk_size_in_gb].nil?
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['power'] = stub[:power] unless stub[:power].nil?
        data['ramSizeInGb'] = Hearth::NumberHelper.serialize(stub[:ram_size_in_gb])
        data['transferPerMonthInGb'] = stub[:transfer_per_month_in_gb] unless stub[:transfer_per_month_in_gb].nil?
        data['supportedPlatforms'] = InstancePlatformList.stub(stub[:supported_platforms]) unless stub[:supported_platforms].nil?
        data
      end
    end

    # List Stubber for InstancePlatformList
    class InstancePlatformList
      def self.default(visited=[])
        return nil if visited.include?('InstancePlatformList')
        visited = visited + ['InstancePlatformList']
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

    # Operation Stubber for GetCertificates
    class GetCertificates
      def self.default(visited=[])
        {
          certificates: CertificateSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['certificates'] = CertificateSummaryList.stub(stub[:certificates]) unless stub[:certificates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CertificateSummaryList
    class CertificateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummaryList')
        visited = visited + ['CertificateSummaryList']
        [
          CertificateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CertificateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetCloudFormationStackRecords
    class GetCloudFormationStackRecords
      def self.default(visited=[])
        {
          cloud_formation_stack_records: CloudFormationStackRecordList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cloudFormationStackRecords'] = CloudFormationStackRecordList.stub(stub[:cloud_formation_stack_records]) unless stub[:cloud_formation_stack_records].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CloudFormationStackRecordList
    class CloudFormationStackRecordList
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationStackRecordList')
        visited = visited + ['CloudFormationStackRecordList']
        [
          CloudFormationStackRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CloudFormationStackRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudFormationStackRecord
    class CloudFormationStackRecord
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationStackRecord')
        visited = visited + ['CloudFormationStackRecord']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          state: 'state',
          source_info: CloudFormationStackRecordSourceInfoList.default(visited),
          destination_info: DestinationInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationStackRecord.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['sourceInfo'] = CloudFormationStackRecordSourceInfoList.stub(stub[:source_info]) unless stub[:source_info].nil?
        data['destinationInfo'] = DestinationInfo.stub(stub[:destination_info]) unless stub[:destination_info].nil?
        data
      end
    end

    # Structure Stubber for DestinationInfo
    class DestinationInfo
      def self.default(visited=[])
        return nil if visited.include?('DestinationInfo')
        visited = visited + ['DestinationInfo']
        {
          id: 'id',
          service: 'service',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationInfo.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data
      end
    end

    # List Stubber for CloudFormationStackRecordSourceInfoList
    class CloudFormationStackRecordSourceInfoList
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationStackRecordSourceInfoList')
        visited = visited + ['CloudFormationStackRecordSourceInfoList']
        [
          CloudFormationStackRecordSourceInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CloudFormationStackRecordSourceInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudFormationStackRecordSourceInfo
    class CloudFormationStackRecordSourceInfo
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationStackRecordSourceInfo')
        visited = visited + ['CloudFormationStackRecordSourceInfo']
        {
          resource_type: 'resource_type',
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationStackRecordSourceInfo.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetContactMethods
    class GetContactMethods
      def self.default(visited=[])
        {
          contact_methods: ContactMethodsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['contactMethods'] = ContactMethodsList.stub(stub[:contact_methods]) unless stub[:contact_methods].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContactMethodsList
    class ContactMethodsList
      def self.default(visited=[])
        return nil if visited.include?('ContactMethodsList')
        visited = visited + ['ContactMethodsList']
        [
          ContactMethod.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContactMethod.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContactMethod
    class ContactMethod
      def self.default(visited=[])
        return nil if visited.include?('ContactMethod')
        visited = visited + ['ContactMethod']
        {
          contact_endpoint: 'contact_endpoint',
          status: 'status',
          protocol: 'protocol',
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          support_code: 'support_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContactMethod.new
        data = {}
        data['contactEndpoint'] = stub[:contact_endpoint] unless stub[:contact_endpoint].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data
      end
    end

    # Operation Stubber for GetContainerAPIMetadata
    class GetContainerAPIMetadata
      def self.default(visited=[])
        {
          metadata: ContainerServiceMetadataEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metadata'] = ContainerServiceMetadataEntryList.stub(stub[:metadata]) unless stub[:metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerServiceMetadataEntryList
    class ContainerServiceMetadataEntryList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceMetadataEntryList')
        visited = visited + ['ContainerServiceMetadataEntryList']
        [
          ContainerServiceMetadataEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerServiceMetadataEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for ContainerServiceMetadataEntry
    class ContainerServiceMetadataEntry
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceMetadataEntry')
        visited = visited + ['ContainerServiceMetadataEntry']
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

    # Operation Stubber for GetContainerImages
    class GetContainerImages
      def self.default(visited=[])
        {
          container_images: ContainerImageList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerImages'] = ContainerImageList.stub(stub[:container_images]) unless stub[:container_images].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerImageList
    class ContainerImageList
      def self.default(visited=[])
        return nil if visited.include?('ContainerImageList')
        visited = visited + ['ContainerImageList']
        [
          ContainerImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerImage
    class ContainerImage
      def self.default(visited=[])
        return nil if visited.include?('ContainerImage')
        visited = visited + ['ContainerImage']
        {
          image: 'image',
          digest: 'digest',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerImage.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['digest'] = stub[:digest] unless stub[:digest].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for GetContainerLog
    class GetContainerLog
      def self.default(visited=[])
        {
          log_events: ContainerServiceLogEventList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logEvents'] = ContainerServiceLogEventList.stub(stub[:log_events]) unless stub[:log_events].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerServiceLogEventList
    class ContainerServiceLogEventList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceLogEventList')
        visited = visited + ['ContainerServiceLogEventList']
        [
          ContainerServiceLogEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerServiceLogEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerServiceLogEvent
    class ContainerServiceLogEvent
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceLogEvent')
        visited = visited + ['ContainerServiceLogEvent']
        {
          created_at: Time.now,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServiceLogEvent.new
        data = {}
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for GetContainerServiceDeployments
    class GetContainerServiceDeployments
      def self.default(visited=[])
        {
          deployments: ContainerServiceDeploymentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deployments'] = ContainerServiceDeploymentList.stub(stub[:deployments]) unless stub[:deployments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerServiceDeploymentList
    class ContainerServiceDeploymentList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceDeploymentList')
        visited = visited + ['ContainerServiceDeploymentList']
        [
          ContainerServiceDeployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerServiceDeployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetContainerServiceMetricData
    class GetContainerServiceMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetContainerServicePowers
    class GetContainerServicePowers
      def self.default(visited=[])
        {
          powers: ContainerServicePowerList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['powers'] = ContainerServicePowerList.stub(stub[:powers]) unless stub[:powers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerServicePowerList
    class ContainerServicePowerList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServicePowerList')
        visited = visited + ['ContainerServicePowerList']
        [
          ContainerServicePower.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerServicePower.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerServicePower
    class ContainerServicePower
      def self.default(visited=[])
        return nil if visited.include?('ContainerServicePower')
        visited = visited + ['ContainerServicePower']
        {
          power_id: 'power_id',
          price: 1.0,
          cpu_count: 1.0,
          ram_size_in_gb: 1.0,
          name: 'name',
          is_active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerServicePower.new
        data = {}
        data['powerId'] = stub[:power_id] unless stub[:power_id].nil?
        data['price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['cpuCount'] = Hearth::NumberHelper.serialize(stub[:cpu_count])
        data['ramSizeInGb'] = Hearth::NumberHelper.serialize(stub[:ram_size_in_gb])
        data['name'] = stub[:name] unless stub[:name].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data
      end
    end

    # Operation Stubber for GetContainerServices
    class GetContainerServices
      def self.default(visited=[])
        {
          container_services: ContainerServiceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerServices'] = ContainerServiceList.stub(stub[:container_services]) unless stub[:container_services].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerServiceList
    class ContainerServiceList
      def self.default(visited=[])
        return nil if visited.include?('ContainerServiceList')
        visited = visited + ['ContainerServiceList']
        [
          ContainerService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContainerService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDisk
    class GetDisk
      def self.default(visited=[])
        {
          disk: Disk.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['disk'] = Disk.stub(stub[:disk]) unless stub[:disk].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Disk
    class Disk
      def self.default(visited=[])
        return nil if visited.include?('Disk')
        visited = visited + ['Disk']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          add_ons: AddOnList.default(visited),
          size_in_gb: 1,
          is_system_disk: false,
          iops: 1,
          path: 'path',
          state: 'state',
          attached_to: 'attached_to',
          is_attached: false,
          attachment_state: 'attachment_state',
          gb_in_use: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Disk.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['addOns'] = AddOnList.stub(stub[:add_ons]) unless stub[:add_ons].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data['isSystemDisk'] = stub[:is_system_disk] unless stub[:is_system_disk].nil?
        data['iops'] = stub[:iops] unless stub[:iops].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['attachedTo'] = stub[:attached_to] unless stub[:attached_to].nil?
        data['isAttached'] = stub[:is_attached] unless stub[:is_attached].nil?
        data['attachmentState'] = stub[:attachment_state] unless stub[:attachment_state].nil?
        data['gbInUse'] = stub[:gb_in_use] unless stub[:gb_in_use].nil?
        data
      end
    end

    # List Stubber for AddOnList
    class AddOnList
      def self.default(visited=[])
        return nil if visited.include?('AddOnList')
        visited = visited + ['AddOnList']
        [
          AddOn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AddOn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AddOn
    class AddOn
      def self.default(visited=[])
        return nil if visited.include?('AddOn')
        visited = visited + ['AddOn']
        {
          name: 'name',
          status: 'status',
          snapshot_time_of_day: 'snapshot_time_of_day',
          next_snapshot_time_of_day: 'next_snapshot_time_of_day',
        }
      end

      def self.stub(stub)
        stub ||= Types::AddOn.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['snapshotTimeOfDay'] = stub[:snapshot_time_of_day] unless stub[:snapshot_time_of_day].nil?
        data['nextSnapshotTimeOfDay'] = stub[:next_snapshot_time_of_day] unless stub[:next_snapshot_time_of_day].nil?
        data
      end
    end

    # Operation Stubber for GetDiskSnapshot
    class GetDiskSnapshot
      def self.default(visited=[])
        {
          disk_snapshot: DiskSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['diskSnapshot'] = DiskSnapshot.stub(stub[:disk_snapshot]) unless stub[:disk_snapshot].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DiskSnapshot
    class DiskSnapshot
      def self.default(visited=[])
        return nil if visited.include?('DiskSnapshot')
        visited = visited + ['DiskSnapshot']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          size_in_gb: 1,
          state: 'state',
          progress: 'progress',
          from_disk_name: 'from_disk_name',
          from_disk_arn: 'from_disk_arn',
          from_instance_name: 'from_instance_name',
          from_instance_arn: 'from_instance_arn',
          is_from_auto_snapshot: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DiskSnapshot.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['progress'] = stub[:progress] unless stub[:progress].nil?
        data['fromDiskName'] = stub[:from_disk_name] unless stub[:from_disk_name].nil?
        data['fromDiskArn'] = stub[:from_disk_arn] unless stub[:from_disk_arn].nil?
        data['fromInstanceName'] = stub[:from_instance_name] unless stub[:from_instance_name].nil?
        data['fromInstanceArn'] = stub[:from_instance_arn] unless stub[:from_instance_arn].nil?
        data['isFromAutoSnapshot'] = stub[:is_from_auto_snapshot] unless stub[:is_from_auto_snapshot].nil?
        data
      end
    end

    # Operation Stubber for GetDiskSnapshots
    class GetDiskSnapshots
      def self.default(visited=[])
        {
          disk_snapshots: DiskSnapshotList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['diskSnapshots'] = DiskSnapshotList.stub(stub[:disk_snapshots]) unless stub[:disk_snapshots].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DiskSnapshotList
    class DiskSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('DiskSnapshotList')
        visited = visited + ['DiskSnapshotList']
        [
          DiskSnapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DiskSnapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDisks
    class GetDisks
      def self.default(visited=[])
        {
          disks: DiskList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['disks'] = DiskList.stub(stub[:disks]) unless stub[:disks].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DiskList
    class DiskList
      def self.default(visited=[])
        return nil if visited.include?('DiskList')
        visited = visited + ['DiskList']
        [
          Disk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Disk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDistributionBundles
    class GetDistributionBundles
      def self.default(visited=[])
        {
          bundles: DistributionBundleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bundles'] = DistributionBundleList.stub(stub[:bundles]) unless stub[:bundles].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DistributionBundleList
    class DistributionBundleList
      def self.default(visited=[])
        return nil if visited.include?('DistributionBundleList')
        visited = visited + ['DistributionBundleList']
        [
          DistributionBundle.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DistributionBundle.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DistributionBundle
    class DistributionBundle
      def self.default(visited=[])
        return nil if visited.include?('DistributionBundle')
        visited = visited + ['DistributionBundle']
        {
          bundle_id: 'bundle_id',
          name: 'name',
          price: 1.0,
          transfer_per_month_in_gb: 1,
          is_active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DistributionBundle.new
        data = {}
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['transferPerMonthInGb'] = stub[:transfer_per_month_in_gb] unless stub[:transfer_per_month_in_gb].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data
      end
    end

    # Operation Stubber for GetDistributionLatestCacheReset
    class GetDistributionLatestCacheReset
      def self.default(visited=[])
        {
          status: 'status',
          create_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDistributionMetricData
    class GetDistributionMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDistributions
    class GetDistributions
      def self.default(visited=[])
        {
          distributions: DistributionList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['distributions'] = DistributionList.stub(stub[:distributions]) unless stub[:distributions].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DistributionList
    class DistributionList
      def self.default(visited=[])
        return nil if visited.include?('DistributionList')
        visited = visited + ['DistributionList']
        [
          LightsailDistribution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LightsailDistribution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDomain
    class GetDomain
      def self.default(visited=[])
        {
          domain: Domain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domain'] = Domain.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Domain
    class Domain
      def self.default(visited=[])
        return nil if visited.include?('Domain')
        visited = visited + ['Domain']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          domain_entries: DomainEntryList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Domain.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['domainEntries'] = DomainEntryList.stub(stub[:domain_entries]) unless stub[:domain_entries].nil?
        data
      end
    end

    # List Stubber for DomainEntryList
    class DomainEntryList
      def self.default(visited=[])
        return nil if visited.include?('DomainEntryList')
        visited = visited + ['DomainEntryList']
        [
          DomainEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainEntry
    class DomainEntry
      def self.default(visited=[])
        return nil if visited.include?('DomainEntry')
        visited = visited + ['DomainEntry']
        {
          id: 'id',
          name: 'name',
          target: 'target',
          is_alias: false,
          type: 'type',
          options: DomainEntryOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainEntry.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['isAlias'] = stub[:is_alias] unless stub[:is_alias].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['options'] = DomainEntryOptions.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # Map Stubber for DomainEntryOptions
    class DomainEntryOptions
      def self.default(visited=[])
        return nil if visited.include?('DomainEntryOptions')
        visited = visited + ['DomainEntryOptions']
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

    # Operation Stubber for GetDomains
    class GetDomains
      def self.default(visited=[])
        {
          domains: DomainList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['domains'] = DomainList.stub(stub[:domains]) unless stub[:domains].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainList
    class DomainList
      def self.default(visited=[])
        return nil if visited.include?('DomainList')
        visited = visited + ['DomainList']
        [
          Domain.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Domain.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetExportSnapshotRecords
    class GetExportSnapshotRecords
      def self.default(visited=[])
        {
          export_snapshot_records: ExportSnapshotRecordList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportSnapshotRecords'] = ExportSnapshotRecordList.stub(stub[:export_snapshot_records]) unless stub[:export_snapshot_records].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExportSnapshotRecordList
    class ExportSnapshotRecordList
      def self.default(visited=[])
        return nil if visited.include?('ExportSnapshotRecordList')
        visited = visited + ['ExportSnapshotRecordList']
        [
          ExportSnapshotRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExportSnapshotRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExportSnapshotRecord
    class ExportSnapshotRecord
      def self.default(visited=[])
        return nil if visited.include?('ExportSnapshotRecord')
        visited = visited + ['ExportSnapshotRecord']
        {
          name: 'name',
          arn: 'arn',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          state: 'state',
          source_info: ExportSnapshotRecordSourceInfo.default(visited),
          destination_info: DestinationInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportSnapshotRecord.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['sourceInfo'] = ExportSnapshotRecordSourceInfo.stub(stub[:source_info]) unless stub[:source_info].nil?
        data['destinationInfo'] = DestinationInfo.stub(stub[:destination_info]) unless stub[:destination_info].nil?
        data
      end
    end

    # Structure Stubber for ExportSnapshotRecordSourceInfo
    class ExportSnapshotRecordSourceInfo
      def self.default(visited=[])
        return nil if visited.include?('ExportSnapshotRecordSourceInfo')
        visited = visited + ['ExportSnapshotRecordSourceInfo']
        {
          resource_type: 'resource_type',
          created_at: Time.now,
          name: 'name',
          arn: 'arn',
          from_resource_name: 'from_resource_name',
          from_resource_arn: 'from_resource_arn',
          instance_snapshot_info: InstanceSnapshotInfo.default(visited),
          disk_snapshot_info: DiskSnapshotInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportSnapshotRecordSourceInfo.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fromResourceName'] = stub[:from_resource_name] unless stub[:from_resource_name].nil?
        data['fromResourceArn'] = stub[:from_resource_arn] unless stub[:from_resource_arn].nil?
        data['instanceSnapshotInfo'] = InstanceSnapshotInfo.stub(stub[:instance_snapshot_info]) unless stub[:instance_snapshot_info].nil?
        data['diskSnapshotInfo'] = DiskSnapshotInfo.stub(stub[:disk_snapshot_info]) unless stub[:disk_snapshot_info].nil?
        data
      end
    end

    # Structure Stubber for DiskSnapshotInfo
    class DiskSnapshotInfo
      def self.default(visited=[])
        return nil if visited.include?('DiskSnapshotInfo')
        visited = visited + ['DiskSnapshotInfo']
        {
          size_in_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DiskSnapshotInfo.new
        data = {}
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data
      end
    end

    # Structure Stubber for InstanceSnapshotInfo
    class InstanceSnapshotInfo
      def self.default(visited=[])
        return nil if visited.include?('InstanceSnapshotInfo')
        visited = visited + ['InstanceSnapshotInfo']
        {
          from_bundle_id: 'from_bundle_id',
          from_blueprint_id: 'from_blueprint_id',
          from_disk_info: DiskInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSnapshotInfo.new
        data = {}
        data['fromBundleId'] = stub[:from_bundle_id] unless stub[:from_bundle_id].nil?
        data['fromBlueprintId'] = stub[:from_blueprint_id] unless stub[:from_blueprint_id].nil?
        data['fromDiskInfo'] = DiskInfoList.stub(stub[:from_disk_info]) unless stub[:from_disk_info].nil?
        data
      end
    end

    # List Stubber for DiskInfoList
    class DiskInfoList
      def self.default(visited=[])
        return nil if visited.include?('DiskInfoList')
        visited = visited + ['DiskInfoList']
        [
          DiskInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DiskInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DiskInfo
    class DiskInfo
      def self.default(visited=[])
        return nil if visited.include?('DiskInfo')
        visited = visited + ['DiskInfo']
        {
          name: 'name',
          path: 'path',
          size_in_gb: 1,
          is_system_disk: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DiskInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data['isSystemDisk'] = stub[:is_system_disk] unless stub[:is_system_disk].nil?
        data
      end
    end

    # Operation Stubber for GetInstance
    class GetInstance
      def self.default(visited=[])
        {
          instance: Instance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instance'] = Instance.stub(stub[:instance]) unless stub[:instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          blueprint_id: 'blueprint_id',
          blueprint_name: 'blueprint_name',
          bundle_id: 'bundle_id',
          add_ons: AddOnList.default(visited),
          is_static_ip: false,
          private_ip_address: 'private_ip_address',
          public_ip_address: 'public_ip_address',
          ipv6_addresses: Ipv6AddressList.default(visited),
          ip_address_type: 'ip_address_type',
          hardware: InstanceHardware.default(visited),
          networking: InstanceNetworking.default(visited),
          state: InstanceState.default(visited),
          username: 'username',
          ssh_key_name: 'ssh_key_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['blueprintId'] = stub[:blueprint_id] unless stub[:blueprint_id].nil?
        data['blueprintName'] = stub[:blueprint_name] unless stub[:blueprint_name].nil?
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['addOns'] = AddOnList.stub(stub[:add_ons]) unless stub[:add_ons].nil?
        data['isStaticIp'] = stub[:is_static_ip] unless stub[:is_static_ip].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['publicIpAddress'] = stub[:public_ip_address] unless stub[:public_ip_address].nil?
        data['ipv6Addresses'] = Ipv6AddressList.stub(stub[:ipv6_addresses]) unless stub[:ipv6_addresses].nil?
        data['ipAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['hardware'] = InstanceHardware.stub(stub[:hardware]) unless stub[:hardware].nil?
        data['networking'] = InstanceNetworking.stub(stub[:networking]) unless stub[:networking].nil?
        data['state'] = InstanceState.stub(stub[:state]) unless stub[:state].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data['sshKeyName'] = stub[:ssh_key_name] unless stub[:ssh_key_name].nil?
        data
      end
    end

    # Structure Stubber for InstanceState
    class InstanceState
      def self.default(visited=[])
        return nil if visited.include?('InstanceState')
        visited = visited + ['InstanceState']
        {
          code: 1,
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceState.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for InstanceNetworking
    class InstanceNetworking
      def self.default(visited=[])
        return nil if visited.include?('InstanceNetworking')
        visited = visited + ['InstanceNetworking']
        {
          monthly_transfer: MonthlyTransfer.default(visited),
          ports: InstancePortInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceNetworking.new
        data = {}
        data['monthlyTransfer'] = MonthlyTransfer.stub(stub[:monthly_transfer]) unless stub[:monthly_transfer].nil?
        data['ports'] = InstancePortInfoList.stub(stub[:ports]) unless stub[:ports].nil?
        data
      end
    end

    # List Stubber for InstancePortInfoList
    class InstancePortInfoList
      def self.default(visited=[])
        return nil if visited.include?('InstancePortInfoList')
        visited = visited + ['InstancePortInfoList']
        [
          InstancePortInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstancePortInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstancePortInfo
    class InstancePortInfo
      def self.default(visited=[])
        return nil if visited.include?('InstancePortInfo')
        visited = visited + ['InstancePortInfo']
        {
          from_port: 1,
          to_port: 1,
          protocol: 'protocol',
          access_from: 'access_from',
          access_type: 'access_type',
          common_name: 'common_name',
          access_direction: 'access_direction',
          cidrs: StringList.default(visited),
          ipv6_cidrs: StringList.default(visited),
          cidr_list_aliases: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstancePortInfo.new
        data = {}
        data['fromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['toPort'] = stub[:to_port] unless stub[:to_port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['accessFrom'] = stub[:access_from] unless stub[:access_from].nil?
        data['accessType'] = stub[:access_type] unless stub[:access_type].nil?
        data['commonName'] = stub[:common_name] unless stub[:common_name].nil?
        data['accessDirection'] = stub[:access_direction] unless stub[:access_direction].nil?
        data['cidrs'] = StringList.stub(stub[:cidrs]) unless stub[:cidrs].nil?
        data['ipv6Cidrs'] = StringList.stub(stub[:ipv6_cidrs]) unless stub[:ipv6_cidrs].nil?
        data['cidrListAliases'] = StringList.stub(stub[:cidr_list_aliases]) unless stub[:cidr_list_aliases].nil?
        data
      end
    end

    # Structure Stubber for MonthlyTransfer
    class MonthlyTransfer
      def self.default(visited=[])
        return nil if visited.include?('MonthlyTransfer')
        visited = visited + ['MonthlyTransfer']
        {
          gb_per_month_allocated: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MonthlyTransfer.new
        data = {}
        data['gbPerMonthAllocated'] = stub[:gb_per_month_allocated] unless stub[:gb_per_month_allocated].nil?
        data
      end
    end

    # Structure Stubber for InstanceHardware
    class InstanceHardware
      def self.default(visited=[])
        return nil if visited.include?('InstanceHardware')
        visited = visited + ['InstanceHardware']
        {
          cpu_count: 1,
          disks: DiskList.default(visited),
          ram_size_in_gb: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceHardware.new
        data = {}
        data['cpuCount'] = stub[:cpu_count] unless stub[:cpu_count].nil?
        data['disks'] = DiskList.stub(stub[:disks]) unless stub[:disks].nil?
        data['ramSizeInGb'] = Hearth::NumberHelper.serialize(stub[:ram_size_in_gb])
        data
      end
    end

    # List Stubber for Ipv6AddressList
    class Ipv6AddressList
      def self.default(visited=[])
        return nil if visited.include?('Ipv6AddressList')
        visited = visited + ['Ipv6AddressList']
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

    # Operation Stubber for GetInstanceAccessDetails
    class GetInstanceAccessDetails
      def self.default(visited=[])
        {
          access_details: InstanceAccessDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accessDetails'] = InstanceAccessDetails.stub(stub[:access_details]) unless stub[:access_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceAccessDetails
    class InstanceAccessDetails
      def self.default(visited=[])
        return nil if visited.include?('InstanceAccessDetails')
        visited = visited + ['InstanceAccessDetails']
        {
          cert_key: 'cert_key',
          expires_at: Time.now,
          ip_address: 'ip_address',
          password: 'password',
          password_data: PasswordData.default(visited),
          private_key: 'private_key',
          protocol: 'protocol',
          instance_name: 'instance_name',
          username: 'username',
          host_keys: HostKeysList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAccessDetails.new
        data = {}
        data['certKey'] = stub[:cert_key] unless stub[:cert_key].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires_at]).to_i unless stub[:expires_at].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['password'] = stub[:password] unless stub[:password].nil?
        data['passwordData'] = PasswordData.stub(stub[:password_data]) unless stub[:password_data].nil?
        data['privateKey'] = stub[:private_key] unless stub[:private_key].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['instanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['username'] = stub[:username] unless stub[:username].nil?
        data['hostKeys'] = HostKeysList.stub(stub[:host_keys]) unless stub[:host_keys].nil?
        data
      end
    end

    # List Stubber for HostKeysList
    class HostKeysList
      def self.default(visited=[])
        return nil if visited.include?('HostKeysList')
        visited = visited + ['HostKeysList']
        [
          HostKeyAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << HostKeyAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HostKeyAttributes
    class HostKeyAttributes
      def self.default(visited=[])
        return nil if visited.include?('HostKeyAttributes')
        visited = visited + ['HostKeyAttributes']
        {
          algorithm: 'algorithm',
          public_key: 'public_key',
          witnessed_at: Time.now,
          fingerprint_sha1: 'fingerprint_sha1',
          fingerprint_sha256: 'fingerprint_sha256',
          not_valid_before: Time.now,
          not_valid_after: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::HostKeyAttributes.new
        data = {}
        data['algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['publicKey'] = stub[:public_key] unless stub[:public_key].nil?
        data['witnessedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:witnessed_at]).to_i unless stub[:witnessed_at].nil?
        data['fingerprintSHA1'] = stub[:fingerprint_sha1] unless stub[:fingerprint_sha1].nil?
        data['fingerprintSHA256'] = stub[:fingerprint_sha256] unless stub[:fingerprint_sha256].nil?
        data['notValidBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_before]).to_i unless stub[:not_valid_before].nil?
        data['notValidAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_after]).to_i unless stub[:not_valid_after].nil?
        data
      end
    end

    # Structure Stubber for PasswordData
    class PasswordData
      def self.default(visited=[])
        return nil if visited.include?('PasswordData')
        visited = visited + ['PasswordData']
        {
          ciphertext: 'ciphertext',
          key_pair_name: 'key_pair_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PasswordData.new
        data = {}
        data['ciphertext'] = stub[:ciphertext] unless stub[:ciphertext].nil?
        data['keyPairName'] = stub[:key_pair_name] unless stub[:key_pair_name].nil?
        data
      end
    end

    # Operation Stubber for GetInstanceMetricData
    class GetInstanceMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInstancePortStates
    class GetInstancePortStates
      def self.default(visited=[])
        {
          port_states: InstancePortStateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['portStates'] = InstancePortStateList.stub(stub[:port_states]) unless stub[:port_states].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstancePortStateList
    class InstancePortStateList
      def self.default(visited=[])
        return nil if visited.include?('InstancePortStateList')
        visited = visited + ['InstancePortStateList']
        [
          InstancePortState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstancePortState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstancePortState
    class InstancePortState
      def self.default(visited=[])
        return nil if visited.include?('InstancePortState')
        visited = visited + ['InstancePortState']
        {
          from_port: 1,
          to_port: 1,
          protocol: 'protocol',
          state: 'state',
          cidrs: StringList.default(visited),
          ipv6_cidrs: StringList.default(visited),
          cidr_list_aliases: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstancePortState.new
        data = {}
        data['fromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['toPort'] = stub[:to_port] unless stub[:to_port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['cidrs'] = StringList.stub(stub[:cidrs]) unless stub[:cidrs].nil?
        data['ipv6Cidrs'] = StringList.stub(stub[:ipv6_cidrs]) unless stub[:ipv6_cidrs].nil?
        data['cidrListAliases'] = StringList.stub(stub[:cidr_list_aliases]) unless stub[:cidr_list_aliases].nil?
        data
      end
    end

    # Operation Stubber for GetInstanceSnapshot
    class GetInstanceSnapshot
      def self.default(visited=[])
        {
          instance_snapshot: InstanceSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceSnapshot'] = InstanceSnapshot.stub(stub[:instance_snapshot]) unless stub[:instance_snapshot].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceSnapshot
    class InstanceSnapshot
      def self.default(visited=[])
        return nil if visited.include?('InstanceSnapshot')
        visited = visited + ['InstanceSnapshot']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          state: 'state',
          progress: 'progress',
          from_attached_disks: DiskList.default(visited),
          from_instance_name: 'from_instance_name',
          from_instance_arn: 'from_instance_arn',
          from_blueprint_id: 'from_blueprint_id',
          from_bundle_id: 'from_bundle_id',
          is_from_auto_snapshot: false,
          size_in_gb: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSnapshot.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['progress'] = stub[:progress] unless stub[:progress].nil?
        data['fromAttachedDisks'] = DiskList.stub(stub[:from_attached_disks]) unless stub[:from_attached_disks].nil?
        data['fromInstanceName'] = stub[:from_instance_name] unless stub[:from_instance_name].nil?
        data['fromInstanceArn'] = stub[:from_instance_arn] unless stub[:from_instance_arn].nil?
        data['fromBlueprintId'] = stub[:from_blueprint_id] unless stub[:from_blueprint_id].nil?
        data['fromBundleId'] = stub[:from_bundle_id] unless stub[:from_bundle_id].nil?
        data['isFromAutoSnapshot'] = stub[:is_from_auto_snapshot] unless stub[:is_from_auto_snapshot].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data
      end
    end

    # Operation Stubber for GetInstanceSnapshots
    class GetInstanceSnapshots
      def self.default(visited=[])
        {
          instance_snapshots: InstanceSnapshotList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceSnapshots'] = InstanceSnapshotList.stub(stub[:instance_snapshots]) unless stub[:instance_snapshots].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceSnapshotList
    class InstanceSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('InstanceSnapshotList')
        visited = visited + ['InstanceSnapshotList']
        [
          InstanceSnapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceSnapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetInstanceState
    class GetInstanceState
      def self.default(visited=[])
        {
          state: InstanceState.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['state'] = InstanceState.stub(stub[:state]) unless stub[:state].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInstances
    class GetInstances
      def self.default(visited=[])
        {
          instances: InstanceList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instances'] = InstanceList.stub(stub[:instances]) unless stub[:instances].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Instance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetKeyPair
    class GetKeyPair
      def self.default(visited=[])
        {
          key_pair: KeyPair.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['keyPair'] = KeyPair.stub(stub[:key_pair]) unless stub[:key_pair].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetKeyPairs
    class GetKeyPairs
      def self.default(visited=[])
        {
          key_pairs: KeyPairList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['keyPairs'] = KeyPairList.stub(stub[:key_pairs]) unless stub[:key_pairs].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KeyPairList
    class KeyPairList
      def self.default(visited=[])
        return nil if visited.include?('KeyPairList')
        visited = visited + ['KeyPairList']
        [
          KeyPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetLoadBalancer
    class GetLoadBalancer
      def self.default(visited=[])
        {
          load_balancer: LoadBalancer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['loadBalancer'] = LoadBalancer.stub(stub[:load_balancer]) unless stub[:load_balancer].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LoadBalancer
    class LoadBalancer
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancer')
        visited = visited + ['LoadBalancer']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          dns_name: 'dns_name',
          state: 'state',
          protocol: 'protocol',
          public_ports: PortList.default(visited),
          health_check_path: 'health_check_path',
          instance_port: 1,
          instance_health_summary: InstanceHealthSummaryList.default(visited),
          tls_certificate_summaries: LoadBalancerTlsCertificateSummaryList.default(visited),
          configuration_options: LoadBalancerConfigurationOptions.default(visited),
          ip_address_type: 'ip_address_type',
          https_redirection_enabled: false,
          tls_policy_name: 'tls_policy_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancer.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['dnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['publicPorts'] = PortList.stub(stub[:public_ports]) unless stub[:public_ports].nil?
        data['healthCheckPath'] = stub[:health_check_path] unless stub[:health_check_path].nil?
        data['instancePort'] = stub[:instance_port] unless stub[:instance_port].nil?
        data['instanceHealthSummary'] = InstanceHealthSummaryList.stub(stub[:instance_health_summary]) unless stub[:instance_health_summary].nil?
        data['tlsCertificateSummaries'] = LoadBalancerTlsCertificateSummaryList.stub(stub[:tls_certificate_summaries]) unless stub[:tls_certificate_summaries].nil?
        data['configurationOptions'] = LoadBalancerConfigurationOptions.stub(stub[:configuration_options]) unless stub[:configuration_options].nil?
        data['ipAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['httpsRedirectionEnabled'] = stub[:https_redirection_enabled] unless stub[:https_redirection_enabled].nil?
        data['tlsPolicyName'] = stub[:tls_policy_name] unless stub[:tls_policy_name].nil?
        data
      end
    end

    # Map Stubber for LoadBalancerConfigurationOptions
    class LoadBalancerConfigurationOptions
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerConfigurationOptions')
        visited = visited + ['LoadBalancerConfigurationOptions']
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

    # List Stubber for LoadBalancerTlsCertificateSummaryList
    class LoadBalancerTlsCertificateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateSummaryList')
        visited = visited + ['LoadBalancerTlsCertificateSummaryList']
        [
          LoadBalancerTlsCertificateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancerTlsCertificateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsCertificateSummary
    class LoadBalancerTlsCertificateSummary
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateSummary')
        visited = visited + ['LoadBalancerTlsCertificateSummary']
        {
          name: 'name',
          is_attached: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsCertificateSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['isAttached'] = stub[:is_attached] unless stub[:is_attached].nil?
        data
      end
    end

    # List Stubber for InstanceHealthSummaryList
    class InstanceHealthSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthSummaryList')
        visited = visited + ['InstanceHealthSummaryList']
        [
          InstanceHealthSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceHealthSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceHealthSummary
    class InstanceHealthSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthSummary')
        visited = visited + ['InstanceHealthSummary']
        {
          instance_name: 'instance_name',
          instance_health: 'instance_health',
          instance_health_reason: 'instance_health_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceHealthSummary.new
        data = {}
        data['instanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['instanceHealth'] = stub[:instance_health] unless stub[:instance_health].nil?
        data['instanceHealthReason'] = stub[:instance_health_reason] unless stub[:instance_health_reason].nil?
        data
      end
    end

    # List Stubber for PortList
    class PortList
      def self.default(visited=[])
        return nil if visited.include?('PortList')
        visited = visited + ['PortList']
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

    # Operation Stubber for GetLoadBalancerMetricData
    class GetLoadBalancerMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLoadBalancerTlsCertificates
    class GetLoadBalancerTlsCertificates
      def self.default(visited=[])
        {
          tls_certificates: LoadBalancerTlsCertificateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tlsCertificates'] = LoadBalancerTlsCertificateList.stub(stub[:tls_certificates]) unless stub[:tls_certificates].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerTlsCertificateList
    class LoadBalancerTlsCertificateList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateList')
        visited = visited + ['LoadBalancerTlsCertificateList']
        [
          LoadBalancerTlsCertificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancerTlsCertificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsCertificate
    class LoadBalancerTlsCertificate
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificate')
        visited = visited + ['LoadBalancerTlsCertificate']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          load_balancer_name: 'load_balancer_name',
          is_attached: false,
          status: 'status',
          domain_name: 'domain_name',
          domain_validation_records: LoadBalancerTlsCertificateDomainValidationRecordList.default(visited),
          failure_reason: 'failure_reason',
          issued_at: Time.now,
          issuer: 'issuer',
          key_algorithm: 'key_algorithm',
          not_after: Time.now,
          not_before: Time.now,
          renewal_summary: LoadBalancerTlsCertificateRenewalSummary.default(visited),
          revocation_reason: 'revocation_reason',
          revoked_at: Time.now,
          serial: 'serial',
          signature_algorithm: 'signature_algorithm',
          subject: 'subject',
          subject_alternative_names: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsCertificate.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['loadBalancerName'] = stub[:load_balancer_name] unless stub[:load_balancer_name].nil?
        data['isAttached'] = stub[:is_attached] unless stub[:is_attached].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainValidationRecords'] = LoadBalancerTlsCertificateDomainValidationRecordList.stub(stub[:domain_validation_records]) unless stub[:domain_validation_records].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['issuedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:issued_at]).to_i unless stub[:issued_at].nil?
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['keyAlgorithm'] = stub[:key_algorithm] unless stub[:key_algorithm].nil?
        data['notAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_after]).to_i unless stub[:not_after].nil?
        data['notBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_before]).to_i unless stub[:not_before].nil?
        data['renewalSummary'] = LoadBalancerTlsCertificateRenewalSummary.stub(stub[:renewal_summary]) unless stub[:renewal_summary].nil?
        data['revocationReason'] = stub[:revocation_reason] unless stub[:revocation_reason].nil?
        data['revokedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:revoked_at]).to_i unless stub[:revoked_at].nil?
        data['serial'] = stub[:serial] unless stub[:serial].nil?
        data['signatureAlgorithm'] = stub[:signature_algorithm] unless stub[:signature_algorithm].nil?
        data['subject'] = stub[:subject] unless stub[:subject].nil?
        data['subjectAlternativeNames'] = StringList.stub(stub[:subject_alternative_names]) unless stub[:subject_alternative_names].nil?
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsCertificateRenewalSummary
    class LoadBalancerTlsCertificateRenewalSummary
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateRenewalSummary')
        visited = visited + ['LoadBalancerTlsCertificateRenewalSummary']
        {
          renewal_status: 'renewal_status',
          domain_validation_options: LoadBalancerTlsCertificateDomainValidationOptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsCertificateRenewalSummary.new
        data = {}
        data['renewalStatus'] = stub[:renewal_status] unless stub[:renewal_status].nil?
        data['domainValidationOptions'] = LoadBalancerTlsCertificateDomainValidationOptionList.stub(stub[:domain_validation_options]) unless stub[:domain_validation_options].nil?
        data
      end
    end

    # List Stubber for LoadBalancerTlsCertificateDomainValidationOptionList
    class LoadBalancerTlsCertificateDomainValidationOptionList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateDomainValidationOptionList')
        visited = visited + ['LoadBalancerTlsCertificateDomainValidationOptionList']
        [
          LoadBalancerTlsCertificateDomainValidationOption.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancerTlsCertificateDomainValidationOption.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsCertificateDomainValidationOption
    class LoadBalancerTlsCertificateDomainValidationOption
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateDomainValidationOption')
        visited = visited + ['LoadBalancerTlsCertificateDomainValidationOption']
        {
          domain_name: 'domain_name',
          validation_status: 'validation_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsCertificateDomainValidationOption.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['validationStatus'] = stub[:validation_status] unless stub[:validation_status].nil?
        data
      end
    end

    # List Stubber for LoadBalancerTlsCertificateDomainValidationRecordList
    class LoadBalancerTlsCertificateDomainValidationRecordList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateDomainValidationRecordList')
        visited = visited + ['LoadBalancerTlsCertificateDomainValidationRecordList']
        [
          LoadBalancerTlsCertificateDomainValidationRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancerTlsCertificateDomainValidationRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsCertificateDomainValidationRecord
    class LoadBalancerTlsCertificateDomainValidationRecord
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsCertificateDomainValidationRecord')
        visited = visited + ['LoadBalancerTlsCertificateDomainValidationRecord']
        {
          name: 'name',
          type: 'type',
          value: 'value',
          validation_status: 'validation_status',
          domain_name: 'domain_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsCertificateDomainValidationRecord.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['validationStatus'] = stub[:validation_status] unless stub[:validation_status].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data
      end
    end

    # Operation Stubber for GetLoadBalancerTlsPolicies
    class GetLoadBalancerTlsPolicies
      def self.default(visited=[])
        {
          tls_policies: LoadBalancerTlsPolicyList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tlsPolicies'] = LoadBalancerTlsPolicyList.stub(stub[:tls_policies]) unless stub[:tls_policies].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerTlsPolicyList
    class LoadBalancerTlsPolicyList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsPolicyList')
        visited = visited + ['LoadBalancerTlsPolicyList']
        [
          LoadBalancerTlsPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancerTlsPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancerTlsPolicy
    class LoadBalancerTlsPolicy
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTlsPolicy')
        visited = visited + ['LoadBalancerTlsPolicy']
        {
          name: 'name',
          is_default: false,
          description: 'description',
          protocols: StringList.default(visited),
          ciphers: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerTlsPolicy.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['isDefault'] = stub[:is_default] unless stub[:is_default].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['protocols'] = StringList.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['ciphers'] = StringList.stub(stub[:ciphers]) unless stub[:ciphers].nil?
        data
      end
    end

    # Operation Stubber for GetLoadBalancers
    class GetLoadBalancers
      def self.default(visited=[])
        {
          load_balancers: LoadBalancerList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['loadBalancers'] = LoadBalancerList.stub(stub[:load_balancers]) unless stub[:load_balancers].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerList
    class LoadBalancerList
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerList')
        visited = visited + ['LoadBalancerList']
        [
          LoadBalancer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LoadBalancer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetOperation
    class GetOperation
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOperations
    class GetOperations
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOperationsForResource
    class GetOperationsForResource
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
          next_page_count: 'next_page_count',
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        data['nextPageCount'] = stub[:next_page_count] unless stub[:next_page_count].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRegions
    class GetRegions
      def self.default(visited=[])
        {
          regions: RegionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['regions'] = RegionList.stub(stub[:regions]) unless stub[:regions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
        [
          Region.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Region.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Region
    class Region
      def self.default(visited=[])
        return nil if visited.include?('Region')
        visited = visited + ['Region']
        {
          continent_code: 'continent_code',
          description: 'description',
          display_name: 'display_name',
          name: 'name',
          availability_zones: AvailabilityZoneList.default(visited),
          relational_database_availability_zones: AvailabilityZoneList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Region.new
        data = {}
        data['continentCode'] = stub[:continent_code] unless stub[:continent_code].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['availabilityZones'] = AvailabilityZoneList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['relationalDatabaseAvailabilityZones'] = AvailabilityZoneList.stub(stub[:relational_database_availability_zones]) unless stub[:relational_database_availability_zones].nil?
        data
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          AvailabilityZone.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AvailabilityZone.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZone
    class AvailabilityZone
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZone')
        visited = visited + ['AvailabilityZone']
        {
          zone_name: 'zone_name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailabilityZone.new
        data = {}
        data['zoneName'] = stub[:zone_name] unless stub[:zone_name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabase
    class GetRelationalDatabase
      def self.default(visited=[])
        {
          relational_database: RelationalDatabase.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['relationalDatabase'] = RelationalDatabase.stub(stub[:relational_database]) unless stub[:relational_database].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RelationalDatabase
    class RelationalDatabase
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabase')
        visited = visited + ['RelationalDatabase']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          relational_database_blueprint_id: 'relational_database_blueprint_id',
          relational_database_bundle_id: 'relational_database_bundle_id',
          master_database_name: 'master_database_name',
          hardware: RelationalDatabaseHardware.default(visited),
          state: 'state',
          secondary_availability_zone: 'secondary_availability_zone',
          backup_retention_enabled: false,
          pending_modified_values: PendingModifiedRelationalDatabaseValues.default(visited),
          engine: 'engine',
          engine_version: 'engine_version',
          latest_restorable_time: Time.now,
          master_username: 'master_username',
          parameter_apply_status: 'parameter_apply_status',
          preferred_backup_window: 'preferred_backup_window',
          preferred_maintenance_window: 'preferred_maintenance_window',
          publicly_accessible: false,
          master_endpoint: RelationalDatabaseEndpoint.default(visited),
          pending_maintenance_actions: PendingMaintenanceActionList.default(visited),
          ca_certificate_identifier: 'ca_certificate_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabase.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['relationalDatabaseBlueprintId'] = stub[:relational_database_blueprint_id] unless stub[:relational_database_blueprint_id].nil?
        data['relationalDatabaseBundleId'] = stub[:relational_database_bundle_id] unless stub[:relational_database_bundle_id].nil?
        data['masterDatabaseName'] = stub[:master_database_name] unless stub[:master_database_name].nil?
        data['hardware'] = RelationalDatabaseHardware.stub(stub[:hardware]) unless stub[:hardware].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['secondaryAvailabilityZone'] = stub[:secondary_availability_zone] unless stub[:secondary_availability_zone].nil?
        data['backupRetentionEnabled'] = stub[:backup_retention_enabled] unless stub[:backup_retention_enabled].nil?
        data['pendingModifiedValues'] = PendingModifiedRelationalDatabaseValues.stub(stub[:pending_modified_values]) unless stub[:pending_modified_values].nil?
        data['engine'] = stub[:engine] unless stub[:engine].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['latestRestorableTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_restorable_time]).to_i unless stub[:latest_restorable_time].nil?
        data['masterUsername'] = stub[:master_username] unless stub[:master_username].nil?
        data['parameterApplyStatus'] = stub[:parameter_apply_status] unless stub[:parameter_apply_status].nil?
        data['preferredBackupWindow'] = stub[:preferred_backup_window] unless stub[:preferred_backup_window].nil?
        data['preferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['publiclyAccessible'] = stub[:publicly_accessible] unless stub[:publicly_accessible].nil?
        data['masterEndpoint'] = RelationalDatabaseEndpoint.stub(stub[:master_endpoint]) unless stub[:master_endpoint].nil?
        data['pendingMaintenanceActions'] = PendingMaintenanceActionList.stub(stub[:pending_maintenance_actions]) unless stub[:pending_maintenance_actions].nil?
        data['caCertificateIdentifier'] = stub[:ca_certificate_identifier] unless stub[:ca_certificate_identifier].nil?
        data
      end
    end

    # List Stubber for PendingMaintenanceActionList
    class PendingMaintenanceActionList
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceActionList')
        visited = visited + ['PendingMaintenanceActionList']
        [
          PendingMaintenanceAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PendingMaintenanceAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PendingMaintenanceAction
    class PendingMaintenanceAction
      def self.default(visited=[])
        return nil if visited.include?('PendingMaintenanceAction')
        visited = visited + ['PendingMaintenanceAction']
        {
          action: 'action',
          description: 'description',
          current_apply_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingMaintenanceAction.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['currentApplyDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:current_apply_date]).to_i unless stub[:current_apply_date].nil?
        data
      end
    end

    # Structure Stubber for RelationalDatabaseEndpoint
    class RelationalDatabaseEndpoint
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseEndpoint')
        visited = visited + ['RelationalDatabaseEndpoint']
        {
          port: 1,
          address: 'address',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseEndpoint.new
        data = {}
        data['port'] = stub[:port] unless stub[:port].nil?
        data['address'] = stub[:address] unless stub[:address].nil?
        data
      end
    end

    # Structure Stubber for PendingModifiedRelationalDatabaseValues
    class PendingModifiedRelationalDatabaseValues
      def self.default(visited=[])
        return nil if visited.include?('PendingModifiedRelationalDatabaseValues')
        visited = visited + ['PendingModifiedRelationalDatabaseValues']
        {
          master_user_password: 'master_user_password',
          engine_version: 'engine_version',
          backup_retention_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PendingModifiedRelationalDatabaseValues.new
        data = {}
        data['masterUserPassword'] = stub[:master_user_password] unless stub[:master_user_password].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['backupRetentionEnabled'] = stub[:backup_retention_enabled] unless stub[:backup_retention_enabled].nil?
        data
      end
    end

    # Structure Stubber for RelationalDatabaseHardware
    class RelationalDatabaseHardware
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseHardware')
        visited = visited + ['RelationalDatabaseHardware']
        {
          cpu_count: 1,
          disk_size_in_gb: 1,
          ram_size_in_gb: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseHardware.new
        data = {}
        data['cpuCount'] = stub[:cpu_count] unless stub[:cpu_count].nil?
        data['diskSizeInGb'] = stub[:disk_size_in_gb] unless stub[:disk_size_in_gb].nil?
        data['ramSizeInGb'] = Hearth::NumberHelper.serialize(stub[:ram_size_in_gb])
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseBlueprints
    class GetRelationalDatabaseBlueprints
      def self.default(visited=[])
        {
          blueprints: RelationalDatabaseBlueprintList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['blueprints'] = RelationalDatabaseBlueprintList.stub(stub[:blueprints]) unless stub[:blueprints].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseBlueprintList
    class RelationalDatabaseBlueprintList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseBlueprintList')
        visited = visited + ['RelationalDatabaseBlueprintList']
        [
          RelationalDatabaseBlueprint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabaseBlueprint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelationalDatabaseBlueprint
    class RelationalDatabaseBlueprint
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseBlueprint')
        visited = visited + ['RelationalDatabaseBlueprint']
        {
          blueprint_id: 'blueprint_id',
          engine: 'engine',
          engine_version: 'engine_version',
          engine_description: 'engine_description',
          engine_version_description: 'engine_version_description',
          is_engine_default: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseBlueprint.new
        data = {}
        data['blueprintId'] = stub[:blueprint_id] unless stub[:blueprint_id].nil?
        data['engine'] = stub[:engine] unless stub[:engine].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['engineDescription'] = stub[:engine_description] unless stub[:engine_description].nil?
        data['engineVersionDescription'] = stub[:engine_version_description] unless stub[:engine_version_description].nil?
        data['isEngineDefault'] = stub[:is_engine_default] unless stub[:is_engine_default].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseBundles
    class GetRelationalDatabaseBundles
      def self.default(visited=[])
        {
          bundles: RelationalDatabaseBundleList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bundles'] = RelationalDatabaseBundleList.stub(stub[:bundles]) unless stub[:bundles].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseBundleList
    class RelationalDatabaseBundleList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseBundleList')
        visited = visited + ['RelationalDatabaseBundleList']
        [
          RelationalDatabaseBundle.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabaseBundle.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelationalDatabaseBundle
    class RelationalDatabaseBundle
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseBundle')
        visited = visited + ['RelationalDatabaseBundle']
        {
          bundle_id: 'bundle_id',
          name: 'name',
          price: 1.0,
          ram_size_in_gb: 1.0,
          disk_size_in_gb: 1,
          transfer_per_month_in_gb: 1,
          cpu_count: 1,
          is_encrypted: false,
          is_active: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseBundle.new
        data = {}
        data['bundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['price'] = Hearth::NumberHelper.serialize(stub[:price])
        data['ramSizeInGb'] = Hearth::NumberHelper.serialize(stub[:ram_size_in_gb])
        data['diskSizeInGb'] = stub[:disk_size_in_gb] unless stub[:disk_size_in_gb].nil?
        data['transferPerMonthInGb'] = stub[:transfer_per_month_in_gb] unless stub[:transfer_per_month_in_gb].nil?
        data['cpuCount'] = stub[:cpu_count] unless stub[:cpu_count].nil?
        data['isEncrypted'] = stub[:is_encrypted] unless stub[:is_encrypted].nil?
        data['isActive'] = stub[:is_active] unless stub[:is_active].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseEvents
    class GetRelationalDatabaseEvents
      def self.default(visited=[])
        {
          relational_database_events: RelationalDatabaseEventList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['relationalDatabaseEvents'] = RelationalDatabaseEventList.stub(stub[:relational_database_events]) unless stub[:relational_database_events].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseEventList
    class RelationalDatabaseEventList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseEventList')
        visited = visited + ['RelationalDatabaseEventList']
        [
          RelationalDatabaseEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabaseEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelationalDatabaseEvent
    class RelationalDatabaseEvent
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseEvent')
        visited = visited + ['RelationalDatabaseEvent']
        {
          resource: 'resource',
          created_at: Time.now,
          message: 'message',
          event_categories: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseEvent.new
        data = {}
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['eventCategories'] = StringList.stub(stub[:event_categories]) unless stub[:event_categories].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseLogEvents
    class GetRelationalDatabaseLogEvents
      def self.default(visited=[])
        {
          resource_log_events: LogEventList.default(visited),
          next_backward_token: 'next_backward_token',
          next_forward_token: 'next_forward_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceLogEvents'] = LogEventList.stub(stub[:resource_log_events]) unless stub[:resource_log_events].nil?
        data['nextBackwardToken'] = stub[:next_backward_token] unless stub[:next_backward_token].nil?
        data['nextForwardToken'] = stub[:next_forward_token] unless stub[:next_forward_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LogEventList
    class LogEventList
      def self.default(visited=[])
        return nil if visited.include?('LogEventList')
        visited = visited + ['LogEventList']
        [
          LogEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogEvent
    class LogEvent
      def self.default(visited=[])
        return nil if visited.include?('LogEvent')
        visited = visited + ['LogEvent']
        {
          created_at: Time.now,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::LogEvent.new
        data = {}
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseLogStreams
    class GetRelationalDatabaseLogStreams
      def self.default(visited=[])
        {
          log_streams: StringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['logStreams'] = StringList.stub(stub[:log_streams]) unless stub[:log_streams].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRelationalDatabaseMasterUserPassword
    class GetRelationalDatabaseMasterUserPassword
      def self.default(visited=[])
        {
          master_user_password: 'master_user_password',
          created_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['masterUserPassword'] = stub[:master_user_password] unless stub[:master_user_password].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRelationalDatabaseMetricData
    class GetRelationalDatabaseMetricData
      def self.default(visited=[])
        {
          metric_name: 'metric_name',
          metric_data: MetricDatapointList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricData'] = MetricDatapointList.stub(stub[:metric_data]) unless stub[:metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRelationalDatabaseParameters
    class GetRelationalDatabaseParameters
      def self.default(visited=[])
        {
          parameters: RelationalDatabaseParameterList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['parameters'] = RelationalDatabaseParameterList.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseParameterList
    class RelationalDatabaseParameterList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseParameterList')
        visited = visited + ['RelationalDatabaseParameterList']
        [
          RelationalDatabaseParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabaseParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RelationalDatabaseParameter
    class RelationalDatabaseParameter
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseParameter')
        visited = visited + ['RelationalDatabaseParameter']
        {
          allowed_values: 'allowed_values',
          apply_method: 'apply_method',
          apply_type: 'apply_type',
          data_type: 'data_type',
          description: 'description',
          is_modifiable: false,
          parameter_name: 'parameter_name',
          parameter_value: 'parameter_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseParameter.new
        data = {}
        data['allowedValues'] = stub[:allowed_values] unless stub[:allowed_values].nil?
        data['applyMethod'] = stub[:apply_method] unless stub[:apply_method].nil?
        data['applyType'] = stub[:apply_type] unless stub[:apply_type].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['isModifiable'] = stub[:is_modifiable] unless stub[:is_modifiable].nil?
        data['parameterName'] = stub[:parameter_name] unless stub[:parameter_name].nil?
        data['parameterValue'] = stub[:parameter_value] unless stub[:parameter_value].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseSnapshot
    class GetRelationalDatabaseSnapshot
      def self.default(visited=[])
        {
          relational_database_snapshot: RelationalDatabaseSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['relationalDatabaseSnapshot'] = RelationalDatabaseSnapshot.stub(stub[:relational_database_snapshot]) unless stub[:relational_database_snapshot].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RelationalDatabaseSnapshot
    class RelationalDatabaseSnapshot
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseSnapshot')
        visited = visited + ['RelationalDatabaseSnapshot']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          tags: TagList.default(visited),
          engine: 'engine',
          engine_version: 'engine_version',
          size_in_gb: 1,
          state: 'state',
          from_relational_database_name: 'from_relational_database_name',
          from_relational_database_arn: 'from_relational_database_arn',
          from_relational_database_bundle_id: 'from_relational_database_bundle_id',
          from_relational_database_blueprint_id: 'from_relational_database_blueprint_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseSnapshot.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['engine'] = stub[:engine] unless stub[:engine].nil?
        data['engineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['sizeInGb'] = stub[:size_in_gb] unless stub[:size_in_gb].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['fromRelationalDatabaseName'] = stub[:from_relational_database_name] unless stub[:from_relational_database_name].nil?
        data['fromRelationalDatabaseArn'] = stub[:from_relational_database_arn] unless stub[:from_relational_database_arn].nil?
        data['fromRelationalDatabaseBundleId'] = stub[:from_relational_database_bundle_id] unless stub[:from_relational_database_bundle_id].nil?
        data['fromRelationalDatabaseBlueprintId'] = stub[:from_relational_database_blueprint_id] unless stub[:from_relational_database_blueprint_id].nil?
        data
      end
    end

    # Operation Stubber for GetRelationalDatabaseSnapshots
    class GetRelationalDatabaseSnapshots
      def self.default(visited=[])
        {
          relational_database_snapshots: RelationalDatabaseSnapshotList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['relationalDatabaseSnapshots'] = RelationalDatabaseSnapshotList.stub(stub[:relational_database_snapshots]) unless stub[:relational_database_snapshots].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseSnapshotList
    class RelationalDatabaseSnapshotList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseSnapshotList')
        visited = visited + ['RelationalDatabaseSnapshotList']
        [
          RelationalDatabaseSnapshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabaseSnapshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetRelationalDatabases
    class GetRelationalDatabases
      def self.default(visited=[])
        {
          relational_databases: RelationalDatabaseList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['relationalDatabases'] = RelationalDatabaseList.stub(stub[:relational_databases]) unless stub[:relational_databases].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RelationalDatabaseList
    class RelationalDatabaseList
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseList')
        visited = visited + ['RelationalDatabaseList']
        [
          RelationalDatabase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RelationalDatabase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetStaticIp
    class GetStaticIp
      def self.default(visited=[])
        {
          static_ip: StaticIp.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['staticIp'] = StaticIp.stub(stub[:static_ip]) unless stub[:static_ip].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StaticIp
    class StaticIp
      def self.default(visited=[])
        return nil if visited.include?('StaticIp')
        visited = visited + ['StaticIp']
        {
          name: 'name',
          arn: 'arn',
          support_code: 'support_code',
          created_at: Time.now,
          location: ResourceLocation.default(visited),
          resource_type: 'resource_type',
          ip_address: 'ip_address',
          attached_to: 'attached_to',
          is_attached: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticIp.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['supportCode'] = stub[:support_code] unless stub[:support_code].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['location'] = ResourceLocation.stub(stub[:location]) unless stub[:location].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['attachedTo'] = stub[:attached_to] unless stub[:attached_to].nil?
        data['isAttached'] = stub[:is_attached] unless stub[:is_attached].nil?
        data
      end
    end

    # Operation Stubber for GetStaticIps
    class GetStaticIps
      def self.default(visited=[])
        {
          static_ips: StaticIpList.default(visited),
          next_page_token: 'next_page_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['staticIps'] = StaticIpList.stub(stub[:static_ips]) unless stub[:static_ips].nil?
        data['nextPageToken'] = stub[:next_page_token] unless stub[:next_page_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StaticIpList
    class StaticIpList
      def self.default(visited=[])
        return nil if visited.include?('StaticIpList')
        visited = visited + ['StaticIpList']
        [
          StaticIp.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StaticIp.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ImportKeyPair
    class ImportKeyPair
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for IsVpcPeered
    class IsVpcPeered
      def self.default(visited=[])
        {
          is_peered: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['isPeered'] = stub[:is_peered] unless stub[:is_peered].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for OpenInstancePublicPorts
    class OpenInstancePublicPorts
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PeerVpc
    class PeerVpc
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAlarm
    class PutAlarm
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutInstancePublicPorts
    class PutInstancePublicPorts
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootInstance
    class RebootInstance
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RebootRelationalDatabase
    class RebootRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterContainerImage
    class RegisterContainerImage
      def self.default(visited=[])
        {
          container_image: ContainerImage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerImage'] = ContainerImage.stub(stub[:container_image]) unless stub[:container_image].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReleaseStaticIp
    class ReleaseStaticIp
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetDistributionCache
    class ResetDistributionCache
      def self.default(visited=[])
        {
          status: 'status',
          create_time: Time.now,
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendContactMethodVerification
    class SendContactMethodVerification
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIpAddressType
    class SetIpAddressType
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetResourceAccessForBucket
    class SetResourceAccessForBucket
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartInstance
    class StartInstance
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartRelationalDatabase
    class StartRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopInstance
    class StopInstance
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopRelationalDatabase
    class StopRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestAlarm
    class TestAlarm
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnpeerVpc
    class UnpeerVpc
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBucket
    class UpdateBucket
      def self.default(visited=[])
        {
          bucket: Bucket.default(visited),
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['bucket'] = Bucket.stub(stub[:bucket]) unless stub[:bucket].nil?
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBucketBundle
    class UpdateBucketBundle
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContainerService
    class UpdateContainerService
      def self.default(visited=[])
        {
          container_service: ContainerService.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerService'] = ContainerService.stub(stub[:container_service]) unless stub[:container_service].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDistribution
    class UpdateDistribution
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDistributionBundle
    class UpdateDistributionBundle
      def self.default(visited=[])
        {
          operation: Operation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operation'] = Operation.stub(stub[:operation]) unless stub[:operation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainEntry
    class UpdateDomainEntry
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLoadBalancerAttribute
    class UpdateLoadBalancerAttribute
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRelationalDatabase
    class UpdateRelationalDatabase
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRelationalDatabaseParameters
    class UpdateRelationalDatabaseParameters
      def self.default(visited=[])
        {
          operations: OperationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['operations'] = OperationList.stub(stub[:operations]) unless stub[:operations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
