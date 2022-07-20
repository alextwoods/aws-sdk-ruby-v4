# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mobile
  module Types

    # <p>
    #             Account Action is required in order to continue the request.
    #         </p>
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    AccountActionRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The request cannot be processed because some parameter is not valid or the project
    #             state prevents the operation from being performed.
    #         </p>
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The details of the bundle.
    #         </p>
    #
    # @!attribute bundle_id
    #   <p>
    #               Unique bundle identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>
    #               Title of the download bundle.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #               Version of the download bundle.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #               Description of the download bundle.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute icon_url
    #   <p>
    #               Icon for the download bundle.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute available_platforms
    #   <p>
    #               Developer desktop or mobile app or website platforms.
    #           </p>
    #
    #   @return [Array<String>]
    #
    BundleDetails = ::Struct.new(
      :bundle_id,
      :title,
      :version,
      :description,
      :icon_url,
      :available_platforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used to request a project be created.
    #         </p>
    #
    # @!attribute name
    #   <p>
    #               Name of the project.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>
    #               Default region where project resources should be created.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute contents
    #   <p>
    #               ZIP or YAML file which contains configuration settings to be used when creating
    #               the project. This may be the contents of the file downloaded from the URL provided
    #               in an export project operation.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>
    #               Unique identifier for an exported snapshot of project configuration. This
    #               snapshot identifier is included in the share URL when a project is exported.
    #           </p>
    #
    #   @return [String]
    #
    CreateProjectInput = ::Struct.new(
      :name,
      :region,
      :contents,
      :snapshot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure used in response to a request to create a project.
    #         </p>
    #
    # @!attribute details
    #   <p>
    #               Detailed information about the created AWS Mobile Hub project.
    #           </p>
    #
    #   @return [ProjectDetails]
    #
    CreateProjectOutput = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used to request a project be deleted.
    #         </p>
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure used in response to request to delete a project.
    #         </p>
    #
    # @!attribute deleted_resources
    #   <p>
    #               Resources which were deleted.
    #           </p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute orphaned_resources
    #   <p>
    #               Resources which were not deleted, due to a risk of losing potentially
    #               important data or files.
    #           </p>
    #
    #   @return [Array<Resource>]
    #
    DeleteProjectOutput = ::Struct.new(
      :deleted_resources,
      :orphaned_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure to request the details of a specific bundle.
    #         </p>
    #
    # @!attribute bundle_id
    #   <p>
    #               Unique bundle identifier.
    #           </p>
    #
    #   @return [String]
    #
    DescribeBundleInput = ::Struct.new(
      :bundle_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure contains the details of the bundle.
    #         </p>
    #
    # @!attribute details
    #   <p>
    #               The details of the bundle.
    #           </p>
    #
    #   @return [BundleDetails]
    #
    DescribeBundleOutput = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used to request details about a project.
    #         </p>
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute sync_from_resources
    #   <p>
    #               If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.
    #           </p>
    #
    #   @return [Boolean]
    #
    DescribeProjectInput = ::Struct.new(
      :project_id,
      :sync_from_resources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sync_from_resources ||= false
      end
    end

    # <p>
    #             Result structure used for requests of project details.
    #         </p>
    #
    # @!attribute details
    #   <p>
    #               Detailed information about an AWS Mobile Hub project.
    #           </p>
    #
    #   @return [ProjectDetails]
    #
    DescribeProjectOutput = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used to request generation of custom SDK and tool packages
    #             required to integrate mobile web or app clients with backed AWS resources.
    #         </p>
    #
    # @!attribute bundle_id
    #   <p>
    #               Unique bundle identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p>
    #               Developer desktop or target application platform.
    #           </p>
    #
    #   Enum, one of: ["OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID", "JAVASCRIPT"]
    #
    #   @return [String]
    #
    ExportBundleInput = ::Struct.new(
      :bundle_id,
      :project_id,
      :platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure which contains link to download custom-generated SDK and
    #             tool packages used to integrate mobile web or app clients with backed
    #             AWS resources.
    #         </p>
    #
    # @!attribute download_url
    #   <p>
    #               URL which contains the custom-generated SDK and tool packages used
    #               to integrate the client mobile app or web app with the AWS resources
    #               created by the AWS Mobile Hub project.
    #           </p>
    #
    #   @return [String]
    #
    ExportBundleOutput = ::Struct.new(
      :download_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used in requests to export project configuration details.
    #         </p>
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    ExportProjectInput = ::Struct.new(
      :project_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure used for requests to export project configuration details.
    #         </p>
    #
    # @!attribute download_url
    #   <p>
    #               URL which can be used to download the exported project configuation file(s).
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute share_url
    #   <p>
    #               URL which can be shared to allow other AWS users to create their own project
    #               in AWS Mobile Hub with the same configuration as the specified project. This
    #               URL pertains to a snapshot in time of the project configuration that is created
    #               when this API is called. If you want to share additional changes to your project
    #               configuration, then you will need to create and share a new snapshot by calling
    #               this method again.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>
    #               Unique identifier for the exported snapshot of the project configuration. This
    #               snapshot identifier is included in the share URL.
    #           </p>
    #
    #   @return [String]
    #
    ExportProjectOutput = ::Struct.new(
      :download_url,
      :share_url,
      :snapshot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The service has encountered an unexpected error condition which prevents it from
    #             servicing the request.
    #         </p>
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             There are too many AWS Mobile Hub projects in the account or the account has
    #             exceeded the maximum number of resources in some AWS service. You should create
    #             another sub-account using AWS Organizations or remove some resources and retry
    #             your request.
    #         </p>
    #
    # @!attribute retry_after_seconds
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure to request all available bundles.
    #         </p>
    #
    # @!attribute max_results
    #   <p>
    #               Maximum number of records to list in a single response.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               Pagination token. Set to null to start listing bundles from start.
    #               If non-null pagination token is returned in a result, then pass its
    #               value in here in another request to list more bundles.
    #           </p>
    #
    #   @return [String]
    #
    ListBundlesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #             Result structure contains a list of all available bundles with details.
    #         </p>
    #
    # @!attribute bundle_list
    #   <p>
    #               A list of bundles.
    #           </p>
    #
    #   @return [Array<BundleDetails>]
    #
    # @!attribute next_token
    #   <p>
    #               Pagination token. If non-null pagination token is returned in a result,
    #               then pass its value in another request to fetch more entries.
    #           </p>
    #
    #   @return [String]
    #
    ListBundlesOutput = ::Struct.new(
      :bundle_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used to request projects list in AWS Mobile Hub.
    #         </p>
    #
    # @!attribute max_results
    #   <p>
    #               Maximum number of records to list in a single response.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               Pagination token. Set to null to start listing projects from start.
    #               If non-null pagination token is returned in a result, then pass its
    #               value in here in another request to list more projects.
    #           </p>
    #
    #   @return [String]
    #
    ListProjectsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>
    #             Result structure used for requests to list projects in AWS Mobile Hub.
    #         </p>
    #
    # @!attribute projects
    #   <p>
    #               List of projects.
    #           </p>
    #
    #   @return [Array<ProjectSummary>]
    #
    # @!attribute next_token
    #   <p>
    #               Pagination token. Set to null to start listing records from start.
    #               If non-null pagination token is returned in a result, then pass its
    #               value in here in another request to list more entries.
    #           </p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :projects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             No entity can be found with the specified identifier.
    #         </p>
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Platform
    #
    module Platform
      # No documentation available.
      #
      OSX = "OSX"

      # No documentation available.
      #
      WINDOWS = "WINDOWS"

      # No documentation available.
      #
      LINUX = "LINUX"

      # No documentation available.
      #
      OBJC = "OBJC"

      # No documentation available.
      #
      SWIFT = "SWIFT"

      # No documentation available.
      #
      ANDROID = "ANDROID"

      # No documentation available.
      #
      JAVASCRIPT = "JAVASCRIPT"
    end

    # <p>
    #             Detailed information about an AWS Mobile Hub project.
    #         </p>
    #
    # @!attribute name
    #   <p>
    #               Name of the project.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>
    #               Default region to use for AWS resource creation in the AWS Mobile Hub project.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>
    #               Synchronization state for a project.
    #           </p>
    #
    #   Enum, one of: ["NORMAL", "SYNCING", "IMPORTING"]
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>
    #               Date the project was created.
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_date
    #   <p>
    #               Date of the last modification of the project.
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute console_url
    #   <p>
    #               Website URL for this project in the AWS Mobile Hub console.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>
    #               List of AWS resources associated with a project.
    #           </p>
    #
    #   @return [Array<Resource>]
    #
    ProjectDetails = ::Struct.new(
      :name,
      :project_id,
      :region,
      :state,
      :created_date,
      :last_updated_date,
      :console_url,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectState
    #
    module ProjectState
      # No documentation available.
      #
      NORMAL = "NORMAL"

      # No documentation available.
      #
      SYNCING = "SYNCING"

      # No documentation available.
      #
      IMPORTING = "IMPORTING"
    end

    # <p>
    #             Summary information about an AWS Mobile Hub project.
    #         </p>
    #
    # @!attribute name
    #   <p>
    #               Name of the project.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    ProjectSummary = ::Struct.new(
      :name,
      :project_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Information about an instance of an AWS resource associated with a project.
    #         </p>
    #
    # @!attribute type
    #   <p>
    #               Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket).
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #               Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket).
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>
    #               AWS resource name which uniquely identifies the resource in AWS systems.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>
    #               Identifies which feature in AWS Mobile Hub is associated with this AWS resource.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>
    #               Key-value attribute pairs.
    #           </p>
    #
    #   @return [Hash<String, String>]
    #
    Resource = ::Struct.new(
      :type,
      :name,
      :arn,
      :feature,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The service is temporarily unavailable. The request should be retried after some
    #             time delay.
    #         </p>
    #
    # @!attribute retry_after_seconds
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Too many requests have been received for this AWS account in too short a time. The
    #             request should be retried after some time delay.
    #         </p>
    #
    # @!attribute retry_after_seconds
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :retry_after_seconds,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Credentials of the caller are insufficient to authorize the request.
    #         </p>
    #
    # @!attribute message
    #   <p>
    #               The Exception Error Message.
    #           </p>
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Request structure used for requests to update project configuration.
    #         </p>
    #
    # @!attribute contents
    #   <p>
    #               ZIP or YAML file which contains project configuration to be updated. This should
    #               be the contents of the file downloaded from the URL provided in an export project
    #               operation.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    #   @return [String]
    #
    UpdateProjectInput = ::Struct.new(
      :contents,
      :project_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Result structure used for requests to updated project configuration.
    #         </p>
    #
    # @!attribute details
    #   <p>
    #               Detailed information about the updated AWS Mobile Hub project.
    #           </p>
    #
    #   @return [ProjectDetails]
    #
    UpdateProjectOutput = ::Struct.new(
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
