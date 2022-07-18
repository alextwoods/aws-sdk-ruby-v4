# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector2
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon Web Services account within your environment that Amazon Inspector has been enabled for.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status
    #   <p>Details of the status of Amazon Inspector scans by resource type.</p>
    #
    #   @return [ResourceStatus]
    #
    Account = ::Struct.new(
      :account_id,
      :status,
      :resource_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about an aggregation response based on
    #          Amazon Web Services accounts.</p>
    #
    # @!attribute finding_type
    #   <p>The type of finding.</p>
    #
    #   Enum, one of: ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    AccountAggregation = ::Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An aggregation of findings by Amazon Web Services account ID.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>The number of findings by severity.</p>
    #
    #   @return [SeverityCounts]
    #
    AccountAggregationResponse = ::Struct.new(
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountSortBy
    #
    module AccountSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>An object with details the status of an Amazon Web Services account within your Amazon Inspector environment</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>An object detailing the status of Amazon Inspector for the account.</p>
    #
    #   @return [State]
    #
    # @!attribute resource_state
    #   <p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>
    #
    #   @return [ResourceState]
    #
    AccountState = ::Struct.new(
      :account_id,
      :state,
      :resource_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregationFindingType
    #
    module AggregationFindingType
      # No documentation available.
      #
      NETWORK_REACHABILITY = "NETWORK_REACHABILITY"

      # No documentation available.
      #
      PACKAGE_VULNERABILITY = "PACKAGE_VULNERABILITY"
    end

    # <p>Contains details about an aggregation request.</p>
    #
    class AggregationRequest < Hearth::Union
      # <p>An object that contains details about an aggregation request based on Amazon Web Services account
      #          IDs.</p>
      #
      class AccountAggregation < AggregationRequest
        def to_h
          { account_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AccountAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on Amazon Machine
      #          Images (AMIs).</p>
      #
      class AmiAggregation < AggregationRequest
        def to_h
          { ami_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AmiAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on Amazon ECR container
      #          images.</p>
      #
      class AwsEcrContainerAggregation < AggregationRequest
        def to_h
          { aws_ecr_container_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AwsEcrContainerAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on Amazon EC2
      #          instances.</p>
      #
      class Ec2InstanceAggregation < AggregationRequest
        def to_h
          { ec2_instance_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::Ec2InstanceAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on finding types.</p>
      #
      class FindingTypeAggregation < AggregationRequest
        def to_h
          { finding_type_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::FindingTypeAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on container image
      #          layers.</p>
      #
      class ImageLayerAggregation < AggregationRequest
        def to_h
          { image_layer_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::ImageLayerAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on operating system
      #          package type.</p>
      #
      class PackageAggregation < AggregationRequest
        def to_h
          { package_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::PackageAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on Amazon ECR repositories.</p>
      #
      class RepositoryAggregation < AggregationRequest
        def to_h
          { repository_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::RepositoryAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation request based on finding title.</p>
      #
      class TitleAggregation < AggregationRequest
        def to_h
          { title_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::TitleAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AggregationRequest
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for AggregationResourceType
    #
    module AggregationResourceType
      # No documentation available.
      #
      AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE"

      # No documentation available.
      #
      AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE"
    end

    # <p>A structure that contains details about the results of an aggregation type.</p>
    #
    class AggregationResponse < Hearth::Union
      # <p>An object that contains details about an aggregation response based on Amazon Web Services account
      #          IDs.</p>
      #
      class AccountAggregation < AggregationResponse
        def to_h
          { account_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AccountAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on Amazon Machine
      #          Images (AMIs).</p>
      #
      class AmiAggregation < AggregationResponse
        def to_h
          { ami_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AmiAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on Amazon ECR container
      #          images.</p>
      #
      class AwsEcrContainerAggregation < AggregationResponse
        def to_h
          { aws_ecr_container_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::AwsEcrContainerAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on Amazon EC2
      #          instances.</p>
      #
      class Ec2InstanceAggregation < AggregationResponse
        def to_h
          { ec2_instance_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::Ec2InstanceAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on finding types.</p>
      #
      class FindingTypeAggregation < AggregationResponse
        def to_h
          { finding_type_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::FindingTypeAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on container image
      #          layers.</p>
      #
      class ImageLayerAggregation < AggregationResponse
        def to_h
          { image_layer_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::ImageLayerAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on operating system
      #          package type.</p>
      #
      class PackageAggregation < AggregationResponse
        def to_h
          { package_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::PackageAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on Amazon ECR
      #          repositories.</p>
      #
      class RepositoryAggregation < AggregationResponse
        def to_h
          { repository_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::RepositoryAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # <p>An object that contains details about an aggregation response based on finding title.</p>
      #
      class TitleAggregation < AggregationResponse
        def to_h
          { title_aggregation: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::TitleAggregation #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AggregationResponse
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Inspector2::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for AggregationType
    #
    module AggregationType
      # No documentation available.
      #
      FINDING_TYPE = "FINDING_TYPE"

      # No documentation available.
      #
      PACKAGE = "PACKAGE"

      # No documentation available.
      #
      TITLE = "TITLE"

      # No documentation available.
      #
      REPOSITORY = "REPOSITORY"

      # No documentation available.
      #
      AMI = "AMI"

      # No documentation available.
      #
      AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE"

      # No documentation available.
      #
      AWS_ECR_CONTAINER = "AWS_ECR_CONTAINER"

      # No documentation available.
      #
      IMAGE_LAYER = "IMAGE_LAYER"

      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"
    end

    # <p>The details that define an aggregation based on Amazon machine images (AMIs).</p>
    #
    # @!attribute amis
    #   <p>The IDs of AMIs to aggregate findings for.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL", "AFFECTED_INSTANCES"]
    #
    #   @return [String]
    #
    AmiAggregation = ::Struct.new(
      :amis,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains the results of a finding aggregation by AMI.</p>
    #
    # @!attribute ami
    #   <p>The ID of the AMI that findings were aggregated for.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that the AMI belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    # @!attribute affected_instances
    #   <p>The IDs of Amazon EC2 instances using this AMI.</p>
    #
    #   @return [Integer]
    #
    AmiAggregationResponse = ::Struct.new(
      :ami,
      :account_id,
      :severity_counts,
      :affected_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AmiSortBy
    #
    module AmiSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      AFFECTED_INSTANCES = "AFFECTED_INSTANCES"
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to be associated.</p>
    #
    #   @return [String]
    #
    AssociateMemberInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the successfully associated member account.</p>
    #
    #   @return [String]
    #
    AssociateMemberOutput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents which scan types are automatically enabled for new members of your Amazon Inspector organization.</p>
    #
    # @!attribute ec2
    #   <p>Represents whether Amazon EC2 scans are automatically enabled for new members of your Amazon Inspector
    #            organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ecr
    #   <p>Represents whether Amazon ECR scans are automatically enabled for new members of your Amazon Inspector
    #            organization.</p>
    #
    #   @return [Boolean]
    #
    AutoEnable = ::Struct.new(
      :ec2,
      :ecr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Amazon EC2 instance involved in a finding.</p>
    #
    # @!attribute type
    #   <p>The type of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The image ID of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_v4_addresses
    #   <p>The IPv4 addresses of the Amazon EC2 instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ip_v6_addresses
    #   <p>The IPv6 addresses of the Amazon EC2 instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute key_name
    #   <p>The name of the key pair used to launch the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_instance_profile_arn
    #   <p>The IAM instance profile ARN of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The subnet ID of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute launched_at
    #   <p>The date and time the Amazon EC2 instance was launched at.</p>
    #
    #   @return [Time]
    #
    # @!attribute platform
    #   <p>The platform of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    AwsEc2InstanceDetails = ::Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at,
      :platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An aggregation of information about Amazon ECR containers.</p>
    #
    # @!attribute resource_ids
    #   <p>The container resource IDs.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute image_shas
    #   <p>The image SHA values.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute repositories
    #   <p>The container repositories.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute architectures
    #   <p>The architecture of the containers.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute image_tags
    #   <p>The image tags.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sort_order
    #   <p>The sort order (ascending or descending).</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    AwsEcrContainerAggregation = ::Struct.new(
      :resource_ids,
      :image_shas,
      :repositories,
      :architectures,
      :image_tags,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An aggregation of information about Amazon ECR containers.</p>
    #
    # @!attribute resource_id
    #   <p>The resource ID of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image_sha
    #   <p>The SHA value of the container image.</p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p>The container repository.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The architecture of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tags
    #   <p>The container image stags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the account that owns the container.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>The number of finding by severity.</p>
    #
    #   @return [SeverityCounts]
    #
    AwsEcrContainerAggregationResponse = ::Struct.new(
      :resource_id,
      :image_sha,
      :repository,
      :architecture,
      :image_tags,
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image details of the Amazon ECR container image.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository the Amazon ECR container image resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tags
    #   <p>The image tags attached to the Amazon ECR container image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pushed_at
    #   <p>The date and time the Amazon ECR container image was pushed.</p>
    #
    #   @return [Time]
    #
    # @!attribute author
    #   <p>The image author of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The architecture of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_hash
    #   <p>The image hash of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute registry
    #   <p>The registry the Amazon ECR container image belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    AwsEcrContainerImageDetails = ::Struct.new(
      :repository_name,
      :image_tags,
      :pushed_at,
      :author,
      :architecture,
      :image_hash,
      :registry,
      :platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AwsEcrContainerSortBy
    #
    module AwsEcrContainerSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>One or more tags submitted as part of the request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The 12-digit Amazon Web Services account IDs of the accounts to retrieve Amazon Inspector status for.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetAccountStatusInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>An array of objects that provide details on the status of Amazon Inspector for each of the requested accounts.</p>
    #
    #   @return [Array<AccountState>]
    #
    # @!attribute failed_accounts
    #   <p>An array of objects detailing any accounts that failed to enable Amazon Inspector and why.</p>
    #
    #   @return [Array<FailedAccount>]
    #
    BatchGetAccountStatusOutput = ::Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The account IDs to get free trial status for.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetFreeTrialInfoInput = ::Struct.new(
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>An array of objects that provide Amazon Inspector free trial details for each of the requested accounts.
    #         </p>
    #
    #   @return [Array<FreeTrialAccountInfo>]
    #
    # @!attribute failed_accounts
    #   <p>An array of objects detailing any accounts that free trial data could not be returned for.</p>
    #
    #   @return [Array<FreeTrialInfoError>]
    #
    BatchGetFreeTrialInfoOutput = ::Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report to be canceled.</p>
    #
    #   @return [String]
    #
    CancelFindingsReportInput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the canceled report.</p>
    #
    #   @return [String]
    #
    CancelFindingsReportOutput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A conflict occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>a structure that contains information on the count of resources within a group.</p>
    #
    # @!attribute count
    #   <p>The number of resources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute group_key
    #   <p>The key associated with this group</p>
    #
    #   Enum, one of: ["SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"]
    #
    #   @return [String]
    #
    Counts = ::Struct.new(
      :count,
      :group_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
      end
    end

    # <p>A structure that identifies filter criteria for <code>GetCoverageStatistics</code>.</p>
    #
    # @!attribute scan_status_code
    #   <p>The scan status code to filter on.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute scan_status_reason
    #   <p>The scan status reason to filter on.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute account_id
    #   <p>An array of Amazon Web Services account IDs to return coverage statistics for.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute resource_id
    #   <p>An array of Amazon Web Services resource IDs to return coverage statistics for.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute resource_type
    #   <p>An array of Amazon Web Services resource types to return coverage statistics for.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute scan_type
    #   <p>An array of Amazon Inspector scan types to return coverage statistics for.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute ecr_repository_name
    #   <p>The Amazon ECR repository name to filter on.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute ecr_image_tags
    #   <p>The Amazon ECR image tags to filter on.</p>
    #
    #   @return [Array<CoverageStringFilter>]
    #
    # @!attribute ec2_instance_tags
    #   <p>The Amazon EC2 instance tags to filter on.</p>
    #
    #   @return [Array<CoverageMapFilter>]
    #
    CoverageFilterCriteria = ::Struct.new(
      :scan_status_code,
      :scan_status_reason,
      :account_id,
      :resource_id,
      :resource_type,
      :scan_type,
      :ecr_repository_name,
      :ecr_image_tags,
      :ec2_instance_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CoverageMapComparison
    #
    module CoverageMapComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"
    end

    # <p>Contains details of a coverage map filter.</p>
    #
    # @!attribute comparison
    #   <p>The operator to compare coverage on.</p>
    #
    #   Enum, one of: ["EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The tag key associated with the coverage map filter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value associated with the coverage map filter.</p>
    #
    #   @return [String]
    #
    CoverageMapFilter = ::Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CoverageResourceType
    #
    module CoverageResourceType
      # No documentation available.
      #
      AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE"

      # No documentation available.
      #
      AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE"

      # No documentation available.
      #
      AWS_ECR_REPOSITORY = "AWS_ECR_REPOSITORY"
    end

    # Includes enum constants for CoverageStringComparison
    #
    module CoverageStringComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      NOT_EQUALS = "NOT_EQUALS"
    end

    # <p>Contains details of a coverage string filter.</p>
    #
    # @!attribute comparison
    #   <p>The operator to compare strings on.</p>
    #
    #   Enum, one of: ["EQUALS", "NOT_EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value to compare strings on.</p>
    #
    #   @return [String]
    #
    CoverageStringFilter = ::Struct.new(
      :comparison,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about a resource covered by Amazon Inspector.</p>
    #
    # @!attribute resource_type
    #   <p>The type of the covered resource.</p>
    #
    #   Enum, one of: ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the covered resource.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the covered resource.</p>
    #
    #   @return [String]
    #
    # @!attribute scan_type
    #   <p>The Amazon Inspector scan type covering the resource.</p>
    #
    #   Enum, one of: ["NETWORK", "PACKAGE"]
    #
    #   @return [String]
    #
    # @!attribute scan_status
    #   <p>The status of the scan covering the resource.</p>
    #
    #   @return [ScanStatus]
    #
    # @!attribute resource_metadata
    #   <p>An object that contains details about the metadata.</p>
    #
    #   @return [ResourceScanMetadata]
    #
    CoveredResource = ::Struct.new(
      :resource_type,
      :resource_id,
      :account_id,
      :scan_type,
      :scan_status,
      :resource_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>Defines the action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NONE", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_criteria
    #   <p>Defines the criteria to be used in the filter for querying findings.</p>
    #
    #   @return [FilterCriteria]
    #
    # @!attribute name
    #   <p>The name of the filter. Minimum length of 3. Maximum length of 64. Valid characters
    #            include alphanumeric characters, dot (.), underscore (_), and dash (-). Spaces are not
    #            allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags for the filter.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFilterInput = ::Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the successfully created filter.</p>
    #
    #   @return [String]
    #
    CreateFilterOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_criteria
    #   <p>The filter criteria to apply to the results of the finding report.</p>
    #
    #   @return [FilterCriteria]
    #
    # @!attribute report_format
    #   <p>The format to generate the report in.</p>
    #
    #   Enum, one of: ["CSV", "JSON"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>The Amazon S3 export destination for the report.</p>
    #
    #   @return [Destination]
    #
    CreateFindingsReportInput = ::Struct.new(
      :filter_criteria,
      :report_format,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #
    #   @return [String]
    #
    CreateFindingsReportOutput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Currency
    #
    module Currency
      # No documentation available.
      #
      USD = "USD"
    end

    # <p>The CVSS score for a finding.</p>
    #
    # @!attribute base_score
    #   <p>The base CVSS score used for the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute scoring_vector
    #   <p>The vector string of the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of CVSS used for the score.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source of the CVSS score.</p>
    #
    #   @return [String]
    #
    CvssScore = ::Struct.new(
      :base_score,
      :scoring_vector,
      :version,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on adjustments Amazon Inspector made to the CVSS score for a finding.</p>
    #
    # @!attribute metric
    #   <p>The metric used to adjust the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason the CVSS score has been adjustment.</p>
    #
    #   @return [String]
    #
    CvssScoreAdjustment = ::Struct.new(
      :metric,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the CVSS score.</p>
    #
    # @!attribute score_source
    #   <p>The source for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute cvss_source
    #   <p>The source of the CVSS data.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The CVSS version used in scoring.</p>
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The CVSS score.</p>
    #
    #   @return [Float]
    #
    # @!attribute scoring_vector
    #   <p>The vector for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute adjustments
    #   <p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>
    #
    #   @return [Array<CvssScoreAdjustment>]
    #
    CvssScoreDetails = ::Struct.new(
      :score_source,
      :cvss_source,
      :version,
      :score,
      :scoring_vector,
      :adjustments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details on the time range used to filter findings.</p>
    #
    # @!attribute start_inclusive
    #   <p>A timestamp representing the start of the time period filtered on.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_inclusive
    #   <p>A timestamp representing the end of the time period filtered on.</p>
    #
    #   @return [Time]
    #
    DateFilter = ::Struct.new(
      :start_inclusive,
      :end_inclusive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Amazon Inspector delegated administrator for your organization.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The status of the Amazon Inspector delegated administrator.</p>
    #
    #   Enum, one of: ["CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"]
    #
    #   @return [String]
    #
    DelegatedAdmin = ::Struct.new(
      :account_id,
      :relationship_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the Amazon Inspector delegated administrator for your organization.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for your organization.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Amazon Inspector delegated administrator.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    DelegatedAdminAccount = ::Struct.new(
      :account_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DelegatedAdminStatus
    #
    module DelegatedAdminStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS"
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the filter to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteFilterInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the filter that has been deleted.</p>
    #
    #   @return [String]
    #
    DeleteFilterOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeOrganizationConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>The scan types are automatically enabled for new members of your organization.</p>
    #
    #   @return [AutoEnable]
    #
    # @!attribute max_account_limit_reached
    #   <p>Represents whether your organization has reached the maximum Amazon Web Services account limit for Amazon Inspector.</p>
    #
    #   @return [Boolean]
    #
    DescribeOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      :max_account_limit_reached,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details of the Amazon S3 bucket and KMS key used to export findings.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the Amazon S3 bucket to export findings to.</p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>The prefix of the KMS key used to export findings.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt data when exporting findings.</p>
    #
    #   @return [String]
    #
    Destination = ::Struct.new(
      :bucket_name,
      :key_prefix,
      :kms_key_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the current Amazon Inspector delegated administrator.</p>
    #
    #   @return [String]
    #
    DisableDelegatedAdminAccountInput = ::Struct.new(
      :delegated_admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the successfully disabled delegated administrator.</p>
    #
    #   @return [String]
    #
    DisableDelegatedAdminAccountOutput = ::Struct.new(
      :delegated_admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>An array of account IDs you want to disable Amazon Inspector scans for.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The resource scan types you want to disable.</p>
    #
    #   @return [Array<String>]
    #
    DisableInput = ::Struct.new(
      :account_ids,
      :resource_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>Information on the accounts that have had Amazon Inspector scans successfully disabled. Details are
    #            provided for each account.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute failed_accounts
    #   <p>Information on any accounts for which Amazon Inspector scans could not be disabled. Details are
    #            provided for each account.</p>
    #
    #   @return [Array<FailedAccount>]
    #
    DisableOutput = ::Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to disassociate.</p>
    #
    #   @return [String]
    #
    DisassociateMemberInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the successfully disassociated member.</p>
    #
    #   @return [String]
    #
    DisassociateMemberOutput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that define an aggregation based on Amazon EC2 instances.</p>
    #
    # @!attribute amis
    #   <p>The AMI IDs associated with the Amazon EC2 instances to aggregate findings for.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute operating_systems
    #   <p>The operating system types to aggregate findings for. Valid values must be uppercase and
    #            underscore separated, examples are <code>ORACLE_LINUX_7</code> and
    #            <code>ALPINE_LINUX_3_8</code>.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute instance_ids
    #   <p>The Amazon EC2 instance IDs to aggregate findings for.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute instance_tags
    #   <p>The Amazon EC2 instance tags to aggregate findings for.</p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["NETWORK_FINDINGS", "CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    Ec2InstanceAggregation = ::Struct.new(
      :amis,
      :operating_systems,
      :instance_ids,
      :instance_tags,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains the results of a finding aggregation by Amazon EC2 instance.</p>
    #
    # @!attribute instance_id
    #   <p>The Amazon EC2 instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute ami
    #   <p>The Amazon Machine Image (AMI) of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system of the Amazon EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_tags
    #   <p>The tags attached to the instance.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account the Amazon EC2 instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    # @!attribute network_findings
    #   <p>The number of network findings for the Amazon EC2 instance.</p>
    #
    #   @return [Integer]
    #
    Ec2InstanceAggregationResponse = ::Struct.new(
      :instance_id,
      :ami,
      :operating_system,
      :instance_tags,
      :account_id,
      :severity_counts,
      :network_findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Ec2InstanceSortBy
    #
    module Ec2InstanceSortBy
      # No documentation available.
      #
      NETWORK_FINDINGS = "NETWORK_FINDINGS"

      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Meta data details of an Amazon EC2 instance.</p>
    #
    # @!attribute tags
    #   <p>The tags attached to the instance.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) used to launch the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>The platform of the instance.</p>
    #
    #   Enum, one of: ["WINDOWS", "LINUX", "UNKNOWN"]
    #
    #   @return [String]
    #
    Ec2Metadata = ::Struct.new(
      :tags,
      :ami_id,
      :platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Ec2Platform
    #
    module Ec2Platform
      # No documentation available.
      #
      WINDOWS = "WINDOWS"

      # No documentation available.
      #
      LINUX = "LINUX"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>Information on the Amazon ECR image metadata associated with a finding.</p>
    #
    # @!attribute tags
    #   <p>Tags associated with the Amazon ECR image metadata.</p>
    #
    #   @return [Array<String>]
    #
    EcrContainerImageMetadata = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the Amazon ECR repository metadata associated with a finding.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon ECR repository.</p>
    #
    #   @return [String]
    #
    # @!attribute scan_frequency
    #   <p>The frequency of scans.</p>
    #
    #   Enum, one of: ["MANUAL", "SCAN_ON_PUSH", "CONTINUOUS_SCAN"]
    #
    #   @return [String]
    #
    EcrRepositoryMetadata = ::Struct.new(
      :name,
      :scan_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EcrScanFrequency
    #
    module EcrScanFrequency
      # No documentation available.
      #
      MANUAL = "MANUAL"

      # No documentation available.
      #
      SCAN_ON_PUSH = "SCAN_ON_PUSH"

      # No documentation available.
      #
      CONTINUOUS_SCAN = "CONTINUOUS_SCAN"
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #
    #   @return [String]
    #
    EnableDelegatedAdminAccountInput = ::Struct.new(
      :delegated_admin_account_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the successfully Amazon Inspector delegated administrator.</p>
    #
    #   @return [String]
    #
    EnableDelegatedAdminAccountOutput = ::Struct.new(
      :delegated_admin_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>A list of account IDs you want to enable Amazon Inspector scans for.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The resource scan types you want to enable.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the request.</p>
    #
    #   @return [String]
    #
    EnableInput = ::Struct.new(
      :account_ids,
      :resource_types,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>Information on the accounts that have had Amazon Inspector scans successfully enabled. Details are
    #            provided for each account.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute failed_accounts
    #   <p>Information on any accounts for which Amazon Inspector scans could not be enabled. Details are
    #            provided for each account.</p>
    #
    #   @return [Array<FailedAccount>]
    #
    EnableOutput = ::Struct.new(
      :accounts,
      :failed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      ALREADY_ENABLED = "ALREADY_ENABLED"

      # No documentation available.
      #
      ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS"

      # No documentation available.
      #
      DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS"

      # No documentation available.
      #
      SUSPEND_IN_PROGRESS = "SUSPEND_IN_PROGRESS"

      # No documentation available.
      #
      RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      SSM_UNAVAILABLE = "SSM_UNAVAILABLE"

      # No documentation available.
      #
      SSM_THROTTLED = "SSM_THROTTLED"

      # No documentation available.
      #
      EVENTBRIDGE_UNAVAILABLE = "EVENTBRIDGE_UNAVAILABLE"

      # No documentation available.
      #
      EVENTBRIDGE_THROTTLED = "EVENTBRIDGE_THROTTLED"

      # No documentation available.
      #
      RESOURCE_SCAN_NOT_DISABLED = "RESOURCE_SCAN_NOT_DISABLED"

      # No documentation available.
      #
      DISASSOCIATE_ALL_MEMBERS = "DISASSOCIATE_ALL_MEMBERS"
    end

    # Includes enum constants for ExternalReportStatus
    #
    module ExternalReportStatus
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object with details on why an account failed to enable Amazon Inspector.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status
    #   <p>An object detailing which resources Amazon Inspector is enabled to scan for the account.</p>
    #
    #   @return [ResourceStatus]
    #
    # @!attribute error_code
    #   <p>The error code explaining why the account failed to enable Amazon Inspector.</p>
    #
    #   Enum, one of: ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message received when the account failed to enable Amazon Inspector.</p>
    #
    #   @return [String]
    #
    FailedAccount = ::Struct.new(
      :account_id,
      :status,
      :resource_status,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a filter.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) associated with this filter.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_id
    #   <p>The Amazon Web Services account ID of the account that created the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute criteria
    #   <p>Details on the filter criteria associated with this filter.</p>
    #
    #   @return [FilterCriteria]
    #
    # @!attribute action
    #   <p>The action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NONE", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time this filter was created at.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time the filter was last updated at.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>A description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the filter.</p>
    #
    #   @return [Hash<String, String>]
    #
    Filter = ::Struct.new(
      :arn,
      :owner_id,
      :name,
      :criteria,
      :action,
      :created_at,
      :updated_at,
      :description,
      :reason,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterAction
    #
    module FilterAction
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SUPPRESS = "SUPPRESS"
    end

    # <p>Details on the criteria used to define the filter.</p>
    #
    # @!attribute finding_arn
    #   <p>Details on the finding ARNs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute aws_account_id
    #   <p>Details of the Amazon Web Services account IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute finding_type
    #   <p>Details on the finding types used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute severity
    #   <p>Details on the severity used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute first_observed_at
    #   <p>Details on the date and time a finding was first seen used to filter findings.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute last_observed_at
    #   <p>Details on the date and time a finding was last seen used to filter findings.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute updated_at
    #   <p>Details on the date and time a finding was last updated at used to filter findings.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute finding_status
    #   <p>Details on the finding status types used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute title
    #   <p>Details on the finding title used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute inspector_score
    #   <p>The Amazon Inspector score to filter on.</p>
    #
    #   @return [Array<NumberFilter>]
    #
    # @!attribute resource_type
    #   <p>Details on the resource types used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_id
    #   <p>Details on the resource IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_tags
    #   <p>Details on the resource tags used to filter findings.</p>
    #
    #   @return [Array<MapFilter>]
    #
    # @!attribute ec2_instance_image_id
    #   <p>Details of the Amazon EC2 instance image IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ec2_instance_vpc_id
    #   <p>Details of the Amazon EC2 instance VPC IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ec2_instance_subnet_id
    #   <p>Details of the Amazon EC2 instance subnet IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ecr_image_pushed_at
    #   <p>Details on the Amazon ECR image push date and time used to filter findings.</p>
    #
    #   @return [Array<DateFilter>]
    #
    # @!attribute ecr_image_architecture
    #   <p>Details of the Amazon ECR image architecture types used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ecr_image_registry
    #   <p>Details on the Amazon ECR registry used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ecr_image_repository_name
    #   <p>Details on the name of the Amazon ECR repository used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ecr_image_tags
    #   <p>The tags attached to the Amazon ECR container image.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute ecr_image_hash
    #   <p>Details of the Amazon ECR image hashes used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute port_range
    #   <p>Details on the port ranges used to filter findings.</p>
    #
    #   @return [Array<PortRangeFilter>]
    #
    # @!attribute network_protocol
    #   <p>Details on the ingress source addresses used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute component_id
    #   <p>Details of the component IDs used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute component_type
    #   <p>Details of the component types used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute vulnerability_id
    #   <p>Details on the vulnerability ID used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute vulnerability_source
    #   <p>Details on the vulnerability type used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute vendor_severity
    #   <p>Details on the vendor severity used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute vulnerable_packages
    #   <p>Details on the vulnerable packages used to filter findings.</p>
    #
    #   @return [Array<PackageFilter>]
    #
    # @!attribute related_vulnerabilities
    #   <p>Details on the related vulnerabilities used to filter findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    FilterCriteria = ::Struct.new(
      :finding_arn,
      :aws_account_id,
      :finding_type,
      :severity,
      :first_observed_at,
      :last_observed_at,
      :updated_at,
      :finding_status,
      :title,
      :inspector_score,
      :resource_type,
      :resource_id,
      :resource_tags,
      :ec2_instance_image_id,
      :ec2_instance_vpc_id,
      :ec2_instance_subnet_id,
      :ecr_image_pushed_at,
      :ecr_image_architecture,
      :ecr_image_registry,
      :ecr_image_repository_name,
      :ecr_image_tags,
      :ecr_image_hash,
      :port_range,
      :network_protocol,
      :component_id,
      :component_type,
      :vulnerability_id,
      :vulnerability_source,
      :vendor_severity,
      :vulnerable_packages,
      :related_vulnerabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon Inspector finding.</p>
    #
    # @!attribute finding_arn
    #   <p>The Amazon Resource Number (ARN) of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the finding.</p>
    #
    #   Enum, one of: ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute remediation
    #   <p>An object that contains the details about how to remediate a finding.</p>
    #
    #   @return [Remediation]
    #
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #
    #   Enum, one of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNTRIAGED"]
    #
    #   @return [String]
    #
    # @!attribute first_observed_at
    #   <p>The date and time that the finding was first observed.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_observed_at
    #   <p>The date and time that the finding was last observed.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time the finding was last updated at.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the finding.</p>
    #
    #   Enum, one of: ["ACTIVE", "SUPPRESSED", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>Contains information on the resources involved in a finding.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute inspector_score
    #   <p>The Amazon Inspector score given to the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute inspector_score_details
    #   <p>An object that contains details of the Amazon Inspector score.</p>
    #
    #   @return [InspectorScoreDetails]
    #
    # @!attribute network_reachability_details
    #   <p>An object that contains the details of a network reachability finding.</p>
    #
    #   @return [NetworkReachabilityDetails]
    #
    # @!attribute package_vulnerability_details
    #   <p>An object that contains the details of a package vulnerability finding.</p>
    #
    #   @return [PackageVulnerabilityDetails]
    #
    Finding = ::Struct.new(
      :finding_arn,
      :aws_account_id,
      :type,
      :description,
      :title,
      :remediation,
      :severity,
      :first_observed_at,
      :last_observed_at,
      :updated_at,
      :status,
      :resources,
      :inspector_score,
      :inspector_score_details,
      :network_reachability_details,
      :package_vulnerability_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingStatus
    #
    module FindingStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      SUPPRESSED = "SUPPRESSED"

      # No documentation available.
      #
      CLOSED = "CLOSED"
    end

    # Includes enum constants for FindingType
    #
    module FindingType
      # No documentation available.
      #
      NETWORK_REACHABILITY = "NETWORK_REACHABILITY"

      # No documentation available.
      #
      PACKAGE_VULNERABILITY = "PACKAGE_VULNERABILITY"
    end

    # <p>The details that define an aggregation based on finding type.</p>
    #
    # @!attribute finding_type
    #   <p>The finding type to aggregate.</p>
    #
    #   Enum, one of: ["NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY"]
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to aggregate.</p>
    #
    #   Enum, one of: ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    FindingTypeAggregation = ::Struct.new(
      :finding_type,
      :resource_type,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains the results of a finding type aggregation.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>The value to sort results by.</p>
    #
    #   @return [SeverityCounts]
    #
    FindingTypeAggregationResponse = ::Struct.new(
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FindingTypeSortBy
    #
    module FindingTypeSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Information about the Amazon Inspector free trial for an account.</p>
    #
    # @!attribute account_id
    #   <p>The account associated with the Amazon Inspector free trial information.</p>
    #
    #   @return [String]
    #
    # @!attribute free_trial_info
    #   <p>Contains information about the Amazon Inspector free trial for an account.</p>
    #
    #   @return [Array<FreeTrialInfo>]
    #
    FreeTrialAccountInfo = ::Struct.new(
      :account_id,
      :free_trial_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the Amazon Inspector free trial for an account.</p>
    #
    # @!attribute type
    #   <p>The type of scan covered by the Amazon Inspector free trail.</p>
    #
    #   Enum, one of: ["EC2", "ECR"]
    #
    #   @return [String]
    #
    # @!attribute start
    #   <p>The date and time that the Amazon Inspector free trail started for a given account.</p>
    #
    #   @return [Time]
    #
    # @!attribute end
    #   <p>The date and time that the Amazon Inspector free trail ends for a given account.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    FreeTrialInfo = ::Struct.new(
      :type,
      :start,
      :end,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an error received while accessing free trail data for an account.</p>
    #
    # @!attribute account_id
    #   <p>The account associated with the Amazon Inspector free trial information.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ACCESS_DENIED", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message returned.</p>
    #
    #   @return [String]
    #
    FreeTrialInfoError = ::Struct.new(
      :account_id,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FreeTrialInfoErrorCode
    #
    module FreeTrialInfoErrorCode
      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # Includes enum constants for FreeTrialStatus
    #
    module FreeTrialStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for FreeTrialType
    #
    module FreeTrialType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      ECR = "ECR"
    end

    GetDelegatedAdminAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_admin
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator.</p>
    #
    #   @return [DelegatedAdmin]
    #
    GetDelegatedAdminAccountOutput = ::Struct.new(
      :delegated_admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report to retrieve the status of.</p>
    #
    #   @return [String]
    #
    GetFindingsReportStatusInput = ::Struct.new(
      :report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_id
    #   <p>The ID of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the report.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code of the report.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "INVALID_PERMISSIONS"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The destination of the report.</p>
    #
    #   @return [Destination]
    #
    # @!attribute filter_criteria
    #   <p>The filter criteria associated with the report.</p>
    #
    #   @return [FilterCriteria]
    #
    GetFindingsReportStatusOutput = ::Struct.new(
      :report_id,
      :status,
      :error_code,
      :error_message,
      :destination,
      :filter_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account to retrieve information on.</p>
    #
    #   @return [String]
    #
    GetMemberInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member
    #   <p>Details of the retrieved member account.</p>
    #
    #   @return [Member]
    #
    GetMemberOutput = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupKey
    #
    module GroupKey
      # No documentation available.
      #
      SCAN_STATUS_CODE = "SCAN_STATUS_CODE"

      # No documentation available.
      #
      SCAN_STATUS_REASON = "SCAN_STATUS_REASON"

      # No documentation available.
      #
      ACCOUNT_ID = "ACCOUNT_ID"

      # No documentation available.
      #
      RESOURCE_TYPE = "RESOURCE_TYPE"

      # No documentation available.
      #
      ECR_REPOSITORY_NAME = "ECR_REPOSITORY_NAME"
    end

    # <p>The details that define an aggregation based on container image layers.</p>
    #
    # @!attribute repositories
    #   <p>The repository associated with the container image hosting the layers.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_ids
    #   <p>The ID of the container image layer.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute layer_hashes
    #   <p>The hashes associated with the layers.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    ImageLayerAggregation = ::Struct.new(
      :repositories,
      :resource_ids,
      :layer_hashes,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains the results of a finding aggregation by image layer.</p>
    #
    # @!attribute repository
    #   <p>The repository the layer resides in.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource ID of the container image layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_hash
    #   <p>The layer hash.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account that owns the container image hosting the layer image.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that represents the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    ImageLayerAggregationResponse = ::Struct.new(
      :repository,
      :resource_id,
      :layer_hash,
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageLayerSortBy
    #
    module ImageLayerSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Information about the Amazon Inspector score given to a finding.</p>
    #
    # @!attribute adjusted_cvss
    #   <p>An object that contains details about the CVSS score given to a finding.</p>
    #
    #   @return [CvssScoreDetails]
    #
    InspectorScoreDetails = ::Struct.new(
      :adjusted_cvss,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has failed due to an internal failure of the Amazon Inspector service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The service scan type to check permissions for.</p>
    #
    #   Enum, one of: ["EC2", "ECR"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListAccountPermissionsInput = ::Struct.new(
      :service,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>Contains details on the permissions an account has to configure Amazon Inspector.</p>
    #
    #   @return [Array<Permission>]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListAccountPermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #
    #   @return [CoverageFilterCriteria]
    #
    ListCoverageInput = ::Struct.new(
      :max_results,
      :next_token,
      :filter_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute covered_resources
    #   <p>An object that contains details on the covered resources in your environment.</p>
    #
    #   @return [Array<CoveredResource>]
    #
    ListCoverageOutput = ::Struct.new(
      :next_token,
      :covered_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter_criteria
    #   <p>An object that contains details on the filters to apply to the coverage data for your
    #            environment.</p>
    #
    #   @return [CoverageFilterCriteria]
    #
    # @!attribute group_by
    #   <p>The value to group the results by.</p>
    #
    #   Enum, one of: ["SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListCoverageStatisticsInput = ::Struct.new(
      :filter_criteria,
      :group_by,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute counts_by_group
    #   <p>An array with the number for each group.</p>
    #
    #   @return [Array<Counts>]
    #
    # @!attribute total_counts
    #   <p>The total number for all groups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListCoverageStatisticsOutput = ::Struct.new(
      :counts_by_group,
      :total_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListDelegatedAdminAccountsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_admin_accounts
    #   <p>Details of the Amazon Inspector delegated administrator of your organization.</p>
    #
    #   @return [Array<DelegatedAdminAccount>]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListDelegatedAdminAccountsOutput = ::Struct.new(
      :delegated_admin_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arns
    #   <p>The Amazon resource number (ARN) of the filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute action
    #   <p>The action the filter applies to matched findings.</p>
    #
    #   Enum, one of: ["NONE", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    ListFiltersInput = ::Struct.new(
      :arns,
      :action,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Contains details on the filters associated with your account.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListFiltersOutput = ::Struct.new(
      :filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aggregation_type
    #   <p>The type of the aggregation request.</p>
    #
    #   Enum, one of: ["FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute account_ids
    #   <p>The Amazon Web Services account IDs to retrieve finding aggregation data for.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute aggregation_request
    #   <p>Details of the aggregation request that is used to filter your aggregation results.</p>
    #
    #   @return [AggregationRequest]
    #
    ListFindingAggregationsInput = ::Struct.new(
      :aggregation_type,
      :next_token,
      :max_results,
      :account_ids,
      :aggregation_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aggregation_type
    #   <p>The type of aggregation to perform.</p>
    #
    #   Enum, one of: ["FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute responses
    #   <p>Objects that contain the results of an aggregation operation.</p>
    #
    #   @return [Array<AggregationResponse>]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListFindingAggregationsOutput = ::Struct.new(
      :aggregation_type,
      :responses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_criteria
    #   <p>Details on the filters to apply to your finding results.</p>
    #
    #   @return [FilterCriteria]
    #
    # @!attribute sort_criteria
    #   <p>Details on the sort criteria to apply to your finding results.</p>
    #
    #   @return [SortCriteria]
    #
    ListFindingsInput = ::Struct.new(
      :max_results,
      :next_token,
      :filter_criteria,
      :sort_criteria,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute findings
    #   <p>Contains details on the findings in your environment.</p>
    #
    #   @return [Array<Finding>]
    #
    ListFindingsOutput = ::Struct.new(
      :next_token,
      :findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute only_associated
    #   <p>Specifies whether to list only currently associated members if <code>True</code> or to
    #            list all members within the organization if <code>False</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    ListMembersInput = ::Struct.new(
      :only_associated,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute members
    #   <p>An object that contains details for each member account.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more
    #            items.</p>
    #
    #   @return [String]
    #
    ListMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon resource number (ARN) of the resource to list tags of.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value
    #            of this parameter to null for the first request to a list action. For subsequent calls, use
    #            the <code>NextToken</code> value returned from the previous request to continue listing
    #            results after the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The Amazon Web Services account IDs to retrieve usage totals for.</p>
    #
    #   @return [Array<String>]
    #
    ListUsageTotalsInput = ::Struct.new(
      :max_results,
      :next_token,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination parameter to be used on the next list operation to retrieve more items.</p>
    #
    #   @return [String]
    #
    # @!attribute totals
    #   <p>An object with details on the total usage for the requested account.</p>
    #
    #   @return [Array<UsageTotal>]
    #
    ListUsageTotalsOutput = ::Struct.new(
      :next_token,
      :totals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MapComparison
    #
    module MapComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"
    end

    # <p>An object that describes details of a map filter.</p>
    #
    # @!attribute comparison
    #   <p>The operator to use when comparing values in the filter.</p>
    #
    #   Enum, one of: ["EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The tag key used in the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value used in the filter.</p>
    #
    #   @return [String]
    #
    MapFilter = ::Struct.new(
      :comparison,
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on a member account in your organization.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_status
    #   <p>The status of the member account.</p>
    #
    #   Enum, one of: ["CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"]
    #
    #   @return [String]
    #
    # @!attribute delegated_admin_account_id
    #   <p>The Amazon Web Services account ID of the Amazon Inspector delegated administrator for this member account.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>A timestamp showing when the status of this member was last updated.</p>
    #
    #   @return [Time]
    #
    Member = ::Struct.new(
      :account_id,
      :relationship_status,
      :delegated_admin_account_id,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the network path associated with a finding.</p>
    #
    # @!attribute steps
    #   <p>The details on the steps in the network path.</p>
    #
    #   @return [Array<Step>]
    #
    NetworkPath = ::Struct.new(
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkProtocol
    #
    module NetworkProtocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"
    end

    # <p>Contains the details of a network reachability finding.</p>
    #
    # @!attribute open_port_range
    #   <p>An object that contains details about the open port range associated with a finding.</p>
    #
    #   @return [PortRange]
    #
    # @!attribute protocol
    #   <p>The protocol associated with a finding.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    # @!attribute network_path
    #   <p>An object that contains details about a network path associated with a finding.</p>
    #
    #   @return [NetworkPath]
    #
    NetworkReachabilityDetails = ::Struct.new(
      :open_port_range,
      :protocol,
      :network_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes the details of a number filter.</p>
    #
    # @!attribute upper_inclusive
    #   <p>The highest number to be included in the filter.</p>
    #
    #   @return [Float]
    #
    # @!attribute lower_inclusive
    #   <p>The lowest number to be included in the filter.</p>
    #
    #   @return [Float]
    #
    NumberFilter = ::Struct.new(
      :upper_inclusive,
      :lower_inclusive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Operation
    #
    module Operation
      # No documentation available.
      #
      ENABLE_SCANNING = "ENABLE_SCANNING"

      # No documentation available.
      #
      DISABLE_SCANNING = "DISABLE_SCANNING"

      # No documentation available.
      #
      ENABLE_REPOSITORY = "ENABLE_REPOSITORY"

      # No documentation available.
      #
      DISABLE_REPOSITORY = "DISABLE_REPOSITORY"
    end

    # <p>The details that define an aggregation based on operating system package type.</p>
    #
    # @!attribute package_names
    #   <p>The names of packages to aggregate findings on.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    PackageAggregation = ::Struct.new(
      :package_names,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains the results of a finding aggregation by image layer.</p>
    #
    # @!attribute package_name
    #   <p>The name of the operating system package.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that contains the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    PackageAggregationResponse = ::Struct.new(
      :package_name,
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the details of a package filter.</p>
    #
    # @!attribute name
    #   <p>An object that contains details on the name of the package to filter on.</p>
    #
    #   @return [StringFilter]
    #
    # @!attribute version
    #   <p>The package version to filter on.</p>
    #
    #   @return [StringFilter]
    #
    # @!attribute epoch
    #   <p>An object that contains details on the package epoch to filter on.</p>
    #
    #   @return [NumberFilter]
    #
    # @!attribute release
    #   <p>An object that contains details on the package release to filter on.</p>
    #
    #   @return [StringFilter]
    #
    # @!attribute architecture
    #   <p>An object that contains details on the package architecture type to filter on.</p>
    #
    #   @return [StringFilter]
    #
    # @!attribute source_layer_hash
    #   <p>An object that contains details on the source layer hash to filter on.</p>
    #
    #   @return [StringFilter]
    #
    PackageFilter = ::Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture,
      :source_layer_hash,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PackageManager
    #
    module PackageManager
      # No documentation available.
      #
      BUNDLER = "BUNDLER"

      # No documentation available.
      #
      CARGO = "CARGO"

      # No documentation available.
      #
      COMPOSER = "COMPOSER"

      # No documentation available.
      #
      NPM = "NPM"

      # No documentation available.
      #
      NUGET = "NUGET"

      # No documentation available.
      #
      PIPENV = "PIPENV"

      # No documentation available.
      #
      POETRY = "POETRY"

      # No documentation available.
      #
      YARN = "YARN"

      # No documentation available.
      #
      GOBINARY = "GOBINARY"

      # No documentation available.
      #
      GOMOD = "GOMOD"

      # No documentation available.
      #
      JAR = "JAR"

      # No documentation available.
      #
      OS = "OS"
    end

    # Includes enum constants for PackageSortBy
    #
    module PackageSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Information about a package vulnerability finding.</p>
    #
    # @!attribute vulnerability_id
    #   <p>The ID given to this vulnerability.</p>
    #
    #   @return [String]
    #
    # @!attribute vulnerable_packages
    #   <p>The packages impacted by this vulnerability.</p>
    #
    #   @return [Array<VulnerablePackage>]
    #
    # @!attribute source
    #   <p>The source of the vulnerability information.</p>
    #
    #   @return [String]
    #
    # @!attribute cvss
    #   <p>An object that contains details about the CVSS score of a finding.</p>
    #
    #   @return [Array<CvssScore>]
    #
    # @!attribute related_vulnerabilities
    #   <p>One or more vulnerabilities related to the one identified in this finding.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_url
    #   <p>A URL to the source of the vulnerability information.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_severity
    #   <p>The severity the vendor has given to this vulnerability type.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_created_at
    #   <p>The date and time that this vulnerability was first added to the vendor's database.</p>
    #
    #   @return [Time]
    #
    # @!attribute vendor_updated_at
    #   <p>The date and time the vendor last updated this vulnerability in their database.</p>
    #
    #   @return [Time]
    #
    # @!attribute reference_urls
    #   <p>One or more URLs that contain details about this vulnerability type.</p>
    #
    #   @return [Array<String>]
    #
    PackageVulnerabilityDetails = ::Struct.new(
      :vulnerability_id,
      :vulnerable_packages,
      :source,
      :cvss,
      :related_vulnerabilities,
      :source_url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at,
      :reference_urls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information on the permissions an account has within Amazon Inspector.</p>
    #
    # @!attribute service
    #   <p>The services that the permissions allow an account to perform the given operations for.</p>
    #
    #   Enum, one of: ["EC2", "ECR"]
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The operations that can be performed with the given permissions.</p>
    #
    #   Enum, one of: ["ENABLE_SCANNING", "DISABLE_SCANNING", "ENABLE_REPOSITORY", "DISABLE_REPOSITORY"]
    #
    #   @return [String]
    #
    Permission = ::Struct.new(
      :service,
      :operation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the port range associated with a finding.</p>
    #
    # @!attribute begin
    #   <p>The beginning port in a port range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end
    #   <p>The ending port in a port range.</p>
    #
    #   @return [Integer]
    #
    PortRange = ::Struct.new(
      :begin,
      :end,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes the details of a port range filter.</p>
    #
    # @!attribute begin_inclusive
    #   <p>The port number the port range begins at.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_inclusive
    #   <p>The port number the port range ends at.</p>
    #
    #   @return [Integer]
    #
    PortRangeFilter = ::Struct.new(
      :begin_inclusive,
      :end_inclusive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the recommended course of action to remediate the finding.</p>
    #
    # @!attribute text
    #   <p>The recommended course of action to remediate the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL address to the CVE remediation recommendations.</p>
    #
    #   @return [String]
    #
    Recommendation = ::Struct.new(
      :text,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelationshipStatus
    #
    module RelationshipStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      INVITED = "INVITED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      REMOVED = "REMOVED"

      # No documentation available.
      #
      RESIGNED = "RESIGNED"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      EMAIL_VERIFICATION_IN_PROGRESS = "EMAIL_VERIFICATION_IN_PROGRESS"

      # No documentation available.
      #
      EMAIL_VERIFICATION_FAILED = "EMAIL_VERIFICATION_FAILED"

      # No documentation available.
      #
      REGION_DISABLED = "REGION_DISABLED"

      # No documentation available.
      #
      ACCOUNT_SUSPENDED = "ACCOUNT_SUSPENDED"

      # No documentation available.
      #
      CANNOT_CREATE_DETECTOR_IN_ORG_MASTER = "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    end

    # <p>Information on how to remediate a finding.</p>
    #
    # @!attribute recommendation
    #   <p>An object that contains information about the recommended course of action to remediate the finding.</p>
    #
    #   @return [Recommendation]
    #
    Remediation = ::Struct.new(
      :recommendation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportFormat
    #
    module ReportFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # Includes enum constants for ReportingErrorCode
    #
    module ReportingErrorCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      INVALID_PERMISSIONS = "INVALID_PERMISSIONS"
    end

    # <p>The details that define an aggregation based on repository.</p>
    #
    # @!attribute repositories
    #   <p>The names of repositories to aggregate findings on.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL", "AFFECTED_IMAGES"]
    #
    #   @return [String]
    #
    RepositoryAggregation = ::Struct.new(
      :repositories,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains details on the results of a finding aggregation by repository.</p>
    #
    # @!attribute repository
    #   <p>The name of the repository associated with the findings.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that represent the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    # @!attribute affected_images
    #   <p>The number of container images impacted by the findings.</p>
    #
    #   @return [Integer]
    #
    RepositoryAggregationResponse = ::Struct.new(
      :repository,
      :account_id,
      :severity_counts,
      :affected_images,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositorySortBy
    #
    module RepositorySortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      AFFECTED_IMAGES = "AFFECTED_IMAGES"
    end

    # <p>Details about the resource involved in a finding.</p>
    #
    # @!attribute type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute partition
    #   <p>The partition of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region the impacted resource is located in.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute details
    #   <p>An object that contains details about the resource involved in a finding.</p>
    #
    #   @return [ResourceDetails]
    #
    Resource = ::Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :tags,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the resource involved in the finding.</p>
    #
    # @!attribute aws_ec2_instance
    #   <p>An object that contains details about the Amazon EC2 instance involved in the finding.</p>
    #
    #   @return [AwsEc2InstanceDetails]
    #
    # @!attribute aws_ecr_container_image
    #   <p>An object that contains details about the Amazon ECR container image involved in the finding.</p>
    #
    #   @return [AwsEcrContainerImageDetails]
    #
    ResourceDetails = ::Struct.new(
      :aws_ec2_instance,
      :aws_ecr_container_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation tried to access an invalid resource. Make sure the resource is specified correctly.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains details about the metadata for an Amazon ECR resource.</p>
    #
    # @!attribute ecr_repository
    #   <p>An object that contains details about the repository an Amazon ECR image resides in.</p>
    #
    #   @return [EcrRepositoryMetadata]
    #
    # @!attribute ecr_image
    #   <p>An object that contains details about the container metadata for an Amazon ECR image.</p>
    #
    #   @return [EcrContainerImageMetadata]
    #
    # @!attribute ec2
    #   <p>An object that contains metadata details for an Amazon EC2 instance.</p>
    #
    #   @return [Ec2Metadata]
    #
    ResourceScanMetadata = ::Struct.new(
      :ecr_repository,
      :ecr_image,
      :ec2,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceScanType
    #
    module ResourceScanType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      ECR = "ECR"
    end

    # <p>Details the state of Amazon Inspector for each resource type Amazon Inspector scans.</p>
    #
    # @!attribute ec2
    #   <p>An object detailing the state of Amazon Inspector scanning for Amazon EC2 resources.</p>
    #
    #   @return [State]
    #
    # @!attribute ecr
    #   <p>An object detailing the state of Amazon Inspector scanning for Amazon ECR resources.</p>
    #
    #   @return [State]
    #
    ResourceState = ::Struct.new(
      :ec2,
      :ecr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details the status of Amazon Inspector for each resource type Amazon Inspector scans.</p>
    #
    # @!attribute ec2
    #   <p>The status of Amazon Inspector scanning for Amazon EC2 resources.</p>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute ecr
    #   <p>The status of Amazon Inspector scanning for Amazon ECR resources.</p>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    ResourceStatus = ::Struct.new(
      :ec2,
      :ecr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      AWS_EC2_INSTANCE = "AWS_EC2_INSTANCE"

      # No documentation available.
      #
      AWS_ECR_CONTAINER_IMAGE = "AWS_ECR_CONTAINER_IMAGE"

      # No documentation available.
      #
      AWS_ECR_REPOSITORY = "AWS_ECR_REPOSITORY"
    end

    # <p>The status of the scan.</p>
    #
    # @!attribute status_code
    #   <p>The status code of the scan.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the scan.</p>
    #
    #   Enum, one of: ["PENDING_INITIAL_SCAN", "ACCESS_DENIED", "INTERNAL_ERROR", "UNMANAGED_EC2_INSTANCE", "UNSUPPORTED_OS", "SCAN_ELIGIBILITY_EXPIRED", "RESOURCE_TERMINATED", "SUCCESSFUL", "NO_RESOURCES_FOUND", "IMAGE_SIZE_EXCEEDED", "SCAN_FREQUENCY_MANUAL", "SCAN_FREQUENCY_SCAN_ON_PUSH", "EC2_INSTANCE_STOPPED"]
    #
    #   @return [String]
    #
    ScanStatus = ::Struct.new(
      :status_code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScanStatusCode
    #
    module ScanStatusCode
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for ScanStatusReason
    #
    module ScanStatusReason
      # No documentation available.
      #
      PENDING_INITIAL_SCAN = "PENDING_INITIAL_SCAN"

      # No documentation available.
      #
      ACCESS_DENIED = "ACCESS_DENIED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      UNMANAGED_EC2_INSTANCE = "UNMANAGED_EC2_INSTANCE"

      # No documentation available.
      #
      UNSUPPORTED_OS = "UNSUPPORTED_OS"

      # No documentation available.
      #
      SCAN_ELIGIBILITY_EXPIRED = "SCAN_ELIGIBILITY_EXPIRED"

      # No documentation available.
      #
      RESOURCE_TERMINATED = "RESOURCE_TERMINATED"

      # No documentation available.
      #
      SUCCESSFUL = "SUCCESSFUL"

      # No documentation available.
      #
      NO_RESOURCES_FOUND = "NO_RESOURCES_FOUND"

      # No documentation available.
      #
      IMAGE_SIZE_EXCEEDED = "IMAGE_SIZE_EXCEEDED"

      # No documentation available.
      #
      SCAN_FREQUENCY_MANUAL = "SCAN_FREQUENCY_MANUAL"

      # No documentation available.
      #
      SCAN_FREQUENCY_SCAN_ON_PUSH = "SCAN_FREQUENCY_SCAN_ON_PUSH"

      # No documentation available.
      #
      EC2_INSTANCE_STOPPED = "EC2_INSTANCE_STOPPED"
    end

    # Includes enum constants for ScanType
    #
    module ScanType
      # No documentation available.
      #
      NETWORK = "NETWORK"

      # No documentation available.
      #
      PACKAGE = "PACKAGE"
    end

    # Includes enum constants for Service
    #
    module Service
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      ECR = "ECR"
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of
    #          the relevant resources, or use Service Quotas to request a service quota increase.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds a service quota.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Severity
    #
    module Severity
      # No documentation available.
      #
      INFORMATIONAL = "INFORMATIONAL"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      UNTRIAGED = "UNTRIAGED"
    end

    # <p>An object that contains the counts of aggregated finding per severity.</p>
    #
    # @!attribute all
    #   <p>The total count of findings from all severities.</p>
    #
    #   @return [Integer]
    #
    # @!attribute medium
    #   <p>The total count of medium severity findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute high
    #   <p>The total count of high severity findings.</p>
    #
    #   @return [Integer]
    #
    # @!attribute critical
    #   <p>The total count of critical severity findings.</p>
    #
    #   @return [Integer]
    #
    SeverityCounts = ::Struct.new(
      :all,
      :medium,
      :high,
      :critical,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the criteria used to sort finding results.</p>
    #
    # @!attribute field
    #   <p>The finding detail field by which results are sorted.</p>
    #
    #   Enum, one of: ["AWS_ACCOUNT_ID", "FINDING_TYPE", "SEVERITY", "FIRST_OBSERVED_AT", "LAST_OBSERVED_AT", "FINDING_STATUS", "RESOURCE_TYPE", "ECR_IMAGE_PUSHED_AT", "ECR_IMAGE_REPOSITORY_NAME", "ECR_IMAGE_REGISTRY", "NETWORK_PROTOCOL", "COMPONENT_TYPE", "VULNERABILITY_ID", "VULNERABILITY_SOURCE", "INSPECTOR_SCORE", "VENDOR_SEVERITY"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order by which findings are sorted.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortCriteria = ::Struct.new(
      :field,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortField
    #
    module SortField
      # No documentation available.
      #
      AWS_ACCOUNT_ID = "AWS_ACCOUNT_ID"

      # No documentation available.
      #
      FINDING_TYPE = "FINDING_TYPE"

      # No documentation available.
      #
      SEVERITY = "SEVERITY"

      # No documentation available.
      #
      FIRST_OBSERVED_AT = "FIRST_OBSERVED_AT"

      # No documentation available.
      #
      LAST_OBSERVED_AT = "LAST_OBSERVED_AT"

      # No documentation available.
      #
      FINDING_STATUS = "FINDING_STATUS"

      # No documentation available.
      #
      RESOURCE_TYPE = "RESOURCE_TYPE"

      # No documentation available.
      #
      ECR_IMAGE_PUSHED_AT = "ECR_IMAGE_PUSHED_AT"

      # No documentation available.
      #
      ECR_IMAGE_REPOSITORY_NAME = "ECR_IMAGE_REPOSITORY_NAME"

      # No documentation available.
      #
      ECR_IMAGE_REGISTRY = "ECR_IMAGE_REGISTRY"

      # No documentation available.
      #
      NETWORK_PROTOCOL = "NETWORK_PROTOCOL"

      # No documentation available.
      #
      COMPONENT_TYPE = "COMPONENT_TYPE"

      # No documentation available.
      #
      VULNERABILITY_ID = "VULNERABILITY_ID"

      # No documentation available.
      #
      VULNERABILITY_SOURCE = "VULNERABILITY_SOURCE"

      # No documentation available.
      #
      INSPECTOR_SCORE = "INSPECTOR_SCORE"

      # No documentation available.
      #
      VENDOR_SEVERITY = "VENDOR_SEVERITY"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>An object that described the state of Amazon Inspector scans for an account.</p>
    #
    # @!attribute status
    #   <p>The status of Amazon Inspector for the account.</p>
    #
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code explaining why the account failed to enable Amazon Inspector.</p>
    #
    #   Enum, one of: ["ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message received when the account failed to enable Amazon Inspector.</p>
    #
    #   @return [String]
    #
    State = ::Struct.new(
      :status,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      ENABLING = "ENABLING"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLING = "DISABLING"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      SUSPENDING = "SUSPENDING"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"
    end

    # <p>Details about the step associated with a finding.</p>
    #
    # @!attribute component_id
    #   <p>The component ID.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The component type.</p>
    #
    #   @return [String]
    #
    Step = ::Struct.new(
      :component_id,
      :component_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StringComparison
    #
    module StringComparison
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      PREFIX = "PREFIX"

      # No documentation available.
      #
      NOT_EQUALS = "NOT_EQUALS"
    end

    # <p>An object that describes the details of a string filter.</p>
    #
    # @!attribute comparison
    #   <p>The operator to use when comparing values in the filter</p>
    #
    #   Enum, one of: ["EQUALS", "PREFIX", "NOT_EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value to filter on.</p>
    #
    #   @return [String]
    #
    StringFilter = ::Struct.new(
      :comparison,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply a tag to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be added to a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details that define an aggregation based on finding title.</p>
    #
    # @!attribute titles
    #   <p>The finding titles to aggregate on.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute vulnerability_ids
    #   <p>The vulnerability IDs of the findings.</p>
    #
    #   @return [Array<StringFilter>]
    #
    # @!attribute resource_type
    #   <p>The resource type to aggregate on.</p>
    #
    #   Enum, one of: ["AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order to sort results by.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The value to sort results by.</p>
    #
    #   Enum, one of: ["CRITICAL", "HIGH", "ALL"]
    #
    #   @return [String]
    #
    TitleAggregation = ::Struct.new(
      :titles,
      :vulnerability_ids,
      :resource_type,
      :sort_order,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A response that contains details on the results of a finding aggregation by title.</p>
    #
    # @!attribute title
    #   <p>The title that the findings were aggregated on.</p>
    #
    #   @return [String]
    #
    # @!attribute vulnerability_id
    #   <p>The vulnerability ID of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the findings.</p>
    #
    #   @return [String]
    #
    # @!attribute severity_counts
    #   <p>An object that represent the count of matched findings per severity.</p>
    #
    #   @return [SeverityCounts]
    #
    TitleAggregationResponse = ::Struct.new(
      :title,
      :vulnerability_id,
      :account_id,
      :severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TitleSortBy
    #
    module TitleSortBy
      # No documentation available.
      #
      CRITICAL = "CRITICAL"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    #
    #   Enum, one of: ["NONE", "SUPPRESS"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_criteria
    #   <p>Defines the criteria to be update in the filter.</p>
    #
    #   @return [FilterCriteria]
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_arn
    #   <p>The Amazon Resource Number (ARN) of the filter to update.</p>
    #
    #   @return [String]
    #
    UpdateFilterInput = ::Struct.new(
      :action,
      :description,
      :filter_criteria,
      :name,
      :filter_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) of the successfully updated filter.</p>
    #
    #   @return [String]
    #
    UpdateFilterOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Defines which scan types are enabled automatically for new members of your Amazon Inspector organization.</p>
    #
    #   @return [AutoEnable]
    #
    UpdateOrganizationConfigurationInput = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>The updated status of scan types automatically enabled for new members of your Amazon Inspector organization.</p>
    #
    #   @return [AutoEnable]
    #
    UpdateOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains usage information about the cost of Amazon Inspector operation.</p>
    #
    # @!attribute type
    #   <p>The type scan.</p>
    #
    #   Enum, one of: ["EC2_INSTANCE_HOURS", "ECR_INITIAL_SCAN", "ECR_RESCAN"]
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>The total of usage.</p>
    #
    #   @return [Float]
    #
    # @!attribute estimated_monthly_cost
    #   <p>The estimated monthly cost of Amazon Inspector.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency
    #   <p>The currency type used when calculating usage data.</p>
    #
    #   Enum, one of: ["USD"]
    #
    #   @return [String]
    #
    Usage = ::Struct.new(
      :type,
      :total,
      :estimated_monthly_cost,
      :currency,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total ||= 0
        self.estimated_monthly_cost ||= 0
      end
    end

    # <p>The total of usage for an account ID.</p>
    #
    # @!attribute account_id
    #   <p>The account ID of the account that usage data was retrieved for.</p>
    #
    #   @return [String]
    #
    # @!attribute usage
    #   <p>An object representing the total usage for an account.</p>
    #
    #   @return [Array<Usage>]
    #
    UsageTotal = ::Struct.new(
      :account_id,
      :usage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageType
    #
    module UsageType
      # No documentation available.
      #
      EC2_INSTANCE_HOURS = "EC2_INSTANCE_HOURS"

      # No documentation available.
      #
      ECR_INITIAL_SCAN = "ECR_INITIAL_SCAN"

      # No documentation available.
      #
      ECR_RESCAN = "ECR_RESCAN"
    end

    # <p>The request has failed validation due to missing required fields or having invalid
    #          inputs.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #
    #   Enum, one of: ["CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The fields that failed validation.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes a validation exception.</p>
    #
    # @!attribute name
    #   <p>The name of the validation exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The validation exception message.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>Information on the vulnerable package identified by a finding.</p>
    #
    # @!attribute name
    #   <p>The name of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute source_layer_hash
    #   <p>The source layer hash of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute epoch
    #   <p>The epoch of the vulnerable package.</p>
    #
    #   @return [Integer]
    #
    # @!attribute release
    #   <p>The release of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute arch
    #   <p>The architecture of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_manager
    #   <p>The package manager of the vulnerable package.</p>
    #
    #   Enum, one of: ["BUNDLER", "CARGO", "COMPOSER", "NPM", "NUGET", "PIPENV", "POETRY", "YARN", "GOBINARY", "GOMOD", "JAR", "OS"]
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The file path of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute fixed_in_version
    #   <p>The version of the package that contains the vulnerability fix.</p>
    #
    #   @return [String]
    #
    VulnerablePackage = ::Struct.new(
      :name,
      :version,
      :source_layer_hash,
      :epoch,
      :release,
      :arch,
      :package_manager,
      :file_path,
      :fixed_in_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.epoch ||= 0
      end
    end

  end
end
