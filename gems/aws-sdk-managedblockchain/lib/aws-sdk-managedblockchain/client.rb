# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ManagedBlockchain
  # An API client for TaigaWebService
  # See {#initialize} for a full list of supported configuration options
  # <p></p>
  #          <p>Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open-source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority.</p>
  #         <p>Managed Blockchain supports the Hyperledger Fabric and Ethereum open-source frameworks. Because of fundamental differences between the frameworks, some API actions or data types may only apply in the context of one framework and not the other. For example, actions related to Hyperledger Fabric network members such as <code>CreateMember</code> and <code>DeleteMember</code> do not apply to Ethereum.</p>
  #         <p>The description for each action indicates the framework or frameworks to which it applies. Data types and properties that apply only in the context of a particular framework are similarly indicated.</p>
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
    def initialize(config = AWS::SDK::ManagedBlockchain::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a member within a Managed Blockchain network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMemberInput}.
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>
    #
    # @option params [String] :invitation_id
    #   <p>The unique identifier of the invitation that is sent to the member to join the network.</p>
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network in which the member is created.</p>
    #
    # @option params [MemberConfiguration] :member_configuration
    #   <p>Member configuration parameters.</p>
    #
    # @return [Types::CreateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_member(
    #     client_request_token: 'ClientRequestToken', # required
    #     invitation_id: 'InvitationId', # required
    #     network_id: 'NetworkId', # required
    #     member_configuration: {
    #       name: 'Name', # required
    #       description: 'Description',
    #       framework_configuration: {
    #         fabric: {
    #           admin_username: 'AdminUsername', # required
    #           admin_password: 'AdminPassword' # required
    #         }
    #       }, # required
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       tags: {
    #         'key' => 'value'
    #       },
    #       kms_key_arn: 'KmsKeyArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMemberOutput
    #   resp.data.member_id #=> String
    #
    def create_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMember
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMember,
        stubs: @stubs,
        params_class: Params::CreateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new blockchain network using Amazon Managed Blockchain.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNetworkInput}.
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>
    #
    # @option params [String] :name
    #   <p>The name of the network.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the network.</p>
    #
    # @option params [String] :framework
    #   <p>The blockchain framework that the network uses.</p>
    #
    # @option params [String] :framework_version
    #   <p>The version of the blockchain framework that the network uses.</p>
    #
    # @option params [NetworkFrameworkConfiguration] :framework_configuration
    #   <p>
    #            Configuration properties of the blockchain framework relevant to the network configuration.
    #         </p>
    #
    # @option params [VotingPolicy] :voting_policy
    #   <p>
    #            The voting rules used by the network to determine if a proposal is approved.
    #         </p>
    #
    # @option params [MemberConfiguration] :member_configuration
    #   <p>Configuration properties for the first member within the network.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the network. Each tag consists of a key and optional value.</p>
    #            <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @return [Types::CreateNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network(
    #     client_request_token: 'ClientRequestToken', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     framework: 'HYPERLEDGER_FABRIC', # required - accepts ["HYPERLEDGER_FABRIC", "ETHEREUM"]
    #     framework_version: 'FrameworkVersion', # required
    #     framework_configuration: {
    #       fabric: {
    #         edition: 'STARTER' # required - accepts ["STARTER", "STANDARD"]
    #       }
    #     },
    #     voting_policy: {
    #       approval_threshold_policy: {
    #         threshold_percentage: 1,
    #         proposal_duration_in_hours: 1,
    #         threshold_comparator: 'GREATER_THAN' # accepts ["GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"]
    #       }
    #     }, # required
    #     member_configuration: {
    #       name: 'Name', # required
    #       description: 'Description',
    #       framework_configuration: {
    #         fabric: {
    #           admin_username: 'AdminUsername', # required
    #           admin_password: 'AdminPassword' # required
    #         }
    #       }, # required
    #       log_publishing_configuration: {
    #         fabric: {
    #           ca_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           }
    #         }
    #       },
    #       tags: {
    #         'key' => 'value'
    #       },
    #       kms_key_arn: 'KmsKeyArn'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNetworkOutput
    #   resp.data.network_id #=> String
    #   resp.data.member_id #=> String
    #
    def create_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNetwork
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNetwork,
        stubs: @stubs,
        params_class: Params::CreateNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a node on the specified blockchain network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNodeInput}.
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for the node.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-rinkeby</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-ropsten</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #
    # @option params [NodeConfiguration] :node_configuration
    #   <p>The properties of a node configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the node. Each tag consists of a key and optional value.</p>
    #            <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @return [Types::CreateNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_node(
    #     client_request_token: 'ClientRequestToken', # required
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId',
    #     node_configuration: {
    #       instance_type: 'InstanceType', # required
    #       availability_zone: 'AvailabilityZone',
    #       log_publishing_configuration: {
    #         fabric: {
    #           chaincode_logs: {
    #             cloudwatch: {
    #               enabled: false
    #             }
    #           },
    #         }
    #       },
    #       state_db: 'LevelDB' # accepts ["LevelDB", "CouchDB"]
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNodeOutput
    #   resp.data.node_id #=> String
    #
    def create_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNode
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException, Errors::TooManyTagsException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNode,
        stubs: @stubs,
        params_class: Params::CreateNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProposalInput}.
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>
    #
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network for which the proposal is made.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that is creating the proposal. This identifier is especially useful for identifying the member making the proposal when multiple members exist in a single AWS account.</p>
    #
    # @option params [ProposalActions] :actions
    #   <p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>
    #
    # @option params [String] :description
    #   <p>A description for the proposal that is visible to voting members, for example, "Proposal to add Example Corp. as member."</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to assign to the proposal. Each tag consists of a key and optional value.</p>
    #            <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource. If the proposal is for a network invitation, the invitation inherits the tags added to the proposal.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @return [Types::CreateProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proposal(
    #     client_request_token: 'ClientRequestToken', # required
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId', # required
    #     actions: {
    #       invitations: [
    #         {
    #           principal: 'Principal' # required
    #         }
    #       ],
    #       removals: [
    #         {
    #           member_id: 'MemberId' # required
    #         }
    #       ]
    #     }, # required
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProposalOutput
    #   resp.data.proposal_id #=> String
    #
    def create_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProposal
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException, Errors::TooManyTagsException]),
        data_parser: Parsers::CreateProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProposal,
        stubs: @stubs,
        params_class: Params::CreateProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_proposal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a member. Deleting a member removes the member and all associated resources from the network. <code>DeleteMember</code> can only be called for a specified <code>MemberId</code> if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the <code>DeleteMember</code> action is carried out as the result of an approved proposal to remove a member. If <code>MemberId</code> is the last member in a network specified by the last AWS account, the network is deleted also.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMemberInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network from which the member is removed.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member to remove.</p>
    #
    # @return [Types::DeleteMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMemberOutput
    #
    def delete_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMember
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException]),
        data_parser: Parsers::DeleteMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMember,
        stubs: @stubs,
        params_class: Params::DeleteMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a node that your AWS account owns. All data on the node is lost and cannot be recovered.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNodeInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #            <p>Ethereum public networks have the following <code>NetworkId</code>s:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-mainnet</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-rinkeby</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>n-ethereum-ropsten</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns this node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    #
    # @return [Types::DeleteNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_node(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId',
    #     node_id: 'NodeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNodeOutput
    #
    def delete_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNode
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException]),
        data_parser: Parsers::DeleteNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNode,
        stubs: @stubs,
        params_class: Params::DeleteNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about a member.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMemberInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network to which the member belongs.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member.</p>
    #
    # @return [Types::GetMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMemberOutput
    #   resp.data.member #=> Types::Member
    #   resp.data.member.network_id #=> String
    #   resp.data.member.id #=> String
    #   resp.data.member.name #=> String
    #   resp.data.member.description #=> String
    #   resp.data.member.framework_attributes #=> Types::MemberFrameworkAttributes
    #   resp.data.member.framework_attributes.fabric #=> Types::MemberFabricAttributes
    #   resp.data.member.framework_attributes.fabric.admin_username #=> String
    #   resp.data.member.framework_attributes.fabric.ca_endpoint #=> String
    #   resp.data.member.log_publishing_configuration #=> Types::MemberLogPublishingConfiguration
    #   resp.data.member.log_publishing_configuration.fabric #=> Types::MemberFabricLogPublishingConfiguration
    #   resp.data.member.log_publishing_configuration.fabric.ca_logs #=> Types::LogConfigurations
    #   resp.data.member.log_publishing_configuration.fabric.ca_logs.cloudwatch #=> Types::LogConfiguration
    #   resp.data.member.log_publishing_configuration.fabric.ca_logs.cloudwatch.enabled #=> Boolean
    #   resp.data.member.status #=> String, one of ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #   resp.data.member.creation_date #=> Time
    #   resp.data.member.tags #=> Hash<String, String>
    #   resp.data.member.tags['key'] #=> String
    #   resp.data.member.arn #=> String
    #   resp.data.member.kms_key_arn #=> String
    #
    def get_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMember
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMember,
        stubs: @stubs,
        params_class: Params::GetMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about a network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network to get information about.</p>
    #
    # @return [Types::GetNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network(
    #     network_id: 'NetworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkOutput
    #   resp.data.network #=> Types::Network
    #   resp.data.network.id #=> String
    #   resp.data.network.name #=> String
    #   resp.data.network.description #=> String
    #   resp.data.network.framework #=> String, one of ["HYPERLEDGER_FABRIC", "ETHEREUM"]
    #   resp.data.network.framework_version #=> String
    #   resp.data.network.framework_attributes #=> Types::NetworkFrameworkAttributes
    #   resp.data.network.framework_attributes.fabric #=> Types::NetworkFabricAttributes
    #   resp.data.network.framework_attributes.fabric.ordering_service_endpoint #=> String
    #   resp.data.network.framework_attributes.fabric.edition #=> String, one of ["STARTER", "STANDARD"]
    #   resp.data.network.framework_attributes.ethereum #=> Types::NetworkEthereumAttributes
    #   resp.data.network.framework_attributes.ethereum.chain_id #=> String
    #   resp.data.network.vpc_endpoint_service_name #=> String
    #   resp.data.network.voting_policy #=> Types::VotingPolicy
    #   resp.data.network.voting_policy.approval_threshold_policy #=> Types::ApprovalThresholdPolicy
    #   resp.data.network.voting_policy.approval_threshold_policy.threshold_percentage #=> Integer
    #   resp.data.network.voting_policy.approval_threshold_policy.proposal_duration_in_hours #=> Integer
    #   resp.data.network.voting_policy.approval_threshold_policy.threshold_comparator #=> String, one of ["GREATER_THAN", "GREATER_THAN_OR_EQUAL_TO"]
    #   resp.data.network.status #=> String, one of ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"]
    #   resp.data.network.creation_date #=> Time
    #   resp.data.network.tags #=> Hash<String, String>
    #   resp.data.network.tags['key'] #=> String
    #   resp.data.network.arn #=> String
    #
    def get_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetwork
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetwork,
        stubs: @stubs,
        params_class: Params::GetNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about a node.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNodeInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    #
    # @return [Types::GetNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_node(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId',
    #     node_id: 'NodeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNodeOutput
    #   resp.data.node #=> Types::Node
    #   resp.data.node.network_id #=> String
    #   resp.data.node.member_id #=> String
    #   resp.data.node.id #=> String
    #   resp.data.node.instance_type #=> String
    #   resp.data.node.availability_zone #=> String
    #   resp.data.node.framework_attributes #=> Types::NodeFrameworkAttributes
    #   resp.data.node.framework_attributes.fabric #=> Types::NodeFabricAttributes
    #   resp.data.node.framework_attributes.fabric.peer_endpoint #=> String
    #   resp.data.node.framework_attributes.fabric.peer_event_endpoint #=> String
    #   resp.data.node.framework_attributes.ethereum #=> Types::NodeEthereumAttributes
    #   resp.data.node.framework_attributes.ethereum.http_endpoint #=> String
    #   resp.data.node.framework_attributes.ethereum.web_socket_endpoint #=> String
    #   resp.data.node.log_publishing_configuration #=> Types::NodeLogPublishingConfiguration
    #   resp.data.node.log_publishing_configuration.fabric #=> Types::NodeFabricLogPublishingConfiguration
    #   resp.data.node.log_publishing_configuration.fabric.chaincode_logs #=> Types::LogConfigurations
    #   resp.data.node.log_publishing_configuration.fabric.chaincode_logs.cloudwatch #=> Types::LogConfiguration
    #   resp.data.node.log_publishing_configuration.fabric.chaincode_logs.cloudwatch.enabled #=> Boolean
    #   resp.data.node.log_publishing_configuration.fabric.peer_logs #=> Types::LogConfigurations
    #   resp.data.node.state_db #=> String, one of ["LevelDB", "CouchDB"]
    #   resp.data.node.status #=> String, one of ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #   resp.data.node.creation_date #=> Time
    #   resp.data.node.tags #=> Hash<String, String>
    #   resp.data.node.tags['key'] #=> String
    #   resp.data.node.arn #=> String
    #   resp.data.node.kms_key_arn #=> String
    #
    def get_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNode
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNode,
        stubs: @stubs,
        params_class: Params::GetNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about a proposal.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProposalInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which the proposal is made.</p>
    #
    # @option params [String] :proposal_id
    #   <p>The unique identifier of the proposal.</p>
    #
    # @return [Types::GetProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proposal(
    #     network_id: 'NetworkId', # required
    #     proposal_id: 'ProposalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProposalOutput
    #   resp.data.proposal #=> Types::Proposal
    #   resp.data.proposal.proposal_id #=> String
    #   resp.data.proposal.network_id #=> String
    #   resp.data.proposal.description #=> String
    #   resp.data.proposal.actions #=> Types::ProposalActions
    #   resp.data.proposal.actions.invitations #=> Array<InviteAction>
    #   resp.data.proposal.actions.invitations[0] #=> Types::InviteAction
    #   resp.data.proposal.actions.invitations[0].principal #=> String
    #   resp.data.proposal.actions.removals #=> Array<RemoveAction>
    #   resp.data.proposal.actions.removals[0] #=> Types::RemoveAction
    #   resp.data.proposal.actions.removals[0].member_id #=> String
    #   resp.data.proposal.proposed_by_member_id #=> String
    #   resp.data.proposal.proposed_by_member_name #=> String
    #   resp.data.proposal.status #=> String, one of ["IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"]
    #   resp.data.proposal.creation_date #=> Time
    #   resp.data.proposal.expiration_date #=> Time
    #   resp.data.proposal.yes_vote_count #=> Integer
    #   resp.data.proposal.no_vote_count #=> Integer
    #   resp.data.proposal.outstanding_vote_count #=> Integer
    #   resp.data.proposal.tags #=> Hash<String, String>
    #   resp.data.proposal.tags['key'] #=> String
    #   resp.data.proposal.arn #=> String
    #
    def get_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProposal
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProposal,
        stubs: @stubs,
        params_class: Params::GetProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_proposal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all invitations for the current AWS account.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInvitationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of invitations to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInvitationsOutput
    #   resp.data.invitations #=> Array<Invitation>
    #   resp.data.invitations[0] #=> Types::Invitation
    #   resp.data.invitations[0].invitation_id #=> String
    #   resp.data.invitations[0].creation_date #=> Time
    #   resp.data.invitations[0].expiration_date #=> Time
    #   resp.data.invitations[0].status #=> String, one of ["PENDING", "ACCEPTED", "ACCEPTING", "REJECTED", "EXPIRED"]
    #   resp.data.invitations[0].network_summary #=> Types::NetworkSummary
    #   resp.data.invitations[0].network_summary.id #=> String
    #   resp.data.invitations[0].network_summary.name #=> String
    #   resp.data.invitations[0].network_summary.description #=> String
    #   resp.data.invitations[0].network_summary.framework #=> String, one of ["HYPERLEDGER_FABRIC", "ETHEREUM"]
    #   resp.data.invitations[0].network_summary.framework_version #=> String
    #   resp.data.invitations[0].network_summary.status #=> String, one of ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"]
    #   resp.data.invitations[0].network_summary.creation_date #=> Time
    #   resp.data.invitations[0].network_summary.arn #=> String
    #   resp.data.invitations[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInvitations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInvitations,
        stubs: @stubs,
        params_class: Params::ListInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the members in a network and properties of their configurations.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which to list members.</p>
    #
    # @option params [String] :name
    #   <p>The optional name of the member to list.</p>
    #
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only members currently in this status are listed.</p>
    #
    # @option params [Boolean] :is_owned
    #   <p>An optional Boolean value. If provided, the request is limited either to
    #            members that the current AWS account owns (<code>true</code>) or that other AWS accounts
    #            own (<code>false</code>). If omitted, all members are listed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of members to return in the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     network_id: 'NetworkId', # required
    #     name: 'Name',
    #     status: 'CREATING', # accepts ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #     is_owned: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.members #=> Array<MemberSummary>
    #   resp.data.members[0] #=> Types::MemberSummary
    #   resp.data.members[0].id #=> String
    #   resp.data.members[0].name #=> String
    #   resp.data.members[0].description #=> String
    #   resp.data.members[0].status #=> String, one of ["CREATING", "AVAILABLE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #   resp.data.members[0].creation_date #=> Time
    #   resp.data.members[0].is_owned #=> Boolean
    #   resp.data.members[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMembers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMembers,
        stubs: @stubs,
        params_class: Params::ListMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the networks in which the current AWS account participates.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNetworksInput}.
    #
    # @option params [String] :name
    #   <p>The name of the network.</p>
    #
    # @option params [String] :framework
    #   <p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>
    #
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only networks currently in this status are listed.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of networks to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListNetworksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_networks(
    #     name: 'Name',
    #     framework: 'HYPERLEDGER_FABRIC', # accepts ["HYPERLEDGER_FABRIC", "ETHEREUM"]
    #     status: 'CREATING', # accepts ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNetworksOutput
    #   resp.data.networks #=> Array<NetworkSummary>
    #   resp.data.networks[0] #=> Types::NetworkSummary
    #   resp.data.networks[0].id #=> String
    #   resp.data.networks[0].name #=> String
    #   resp.data.networks[0].description #=> String
    #   resp.data.networks[0].framework #=> String, one of ["HYPERLEDGER_FABRIC", "ETHEREUM"]
    #   resp.data.networks[0].framework_version #=> String
    #   resp.data.networks[0].status #=> String, one of ["CREATING", "AVAILABLE", "CREATE_FAILED", "DELETING", "DELETED"]
    #   resp.data.networks[0].creation_date #=> Time
    #   resp.data.networks[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_networks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNetworksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNetworksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNetworks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListNetworks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNetworks,
        stubs: @stubs,
        params_class: Params::ListNetworksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_networks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the nodes within a network.</p>
    #          <p>Applies to Hyperledger Fabric and Ethereum.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNodesInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network for which to list nodes.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member who owns the nodes to list.</p>
    #            <p>Applies only to Hyperledger Fabric and is required for Hyperledger Fabric.</p>
    #
    # @option params [String] :status
    #   <p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of nodes to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    # @return [Types::ListNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId',
    #     status: 'CREATING', # accepts ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNodesOutput
    #   resp.data.nodes #=> Array<NodeSummary>
    #   resp.data.nodes[0] #=> Types::NodeSummary
    #   resp.data.nodes[0].id #=> String
    #   resp.data.nodes[0].status #=> String, one of ["CREATING", "AVAILABLE", "UNHEALTHY", "CREATE_FAILED", "UPDATING", "DELETING", "DELETED", "FAILED", "INACCESSIBLE_ENCRYPTION_KEY"]
    #   resp.data.nodes[0].creation_date #=> Time
    #   resp.data.nodes[0].availability_zone #=> String
    #   resp.data.nodes[0].instance_type #=> String
    #   resp.data.nodes[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNodesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNodes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNodes,
        stubs: @stubs,
        params_class: Params::ListNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProposalVotesInput}.
    #
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #
    # @option params [String] :proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of votes to return.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    #
    # @return [Types::ListProposalVotesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposal_votes(
    #     network_id: 'NetworkId', # required
    #     proposal_id: 'ProposalId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProposalVotesOutput
    #   resp.data.proposal_votes #=> Array<VoteSummary>
    #   resp.data.proposal_votes[0] #=> Types::VoteSummary
    #   resp.data.proposal_votes[0].vote #=> String, one of ["YES", "NO"]
    #   resp.data.proposal_votes[0].member_name #=> String
    #   resp.data.proposal_votes[0].member_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_proposal_votes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProposalVotesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProposalVotesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProposalVotes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListProposalVotes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProposalVotes,
        stubs: @stubs,
        params_class: Params::ListProposalVotesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_proposal_votes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of proposals for the network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProposalsInput}.
    #
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #            The maximum number of proposals to return.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>
    #            The pagination token that indicates the next set of results to retrieve.
    #         </p>
    #
    # @return [Types::ListProposalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proposals(
    #     network_id: 'NetworkId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProposalsOutput
    #   resp.data.proposals #=> Array<ProposalSummary>
    #   resp.data.proposals[0] #=> Types::ProposalSummary
    #   resp.data.proposals[0].proposal_id #=> String
    #   resp.data.proposals[0].description #=> String
    #   resp.data.proposals[0].proposed_by_member_id #=> String
    #   resp.data.proposals[0].proposed_by_member_name #=> String
    #   resp.data.proposals[0].status #=> String, one of ["IN_PROGRESS", "APPROVED", "REJECTED", "EXPIRED", "ACTION_FAILED"]
    #   resp.data.proposals[0].creation_date #=> Time
    #   resp.data.proposals[0].expiration_date #=> Time
    #   resp.data.proposals[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_proposals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProposalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProposalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProposals
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListProposals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProposals,
        stubs: @stubs,
        params_class: Params::ListProposalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_proposals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags for the specified resource. Each tag consists of a key and optional value.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException]),
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

    # <p>Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectInvitationInput}.
    #
    # @option params [String] :invitation_id
    #   <p>The unique identifier of the invitation to reject.</p>
    #
    # @return [Types::RejectInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_invitation(
    #     invitation_id: 'InvitationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectInvitationOutput
    #
    def reject_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectInvitation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::IllegalActionException]),
        data_parser: Parsers::RejectInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectInvitation,
        stubs: @stubs,
        params_class: Params::RejectInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites the specified tags for the specified Amazon Managed Blockchain resource. Each tag consists of a key and optional value.</p>
    #          <p>When you specify a tag key that already exists, the tag value is overwritten with the new value. Use <code>UntagResource</code> to remove tag keys.</p>
    #          <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the specified resource. Tag values can be empty, for example, <code>"MyTagKey" : ""</code>. You can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException, Errors::TooManyTagsException]),
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

    # <p>Removes the specified tags from the Amazon Managed Blockchain resource.</p>
    #          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs and their format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::ResourceNotReadyException]),
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

    # <p>Updates a member configuration with new parameters.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMemberInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the Managed Blockchain network to which the member belongs.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member.</p>
    #
    # @option params [MemberLogPublishingConfiguration] :log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    #
    # @return [Types::UpdateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId', # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         ca_logs: {
    #           cloudwatch: {
    #             enabled: false
    #           }
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMemberOutput
    #
    def update_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMember
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMember,
        stubs: @stubs,
        params_class: Params::UpdateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a node configuration with new parameters.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNodeInput}.
    #
    # @option params [String] :network_id
    #   <p>The unique identifier of the network that the node is on.</p>
    #
    # @option params [String] :member_id
    #   <p>The unique identifier of the member that owns the node.</p>
    #            <p>Applies only to Hyperledger Fabric.</p>
    #
    # @option params [String] :node_id
    #   <p>The unique identifier of the node.</p>
    #
    # @option params [NodeLogPublishingConfiguration] :log_publishing_configuration
    #   <p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>
    #
    # @return [Types::UpdateNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_node(
    #     network_id: 'NetworkId', # required
    #     member_id: 'MemberId',
    #     node_id: 'NodeId', # required
    #     log_publishing_configuration: {
    #       fabric: {
    #         chaincode_logs: {
    #           cloudwatch: {
    #             enabled: false
    #           }
    #         },
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNodeOutput
    #
    def update_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNode
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNode,
        stubs: @stubs,
        params_class: Params::UpdateNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Casts a vote for a specified <code>ProposalId</code> on behalf of a member. The member to vote as, specified by <code>VoterMemberId</code>, must be in the same AWS account as the principal that calls the action.</p>
    #          <p>Applies only to Hyperledger Fabric.</p>
    #
    # @param [Hash] params
    #   See {Types::VoteOnProposalInput}.
    #
    # @option params [String] :network_id
    #   <p>
    #            The unique identifier of the network.
    #         </p>
    #
    # @option params [String] :proposal_id
    #   <p>
    #            The unique identifier of the proposal.
    #         </p>
    #
    # @option params [String] :voter_member_id
    #   <p>The unique identifier of the member casting the vote.
    #         </p>
    #
    # @option params [String] :vote
    #   <p>
    #            The value of the vote.
    #         </p>
    #
    # @return [Types::VoteOnProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.vote_on_proposal(
    #     network_id: 'NetworkId', # required
    #     proposal_id: 'ProposalId', # required
    #     voter_member_id: 'VoterMemberId', # required
    #     vote: 'YES' # required - accepts ["YES", "NO"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VoteOnProposalOutput
    #
    def vote_on_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VoteOnProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VoteOnProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VoteOnProposal
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceErrorException, Errors::InvalidRequestException, Errors::IllegalActionException]),
        data_parser: Parsers::VoteOnProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VoteOnProposal,
        stubs: @stubs,
        params_class: Params::VoteOnProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :vote_on_proposal
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
