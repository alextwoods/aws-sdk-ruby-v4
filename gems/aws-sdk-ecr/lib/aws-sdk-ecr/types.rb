# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
  module Types

    # <p>This data type is used in the <a>ImageScanFinding</a> data type.</p>
    #
    # @!attribute key
    #   <p>The attribute key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to the attribute key.</p>
    #
    #   @return [String]
    #
    Attribute = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing authorization data for an Amazon ECR registry.</p>
    #
    # @!attribute authorization_token
    #   <p>A base64-encoded string that contains authorization data for the specified Amazon ECR
    #               registry. When the string is decoded, it is presented in the format
    #                   <code>user:password</code> for private registry authentication using <code>docker
    #                   login</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_at
    #   <p>The Unix time in seconds and milliseconds when the authorization token expires.
    #               Authorization tokens are valid for 12 hours.</p>
    #
    #   @return [Time]
    #
    # @!attribute proxy_endpoint
    #   <p>The registry URL to use for this authorization token in a <code>docker login</code>
    #               command. The Amazon ECR registry URL format is
    #           <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example,
    #           <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>
    #
    #   @return [String]
    #
    AuthorizationData = ::Struct.new(
      :authorization_token,
      :expires_at,
      :proxy_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image details of the Amazon ECR container image.</p>
    #
    # @!attribute architecture
    #   <p>The architecture of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p>The image author of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_hash
    #   <p>The image hash of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tags
    #   <p>The image tags attached to the Amazon ECR container image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute platform
    #   <p>The platform of the Amazon ECR container image.</p>
    #
    #   @return [String]
    #
    # @!attribute pushed_at
    #   <p>The date and time the Amazon ECR container image was pushed.</p>
    #
    #   @return [Time]
    #
    # @!attribute registry
    #   <p>The registry the Amazon ECR container image belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository the Amazon ECR container image resides in.</p>
    #
    #   @return [String]
    #
    AwsEcrContainerImageDetails = ::Struct.new(
      :architecture,
      :author,
      :image_hash,
      :image_tags,
      :platform,
      :pushed_at,
      :registry,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layers to
    #               check. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that is associated with the image layers to check.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_digests
    #   <p>The digests of the image layers to check.</p>
    #
    #   @return [Array<String>]
    #
    BatchCheckLayerAvailabilityInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :layer_digests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute layers
    #   <p>A list of image layer objects corresponding to the image layer references in the
    #               request.</p>
    #
    #   @return [Array<Layer>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<LayerFailure>]
    #
    BatchCheckLayerAvailabilityOutput = ::Struct.new(
      :layers,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Deletes specified images within a specified repository. Images are specified with
    #             either the <code>imageTag</code> or <code>imageDigest</code>.</p>
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image to delete.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository that contains the image to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute image_ids
    #   <p>A list of image ID references that correspond to images to delete. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    BatchDeleteImageInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_ids
    #   <p>The image IDs of the deleted images.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<ImageFailure>]
    #
    BatchDeleteImageOutput = ::Struct.new(
      :image_ids,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the images to
    #               describe. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository that contains the images to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute image_ids
    #   <p>A list of image ID references that correspond to images to describe. The format of the
    #                   <code>imageIds</code> reference is <code>imageTag=tag</code> or
    #                   <code>imageDigest=digest</code>.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    # @!attribute accepted_media_types
    #   <p>The accepted media types for the request.</p>
    #           <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> |
    #                   <code>application/vnd.docker.distribution.manifest.v2+json</code> |
    #                   <code>application/vnd.oci.image.manifest.v1+json</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    BatchGetImageInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :accepted_media_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute images
    #   <p>A list of image objects corresponding to the image references in the request.</p>
    #
    #   @return [Array<Image>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<ImageFailure>]
    #
    BatchGetImageOutput = ::Struct.new(
      :images,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_names
    #   <p>One or more repository names to get the scanning configuration for.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetRepositoryScanningConfigurationInput = ::Struct.new(
      :repository_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scanning_configurations
    #   <p>The scanning configuration for the requested repositories.</p>
    #
    #   @return [Array<RepositoryScanningConfiguration>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<RepositoryScanningConfigurationFailure>]
    #
    BatchGetRepositoryScanningConfigurationOutput = ::Struct.new(
      :scanning_configurations,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which to upload layers.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to associate with the image layer.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the image layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_digests
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #
    #   @return [Array<String>]
    #
    CompleteLayerUploadInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>The upload ID associated with the layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_digest
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #
    #   @return [String]
    #
    CompleteLayerUploadOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :layer_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ecr_repository_prefix
    #   <p>The repository name prefix to use when caching images from the source registry.</p>
    #
    #   @return [String]
    #
    # @!attribute upstream_registry_url
    #   <p>The registry URL of the upstream public registry to use as the source for the pull
    #               through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the pull through cache
    #               rule for. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    CreatePullThroughCacheRuleInput = ::Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute upstream_registry_url
    #   <p>The upstream registry URL associated with the pull through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in JavaScript date format, when the pull through cache rule was
    #               created.</p>
    #
    #   @return [Time]
    #
    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    CreatePullThroughCacheRuleOutput = ::Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to create the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name to use for the repository. The repository name may be specified on its own
    #               (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group
    #               the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the repository to help you categorize and organize
    #               them. Each tag consists of a key and an optional value, both of which you define.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute image_tag_mutability
    #   <p>The tag mutability setting for the repository. If this parameter is omitted, the
    #               default setting of <code>MUTABLE</code> will be used which will allow image tags to be
    #               overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the
    #               repository will be immutable which will prevent them from being overwritten.</p>
    #
    #   Enum, one of: ["MUTABLE", "IMMUTABLE"]
    #
    #   @return [String]
    #
    # @!attribute image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This determines whether images
    #               are scanned for known vulnerabilities after being pushed to the repository.</p>
    #
    #   @return [ImageScanningConfiguration]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the repository. This determines how the contents of
    #               your repository are encrypted at rest.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    CreateRepositoryInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :tags,
      :image_tag_mutability,
      :image_scanning_configuration,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>The repository that was created.</p>
    #
    #   @return [Repository]
    #
    CreateRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
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
    # @!attribute source
    #   <p>The source of the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of CVSS used for the score.</p>
    #
    #   @return [String]
    #
    CvssScore = ::Struct.new(
      :base_score,
      :scoring_vector,
      :source,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.base_score ||= 0
      end
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
    # @!attribute adjustments
    #   <p>An object that contains details about adjustment Amazon Inspector made to the CVSS score.</p>
    #
    #   @return [Array<CvssScoreAdjustment>]
    #
    # @!attribute score
    #   <p>The CVSS score.</p>
    #
    #   @return [Float]
    #
    # @!attribute score_source
    #   <p>The source for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute scoring_vector
    #   <p>The vector for the CVSS score.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The CVSS version used in scoring.</p>
    #
    #   @return [String]
    #
    CvssScoreDetails = ::Struct.new(
      :adjustments,
      :score,
      :score_source,
      :scoring_vector,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.score ||= 0
      end
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    DeleteLifecyclePolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON lifecycle policy text.</p>
    #
    #   @return [String]
    #
    # @!attribute last_evaluated_at
    #   <p>The time stamp of the last time that the lifecycle policy was run.</p>
    #
    #   @return [Time]
    #
    DeleteLifecyclePolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :last_evaluated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the pull through cache rule to
    #               delete.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the pull through cache
    #               rule. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    DeletePullThroughCacheRuleInput = ::Struct.new(
      :ecr_repository_prefix,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute upstream_registry_url
    #   <p>The upstream registry URL associated with the pull through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The timestamp associated with the pull through cache rule.</p>
    #
    #   @return [Time]
    #
    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    DeletePullThroughCacheRuleOutput = ::Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRegistryPolicyInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The contents of the registry permissions policy that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteRegistryPolicyOutput = ::Struct.new(
      :registry_id,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository to
    #               delete. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p> If a repository contains images, forces the deletion.</p>
    #
    #   @return [Boolean]
    #
    DeleteRepositoryInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # @!attribute repository
    #   <p>The repository that was deleted.</p>
    #
    #   @return [Repository]
    #
    DeleteRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository policy
    #               to delete. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that is associated with the repository policy to
    #               delete.</p>
    #
    #   @return [String]
    #
    DeleteRepositoryPolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON repository policy that was deleted from the repository.</p>
    #
    #   @return [String]
    #
    DeleteRepositoryPolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that the image is in.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    DescribeImageReplicationStatusInput = ::Struct.new(
      :repository_name,
      :image_id,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute replication_statuses
    #   <p>The replication status details for the images in the specified repository.</p>
    #
    #   @return [Array<ImageReplicationStatus>]
    #
    DescribeImageReplicationStatusOutput = ::Struct.new(
      :repository_name,
      :image_id,
      :replication_statuses,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository for the image for which to describe the scan findings.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value. This value
    #               is null when there are no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of image scan results returned by
    #                   <code>DescribeImageScanFindings</code> in paginated output. When this parameter is
    #               used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. The
    #               remaining results of the initial request can be seen by sending another
    #                   <code>DescribeImageScanFindings</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100
    #               results and a <code>nextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    DescribeImageScanFindingsInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute image_scan_status
    #   <p>The current state of the scan.</p>
    #
    #   @return [ImageScanStatus]
    #
    # @!attribute image_scan_findings
    #   <p>The information contained in the image scan findings.</p>
    #
    #   @return [ImageScanFindings]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>DescribeImageScanFindings</code> request. When the results of a
    #                   <code>DescribeImageScanFindings</code> request exceed <code>maxResults</code>, this
    #               value can be used to retrieve the next page of results. This value is null when there
    #               are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeImageScanFindingsOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_scan_status,
      :image_scan_findings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a filter on a <a>DescribeImages</a>
    #             operation.</p>
    #
    # @!attribute tag_status
    #   <p>The tag status with which to filter your <a>DescribeImages</a> results. You
    #               can filter results based on whether they are <code>TAGGED</code> or
    #                   <code>UNTAGGED</code>.</p>
    #
    #   Enum, one of: ["TAGGED", "UNTAGGED", "ANY"]
    #
    #   @return [String]
    #
    DescribeImagesFilter = ::Struct.new(
      :tag_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to describe images. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository that contains the images to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify images with <code>imageIds</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of repository results returned by <code>DescribeImages</code> in
    #               paginated output. When this parameter is used, <code>DescribeImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribeImages</code> request with the returned <code>nextToken</code>
    #               value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribeImages</code> returns up to
    #               100 results and a <code>nextToken</code> value, if applicable. This
    #               option cannot be used when you specify images with <code>imageIds</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>The filter key and value with which to filter your <code>DescribeImages</code>
    #               results.</p>
    #
    #   @return [DescribeImagesFilter]
    #
    DescribeImagesInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_details
    #   <p>A list of <a>ImageDetail</a> objects that contain data about the
    #               image.</p>
    #
    #   @return [Array<ImageDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code>
    #               request. When the results of a <code>DescribeImages</code> request exceed
    #                   <code>maxResults</code>, this value can be used to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    DescribeImagesOutput = ::Struct.new(
      :image_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to return the pull through cache
    #               rules for. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute ecr_repository_prefixes
    #   <p>The Amazon ECR repository prefixes associated with the pull through cache rules to return.
    #               If no repository prefix value is specified, all pull through cache rules are
    #               returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribePullThroughCacheRulesRequest</code> request where
    #                   <code>maxResults</code> was used and the results exceeded the value of that
    #               parameter. Pagination continues from the end of the previous results that returned the
    #                   <code>nextToken</code> value. This value is null when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of pull through cache rules returned by
    #                   <code>DescribePullThroughCacheRulesRequest</code> in paginated output. When this
    #               parameter is used, <code>DescribePullThroughCacheRulesRequest</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>DescribePullThroughCacheRulesRequest</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and 1000. If this
    #               parameter is not used, then <code>DescribePullThroughCacheRulesRequest</code> returns up
    #               to 100 results and a <code>nextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    DescribePullThroughCacheRulesInput = ::Struct.new(
      :registry_id,
      :ecr_repository_prefixes,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_through_cache_rules
    #   <p>The details of the pull through cache rules.</p>
    #
    #   @return [Array<PullThroughCacheRule>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>DescribePullThroughCacheRulesRequest</code> request. When the results of a
    #                   <code>DescribePullThroughCacheRulesRequest</code> request exceed
    #                   <code>maxResults</code>, this value can be used to retrieve the next page of
    #               results. This value is null when there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribePullThroughCacheRulesOutput = ::Struct.new(
      :pull_through_cache_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeRegistryInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The ID of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_configuration
    #   <p>The replication configuration for the registry.</p>
    #
    #   @return [ReplicationConfiguration]
    #
    DescribeRegistryOutput = ::Struct.new(
      :registry_id,
      :replication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repositories to be
    #               described. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_names
    #   <p>A list of repositories to describe. If this parameter is omitted, then all
    #               repositories in a registry are described.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>DescribeRepositories</code> request where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return. This option cannot be
    #               used when you specify repositories with <code>repositoryNames</code>.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of repository results returned by <code>DescribeRepositories</code>
    #               in paginated output. When this parameter is used, <code>DescribeRepositories</code> only
    #               returns <code>maxResults</code> results in a single page along with a
    #                   <code>nextToken</code> response element. The remaining results of the initial
    #               request can be seen by sending another <code>DescribeRepositories</code> request with
    #               the returned <code>nextToken</code> value. This value can be between 1
    #               and 1000. If this parameter is not used, then
    #                   <code>DescribeRepositories</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable. This option cannot be used when you
    #               specify repositories with <code>repositoryNames</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeRepositoriesInput = ::Struct.new(
      :registry_id,
      :repository_names,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repositories
    #   <p>A list of repository objects corresponding to valid repositories.</p>
    #
    #   @return [Array<Repository>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>DescribeRepositories</code> request. When the results of a
    #                   <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value
    #               can be used to retrieve the next page of results. This value is <code>null</code> when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeRepositoriesOutput = ::Struct.new(
      :repositories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified layer upload does not contain any layer parts.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    EmptyUploadException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption configuration for the repository. This determines how the contents of
    #             your repository are encrypted at rest.</p>
    #         <p>By default, when no encryption configuration is set or the <code>AES256</code>
    #             encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption
    #             keys which encrypts your data at rest using an AES-256 encryption algorithm. This does
    #             not require any action on your part.</p>
    #         <p>For more control over the encryption of the contents of your repository, you can use
    #             server-side encryption with Key Management Service key stored in Key Management Service (KMS) to encrypt your
    #             images. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html">Amazon ECR encryption at
    #                 rest</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @!attribute encryption_type
    #   <p>The encryption type to use.</p>
    #           <p>If you use the <code>KMS</code> encryption type, the contents of the repository will
    #               be encrypted using server-side encryption with Key Management Service key stored in KMS. When you
    #               use KMS to encrypt your data, you can either use the default Amazon Web Services managed KMS key
    #               for Amazon ECR, or specify your own KMS key, which you already created. For more
    #               information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html">Protecting data using server-side
    #                   encryption with an KMS key stored in Key Management Service (SSE-KMS)</a> in the
    #                   <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>
    #           <p>If you use the <code>AES256</code> encryption type, Amazon ECR uses server-side encryption
    #               with Amazon S3-managed encryption keys which encrypts the images in the repository using an
    #               AES-256 encryption algorithm. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Protecting data using
    #                   server-side encryption with Amazon S3-managed encryption keys (SSE-S3)</a> in the
    #                   <i>Amazon Simple Storage Service Console Developer Guide</i>.</p>
    #
    #   Enum, one of: ["AES256", "KMS"]
    #
    #   @return [String]
    #
    # @!attribute kms_key
    #   <p>If you use the <code>KMS</code> encryption type, specify the KMS key to use for
    #               encryption. The alias, key ID, or full ARN of the KMS key can be specified. The key
    #               must exist in the same Region as the repository. If no key is specified, the default
    #               Amazon Web Services managed KMS key for Amazon ECR will be used.</p>
    #
    #   @return [String]
    #
    EncryptionConfiguration = ::Struct.new(
      :encryption_type,
      :kms_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      AES256 = "AES256"

      # No documentation available.
      #
      KMS = "KMS"
    end

    # <p>The details of an enhanced image scan. This is returned when enhanced scanning is
    #             enabled for your private registry.</p>
    #
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID associated with the image.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute finding_arn
    #   <p>The Amazon Resource Number (ARN) of the finding.</p>
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
    # @!attribute package_vulnerability_details
    #   <p>An object that contains the details of a package vulnerability finding.</p>
    #
    #   @return [PackageVulnerabilityDetails]
    #
    # @!attribute remediation
    #   <p>An object that contains the details about how to remediate a finding.</p>
    #
    #   @return [Remediation]
    #
    # @!attribute resources
    #   <p>Contains information on the resources involved in a finding.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute score
    #   <p>The Amazon Inspector score given to the finding.</p>
    #
    #   @return [Float]
    #
    # @!attribute score_details
    #   <p>An object that contains details of the Amazon Inspector score.</p>
    #
    #   @return [ScoreDetails]
    #
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time the finding was last updated at.</p>
    #
    #   @return [Time]
    #
    EnhancedImageScanFinding = ::Struct.new(
      :aws_account_id,
      :description,
      :finding_arn,
      :first_observed_at,
      :last_observed_at,
      :package_vulnerability_details,
      :remediation,
      :resources,
      :score,
      :score_details,
      :severity,
      :status,
      :title,
      :type,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.score ||= 0
      end
    end

    # Includes enum constants for FindingSeverity
    #
    module FindingSeverity
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
      UNDEFINED = "UNDEFINED"
    end

    # @!attribute registry_ids
    #   <p>A list of Amazon Web Services account IDs that are associated with the registries for which to get
    #               AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @deprecated
    #     This field is deprecated. The returned authorization token can be used to access any Amazon ECR registry that the IAM principal has access to, specifying a registry ID doesn't change the permissions scope of the authorization token.
    #
    #   @return [Array<String>]
    #
    GetAuthorizationTokenInput = ::Struct.new(
      :registry_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authorization_data
    #   <p>A list of authorization token data objects that correspond to the
    #                   <code>registryIds</code> values in the request.</p>
    #
    #   @return [Array<AuthorizationData>]
    #
    GetAuthorizationTokenOutput = ::Struct.new(
      :authorization_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the image layer to
    #               download. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that is associated with the image layer to download.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_digest
    #   <p>The digest of the image layer to download.</p>
    #
    #   @return [String]
    #
    GetDownloadUrlForLayerInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :layer_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute download_url
    #   <p>The pre-signed Amazon S3 download URL for the requested layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_digest
    #   <p>The digest of the image layer to download.</p>
    #
    #   @return [String]
    #
    GetDownloadUrlForLayerOutput = ::Struct.new(
      :download_url,
      :layer_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    GetLifecyclePolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON lifecycle policy text.</p>
    #
    #   @return [String]
    #
    # @!attribute last_evaluated_at
    #   <p>The time stamp of the last time that the lifecycle policy was run.</p>
    #
    #   @return [Time]
    #
    GetLifecyclePolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :last_evaluated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute image_ids
    #   <p>The list of imageIDs to be included.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #                   <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code>
    #               was used and the  results exceeded the value of that parameter. Pagination continues
    #               from the end of the  previous results that returned the <code>nextToken</code> value.
    #               This value is  <code>null</code> when there are no more results to return. This option
    #               cannot be used when you specify images with <code>imageIds</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of repository results returned by
    #                   <code>GetLifecyclePolicyPreviewRequest</code> in  paginated output. When this
    #               parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns 
    #                   <code>maxResults</code> results in a single page along with a
    #               <code>nextToken</code>  response element. The remaining results of the initial request
    #               can be seen by sending  another <code>GetLifecyclePolicyPreviewRequest</code> request
    #               with the returned <code>nextToken</code>  value. This value can be between
    #               1 and 1000. If this  parameter is not used, then
    #                   <code>GetLifecyclePolicyPreviewRequest</code> returns up to  100
    #               results and a <code>nextToken</code> value, if  applicable. This option cannot be used
    #               when you specify images with <code>imageIds</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>An optional parameter that filters results based on image tag status and all tags, if
    #               tagged.</p>
    #
    #   @return [LifecyclePolicyPreviewFilter]
    #
    GetLifecyclePolicyPreviewInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_ids,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON lifecycle policy text.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the lifecycle policy preview request.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #                   <code>GetLifecyclePolicyPreview</code> request. When the results of a
    #                   <code>GetLifecyclePolicyPreview</code> request exceed <code>maxResults</code>, this
    #               value can be used to retrieve the next page of results. This value is <code>null</code>
    #               when there are no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute preview_results
    #   <p>The results of the lifecycle policy preview request.</p>
    #
    #   @return [Array<LifecyclePolicyPreviewResult>]
    #
    # @!attribute summary
    #   <p>The list of images that is returned as a result of the action.</p>
    #
    #   @return [LifecyclePolicyPreviewSummary]
    #
    GetLifecyclePolicyPreviewOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :status,
      :next_token,
      :preview_results,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetRegistryPolicyInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The ID of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON text of the permissions policy for a registry.</p>
    #
    #   @return [String]
    #
    GetRegistryPolicyOutput = ::Struct.new(
      :registry_id,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetRegistryScanningConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The ID of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute scanning_configuration
    #   <p>The scanning configuration for the registry.</p>
    #
    #   @return [RegistryScanningConfiguration]
    #
    GetRegistryScanningConfigurationOutput = ::Struct.new(
      :registry_id,
      :scanning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository with the policy to retrieve.</p>
    #
    #   @return [String]
    #
    GetRepositoryPolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON repository policy text associated with the repository.</p>
    #
    #   @return [String]
    #
    GetRepositoryPolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon ECR image.</p>
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry containing the image.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository associated with the image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object containing the image tag and image digest associated with an image.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute image_manifest
    #   <p>The image manifest associated with the image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_manifest_media_type
    #   <p>The manifest media type of the image.</p>
    #
    #   @return [String]
    #
    Image = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_manifest,
      :image_manifest_media_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageActionType
    #
    module ImageActionType
      # No documentation available.
      #
      EXPIRE = "EXPIRE"
    end

    # <p>The specified image has already been pushed, and there were no changes to the manifest
    #             or image tag after the last push.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    ImageAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes an image returned by a <a>DescribeImages</a>
    #             operation.</p>
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which this image belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to which this image belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tags
    #   <p>The list of tags associated with this image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_size_in_bytes
    #   <p>The size, in bytes, of the image in the repository.</p>
    #           <p>If the image is a manifest list, this will be the max size of all manifests in the
    #               list.</p>
    #           <note>
    #               <p>Beginning with Docker version 1.9, the Docker client compresses image layers
    #                   before pushing them to a V2 Docker registry. The output of the <code>docker
    #                       images</code> command shows the uncompressed image size, so it may return a
    #                   larger image size than the image sizes returned by <a>DescribeImages</a>.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute image_pushed_at
    #   <p>The date and time, expressed in standard JavaScript date format, at which the current
    #               image was pushed to the repository. </p>
    #
    #   @return [Time]
    #
    # @!attribute image_scan_status
    #   <p>The current state of the scan.</p>
    #
    #   @return [ImageScanStatus]
    #
    # @!attribute image_scan_findings_summary
    #   <p>A summary of the last completed image scan.</p>
    #
    #   @return [ImageScanFindingsSummary]
    #
    # @!attribute image_manifest_media_type
    #   <p>The media type of the image manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_media_type
    #   <p>The artifact media type of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute last_recorded_pull_time
    #   <p>The date and time, expressed in standard JavaScript date format, when Amazon ECR recorded
    #               the last image pull.</p>
    #           <note>
    #               <p>Amazon ECR refreshes the last image pull timestamp at least once every 24 hours. For
    #                   example, if you pull an image once a day then the <code>lastRecordedPullTime</code>
    #                   timestamp will indicate the exact time that the image was last pulled. However, if
    #                   you pull an image once an hour, because Amazon ECR refreshes the
    #                       <code>lastRecordedPullTime</code> timestamp at least once every 24 hours, the
    #                   result may not be the exact time that the image was last pulled.</p>
    #           </note>
    #
    #   @return [Time]
    #
    ImageDetail = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_digest,
      :image_tags,
      :image_size_in_bytes,
      :image_pushed_at,
      :image_scan_status,
      :image_scan_findings_summary,
      :image_manifest_media_type,
      :artifact_media_type,
      :last_recorded_pull_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified image digest does not match the digest that Amazon ECR calculated for the
    #             image.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ImageDigestDoesNotMatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon ECR image failure.</p>
    #
    # @!attribute image_id
    #   <p>The image ID associated with the failure.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute failure_code
    #   <p>The code associated with the failure.</p>
    #
    #   Enum, one of: ["InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason for the failure.</p>
    #
    #   @return [String]
    #
    ImageFailure = ::Struct.new(
      :image_id,
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageFailureCode
    #
    module ImageFailureCode
      # No documentation available.
      #
      InvalidImageDigest = "InvalidImageDigest"

      # No documentation available.
      #
      InvalidImageTag = "InvalidImageTag"

      # No documentation available.
      #
      ImageTagDoesNotMatchDigest = "ImageTagDoesNotMatchDigest"

      # No documentation available.
      #
      ImageNotFound = "ImageNotFound"

      # No documentation available.
      #
      MissingDigestAndTag = "MissingDigestAndTag"

      # No documentation available.
      #
      ImageReferencedByManifestList = "ImageReferencedByManifestList"

      # No documentation available.
      #
      KmsError = "KmsError"
    end

    # <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tag
    #   <p>The tag used for the image.</p>
    #
    #   @return [String]
    #
    ImageIdentifier = ::Struct.new(
      :image_digest,
      :image_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image requested does not exist in the specified repository.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ImageNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the replication process for an image.</p>
    #
    # @!attribute region
    #   <p>The destination Region for the image replication.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which the image belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The image replication status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code for a replication that has failed.</p>
    #
    #   @return [String]
    #
    ImageReplicationStatus = ::Struct.new(
      :region,
      :registry_id,
      :status,
      :failure_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an image scan finding.</p>
    #
    # @!attribute name
    #   <p>The name associated with the finding, usually a CVE number.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the finding.</p>
    #
    #   @return [String]
    #
    # @!attribute uri
    #   <p>A link containing additional details about the security vulnerability.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The finding severity.</p>
    #
    #   Enum, one of: ["INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNDEFINED"]
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>A collection of attributes of the host from which the finding is generated.</p>
    #
    #   @return [Array<Attribute>]
    #
    ImageScanFinding = ::Struct.new(
      :name,
      :description,
      :uri,
      :severity,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of an image scan.</p>
    #
    # @!attribute image_scan_completed_at
    #   <p>The time of the last completed image scan.</p>
    #
    #   @return [Time]
    #
    # @!attribute vulnerability_source_updated_at
    #   <p>The time when the vulnerability data was last scanned.</p>
    #
    #   @return [Time]
    #
    # @!attribute finding_severity_counts
    #   <p>The image vulnerability counts, sorted by severity.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute findings
    #   <p>The findings from the image scan.</p>
    #
    #   @return [Array<ImageScanFinding>]
    #
    # @!attribute enhanced_findings
    #   <p>Details about the enhanced scan findings from Amazon Inspector.</p>
    #
    #   @return [Array<EnhancedImageScanFinding>]
    #
    ImageScanFindings = ::Struct.new(
      :image_scan_completed_at,
      :vulnerability_source_updated_at,
      :finding_severity_counts,
      :findings,
      :enhanced_findings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of the last completed image scan.</p>
    #
    # @!attribute image_scan_completed_at
    #   <p>The time of the last completed image scan.</p>
    #
    #   @return [Time]
    #
    # @!attribute vulnerability_source_updated_at
    #   <p>The time when the vulnerability data was last scanned.</p>
    #
    #   @return [Time]
    #
    # @!attribute finding_severity_counts
    #   <p>The image vulnerability counts, sorted by severity.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    ImageScanFindingsSummary = ::Struct.new(
      :image_scan_completed_at,
      :vulnerability_source_updated_at,
      :finding_severity_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current status of an image scan.</p>
    #
    # @!attribute status
    #   <p>The current state of an image scan.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the image scan status.</p>
    #
    #   @return [String]
    #
    ImageScanStatus = ::Struct.new(
      :status,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image scanning configuration for a repository.</p>
    #
    # @!attribute scan_on_push
    #   <p>The setting that determines whether images are scanned after being pushed to a
    #               repository. If set to <code>true</code>, images will be scanned after being pushed. If
    #               this parameter is not specified, it will default to <code>false</code> and images will
    #               not be scanned unless a scan is manually started with the <a href="https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_StartImageScan.html">API_StartImageScan</a> API.</p>
    #
    #   @return [Boolean]
    #
    ImageScanningConfiguration = ::Struct.new(
      :scan_on_push,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scan_on_push ||= false
      end
    end

    # <p>The specified image is tagged with a tag that already exists. The repository is
    #             configured for tag immutability.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ImageTagAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageTagMutability
    #
    module ImageTagMutability
      # No documentation available.
      #
      MUTABLE = "MUTABLE"

      # No documentation available.
      #
      IMMUTABLE = "IMMUTABLE"
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you intend to upload
    #               layers. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to which you intend to upload layers.</p>
    #
    #   @return [String]
    #
    InitiateLayerUploadInput = ::Struct.new(
      :registry_id,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute upload_id
    #   <p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a>
    #               operations.</p>
    #
    #   @return [String]
    #
    # @!attribute part_size
    #   <p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>
    #
    #   @return [Integer]
    #
    InitiateLayerUploadOutput = ::Struct.new(
      :upload_id,
      :part_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does
    #             not match the digest specified.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidLayerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The layer part size is not valid, or the first byte specified is not consecutive to
    #             the last byte of a previous layer part upload.</p>
    #
    # @!attribute registry_id
    #   <p>The registry ID associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>The upload ID associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute last_valid_byte_received
    #   <p>The last valid byte received from the layer part upload that is associated with the
    #               exception.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidLayerPartException = ::Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_valid_byte_received,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    #             request.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #             a maximum length of 256 characters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation failed due to a KMS exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute kms_error
    #   <p>The error code returned by KMS.</p>
    #
    #   @return [String]
    #
    KmsException = ::Struct.new(
      :message,
      :kms_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Amazon ECR image layer.</p>
    #
    # @!attribute layer_digest
    #   <p>The <code>sha256</code> digest of the image layer.</p>
    #
    #   @return [String]
    #
    # @!attribute layer_availability
    #   <p>The availability status of the image layer.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute layer_size
    #   <p>The size, in bytes, of the image layer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute media_type
    #   <p>The media type of the layer, such as
    #                   <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or
    #                   <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>
    #
    #   @return [String]
    #
    Layer = ::Struct.new(
      :layer_digest,
      :layer_availability,
      :layer_size,
      :media_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image layer already exists in the associated repository.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    LayerAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LayerAvailability
    #
    module LayerAvailability
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"
    end

    # <p>An object representing an Amazon ECR image layer failure.</p>
    #
    # @!attribute layer_digest
    #   <p>The layer digest associated with the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code associated with the failure.</p>
    #
    #   Enum, one of: ["InvalidLayerDigest", "MissingLayerDigest"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason for the failure.</p>
    #
    #   @return [String]
    #
    LayerFailure = ::Struct.new(
      :layer_digest,
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LayerFailureCode
    #
    module LayerFailureCode
      # No documentation available.
      #
      InvalidLayerDigest = "InvalidLayerDigest"

      # No documentation available.
      #
      MissingLayerDigest = "MissingLayerDigest"
    end

    # <p>The specified layer is not available because it is not associated with an image.
    #             Unassociated image layers may be cleaned up at any time.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    LayerInaccessibleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Layer parts must be at least 5 MiB in size.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    LayerPartTooSmallException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified layers could not be found, or the specified layer is not valid for this
    #             repository.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    LayersNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The lifecycle policy could not be found, and no policy is set to the
    #             repository.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LifecyclePolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter for the lifecycle policy preview.</p>
    #
    # @!attribute tag_status
    #   <p>The tag status of the image.</p>
    #
    #   Enum, one of: ["TAGGED", "UNTAGGED", "ANY"]
    #
    #   @return [String]
    #
    LifecyclePolicyPreviewFilter = ::Struct.new(
      :tag_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The previous lifecycle policy preview request has not completed. Wait and try
    #             again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LifecyclePolicyPreviewInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no dry run for this repository.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LifecyclePolicyPreviewNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the lifecycle policy preview.</p>
    #
    # @!attribute image_tags
    #   <p>The list of tags associated with this image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_digest
    #   <p>The <code>sha256</code> digest of the image manifest.</p>
    #
    #   @return [String]
    #
    # @!attribute image_pushed_at
    #   <p>The date and time, expressed in standard JavaScript date format, at which the current
    #               image was pushed to the repository.</p>
    #
    #   @return [Time]
    #
    # @!attribute action
    #   <p>The type of action to be taken.</p>
    #
    #   @return [LifecyclePolicyRuleAction]
    #
    # @!attribute applied_rule_priority
    #   <p>The priority of the applied rule.</p>
    #
    #   @return [Integer]
    #
    LifecyclePolicyPreviewResult = ::Struct.new(
      :image_tags,
      :image_digest,
      :image_pushed_at,
      :action,
      :applied_rule_priority,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LifecyclePolicyPreviewStatus
    #
    module LifecyclePolicyPreviewStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The summary of the lifecycle policy preview request.</p>
    #
    # @!attribute expiring_image_total_count
    #   <p>The number of expiring images.</p>
    #
    #   @return [Integer]
    #
    LifecyclePolicyPreviewSummary = ::Struct.new(
      :expiring_image_total_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The type of action to be taken.</p>
    #
    # @!attribute type
    #   <p>The type of action to be taken.</p>
    #
    #   Enum, one of: ["EXPIRE"]
    #
    #   @return [String]
    #
    LifecyclePolicyRuleAction = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation did not succeed because it would have exceeded a service limit for your
    #             account. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html">Amazon ECR service quotas</a> in
    #             the Amazon Elastic Container Registry User Guide.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a filter on a <a>ListImages</a> operation.</p>
    #
    # @!attribute tag_status
    #   <p>The tag status with which to filter your <a>ListImages</a> results. You can
    #               filter results based on whether they are <code>TAGGED</code> or
    #               <code>UNTAGGED</code>.</p>
    #
    #   Enum, one of: ["TAGGED", "UNTAGGED", "ANY"]
    #
    #   @return [String]
    #
    ListImagesFilter = ::Struct.new(
      :tag_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to list images. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository with image IDs to be listed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListImages</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value. This value is
    #                   <code>null</code> when there are no more results to return.</p>
    #           <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of image results returned by <code>ListImages</code> in paginated
    #               output. When this parameter is used, <code>ListImages</code> only returns
    #                   <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #               response element. The remaining results of the initial request can be seen by sending
    #               another <code>ListImages</code> request with the returned <code>nextToken</code> value.
    #               This value can be between 1 and 1000. If this parameter is
    #               not used, then <code>ListImages</code> returns up to 100 results and a
    #                   <code>nextToken</code> value, if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>The filter key and value with which to filter your <code>ListImages</code>
    #               results.</p>
    #
    #   @return [ListImagesFilter]
    #
    ListImagesInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_ids
    #   <p>The list of image IDs for the requested repository.</p>
    #
    #   @return [Array<ImageIdentifier>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListImages</code>
    #               request. When the results of a <code>ListImages</code> request exceed
    #                   <code>maxResults</code>, this value can be used to retrieve the next page of
    #               results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    #
    #   @return [String]
    #
    ListImagesOutput = ::Struct.new(
      :image_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the
    #               only supported resource is an Amazon ECR repository.</p>
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
    #   <p>The tags for the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a package vulnerability finding.</p>
    #
    # @!attribute cvss
    #   <p>An object that contains details about the CVSS score of a finding.</p>
    #
    #   @return [Array<CvssScore>]
    #
    # @!attribute reference_urls
    #   <p>One or more URLs that contain details about this vulnerability type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute related_vulnerabilities
    #   <p>One or more vulnerabilities related to the one identified in this finding.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source
    #   <p>The source of the vulnerability information.</p>
    #
    #   @return [String]
    #
    # @!attribute source_url
    #   <p>A URL to the source of the vulnerability information.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_created_at
    #   <p>The date and time that this vulnerability was first added to the vendor's
    #               database.</p>
    #
    #   @return [Time]
    #
    # @!attribute vendor_severity
    #   <p>The severity the vendor has given to this vulnerability type.</p>
    #
    #   @return [String]
    #
    # @!attribute vendor_updated_at
    #   <p>The date and time the vendor last updated this vulnerability in their database.</p>
    #
    #   @return [Time]
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
    PackageVulnerabilityDetails = ::Struct.new(
      :cvss,
      :reference_urls,
      :related_vulnerabilities,
      :source,
      :source_url,
      :vendor_created_at,
      :vendor_severity,
      :vendor_updated_at,
      :vulnerability_id,
      :vulnerable_packages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a pull through cache rule.</p>
    #
    # @!attribute ecr_repository_prefix
    #   <p>The Amazon ECR repository prefix associated with the pull through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute upstream_registry_url
    #   <p>The upstream registry URL associated with the pull through cache rule.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time the pull through cache was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry the pull through cache rule is
    #               associated with.</p>
    #
    #   @return [String]
    #
    PullThroughCacheRule = ::Struct.new(
      :ecr_repository_prefix,
      :upstream_registry_url,
      :created_at,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pull through cache rule with these settings already exists for the private
    #             registry.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PullThroughCacheRuleAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull through cache rule was not found. Specify a valid pull through cache rule and
    #             try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PullThroughCacheRuleNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to put the image. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository in which to put the image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_manifest
    #   <p>The image manifest corresponding to the image to be uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute image_manifest_media_type
    #   <p>The media type of the image manifest. If you push an image manifest that does not
    #               contain the <code>mediaType</code> field, you must specify the
    #                   <code>imageManifestMediaType</code> in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tag
    #   <p>The tag to associate with the image. This parameter is required for images that use
    #               the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>
    #
    #   @return [String]
    #
    # @!attribute image_digest
    #   <p>The image digest of the image manifest corresponding to the image.</p>
    #
    #   @return [String]
    #
    PutImageInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_manifest,
      :image_manifest_media_type,
      :image_tag,
      :image_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>Details of the image uploaded.</p>
    #
    #   @return [Image]
    #
    PutImageOutput = ::Struct.new(
      :image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image scanning configuration setting.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository in which to update the image scanning configuration
    #               setting.</p>
    #
    #   @return [String]
    #
    # @!attribute image_scanning_configuration
    #   <p>The image scanning configuration for the repository. This setting determines whether
    #               images are scanned for known vulnerabilities after being pushed to the
    #               repository.</p>
    #
    #   @return [ImageScanningConfiguration]
    #
    PutImageScanningConfigurationInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_scanning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_scanning_configuration
    #   <p>The image scanning configuration setting for the repository.</p>
    #
    #   @return [ImageScanningConfiguration]
    #
    PutImageScanningConfigurationOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_scanning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository in which to update the image tag mutability
    #               settings.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tag_mutability
    #   <p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified,
    #               image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags
    #               within the repository will be immutable which will prevent them from being
    #               overwritten.</p>
    #
    #   Enum, one of: ["MUTABLE", "IMMUTABLE"]
    #
    #   @return [String]
    #
    PutImageTagMutabilityInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_tag_mutability,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_tag_mutability
    #   <p>The image tag mutability setting for the repository.</p>
    #
    #   Enum, one of: ["MUTABLE", "IMMUTABLE"]
    #
    #   @return [String]
    #
    PutImageTagMutabilityOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_tag_mutability,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository. If you
    #               do  not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON repository policy text to apply to the repository.</p>
    #
    #   @return [String]
    #
    PutLifecyclePolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON repository policy text.</p>
    #
    #   @return [String]
    #
    PutLifecyclePolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_text
    #   <p>The JSON policy text to apply to your registry. The policy text follows the same
    #               format as IAM policy text. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html">Registry
    #                   permissions</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    #   @return [String]
    #
    PutRegistryPolicyInput = ::Struct.new(
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON policy text for your registry.</p>
    #
    #   @return [String]
    #
    PutRegistryPolicyOutput = ::Struct.new(
      :registry_id,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scan_type
    #   <p>The scanning type to set for the registry.</p>
    #           <p>When a registry scanning configuration is not defined, by default the
    #                   <code>BASIC</code> scan type is used. When basic scanning is used, you may specify
    #               filters to determine which individual repositories, or all repositories, are scanned
    #               when new images are pushed to those repositories. Alternatively, you can do manual scans
    #               of images with basic scanning.</p>
    #           <p>When the <code>ENHANCED</code> scan type is set, Amazon Inspector provides automated
    #               vulnerability scanning. You may choose between continuous scanning or scan on push and
    #               you may specify filters to determine which individual repositories, or all repositories,
    #               are scanned.</p>
    #
    #   Enum, one of: ["BASIC", "ENHANCED"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The scanning rules to use for the registry. A scanning rule is used to determine which
    #               repository filters are used and at what frequency scanning will occur.</p>
    #
    #   @return [Array<RegistryScanningRule>]
    #
    PutRegistryScanningConfigurationInput = ::Struct.new(
      :scan_type,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_scanning_configuration
    #   <p>The scanning configuration for your registry.</p>
    #
    #   @return [RegistryScanningConfiguration]
    #
    PutRegistryScanningConfigurationOutput = ::Struct.new(
      :registry_scanning_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_configuration
    #   <p>An object representing the replication configuration for a registry.</p>
    #
    #   @return [ReplicationConfiguration]
    #
    PutReplicationConfigurationInput = ::Struct.new(
      :replication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_configuration
    #   <p>The contents of the replication configuration for the registry.</p>
    #
    #   @return [ReplicationConfiguration]
    #
    PutReplicationConfigurationOutput = ::Struct.new(
      :replication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the recommended course of action to remediate the finding.</p>
    #
    # @!attribute url
    #   <p>The URL address to the CVE remediation recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The recommended course of action to remediate the finding.</p>
    #
    #   @return [String]
    #
    Recommendation = ::Struct.new(
      :url,
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The manifest list is referencing an image that does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReferencedImagesNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The registry doesn't have an associated registry policy.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RegistryPolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The scanning configuration for a private registry.</p>
    #
    # @!attribute scan_type
    #   <p>The type of scanning configured for the registry.</p>
    #
    #   Enum, one of: ["BASIC", "ENHANCED"]
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>The scanning rules associated with the registry.</p>
    #
    #   @return [Array<RegistryScanningRule>]
    #
    RegistryScanningConfiguration = ::Struct.new(
      :scan_type,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a scanning rule for a private registry.</p>
    #
    # @!attribute scan_frequency
    #   <p>The frequency that scans are performed at for a private registry. When the
    #                   <code>ENHANCED</code> scan type is specified, the supported scan frequencies are
    #                   <code>CONTINUOUS_SCAN</code> and <code>SCAN_ON_PUSH</code>. When the
    #                   <code>BASIC</code> scan type is specified, the <code>SCAN_ON_PUSH</code> and
    #                   <code>MANUAL</code> scan frequencies are supported.</p>
    #
    #   Enum, one of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute repository_filters
    #   <p>The repository filters associated with the scanning configuration for a private
    #               registry.</p>
    #
    #   @return [Array<ScanningRepositoryFilter>]
    #
    RegistryScanningRule = ::Struct.new(
      :scan_frequency,
      :repository_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on how to remediate a finding.</p>
    #
    # @!attribute recommendation
    #   <p>An object that contains information about the recommended course of action to
    #               remediate the finding.</p>
    #
    #   @return [Recommendation]
    #
    Remediation = ::Struct.new(
      :recommendation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The replication configuration for a registry.</p>
    #
    # @!attribute rules
    #   <p>An array of objects representing the replication destinations and repository filters
    #               for a replication configuration.</p>
    #
    #   @return [Array<ReplicationRule>]
    #
    ReplicationConfiguration = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of objects representing the destination for a replication rule.</p>
    #
    # @!attribute region
    #   <p>The Region to replicate to.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID of the Amazon ECR private registry to replicate to. When configuring
    #               cross-Region replication within your own registry, specify your own account ID.</p>
    #
    #   @return [String]
    #
    ReplicationDestination = ::Struct.new(
      :region,
      :registry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of objects representing the replication destinations and repository filters
    #             for a replication configuration.</p>
    #
    # @!attribute destinations
    #   <p>An array of objects representing the destination for a replication rule.</p>
    #
    #   @return [Array<ReplicationDestination>]
    #
    # @!attribute repository_filters
    #   <p>An array of objects representing the filters for a replication rule. Specifying a
    #               repository filter for a replication rule provides a method for controlling which
    #               repositories in a private registry are replicated.</p>
    #
    #   @return [Array<RepositoryFilter>]
    #
    ReplicationRule = ::Struct.new(
      :destinations,
      :repository_filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationStatus
    #
    module ReplicationStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object representing a repository.</p>
    #
    # @!attribute repository_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the
    #       repository, Amazon Web Services account ID of the repository owner, repository namespace, and repository name.
    #       For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_uri
    #   <p>The URI for the repository. You can use this URI for container image <code>push</code>
    #               and <code>pull</code> operations.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time, in JavaScript date format, when the repository was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute image_tag_mutability
    #   <p>The tag mutability setting for the repository.</p>
    #
    #   Enum, one of: ["MUTABLE", "IMMUTABLE"]
    #
    #   @return [String]
    #
    # @!attribute image_scanning_configuration
    #   <p>The image scanning configuration for a repository.</p>
    #
    #   @return [ImageScanningConfiguration]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the repository. This determines how the contents of
    #               your repository are encrypted at rest.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    Repository = ::Struct.new(
      :repository_arn,
      :registry_id,
      :repository_name,
      :repository_uri,
      :created_at,
      :image_tag_mutability,
      :image_scanning_configuration,
      :encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository already exists in the specified registry.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter settings used with image replication. Specifying a repository filter to a
    #             replication rule provides a method for controlling which repositories in a private
    #             registry are replicated. If no repository filter is specified, all images in the
    #             repository are replicated.</p>
    #
    # @!attribute filter
    #   <p>The repository filter details. When the <code>PREFIX_MATCH</code> filter type is
    #               specified, this value is required and should be the repository name prefix to configure
    #               replication for.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_type
    #   <p>The repository filter type. The only supported value is <code>PREFIX_MATCH</code>,
    #               which is a repository name prefix specified with the <code>filter</code>
    #               parameter.</p>
    #
    #   Enum, one of: ["PREFIX_MATCH"]
    #
    #   @return [String]
    #
    RepositoryFilter = ::Struct.new(
      :filter,
      :filter_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositoryFilterType
    #
    module RepositoryFilterType
      # No documentation available.
      #
      PREFIX_MATCH = "PREFIX_MATCH"
    end

    # <p>The specified repository contains images. To delete a repository that contains images,
    #             you must force the deletion with the <code>force</code> parameter.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNotEmptyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository could not be found. Check the spelling of the specified
    #             repository and ensure that you are performing operations on the correct registry.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository and registry combination does not have an associated
    #             repository policy.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryPolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the scanning configuration for a repository.</p>
    #
    # @!attribute repository_arn
    #   <p>The ARN of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute scan_on_push
    #   <p>Whether or not scan on push is configured for the repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute scan_frequency
    #   <p>The scan frequency for the repository.</p>
    #
    #   Enum, one of: ["SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"]
    #
    #   @return [String]
    #
    # @!attribute applied_scan_filters
    #   <p>The scan filters applied to the repository.</p>
    #
    #   @return [Array<ScanningRepositoryFilter>]
    #
    RepositoryScanningConfiguration = ::Struct.new(
      :repository_arn,
      :repository_name,
      :scan_on_push,
      :scan_frequency,
      :applied_scan_filters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.scan_on_push ||= false
      end
    end

    # <p>The details about any failures associated with the scanning configuration of a
    #             repository.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #
    #   Enum, one of: ["REPOSITORY_NOT_FOUND"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason for the failure.</p>
    #
    #   @return [String]
    #
    RepositoryScanningConfigurationFailure = ::Struct.new(
      :repository_name,
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the resource involved in a finding.</p>
    #
    # @!attribute details
    #   <p>An object that contains details about the resource involved in a finding.</p>
    #
    #   @return [ResourceDetails]
    #
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of resource.</p>
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :details,
      :id,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about the resource involved in the finding.</p>
    #
    # @!attribute aws_ecr_container_image
    #   <p>An object that contains details about the Amazon ECR container image involved in the
    #               finding.</p>
    #
    #   @return [AwsEcrContainerImageDetails]
    #
    ResourceDetails = ::Struct.new(
      :aws_ecr_container_image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScanFrequency
    #
    module ScanFrequency
      # No documentation available.
      #
      SCAN_ON_PUSH = "SCAN_ON_PUSH"

      # No documentation available.
      #
      CONTINUOUS_SCAN = "CONTINUOUS_SCAN"

      # No documentation available.
      #
      MANUAL = "MANUAL"
    end

    # <p>The specified image scan could not be found. Ensure that image scanning is enabled on
    #             the repository and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScanNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScanStatus
    #
    module ScanStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      UNSUPPORTED_IMAGE = "UNSUPPORTED_IMAGE"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SCAN_ELIGIBILITY_EXPIRED = "SCAN_ELIGIBILITY_EXPIRED"

      # No documentation available.
      #
      FINDINGS_UNAVAILABLE = "FINDINGS_UNAVAILABLE"
    end

    # Includes enum constants for ScanType
    #
    module ScanType
      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      ENHANCED = "ENHANCED"
    end

    # Includes enum constants for ScanningConfigurationFailureCode
    #
    module ScanningConfigurationFailureCode
      # No documentation available.
      #
      REPOSITORY_NOT_FOUND = "REPOSITORY_NOT_FOUND"
    end

    # <p>The details of a scanning repository filter. For more information on how to use
    #             filters, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html#image-scanning-filters">Using
    #                 filters</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    # @!attribute filter
    #   <p>The filter to use when scanning.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_type
    #   <p>The type associated with the filter.</p>
    #
    #   Enum, one of: ["WILDCARD"]
    #
    #   @return [String]
    #
    ScanningRepositoryFilter = ::Struct.new(
      :filter,
      :filter_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScanningRepositoryFilterType
    #
    module ScanningRepositoryFilterType
      # No documentation available.
      #
      WILDCARD = "WILDCARD"
    end

    # <p>Information about the Amazon Inspector score given to a finding.</p>
    #
    # @!attribute cvss
    #   <p>An object that contains details about the CVSS score given to a finding.</p>
    #
    #   @return [CvssScoreDetails]
    #
    ScoreDetails = ::Struct.new(
      :cvss,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a server-side issue.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    ServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to receive the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON repository policy text to apply to the repository. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html">Amazon ECR repository
    #                   policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>If the policy you are attempting to set on a repository policy would prevent you from
    #               setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental
    #               repository lock outs.</p>
    #
    #   @return [Boolean]
    #
    SetRepositoryPolicyInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_text
    #   <p>The JSON repository policy text applied to the repository.</p>
    #
    #   @return [String]
    #
    SetRepositoryPolicyOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository in
    #               which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the images to scan.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    StartImageScanInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>An object with identifying information for an image in an Amazon ECR repository.</p>
    #
    #   @return [ImageIdentifier]
    #
    # @!attribute image_scan_status
    #   <p>The current state of the scan.</p>
    #
    #   @return [ImageScanStatus]
    #
    StartImageScanOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :image_id,
      :image_scan_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry that contains the repository.
    #               If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to be evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The policy to be evaluated against. If you do not specify a policy, the current policy
    #               for the repository is used.</p>
    #
    #   @return [String]
    #
    StartLifecyclePolicyPreviewInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_policy_text
    #   <p>The JSON repository policy text.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the lifecycle policy preview request.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"]
    #
    #   @return [String]
    #
    StartLifecyclePolicyPreviewOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :lifecycle_policy_text,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata to apply to a resource to help you categorize and organize them. Each tag
    #             consists of a key and a value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #             a maximum length of 256 characters.</p>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
    #               that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A <code>value</code> acts as a descriptor within a tag category (key).</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #               Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    #
    #   @return [Array<Tag>]
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

    # Includes enum constants for TagStatus
    #
    module TagStatus
      # No documentation available.
      #
      TAGGED = "TAGGED"

      # No documentation available.
      #
      UNTAGGED = "UNTAGGED"

      # No documentation available.
      #
      ANY = "ANY"
    end

    # <p>The list of tags on the repository is over the limit. The maximum number of tags that
    #             can be applied to a repository is 50.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image is of a type that cannot be scanned.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedImageTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified upstream registry isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedUpstreamRegistryException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported
    #               resource is an Amazon ECR repository.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
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

    # @!attribute registry_id
    #   <p>The Amazon Web Services account ID associated with the registry to which you are uploading layer
    #               parts. If you do not specify a registry, the default registry is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository to which you are uploading layer parts.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to
    #               associate with the layer part upload.</p>
    #
    #   @return [String]
    #
    # @!attribute part_first_byte
    #   <p>The position of the first byte of the layer part witin the overall image layer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute part_last_byte
    #   <p>The position of the last byte of the layer part within the overall image layer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute layer_part_blob
    #   <p>The base64-encoded layer part payload.</p>
    #
    #   @return [String]
    #
    UploadLayerPartInput = ::Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :part_first_byte,
      :part_last_byte,
      :layer_part_blob,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_id
    #   <p>The registry ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository name associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_id
    #   <p>The upload ID associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute last_byte_received
    #   <p>The integer value of the last byte received in the request.</p>
    #
    #   @return [Integer]
    #
    UploadLayerPartOutput = ::Struct.new(
      :registry_id,
      :repository_name,
      :upload_id,
      :last_byte_received,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The upload could not be found, or the specified upload ID is not valid for this
    #             repository.</p>
    #
    # @!attribute message
    #   <p>The error message associated with the exception.</p>
    #
    #   @return [String]
    #
    UploadNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an exception validating this request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information on the vulnerable package identified by a finding.</p>
    #
    # @!attribute arch
    #   <p>The architecture of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute epoch
    #   <p>The epoch of the vulnerable package.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_path
    #   <p>The file path of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute package_manager
    #   <p>The package manager of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute release
    #   <p>The release of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute source_layer_hash
    #   <p>The source layer hash of the vulnerable package.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the vulnerable package.</p>
    #
    #   @return [String]
    #
    VulnerablePackage = ::Struct.new(
      :arch,
      :epoch,
      :file_path,
      :name,
      :package_manager,
      :release,
      :source_layer_hash,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
