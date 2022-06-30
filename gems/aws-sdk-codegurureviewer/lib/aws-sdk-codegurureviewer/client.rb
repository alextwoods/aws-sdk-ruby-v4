# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodeGuruReviewer
  # An API client for AWSGuruFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <p>This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service
  #          that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends
  #          fixes in your Java and Python code.</p>
  #
  #          <p>By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer
  #             improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the
  #             <i>
  #                <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html">Amazon CodeGuru Reviewer User Guide</a>.</i>
  #          </p>
  #
  #          <p>
  #          To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection between your VPC and CodeGuru Reviewer by
  #          creating an <i>interface VPC endpoint</i>. For more information, see
  #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html">CodeGuru Reviewer and interface
  #             VPC endpoints (Amazon Web Services PrivateLink)</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
  #       </p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::CodeGuruReviewer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #          Use to associate an Amazon Web Services CodeCommit repository or a repostory managed by
    #          Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a
    #         repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides
    #         automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html">Recommendations in
    #             Amazon CodeGuru Reviewer</a> in the <i>Amazon CodeGuru Reviewer User Guide.</i>
    #         </p>
    #
    #          <p>If you associate a CodeCommit or S3 repository, it must be in the same
    #          Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are configured.</p>
    #
    #          <p>Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web Services CodeStar
    #          Connections to connect to CodeGuru Reviewer. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html">Associate a repository</a> in
    #          the <i>Amazon CodeGuru Reviewer User Guide.</i>
    #          </p>
    #
    #          <note>
    #             <p>
    #             You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate
    #             a GitHub repository, use the console. For more information, see
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html">Getting
    #             started with CodeGuru Reviewer</a> in the <i>CodeGuru Reviewer User Guide.</i>
    #             </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateRepositoryInput}.
    #
    # @option params [Repository] :repository
    #   <p>The repository to associate.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository
    #           associations if there are failures and retries. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #   			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:
    #   		</p>
    #   		       <ul>
    #               <li>
    #   				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #   			         </li>
    #               <li>
    #   				           <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [KMSKeyDetails] :kms_key_details
    #   <p>A <code>KMSKeyDetails</code> object that contains:</p>
    #            <ul>
    #               <li>
    #                  <p>The encryption option for this repository association. It is either owned by Amazon Web Services
    #               Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The ID of the Amazon Web Services KMS key that
    #               is associated with this respository association.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AssociateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_repository(
    #     repository: {
    #       code_commit: {
    #         name: 'Name' # required
    #       },
    #       bitbucket: {
    #         name: 'Name', # required
    #         connection_arn: 'ConnectionArn', # required
    #         owner: 'Owner' # required
    #       },
    #       s3_bucket: {
    #         name: 'Name', # required
    #         bucket_name: 'BucketName' # required
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     kms_key_details: {
    #       kms_key_id: 'KMSKeyId',
    #       encryption_option: 'AWS_OWNED_CMK' # accepts ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateRepositoryOutput
    #   resp.data.repository_association #=> Types::RepositoryAssociation
    #   resp.data.repository_association.association_id #=> String
    #   resp.data.repository_association.association_arn #=> String
    #   resp.data.repository_association.connection_arn #=> String
    #   resp.data.repository_association.name #=> String
    #   resp.data.repository_association.owner #=> String
    #   resp.data.repository_association.provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.repository_association.state #=> String, one of ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #   resp.data.repository_association.state_reason #=> String
    #   resp.data.repository_association.last_updated_time_stamp #=> Time
    #   resp.data.repository_association.created_time_stamp #=> Time
    #   resp.data.repository_association.kms_key_details #=> Types::KMSKeyDetails
    #   resp.data.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.data.repository_association.kms_key_details.encryption_option #=> String, one of ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #   resp.data.repository_association.s3_repository_details #=> Types::S3RepositoryDetails
    #   resp.data.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def associate_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::AssociateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateRepository,
        stubs: @stubs,
        params_class: Params::AssociateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Use to create a code review with a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">
    #                <code>CodeReviewType</code>
    #             </a>
    #          of <code>RepositoryAnalysis</code>. This type of code review analyzes all code under a specified branch in an associated repository.
    #          <code>PullRequest</code> code reviews are automatically triggered by a pull request.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateCodeReviewInput}.
    #
    # @option params [String] :name
    #   <p>
    #            The name of the code review. The name of each code review in your Amazon Web Services account must be unique.
    #         </p>
    #
    # @option params [String] :repository_association_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #            <p>
    #            A code review can only be created on an associated repository. This is the ARN of the
    #            associated repository.
    #         </p>
    #
    # @option params [CodeReviewType] :type
    #   <p>
    #            The type of code review to create. This is specified using a
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">
    #                  <code>CodeReviewType</code>
    #               </a>
    #            object. You can create a code review only of type <code>RepositoryAnalysis</code>.
    #         </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #            Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate code
    #            reviews if there are failures and retries.
    #         </p>
    #
    # @return [Types::CreateCodeReviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_review(
    #     name: 'Name', # required
    #     repository_association_arn: 'RepositoryAssociationArn', # required
    #     type: {
    #       repository_analysis: {
    #         repository_head: {
    #           branch_name: 'BranchName' # required
    #         },
    #         source_code_type: {
    #           commit_diff: {
    #             source_commit: 'SourceCommit',
    #             destination_commit: 'DestinationCommit',
    #             merge_base_commit: 'MergeBaseCommit'
    #           },
    #           branch_diff: {
    #             source_branch_name: 'SourceBranchName', # required
    #             destination_branch_name: 'DestinationBranchName' # required
    #           },
    #           s3_bucket_repository: {
    #             name: 'Name', # required
    #             details: {
    #               bucket_name: 'BucketName',
    #               code_artifacts: {
    #                 source_code_artifacts_object_key: 'SourceCodeArtifactsObjectKey', # required
    #                 build_artifacts_object_key: 'BuildArtifactsObjectKey'
    #               }
    #             }
    #           },
    #           request_metadata: {
    #             request_id: 'RequestId',
    #             requester: 'Requester',
    #             event_info: {
    #               name: 'Name',
    #               state: 'State'
    #             },
    #             vendor_name: 'GitHub' # accepts ["GitHub", "GitLab", "NativeS3"]
    #           }
    #         }
    #       }, # required
    #       analysis_types: [
    #         'Security' # accepts ["Security", "CodeQuality"]
    #       ]
    #     }, # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCodeReviewOutput
    #   resp.data.code_review #=> Types::CodeReview
    #   resp.data.code_review.name #=> String
    #   resp.data.code_review.code_review_arn #=> String
    #   resp.data.code_review.repository_name #=> String
    #   resp.data.code_review.owner #=> String
    #   resp.data.code_review.provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.code_review.state #=> String, one of ["Completed", "Pending", "Failed", "Deleting"]
    #   resp.data.code_review.state_reason #=> String
    #   resp.data.code_review.created_time_stamp #=> Time
    #   resp.data.code_review.last_updated_time_stamp #=> Time
    #   resp.data.code_review.type #=> String, one of ["PullRequest", "RepositoryAnalysis"]
    #   resp.data.code_review.pull_request_id #=> String
    #   resp.data.code_review.source_code_type #=> Types::SourceCodeType
    #   resp.data.code_review.source_code_type.commit_diff #=> Types::CommitDiffSourceCodeType
    #   resp.data.code_review.source_code_type.commit_diff.source_commit #=> String
    #   resp.data.code_review.source_code_type.commit_diff.destination_commit #=> String
    #   resp.data.code_review.source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.data.code_review.source_code_type.repository_head #=> Types::RepositoryHeadSourceCodeType
    #   resp.data.code_review.source_code_type.repository_head.branch_name #=> String
    #   resp.data.code_review.source_code_type.branch_diff #=> Types::BranchDiffSourceCodeType
    #   resp.data.code_review.source_code_type.branch_diff.source_branch_name #=> String
    #   resp.data.code_review.source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository #=> Types::S3BucketRepository
    #   resp.data.code_review.source_code_type.s3_bucket_repository.name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details #=> Types::S3RepositoryDetails
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.code_review.source_code_type.request_metadata #=> Types::RequestMetadata
    #   resp.data.code_review.source_code_type.request_metadata.request_id #=> String
    #   resp.data.code_review.source_code_type.request_metadata.requester #=> String
    #   resp.data.code_review.source_code_type.request_metadata.event_info #=> Types::EventInfo
    #   resp.data.code_review.source_code_type.request_metadata.event_info.name #=> String
    #   resp.data.code_review.source_code_type.request_metadata.event_info.state #=> String
    #   resp.data.code_review.source_code_type.request_metadata.vendor_name #=> String, one of ["GitHub", "GitLab", "NativeS3"]
    #   resp.data.code_review.association_arn #=> String
    #   resp.data.code_review.metrics #=> Types::Metrics
    #   resp.data.code_review.metrics.metered_lines_of_code_count #=> Integer
    #   resp.data.code_review.metrics.suppressed_lines_of_code_count #=> Integer
    #   resp.data.code_review.metrics.findings_count #=> Integer
    #   resp.data.code_review.analysis_types #=> Array<String>
    #   resp.data.code_review.analysis_types[0] #=> String, one of ["Security", "CodeQuality"]
    #   resp.data.code_review.config_file_state #=> String, one of ["Present", "Absent", "PresentWithErrors"]
    #
    def create_code_review(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCodeReviewInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCodeReviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCodeReview
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::CreateCodeReview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCodeReview,
        stubs: @stubs,
        params_class: Params::CreateCodeReviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_code_review
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the metadata associated with the code review along with its status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCodeReviewInput}.
    #
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    #                  <code>CodeReview</code>
    #               </a> object.
    #         </p>
    #
    # @return [Types::DescribeCodeReviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_review(
    #     code_review_arn: 'CodeReviewArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCodeReviewOutput
    #   resp.data.code_review #=> Types::CodeReview
    #   resp.data.code_review.name #=> String
    #   resp.data.code_review.code_review_arn #=> String
    #   resp.data.code_review.repository_name #=> String
    #   resp.data.code_review.owner #=> String
    #   resp.data.code_review.provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.code_review.state #=> String, one of ["Completed", "Pending", "Failed", "Deleting"]
    #   resp.data.code_review.state_reason #=> String
    #   resp.data.code_review.created_time_stamp #=> Time
    #   resp.data.code_review.last_updated_time_stamp #=> Time
    #   resp.data.code_review.type #=> String, one of ["PullRequest", "RepositoryAnalysis"]
    #   resp.data.code_review.pull_request_id #=> String
    #   resp.data.code_review.source_code_type #=> Types::SourceCodeType
    #   resp.data.code_review.source_code_type.commit_diff #=> Types::CommitDiffSourceCodeType
    #   resp.data.code_review.source_code_type.commit_diff.source_commit #=> String
    #   resp.data.code_review.source_code_type.commit_diff.destination_commit #=> String
    #   resp.data.code_review.source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.data.code_review.source_code_type.repository_head #=> Types::RepositoryHeadSourceCodeType
    #   resp.data.code_review.source_code_type.repository_head.branch_name #=> String
    #   resp.data.code_review.source_code_type.branch_diff #=> Types::BranchDiffSourceCodeType
    #   resp.data.code_review.source_code_type.branch_diff.source_branch_name #=> String
    #   resp.data.code_review.source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository #=> Types::S3BucketRepository
    #   resp.data.code_review.source_code_type.s3_bucket_repository.name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details #=> Types::S3RepositoryDetails
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.code_review.source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.code_review.source_code_type.request_metadata #=> Types::RequestMetadata
    #   resp.data.code_review.source_code_type.request_metadata.request_id #=> String
    #   resp.data.code_review.source_code_type.request_metadata.requester #=> String
    #   resp.data.code_review.source_code_type.request_metadata.event_info #=> Types::EventInfo
    #   resp.data.code_review.source_code_type.request_metadata.event_info.name #=> String
    #   resp.data.code_review.source_code_type.request_metadata.event_info.state #=> String
    #   resp.data.code_review.source_code_type.request_metadata.vendor_name #=> String, one of ["GitHub", "GitLab", "NativeS3"]
    #   resp.data.code_review.association_arn #=> String
    #   resp.data.code_review.metrics #=> Types::Metrics
    #   resp.data.code_review.metrics.metered_lines_of_code_count #=> Integer
    #   resp.data.code_review.metrics.suppressed_lines_of_code_count #=> Integer
    #   resp.data.code_review.metrics.findings_count #=> Integer
    #   resp.data.code_review.analysis_types #=> Array<String>
    #   resp.data.code_review.analysis_types[0] #=> String, one of ["Security", "CodeQuality"]
    #   resp.data.code_review.config_file_state #=> String, one of ["Present", "Absent", "PresentWithErrors"]
    #
    def describe_code_review(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCodeReviewInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCodeReviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCodeReview
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeCodeReview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCodeReview,
        stubs: @stubs,
        params_class: Params::DescribeCodeReviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_code_review
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Describes the customer feedback for a CodeGuru Reviewer recommendation.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecommendationFeedbackInput}.
    #
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    #                  <code>CodeReview</code>
    #               </a> object.
    #         </p>
    #
    # @option params [String] :recommendation_id
    #   <p>
    #            The recommendation ID that can be used to track the provided recommendations and then to collect the feedback.
    #         </p>
    #
    # @option params [String] :user_id
    #   <p>
    #            Optional parameter to describe the feedback for a given user. If this is not supplied, it defaults to the user making the request.
    #         </p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
    #         </p>
    #
    # @return [Types::DescribeRecommendationFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommendation_feedback(
    #     code_review_arn: 'CodeReviewArn', # required
    #     recommendation_id: 'RecommendationId', # required
    #     user_id: 'UserId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecommendationFeedbackOutput
    #   resp.data.recommendation_feedback #=> Types::RecommendationFeedback
    #   resp.data.recommendation_feedback.code_review_arn #=> String
    #   resp.data.recommendation_feedback.recommendation_id #=> String
    #   resp.data.recommendation_feedback.reactions #=> Array<String>
    #   resp.data.recommendation_feedback.reactions[0] #=> String, one of ["ThumbsUp", "ThumbsDown"]
    #   resp.data.recommendation_feedback.user_id #=> String
    #   resp.data.recommendation_feedback.created_time_stamp #=> Time
    #   resp.data.recommendation_feedback.last_updated_time_stamp #=> Time
    #
    def describe_recommendation_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecommendationFeedbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecommendationFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecommendationFeedback
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeRecommendationFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecommendationFeedback,
        stubs: @stubs,
        params_class: Params::DescribeRecommendationFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recommendation_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                <code>RepositoryAssociation</code>
    #             </a> object
    #          that contains information about the requested repository association.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRepositoryAssociationInput}.
    #
    # @option params [String] :association_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #
    # @return [Types::DescribeRepositoryAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository_association(
    #     association_arn: 'AssociationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRepositoryAssociationOutput
    #   resp.data.repository_association #=> Types::RepositoryAssociation
    #   resp.data.repository_association.association_id #=> String
    #   resp.data.repository_association.association_arn #=> String
    #   resp.data.repository_association.connection_arn #=> String
    #   resp.data.repository_association.name #=> String
    #   resp.data.repository_association.owner #=> String
    #   resp.data.repository_association.provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.repository_association.state #=> String, one of ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #   resp.data.repository_association.state_reason #=> String
    #   resp.data.repository_association.last_updated_time_stamp #=> Time
    #   resp.data.repository_association.created_time_stamp #=> Time
    #   resp.data.repository_association.kms_key_details #=> Types::KMSKeyDetails
    #   resp.data.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.data.repository_association.kms_key_details.encryption_option #=> String, one of ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #   resp.data.repository_association.s3_repository_details #=> Types::S3RepositoryDetails
    #   resp.data.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_repository_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRepositoryAssociationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRepositoryAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRepositoryAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeRepositoryAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRepositoryAssociation,
        stubs: @stubs,
        params_class: Params::DescribeRepositoryAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_repository_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between Amazon CodeGuru Reviewer and a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateRepositoryInput}.
    #
    # @option params [String] :association_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #
    # @return [Types::DisassociateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_repository(
    #     association_arn: 'AssociationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateRepositoryOutput
    #   resp.data.repository_association #=> Types::RepositoryAssociation
    #   resp.data.repository_association.association_id #=> String
    #   resp.data.repository_association.association_arn #=> String
    #   resp.data.repository_association.connection_arn #=> String
    #   resp.data.repository_association.name #=> String
    #   resp.data.repository_association.owner #=> String
    #   resp.data.repository_association.provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.repository_association.state #=> String, one of ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #   resp.data.repository_association.state_reason #=> String
    #   resp.data.repository_association.last_updated_time_stamp #=> Time
    #   resp.data.repository_association.created_time_stamp #=> Time
    #   resp.data.repository_association.kms_key_details #=> Types::KMSKeyDetails
    #   resp.data.repository_association.kms_key_details.kms_key_id #=> String
    #   resp.data.repository_association.kms_key_details.encryption_option #=> String, one of ["AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"]
    #   resp.data.repository_association.s3_repository_details #=> Types::S3RepositoryDetails
    #   resp.data.repository_association.s3_repository_details.bucket_name #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.repository_association.s3_repository_details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.repository_association.s3_repository_details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def disassociate_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateRepositoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateRepository
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::DisassociateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateRepository,
        stubs: @stubs,
        params_class: Params::DisassociateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Lists all the code reviews that the customer has created in the past 90 days.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListCodeReviewsInput}.
    #
    # @option params [Array<String>] :provider_types
    #   <p>
    #            List of provider types for filtering that needs to be applied before displaying the result. For example, <code>providerTypes=[GitHub]</code>  lists code reviews from GitHub.
    #         </p>
    #
    # @option params [Array<String>] :states
    #   <p>
    #            List of states for filtering that needs to be applied before displaying the result. For example, <code>states=[Pending]</code> lists code reviews in the Pending state.
    #         </p>
    #            <p>The valid code review states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Completed</code>: The code review is complete.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The code review started and has not completed or failed.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The code review failed.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deleting</code>: The code review is being deleted.
    #               </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :repository_names
    #   <p>
    #            List of repository names for filtering that needs to be applied before displaying the result.
    #         </p>
    #
    # @option params [String] :type
    #   <p>
    #            The type of code reviews to list in the response.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of results that are returned per call. The default is 100.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>
    #            If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    #            Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #         </p>
    #
    # @return [Types::ListCodeReviewsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_reviews(
    #     provider_types: [
    #       'CodeCommit' # accepts ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #     ],
    #     states: [
    #       'Completed' # accepts ["Completed", "Pending", "Failed", "Deleting"]
    #     ],
    #     repository_names: [
    #       'member'
    #     ],
    #     type: 'PullRequest', # required - accepts ["PullRequest", "RepositoryAnalysis"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCodeReviewsOutput
    #   resp.data.code_review_summaries #=> Array<CodeReviewSummary>
    #   resp.data.code_review_summaries[0] #=> Types::CodeReviewSummary
    #   resp.data.code_review_summaries[0].name #=> String
    #   resp.data.code_review_summaries[0].code_review_arn #=> String
    #   resp.data.code_review_summaries[0].repository_name #=> String
    #   resp.data.code_review_summaries[0].owner #=> String
    #   resp.data.code_review_summaries[0].provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.code_review_summaries[0].state #=> String, one of ["Completed", "Pending", "Failed", "Deleting"]
    #   resp.data.code_review_summaries[0].created_time_stamp #=> Time
    #   resp.data.code_review_summaries[0].last_updated_time_stamp #=> Time
    #   resp.data.code_review_summaries[0].type #=> String, one of ["PullRequest", "RepositoryAnalysis"]
    #   resp.data.code_review_summaries[0].pull_request_id #=> String
    #   resp.data.code_review_summaries[0].metrics_summary #=> Types::MetricsSummary
    #   resp.data.code_review_summaries[0].metrics_summary.metered_lines_of_code_count #=> Integer
    #   resp.data.code_review_summaries[0].metrics_summary.suppressed_lines_of_code_count #=> Integer
    #   resp.data.code_review_summaries[0].metrics_summary.findings_count #=> Integer
    #   resp.data.code_review_summaries[0].source_code_type #=> Types::SourceCodeType
    #   resp.data.code_review_summaries[0].source_code_type.commit_diff #=> Types::CommitDiffSourceCodeType
    #   resp.data.code_review_summaries[0].source_code_type.commit_diff.source_commit #=> String
    #   resp.data.code_review_summaries[0].source_code_type.commit_diff.destination_commit #=> String
    #   resp.data.code_review_summaries[0].source_code_type.commit_diff.merge_base_commit #=> String
    #   resp.data.code_review_summaries[0].source_code_type.repository_head #=> Types::RepositoryHeadSourceCodeType
    #   resp.data.code_review_summaries[0].source_code_type.repository_head.branch_name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.branch_diff #=> Types::BranchDiffSourceCodeType
    #   resp.data.code_review_summaries[0].source_code_type.branch_diff.source_branch_name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.branch_diff.destination_branch_name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository #=> Types::S3BucketRepository
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.details #=> Types::S3RepositoryDetails
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.details.bucket_name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.details.code_artifacts #=> Types::CodeArtifacts
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.details.code_artifacts.source_code_artifacts_object_key #=> String
    #   resp.data.code_review_summaries[0].source_code_type.s3_bucket_repository.details.code_artifacts.build_artifacts_object_key #=> String
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata #=> Types::RequestMetadata
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.request_id #=> String
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.requester #=> String
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.event_info #=> Types::EventInfo
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.event_info.name #=> String
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.event_info.state #=> String
    #   resp.data.code_review_summaries[0].source_code_type.request_metadata.vendor_name #=> String, one of ["GitHub", "GitLab", "NativeS3"]
    #   resp.data.next_token #=> String
    #
    def list_code_reviews(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCodeReviewsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCodeReviewsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCodeReviews
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListCodeReviews
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCodeReviews,
        stubs: @stubs,
        params_class: Params::ListCodeReviewsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_code_reviews
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a list of
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html">
    #                <code>RecommendationFeedbackSummary</code>
    #             </a>
    #          objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendationFeedbackInput}.
    #
    # @option params [String] :next_token
    #   <p>
    #            If <code>nextToken</code> is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    #            Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of results that are returned per call. The default is 100.
    #         </p>
    #
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    #                  <code>CodeReview</code>
    #               </a> object.
    #         </p>
    #
    # @option params [Array<String>] :user_ids
    #   <p>
    #            An Amazon Web Services user's account ID or Amazon Resource Name (ARN). Use this ID to query the recommendation feedback for a code review from that user.
    #         </p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
    #         </p>
    #
    # @option params [Array<String>] :recommendation_ids
    #   <p>
    #            Used to query the recommendation feedback for a given recommendation.
    #         </p>
    #
    # @return [Types::ListRecommendationFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_feedback(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     code_review_arn: 'CodeReviewArn', # required
    #     user_ids: [
    #       'member'
    #     ],
    #     recommendation_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendationFeedbackOutput
    #   resp.data.recommendation_feedback_summaries #=> Array<RecommendationFeedbackSummary>
    #   resp.data.recommendation_feedback_summaries[0] #=> Types::RecommendationFeedbackSummary
    #   resp.data.recommendation_feedback_summaries[0].recommendation_id #=> String
    #   resp.data.recommendation_feedback_summaries[0].reactions #=> Array<String>
    #   resp.data.recommendation_feedback_summaries[0].reactions[0] #=> String, one of ["ThumbsUp", "ThumbsDown"]
    #   resp.data.recommendation_feedback_summaries[0].user_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_recommendation_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendationFeedbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendationFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommendationFeedback
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListRecommendationFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommendationFeedback,
        stubs: @stubs,
        params_class: Params::ListRecommendationFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommendation_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns the list of all recommendations for a completed code review.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendationsInput}.
    #
    # @option params [String] :next_token
    #   <p>
    #            Pagination token.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of results that are returned per call. The default is 100.
    #         </p>
    #
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    #                  <code>CodeReview</code>
    #               </a> object.
    #         </p>
    #
    # @return [Types::ListRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     code_review_arn: 'CodeReviewArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendationsOutput
    #   resp.data.recommendation_summaries #=> Array<RecommendationSummary>
    #   resp.data.recommendation_summaries[0] #=> Types::RecommendationSummary
    #   resp.data.recommendation_summaries[0].file_path #=> String
    #   resp.data.recommendation_summaries[0].recommendation_id #=> String
    #   resp.data.recommendation_summaries[0].start_line #=> Integer
    #   resp.data.recommendation_summaries[0].end_line #=> Integer
    #   resp.data.recommendation_summaries[0].description #=> String
    #   resp.data.recommendation_summaries[0].recommendation_category #=> String, one of ["AWSBestPractices", "AWSCloudFormationIssues", "DuplicateCode", "CodeMaintenanceIssues", "ConcurrencyIssues", "InputValidations", "PythonBestPractices", "JavaBestPractices", "ResourceLeaks", "SecurityIssues", "CodeInconsistencies"]
    #   resp.data.recommendation_summaries[0].rule_metadata #=> Types::RuleMetadata
    #   resp.data.recommendation_summaries[0].rule_metadata.rule_id #=> String
    #   resp.data.recommendation_summaries[0].rule_metadata.rule_name #=> String
    #   resp.data.recommendation_summaries[0].rule_metadata.short_description #=> String
    #   resp.data.recommendation_summaries[0].rule_metadata.long_description #=> String
    #   resp.data.recommendation_summaries[0].rule_metadata.rule_tags #=> Array<String>
    #   resp.data.recommendation_summaries[0].rule_metadata.rule_tags[0] #=> String
    #   resp.data.recommendation_summaries[0].severity #=> String, one of ["Info", "Low", "Medium", "High", "Critical"]
    #   resp.data.next_token #=> String
    #
    def list_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommendations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommendations,
        stubs: @stubs,
        params_class: Params::ListRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Returns a list of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html">
    #                <code>RepositoryAssociationSummary</code>
    #             </a> objects that
    #          contain summary information about a repository association. You can filter the returned list by
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType">
    #                <code>ProviderType</code>
    #             </a>,
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name">
    #                <code>Name</code>
    #             </a>,
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State">
    #                <code>State</code>
    #             </a>, and
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner">
    #                <code>Owner</code>
    #             </a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoryAssociationsInput}.
    #
    # @option params [Array<String>] :provider_types
    #   <p>List of provider types to use as a filter.</p>
    #
    # @option params [Array<String>] :states
    #   <p>List of repository association states to use as a filter.</p>
    #            <p>The valid repository association states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Associated</b>: The repository
    #                  association is complete.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Associating</b>: CodeGuru Reviewer is:
    #               </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                        Setting up pull request notifications. This is required
    #                        for pull requests to trigger a CodeGuru Reviewer review.
    #                     </p>
    #                        <note>
    #                           <p>
    #                           If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>,
    #                           CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks,
    #                           reviews of code in your repository cannot be triggered.
    #                        </p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>
    #                        Setting up source code access. This is required for CodeGuru Reviewer to securely
    #                        clone code in your repository.
    #                     </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Failed</b>: The repository failed to associate or disassociate.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and
    #                  source code access.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association
    #                  with this repository if you want to review source code in it later. You can control access to code reviews created in an
    #                  associated repository with tags after it has been disassociated. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using tags to control access to
    #                  associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
    #               </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :names
    #   <p>List of repository names to use as a filter.</p>
    #
    # @option params [Array<String>] :owners
    #   <p>List of owners to use as a filter.
    #           For Amazon Web Services CodeCommit, it is the name of the CodeCommit account that was
    #           used to associate the repository. For other repository source providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account
    #           that was used to associate the repository. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of repository association results returned by <code>ListRepositoryAssociations</code>
    #            in paginated output. When this parameter is used, <code>ListRepositoryAssociations</code> only returns
    #            <code>maxResults</code> results in a single page with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListRepositoryAssociations</code> request with the returned
    #            <code>nextToken</code> value.
    #            This value can be between 1 and 100. If this parameter is not used, <code>ListRepositoryAssociations</code>
    #            returns up to 100 results and a <code>nextToken</code> value if applicable. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #            <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results
    #            that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @return [Types::ListRepositoryAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repository_associations(
    #     provider_types: [
    #       'CodeCommit' # accepts ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #     ],
    #     states: [
    #       'Associated' # accepts ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #     ],
    #     names: [
    #       'member'
    #     ],
    #     owners: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoryAssociationsOutput
    #   resp.data.repository_association_summaries #=> Array<RepositoryAssociationSummary>
    #   resp.data.repository_association_summaries[0] #=> Types::RepositoryAssociationSummary
    #   resp.data.repository_association_summaries[0].association_arn #=> String
    #   resp.data.repository_association_summaries[0].connection_arn #=> String
    #   resp.data.repository_association_summaries[0].last_updated_time_stamp #=> Time
    #   resp.data.repository_association_summaries[0].association_id #=> String
    #   resp.data.repository_association_summaries[0].name #=> String
    #   resp.data.repository_association_summaries[0].owner #=> String
    #   resp.data.repository_association_summaries[0].provider_type #=> String, one of ["CodeCommit", "GitHub", "Bitbucket", "GitHubEnterpriseServer", "S3Bucket"]
    #   resp.data.repository_association_summaries[0].state #=> String, one of ["Associated", "Associating", "Failed", "Disassociating", "Disassociated"]
    #   resp.data.next_token #=> String
    #
    def list_repository_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoryAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoryAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositoryAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListRepositoryAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositoryAssociations,
        stubs: @stubs,
        params_class: Params::ListRepositoryAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repository_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of tags associated with an associated repository resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #          Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::PutRecommendationFeedbackInput}.
    #
    # @option params [String] :code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">
    #                  <code>CodeReview</code>
    #               </a> object.
    #         </p>
    #
    # @option params [String] :recommendation_id
    #   <p>
    #            The recommendation ID that can be used to track the provided recommendations and then to collect the feedback.
    #         </p>
    #
    # @option params [Array<String>] :reactions
    #   <p>
    #            List for storing reactions. Reactions are utf-8 text code for emojis. If you send an empty list it clears all your feedback.
    #         </p>
    #
    # @return [Types::PutRecommendationFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_recommendation_feedback(
    #     code_review_arn: 'CodeReviewArn', # required
    #     recommendation_id: 'RecommendationId', # required
    #     reactions: [
    #       'ThumbsUp' # accepts ["ThumbsUp", "ThumbsDown"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRecommendationFeedbackOutput
    #
    def put_recommendation_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRecommendationFeedbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRecommendationFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRecommendationFeedback
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::PutRecommendationFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRecommendationFeedback,
        stubs: @stubs,
        params_class: Params::PutRecommendationFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_recommendation_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an associated repository.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #   			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:
    #   		</p>
    #   		       <ul>
    #               <li>
    #   				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #   			         </li>
    #               <li>
    #   				           <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #   			         </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a tag from an associated repository.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">
    #                  <code>RepositoryAssociation</code>
    #               </a> object.
    #            You can retrieve this ARN by calling
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">
    #                  <code>ListRepositoryAssociations</code>
    #               </a>.
    #         </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys for each tag you want to remove from an associated repository.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
