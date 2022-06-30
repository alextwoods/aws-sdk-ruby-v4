# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Route53
  # An API client for AWSDnsV20130401
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Route 53 is a highly available and scalable Domain Name System (DNS) web
  # 			service.</p>
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
    def initialize(config = AWS::SDK::Route53::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Activates a key-signing key (KSK) so that it can be used for signing by DNSSEC. This
    # 			operation changes the KSK status to <code>ACTIVE</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateKeySigningKeyInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK). <code>Name</code> can include
    #   			numbers, letters, and underscores (_). <code>Name</code> must be unique for each
    #   			key-signing key in the same hosted zone.</p>
    #
    # @return [Types::ActivateKeySigningKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_key_signing_key(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateKeySigningKeyOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def activate_key_signing_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateKeySigningKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateKeySigningKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateKeySigningKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidKMSArn, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::NoSuchKeySigningKey, Errors::InvalidSigningStatus]),
        data_parser: Parsers::ActivateKeySigningKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateKeySigningKey,
        stubs: @stubs,
        params_class: Params::ActivateKeySigningKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_key_signing_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an Amazon VPC with a private hosted zone. </p>
    # 		       <important>
    # 			         <p>To perform the association, the VPC and the private hosted zone must already
    # 				exist. You can't convert a public hosted zone into a private hosted zone.</p>
    # 		       </important>
    # 		       <note>
    # 			         <p>If you want to associate a VPC that was created by using one Amazon Web Services account with a private hosted zone that was created by using a
    # 				different account, the Amazon Web Services account that created the private hosted
    # 				zone must first submit a <code>CreateVPCAssociationAuthorization</code> request.
    # 				Then the account that created the VPC must submit an
    # 					<code>AssociateVPCWithHostedZone</code> request.</p>
    # 		       </note>
    # 		       <note>
    # 			         <p>When granting access, the hosted zone and the Amazon VPC must belong to
    # 				the same partition. A partition is a group of Amazon Web Services Regions. Each
    # 					Amazon Web Services account is scoped to one partition.</p>
    # 			         <p>The following are the supported partitions:</p>
    # 			         <ul>
    #                <li>
    # 					             <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-cn</code> - China Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    # 				           </li>
    #             </ul>
    # 			         <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateVPCWithHostedZoneInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to associate an Amazon VPC
    #   			with.</p>
    #   		       <p>Note that you can't associate a VPC with a hosted zone that doesn't have an existing
    #   			VPC association.</p>
    #
    # @option params [VPC] :vpc
    #   <p>A complex type that contains information about the VPC that you want to associate with
    #   			a private hosted zone.</p>
    #
    # @option params [String] :comment
    #   <p>
    #               <i>Optional:</i> A comment about the association request.</p>
    #
    # @return [Types::AssociateVPCWithHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_vpc_with_hosted_zone(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     vpc: {
    #       vpc_region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #       vpc_id: 'VPCId'
    #     }, # required
    #     comment: 'Comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateVPCWithHostedZoneOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def associate_vpc_with_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateVPCWithHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateVPCWithHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateVPCWithHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::InvalidVPCId, Errors::LimitsExceeded, Errors::NotAuthorizedException, Errors::NoSuchHostedZone, Errors::ConflictingDomainExists, Errors::PublicZoneVPCAssociation]),
        data_parser: Parsers::AssociateVPCWithHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateVPCWithHostedZone,
        stubs: @stubs,
        params_class: Params::AssociateVPCWithHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_vpc_with_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates, changes, or deletes CIDR blocks within a collection. Contains authoritative
    # 			IP information mapping blocks to one or multiple locations.</p>
    # 		       <p>A change request can update multiple locations in a collection at a time, which is
    # 			helpful if you want to move one or more CIDR blocks from one location to another in one
    # 			transaction, without downtime. </p>
    # 		       <p>
    #             <b>Limits</b>
    #          </p>
    # 		       <p>The max number of CIDR blocks included in the request is
    # 			1000.
    # 			As a result, big updates require multiple API calls.</p>
    # 		       <p>
    #             <b> PUT and DELETE_IF_EXISTS</b>
    #          </p>
    # 		       <p>Use <code>ChangeCidrCollection</code> to perform the following actions:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>PUT</code>: Create a CIDR block within the specified collection.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code> DELETE_IF_EXISTS</code>: Delete an existing CIDR block from the
    # 					collection.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ChangeCidrCollectionInput}.
    #
    # @option params [String] :id
    #   <p>The UUID of the CIDR collection to update.</p>
    #
    # @option params [Integer] :collection_version
    #   <p>A sequential counter that Amazon Route 53 sets to 1 when you create a
    #   			collection and increments it by 1 each time you update the collection.</p>
    #   		       <p>We recommend that you use <code>ListCidrCollection</code> to get the current value of
    #   				<code>CollectionVersion</code> for the collection that you want to update, and then
    #   			include that value with the change request. This prevents Route 53 from
    #   			overwriting an intervening update: </p>
    #   		       <ul>
    #               <li>
    #   				           <p>If the value in the request matches the value of
    #   						<code>CollectionVersion</code> in the collection, Route 53 updates
    #   					the collection.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If the value of <code>CollectionVersion</code> in the collection is greater
    #   					than the value in the request, the collection was changed after you got the
    #   					version number. Route 53 does not update the collection, and it
    #   					returns a <code>CidrCollectionVersionMismatch</code> error. </p>
    #   			         </li>
    #            </ul>
    #
    # @option params [Array<CidrCollectionChange>] :changes
    #   <p> Information about changes to a CIDR collection.</p>
    #
    # @return [Types::ChangeCidrCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_cidr_collection(
    #     id: 'Id', # required
    #     collection_version: 1,
    #     changes: [
    #       {
    #         location_name: 'LocationName', # required
    #         action: 'PUT', # required - accepts ["PUT", "DELETE_IF_EXISTS"]
    #         cidr_list: [
    #           'member'
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangeCidrCollectionOutput
    #   resp.data.id #=> String
    #
    def change_cidr_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangeCidrCollectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangeCidrCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangeCidrCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::CidrBlockInUseException, Errors::CidrCollectionVersionMismatchException, Errors::LimitsExceeded, Errors::ConcurrentModification, Errors::NoSuchCidrCollectionException]),
        data_parser: Parsers::ChangeCidrCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangeCidrCollection,
        stubs: @stubs,
        params_class: Params::ChangeCidrCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_cidr_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates, changes, or deletes a resource record set, which contains authoritative DNS
    # 			information for a specified domain name or subdomain name. For example, you can use
    # 				<code>ChangeResourceRecordSets</code> to create a resource record set that routes
    # 			traffic for test.example.com to a web server that has an IP address of
    # 			192.0.2.44.</p>
    # 		       <p>
    #             <b>Deleting Resource Record Sets</b>
    #          </p>
    # 		       <p>To delete a resource record set, you must specify all the same values that you
    # 			specified when you created it.</p>
    # 		       <p>
    #             <b>Change Batches and Transactional Changes</b>
    #          </p>
    # 		       <p>The request body must include a document with a
    # 				<code>ChangeResourceRecordSetsRequest</code> element. The request body contains a
    # 			list of change items, known as a change batch. Change batches are considered
    # 			transactional changes. Route 53 validates the changes in the request and then either
    # 			makes all or none of the changes in the change batch request. This ensures that DNS
    # 			routing isn't adversely affected by partial changes to the resource record sets in a
    # 			hosted zone. </p>
    # 		       <p>For example, suppose a change batch request contains two changes: it deletes the
    # 				<code>CNAME</code> resource record set for www.example.com and creates an alias
    # 			resource record set for www.example.com. If validation for both records succeeds, Route
    # 			53 deletes the first resource record set and creates the second resource record set in a
    # 			single operation. If validation for either the <code>DELETE</code> or the
    # 				<code>CREATE</code> action fails, then the request is canceled, and the original
    # 				<code>CNAME</code> record continues to exist.</p>
    # 		       <note>
    # 			         <p>If you try to delete the same resource record set more than once in a single
    # 				change batch, Route 53 returns an <code>InvalidChangeBatch</code> error.</p>
    # 		       </note>
    # 		       <p>
    #             <b>Traffic Flow</b>
    #          </p>
    # 		       <p>To create resource record sets for complex routing configurations, use either the
    # 			traffic flow visual editor in the Route 53 console or the API actions for traffic
    # 			policies and traffic policy instances. Save the configuration as a traffic policy, then
    # 			associate the traffic policy with one or more domain names (such as example.com) or
    # 			subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted
    # 			zones. You can roll back the updates if the new configuration isn't performing as
    # 			expected. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html">Using Traffic Flow to Route
    # 				DNS Traffic</a> in the <i>Amazon Route 53 Developer
    # 			Guide</i>.</p>
    # 		       <p>
    #             <b>Create, Delete, and Upsert</b>
    #          </p>
    # 		       <p>Use <code>ChangeResourceRecordsSetsRequest</code> to perform the following
    # 			actions:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>CREATE</code>: Creates a resource record set that has the specified
    # 					values.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>DELETE</code>: Deletes an existing resource record set that has the
    # 					specified values.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>UPSERT</code>: If a resource set exists Route 53 updates it with the
    # 					values in the request. </p>
    # 			         </li>
    #          </ul>
    # 		       <p>
    #             <b>Syntaxes for Creating, Updating, and Deleting Resource Record
    # 				Sets</b>
    #          </p>
    # 		       <p>The syntax for a request depends on the type of resource record set that you want to
    # 			create, delete, or update, such as weighted, alias, or failover. The XML elements in
    # 			your request must appear in the order listed in the syntax. </p>
    # 		
    # 		       <p>For an example for each type of resource record set, see "Examples."</p>
    # 		
    # 		       <p>Don't refer to the syntax in the "Parameter Syntax" section, which includes
    # 			all of the elements for every kind of resource record set that you can create, delete,
    # 			or update by using <code>ChangeResourceRecordSets</code>. </p>
    # 		       <p>
    #             <b>Change Propagation to Route 53 DNS Servers</b>
    #          </p>
    # 		       <p>When you submit a <code>ChangeResourceRecordSets</code> request, Route 53 propagates
    # 			your changes to all of the Route 53 authoritative DNS servers. While your changes are
    # 			propagating, <code>GetChange</code> returns a status of <code>PENDING</code>. When
    # 			propagation is complete, <code>GetChange</code> returns a status of <code>INSYNC</code>.
    # 			Changes generally propagate to all Route 53 name servers within 60 seconds. For more
    # 			information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html">GetChange</a>.</p>
    # 		       <p>
    #             <b>Limits on ChangeResourceRecordSets Requests</b>
    #          </p>
    # 		       <p>For information about the limits on a <code>ChangeResourceRecordSets</code> request,
    # 			see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ChangeResourceRecordSetsInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that contains the resource record sets that you want to
    #   			change.</p>
    #
    # @option params [ChangeBatch] :change_batch
    #   <p>A complex type that contains an optional comment and the <code>Changes</code>
    #   			element.</p>
    #
    # @return [Types::ChangeResourceRecordSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_resource_record_sets(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     change_batch: {
    #       comment: 'Comment',
    #       changes: [
    #         {
    #           action: 'CREATE', # required - accepts ["CREATE", "DELETE", "UPSERT"]
    #           resource_record_set: {
    #             name: 'Name', # required
    #             type: 'SOA', # required - accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #             set_identifier: 'SetIdentifier',
    #             weight: 1,
    #             region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-north-1", "cn-northwest-1", "ap-east-1", "me-south-1", "ap-south-1", "af-south-1", "eu-south-1"]
    #             geo_location: {
    #               continent_code: 'ContinentCode',
    #               country_code: 'CountryCode',
    #               subdivision_code: 'SubdivisionCode'
    #             },
    #             failover: 'PRIMARY', # accepts ["PRIMARY", "SECONDARY"]
    #             multi_value_answer: false,
    #             ttl: 1,
    #             resource_records: [
    #               {
    #                 value: 'Value' # required
    #               }
    #             ],
    #             alias_target: {
    #               hosted_zone_id: 'HostedZoneId', # required
    #               dns_name: 'DNSName', # required
    #               evaluate_target_health: false # required
    #             },
    #             health_check_id: 'HealthCheckId',
    #             traffic_policy_instance_id: 'TrafficPolicyInstanceId',
    #             cidr_routing_config: {
    #               collection_id: 'CollectionId', # required
    #               location_name: 'LocationName' # required
    #             }
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangeResourceRecordSetsOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def change_resource_record_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangeResourceRecordSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangeResourceRecordSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangeResourceRecordSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::InvalidChangeBatch, Errors::NoSuchHealthCheck, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ChangeResourceRecordSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangeResourceRecordSets,
        stubs: @stubs,
        params_class: Params::ChangeResourceRecordSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_resource_record_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds, edits, or deletes tags for a health check or a hosted zone.</p>
    # 		       <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ChangeTagsForResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource for which you want to add, change, or delete tags.</p>
    #
    # @option params [Array<Tag>] :add_tags
    #   <p>A complex type that contains a list of the tags that you want to add to the specified
    #   			health check or hosted zone and/or the tags that you want to edit <code>Value</code>
    #   			for.</p>
    #   		       <p>You can add a maximum of 10 tags to a health check or a hosted zone.</p>
    #
    # @option params [Array<String>] :remove_tag_keys
    #   <p>A complex type that contains a list of the tags that you want to delete from the
    #   			specified health check or hosted zone. You can specify up to 10 keys.</p>
    #
    # @return [Types::ChangeTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_tags_for_resource(
    #     resource_type: 'healthcheck', # required - accepts ["healthcheck", "hostedzone"]
    #     resource_id: 'ResourceId', # required
    #     add_tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     remove_tag_keys: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangeTagsForResourceOutput
    #
    def change_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangeTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangeTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangeTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::ThrottlingException, Errors::NoSuchHealthCheck, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ChangeTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangeTagsForResource,
        stubs: @stubs,
        params_class: Params::ChangeTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a CIDR collection in the
    # 			current
    # 				Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCidrCollectionInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the account that can be used to reference the collection from
    #   			other API calls.</p>
    #
    # @option params [String] :caller_reference
    #   <p>A client-specific token that allows requests to be securely retried so that the
    #   			intended outcome will only occur once, retries receive a similar response, and there are
    #   			no additional edge cases to handle.</p>
    #
    # @return [Types::CreateCidrCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cidr_collection(
    #     name: 'Name', # required
    #     caller_reference: 'CallerReference' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCidrCollectionOutput
    #   resp.data.collection #=> Types::CidrCollection
    #   resp.data.collection.arn #=> String
    #   resp.data.collection.id #=> String
    #   resp.data.collection.name #=> String
    #   resp.data.collection.version #=> Integer
    #   resp.data.location #=> String
    #
    def create_cidr_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCidrCollectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCidrCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCidrCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::LimitsExceeded, Errors::ConcurrentModification, Errors::CidrCollectionAlreadyExistsException]),
        data_parser: Parsers::CreateCidrCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCidrCollection,
        stubs: @stubs,
        params_class: Params::CreateCidrCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cidr_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new health check.</p>
    # 		       <p>For information about adding health checks to resource record sets, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId">HealthCheckId</a> in <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>. </p>
    # 		       <p>
    #             <b>ELB Load Balancers</b>
    #          </p>
    # 		       <p>If you're registering EC2 instances with an Elastic Load Balancing (ELB) load
    # 			balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you
    # 			register an EC2 instance with a load balancer, you configure settings for an ELB health
    # 			check, which performs a similar function to a Route 53 health check.</p>
    # 		       <p>
    #             <b>Private Hosted Zones</b>
    #          </p>
    # 		       <p>You can associate health checks with failover resource record sets in a private hosted
    # 			zone. Note the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Route 53 health checkers are outside the VPC. To check the health of an
    # 					endpoint within a VPC by IP address, you must assign a public IP address to the
    # 					instance in the VPC.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You can configure a health checker to check the health of an external resource
    # 					that the instance relies on, such as a database server.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You can create a CloudWatch metric, associate an alarm with the metric, and
    # 					then create a health check that is based on the state of the alarm. For example,
    # 					you might create a CloudWatch metric that checks the status of the Amazon EC2
    # 						<code>StatusCheckFailed</code> metric, add an alarm to the metric, and then
    # 					create a health check that is based on the state of the alarm. For information
    # 					about creating CloudWatch metrics and alarms by using the CloudWatch console,
    # 					see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html">Amazon
    # 						CloudWatch User Guide</a>.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateHealthCheckInput}.
    #
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request and that allows you to retry a failed
    #   				<code>CreateHealthCheck</code> request without the risk of creating two identical
    #   			health checks:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> and settings as a previous request, and if the
    #   					health check doesn't exist, Amazon Route 53 creates the health check. If the
    #   					health check does exist, Route 53 returns the settings for the existing health
    #   					check.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> as a deleted health check, regardless of the
    #   					settings, Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you send a <code>CreateHealthCheck</code> request with the same
    #   						<code>CallerReference</code> as an existing health check but with different
    #   					settings, Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you send a <code>CreateHealthCheck</code> request with a unique
    #   						<code>CallerReference</code> but settings identical to an existing health
    #   					check, Route 53 creates the health check.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [HealthCheckConfig] :health_check_config
    #   <p>A complex type that contains settings for a new health check.</p>
    #
    # @return [Types::CreateHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_health_check(
    #     caller_reference: 'CallerReference', # required
    #     health_check_config: {
    #       ip_address: 'IPAddress',
    #       port: 1,
    #       type: 'HTTP', # required - accepts ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"]
    #       resource_path: 'ResourcePath',
    #       fully_qualified_domain_name: 'FullyQualifiedDomainName',
    #       search_string: 'SearchString',
    #       request_interval: 1,
    #       failure_threshold: 1,
    #       measure_latency: false,
    #       inverted: false,
    #       disabled: false,
    #       health_threshold: 1,
    #       child_health_checks: [
    #         'member'
    #       ],
    #       enable_sni: false,
    #       regions: [
    #         'us-east-1' # accepts ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #       ],
    #       alarm_identifier: {
    #         region: 'us-east-1', # required - accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #         name: 'Name' # required
    #       },
    #       insufficient_data_health_status: 'Healthy', # accepts ["Healthy", "Unhealthy", "LastKnownStatus"]
    #       routing_control_arn: 'RoutingControlArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHealthCheckOutput
    #   resp.data.health_check #=> Types::HealthCheck
    #   resp.data.health_check.id #=> String
    #   resp.data.health_check.caller_reference #=> String
    #   resp.data.health_check.linked_service #=> Types::LinkedService
    #   resp.data.health_check.linked_service.service_principal #=> String
    #   resp.data.health_check.linked_service.description #=> String
    #   resp.data.health_check.health_check_config #=> Types::HealthCheckConfig
    #   resp.data.health_check.health_check_config.ip_address #=> String
    #   resp.data.health_check.health_check_config.port #=> Integer
    #   resp.data.health_check.health_check_config.type #=> String, one of ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"]
    #   resp.data.health_check.health_check_config.resource_path #=> String
    #   resp.data.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.data.health_check.health_check_config.search_string #=> String
    #   resp.data.health_check.health_check_config.request_interval #=> Integer
    #   resp.data.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.data.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.data.health_check.health_check_config.inverted #=> Boolean
    #   resp.data.health_check.health_check_config.disabled #=> Boolean
    #   resp.data.health_check.health_check_config.health_threshold #=> Integer
    #   resp.data.health_check.health_check_config.child_health_checks #=> Array<String>
    #   resp.data.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.data.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.data.health_check.health_check_config.regions #=> Array<String>
    #   resp.data.health_check.health_check_config.regions[0] #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier #=> Types::AlarmIdentifier
    #   resp.data.health_check.health_check_config.alarm_identifier.region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.data.health_check.health_check_config.insufficient_data_health_status #=> String, one of ["Healthy", "Unhealthy", "LastKnownStatus"]
    #   resp.data.health_check.health_check_config.routing_control_arn #=> String
    #   resp.data.health_check.health_check_version #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration #=> Types::CloudWatchAlarmConfiguration
    #   resp.data.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.data.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of ["Average", "Sum", "SampleCount", "Maximum", "Minimum"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions #=> Array<Dimension>
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0] #=> Types::Dimension
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #   resp.data.location #=> String
    #
    def create_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHealthCheckInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHealthCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::TooManyHealthChecks, Errors::HealthCheckAlreadyExists]),
        data_parser: Parsers::CreateHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHealthCheck,
        stubs: @stubs,
        params_class: Params::CreateHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new public or private hosted zone. You create records in a public hosted
    # 			zone to define how you want to route traffic on the internet for a domain, such as
    # 			example.com, and its subdomains (apex.example.com, acme.example.com). You create records
    # 			in a private hosted zone to define how you want to route traffic for a domain and its
    # 			subdomains within one or more Amazon Virtual Private Clouds (Amazon VPCs). </p>
    # 		       <important>
    # 			         <p>You can't convert a public hosted zone to a private hosted zone or vice versa.
    # 				Instead, you must create a new hosted zone with the same name and create new
    # 				resource record sets.</p>
    # 		       </important>
    # 		       <p>For more information about charges for hosted zones, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p>
    # 		       <p>Note the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>You can't create a hosted zone for a top-level domain (TLD) such as
    # 					.com.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For public hosted zones, Route 53 automatically creates a default SOA record
    # 					and four NS records for the zone. For more information about SOA and NS records,
    # 					see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html">NS and SOA Records
    # 						that Route 53 Creates for a Hosted Zone</a> in the
    # 						<i>Amazon Route 53 Developer Guide</i>.</p>
    # 				           <p>If you want to use the same name servers for multiple public hosted zones, you
    # 					can optionally associate a reusable delegation set with the hosted zone. See the
    # 						<code>DelegationSetId</code> element.</p>
    # 			         </li>
    #             <li>
    # 				           <p>If your domain is registered with a registrar other than Route 53,
    # 					you must update the name servers with your registrar to make Route 53 the DNS
    # 					service for the domain. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html">Migrating DNS Service
    # 						for an Existing Domain to Amazon Route 53</a> in the
    # 						<i>Amazon Route 53 Developer Guide</i>. </p>
    # 			         </li>
    #          </ul>
    # 		       <p>When you submit a <code>CreateHostedZone</code> request, the initial status of the
    # 			hosted zone is <code>PENDING</code>. For public hosted zones, this means that the NS and
    # 			SOA records are not yet available on all Route 53 DNS servers. When the NS and
    # 			SOA records are available, the status of the zone changes to <code>INSYNC</code>.</p>
    # 		       <p>The <code>CreateHostedZone</code> request requires the caller to have an
    # 				<code>ec2:DescribeVpcs</code> permission.</p>
    # 		       <note>
    # 			         <p>When creating private hosted zones, the Amazon VPC must belong to the same
    # 				partition where the hosted zone is created. A partition is a group of Amazon Web Services Regions. Each Amazon Web Services account is scoped to one
    # 				partition.</p>
    # 			         <p>The following are the supported partitions:</p>
    # 			         <ul>
    #                <li>
    # 					             <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-cn</code> - China Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    # 				           </li>
    #             </ul>
    # 			         <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::CreateHostedZoneInput}.
    #
    # @option params [String] :name
    #   <p>The name of the domain. Specify a fully qualified domain name, for example,
    #   				<i>www.example.com</i>. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that
    #   				Route 53 treats <i>www.example.com</i> (without a trailing
    #   			dot) and <i>www.example.com.</i> (with a trailing dot) as
    #   			identical.</p>
    #   		       <p>If you're creating a public hosted zone, this is the name you have registered with
    #   			your DNS registrar. If your domain name is registered with a registrar other than
    #   				Route 53, change the name servers for your domain to the set of
    #   				<code>NameServers</code> that <code>CreateHostedZone</code> returns in
    #   				<code>DelegationSet</code>.</p>
    #
    # @option params [VPC] :vpc
    #   <p>(Private hosted zones only) A complex type that contains information about the Amazon
    #   			VPC that you're associating with this hosted zone.</p>
    #   		       <p>You can specify only one Amazon VPC when you create a private hosted zone. If you are
    #   			associating a VPC with a hosted zone with this request, the paramaters
    #   				<code>VPCId</code> and <code>VPCRegion</code> are also required.</p>
    #   		       <p>To associate additional Amazon VPCs with the hosted zone, use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html">AssociateVPCWithHostedZone</a> after you create a hosted zone.</p>
    #
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request and that allows failed
    #   				<code>CreateHostedZone</code> requests to be retried without the risk of executing
    #   			the operation twice. You must use a unique <code>CallerReference</code> string every
    #   			time you submit a <code>CreateHostedZone</code> request. <code>CallerReference</code>
    #   			can be any unique string, for example, a date/time stamp.</p>
    #
    # @option params [HostedZoneConfig] :hosted_zone_config
    #   <p>(Optional) A complex type that contains the following optional values:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>For public and private hosted zones, an optional comment</p>
    #   			         </li>
    #               <li>
    #   				           <p>For private hosted zones, an optional <code>PrivateZone</code> element</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you don't specify a comment or the <code>PrivateZone</code> element, omit
    #   				<code>HostedZoneConfig</code> and the other elements.</p>
    #
    # @option params [String] :delegation_set_id
    #   <p>If you want to associate a reusable delegation set with this hosted zone, the ID that
    #   				Amazon Route 53 assigned to the reusable delegation set when you created it.
    #   			For more information about reusable delegation sets, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html">CreateReusableDelegationSet</a>.</p>
    #
    # @return [Types::CreateHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hosted_zone(
    #     name: 'Name', # required
    #     vpc: {
    #       vpc_region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #       vpc_id: 'VPCId'
    #     },
    #     caller_reference: 'CallerReference', # required
    #     hosted_zone_config: {
    #       comment: 'Comment',
    #       private_zone: false
    #     },
    #     delegation_set_id: 'DelegationSetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHostedZoneOutput
    #   resp.data.hosted_zone #=> Types::HostedZone
    #   resp.data.hosted_zone.id #=> String
    #   resp.data.hosted_zone.name #=> String
    #   resp.data.hosted_zone.caller_reference #=> String
    #   resp.data.hosted_zone.config #=> Types::HostedZoneConfig
    #   resp.data.hosted_zone.config.comment #=> String
    #   resp.data.hosted_zone.config.private_zone #=> Boolean
    #   resp.data.hosted_zone.resource_record_set_count #=> Integer
    #   resp.data.hosted_zone.linked_service #=> Types::LinkedService
    #   resp.data.hosted_zone.linked_service.service_principal #=> String
    #   resp.data.hosted_zone.linked_service.description #=> String
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #   resp.data.delegation_set #=> Types::DelegationSet
    #   resp.data.delegation_set.id #=> String
    #   resp.data.delegation_set.caller_reference #=> String
    #   resp.data.delegation_set.name_servers #=> Array<String>
    #   resp.data.delegation_set.name_servers[0] #=> String
    #   resp.data.vpc #=> Types::VPC
    #   resp.data.vpc.vpc_region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #   resp.data.vpc.vpc_id #=> String
    #   resp.data.location #=> String
    #
    def create_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::InvalidVPCId, Errors::TooManyHostedZones, Errors::DelegationSetNotAvailable, Errors::DelegationSetNotReusable, Errors::NoSuchDelegationSet, Errors::ConflictingDomainExists, Errors::InvalidDomainName, Errors::HostedZoneAlreadyExists]),
        data_parser: Parsers::CreateHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHostedZone,
        stubs: @stubs,
        params_class: Params::CreateHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new key-signing key (KSK) associated with a hosted zone. You can only have
    # 			two KSKs per hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateKeySigningKeyInput}.
    #
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request.</p>
    #
    # @option params [String] :hosted_zone_id
    #   <p>The unique string (ID) used to identify a hosted zone.</p>
    #
    # @option params [String] :key_management_service_arn
    #   <p>The Amazon resource name (ARN) for a customer managed key in Key Management Service
    #   				(KMS). The <code>KeyManagementServiceArn</code> must be unique for
    #   			each key-signing key (KSK) in a single hosted zone. To see an example of
    #   				<code>KeyManagementServiceArn</code> that grants the correct permissions for DNSSEC,
    #   			scroll down to <b>Example</b>. </p>
    #   		       <p>You must configure the customer managed customer managed key as follows:</p>
    #   		       <dl>
    #               <dt>Status</dt>
    #               <dd>
    #   					          <p>Enabled</p>
    #   				        </dd>
    #               <dt>Key spec</dt>
    #               <dd>
    #   					          <p>ECC_NIST_P256</p>
    #   				        </dd>
    #               <dt>Key usage</dt>
    #               <dd>
    #   					          <p>Sign and verify</p>
    #   				        </dd>
    #               <dt>Key policy</dt>
    #               <dd>
    #   					          <p>The key policy must give permission for the following actions:</p>
    #   					          <ul>
    #                     <li>
    #   							              <p>DescribeKey</p>
    #   						            </li>
    #                     <li>
    #   							              <p>GetPublicKey</p>
    #   						            </li>
    #                     <li>
    #   							              <p>Sign</p>
    #   						            </li>
    #                  </ul>
    #   					          <p>The key policy must also include the Amazon Route 53 service in the
    #   						principal for your account. Specify the following:</p>
    #   					          <ul>
    #                     <li>
    #   							              <p>
    #                           <code>"Service": "dnssec-route53.amazonaws.com"</code>
    #                        </p>
    #   						            </li>
    #                  </ul>
    #   				        </dd>
    #            </dl>
    #   		       <p>For more information about working with a customer managed key in KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">Key Management Service concepts</a>.</p>
    #
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK). <code>Name</code> can include
    #   			numbers, letters, and underscores (_). <code>Name</code> must be unique for each
    #   			key-signing key in the same hosted zone.</p>
    #
    # @option params [String] :status
    #   <p>A string specifying the initial status of the key-signing key (KSK). You can set the
    #   			value to <code>ACTIVE</code> or <code>INACTIVE</code>.</p>
    #
    # @return [Types::CreateKeySigningKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_signing_key(
    #     caller_reference: 'CallerReference', # required
    #     hosted_zone_id: 'HostedZoneId', # required
    #     key_management_service_arn: 'KeyManagementServiceArn', # required
    #     name: 'Name', # required
    #     status: 'Status' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateKeySigningKeyOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #   resp.data.key_signing_key #=> Types::KeySigningKey
    #   resp.data.key_signing_key.name #=> String
    #   resp.data.key_signing_key.kms_arn #=> String
    #   resp.data.key_signing_key.flag #=> Integer
    #   resp.data.key_signing_key.signing_algorithm_mnemonic #=> String
    #   resp.data.key_signing_key.signing_algorithm_type #=> Integer
    #   resp.data.key_signing_key.digest_algorithm_mnemonic #=> String
    #   resp.data.key_signing_key.digest_algorithm_type #=> Integer
    #   resp.data.key_signing_key.key_tag #=> Integer
    #   resp.data.key_signing_key.digest_value #=> String
    #   resp.data.key_signing_key.public_key #=> String
    #   resp.data.key_signing_key.ds_record #=> String
    #   resp.data.key_signing_key.dnskey_record #=> String
    #   resp.data.key_signing_key.status #=> String
    #   resp.data.key_signing_key.status_message #=> String
    #   resp.data.key_signing_key.created_date #=> Time
    #   resp.data.key_signing_key.last_modified_date #=> Time
    #   resp.data.location #=> String
    #
    def create_key_signing_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateKeySigningKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateKeySigningKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateKeySigningKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::InvalidKMSArn, Errors::InvalidKeySigningKeyName, Errors::InvalidArgument, Errors::TooManyKeySigningKeys, Errors::KeySigningKeyAlreadyExists, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::NoSuchHostedZone, Errors::InvalidSigningStatus]),
        data_parser: Parsers::CreateKeySigningKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateKeySigningKey,
        stubs: @stubs,
        params_class: Params::CreateKeySigningKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_key_signing_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a configuration for DNS query logging. After you create a query logging
    # 			configuration, Amazon Route 53 begins to publish log data to an Amazon CloudWatch Logs
    # 			log group.</p>
    # 		       <p>DNS query logs contain information about the queries that Route 53 receives for a
    # 			specified public hosted zone, such as the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Route 53 edge location that responded to the DNS query</p>
    # 			         </li>
    #             <li>
    # 				           <p>Domain or subdomain that was requested</p>
    # 			         </li>
    #             <li>
    # 				           <p>DNS record type, such as A or AAAA</p>
    # 			         </li>
    #             <li>
    # 				           <p>DNS response code, such as <code>NoError</code> or
    # 					<code>ServFail</code>
    #                </p>
    # 			         </li>
    #          </ul>
    # 		       <dl>
    #             <dt>Log Group and Resource Policy</dt>
    #             <dd>
    # 					          <p>Before you create a query logging configuration, perform the following
    # 						operations.</p>
    # 					          <note>
    # 						            <p>If you create a query logging configuration using the Route 53
    # 							console, Route 53 performs these operations automatically.</p>
    # 					          </note>
    # 					          <ol>
    #                   <li>
    # 							              <p>Create a CloudWatch Logs log group, and make note of the ARN,
    # 								which you specify when you create a query logging configuration.
    # 								Note the following:</p>
    # 							              <ul>
    #                         <li>
    # 									                  <p>You must create the log group in the us-east-1
    # 										region.</p>
    # 								                </li>
    #                         <li>
    # 									                  <p>You must use the same Amazon Web Services account to create
    # 										the log group and the hosted zone that you want to configure
    # 										query logging for.</p>
    # 								                </li>
    #                         <li>
    # 									                  <p>When you create log groups for query logging, we recommend
    # 										that you use a consistent prefix, for example:</p>
    # 									                  <p>
    #                               <code>/aws/route53/<i>hosted zone
    # 											name</i>
    #                               </code>
    #                            </p>
    # 									                  <p>In the next step, you'll create a resource policy, which
    # 										controls access to one or more log groups and the associated
    # 											Amazon Web Services resources, such as Route 53 hosted
    # 										zones. There's a limit on the number of resource policies
    # 										that you can create, so we recommend that you use a
    # 										consistent prefix so you can use the same resource policy
    # 										for all the log groups that you create for query
    # 										logging.</p>
    # 								                </li>
    #                      </ul>
    # 						            </li>
    #                   <li>
    # 							              <p>Create a CloudWatch Logs resource policy, and give it the
    # 								permissions that Route 53 needs to create log streams and to send
    # 								query logs to log streams. For the value of <code>Resource</code>,
    # 								specify the ARN for the log group that you created in the previous
    # 								step. To use the same resource policy for all the CloudWatch Logs
    # 								log groups that you created for query logging configurations,
    # 								replace the hosted zone name with <code>*</code>, for
    # 								example:</p>
    # 							              <p>
    #                         <code>arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*</code>
    #                      </p>
    # 							              <p>To avoid the confused deputy problem, a security issue where an
    # 								entity without a permission for an action can coerce a
    # 								more-privileged entity to perform it, you can optionally limit the
    # 								permissions that a service has to a resource in a resource-based
    # 								policy by supplying the following values:</p>
    # 							              <ul>
    #                         <li>
    # 									                  <p>For <code>aws:SourceArn</code>, supply the hosted zone ARN
    # 										used in creating the query logging configuration. For
    # 										example, <code>aws:SourceArn:
    # 											arn:aws:route53:::hostedzone/hosted zone
    # 										ID</code>.</p>
    # 								                </li>
    #                         <li>
    # 									                  <p>For <code>aws:SourceAccount</code>, supply the account ID
    # 										for the account that creates the query logging
    # 										configuration. For example,
    # 											<code>aws:SourceAccount:111111111111</code>.</p>
    # 								                </li>
    #                      </ul>
    # 							              <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html">The confused
    # 									deputy problem</a> in the <i>Amazon Web Services
    # 									IAM User Guide</i>.</p>
    # 							              <note>
    # 								                <p>You can't use the CloudWatch console to create or edit a
    # 									resource policy. You must use the CloudWatch API, one of the
    # 										Amazon Web Services SDKs, or the CLI.</p>
    # 							              </note>
    # 						            </li>
    #                </ol>
    # 				        </dd>
    #             <dt>Log Streams and Edge Locations</dt>
    #             <dd>
    # 					          <p>When Route 53 finishes creating the configuration for DNS query logging,
    # 						it does the following:</p>
    # 					          <ul>
    #                   <li>
    # 							              <p>Creates a log stream for an edge location the first time that the
    # 								edge location responds to DNS queries for the specified hosted zone.
    # 								That log stream is used to log all queries that Route 53 responds to
    # 								for that edge location.</p>
    # 						            </li>
    #                   <li>
    # 							              <p>Begins to send query logs to the applicable log stream.</p>
    # 						            </li>
    #                </ul>
    # 					          <p>The name of each log stream is in the following format:</p>
    # 					          <p>
    #                   <code>
    #                      <i>hosted zone ID</i>/<i>edge location
    # 								code</i>
    #                   </code>
    #                </p>
    # 					          <p>The edge location code is a three-letter code and an arbitrarily assigned
    # 						number, for example, DFW3. The three-letter code typically corresponds with
    # 						the International Air Transport Association airport code for an airport near
    # 						the edge location. (These abbreviations might change in the future.) For a
    # 						list of edge locations, see "The Route 53 Global Network" on the <a href="http://aws.amazon.com/route53/details/">Route 53 Product Details</a>
    # 						page.</p>
    # 				        </dd>
    #             <dt>Queries That Are Logged</dt>
    #             <dd>
    # 					          <p>Query logs contain only the queries that DNS resolvers forward to Route
    # 						53. If a DNS resolver has already cached the response to a query (such as
    # 						the IP address for a load balancer for example.com), the resolver will
    # 						continue to return the cached response. It doesn't forward another query to
    # 						Route 53 until the TTL for the corresponding resource record set expires.
    # 						Depending on how many DNS queries are submitted for a resource record set,
    # 						and depending on the TTL for that resource record set, query logs might
    # 						contain information about only one query out of every several thousand
    # 						queries that are submitted to DNS. For more information about how DNS works,
    # 						see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html">Routing
    # 							Internet Traffic to Your Website or Web Application</a> in the
    # 							<i>Amazon Route 53 Developer Guide</i>.</p>
    # 				        </dd>
    #             <dt>Log File Format</dt>
    #             <dd>
    # 					          <p>For a list of the values in each query log and the format of each value,
    # 						see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS
    # 							Queries</a> in the <i>Amazon Route 53 Developer
    # 							Guide</i>.</p>
    # 				        </dd>
    #             <dt>Pricing</dt>
    #             <dd>
    # 					          <p>For information about charges for query logs, see <a href="http://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p>
    # 				        </dd>
    #             <dt>How to Stop Logging</dt>
    #             <dd>
    # 					          <p>If you want Route 53 to stop sending query logs to CloudWatch Logs, delete
    # 						the query logging configuration. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html">DeleteQueryLoggingConfig</a>.</p>
    # 				        </dd>
    #          </dl>
    #
    # @param [Hash] params
    #   See {Types::CreateQueryLoggingConfigInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to log queries for. You can log queries only
    #   			for public hosted zones.</p>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>The Amazon Resource Name (ARN) for the log group that you want to Amazon Route 53 to
    #   			send query logs to. This is the format of the ARN:</p>
    #   		       <p>arn:aws:logs:<i>region</i>:<i>account-id</i>:log-group:<i>log_group_name</i>
    #            </p>
    #   		       <p>To get the ARN for a log group, you can use the CloudWatch console, the <a href="https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogGroups.html">DescribeLogGroups</a> API action, the <a href="https://docs.aws.amazon.com/cli/latest/reference/logs/describe-log-groups.html">describe-log-groups</a>
    #   			command, or the applicable command in one of the Amazon Web Services SDKs.</p>
    #
    # @return [Types::CreateQueryLoggingConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_query_logging_config(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQueryLoggingConfigOutput
    #   resp.data.query_logging_config #=> Types::QueryLoggingConfig
    #   resp.data.query_logging_config.id #=> String
    #   resp.data.query_logging_config.hosted_zone_id #=> String
    #   resp.data.query_logging_config.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.location #=> String
    #
    def create_query_logging_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQueryLoggingConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQueryLoggingConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQueryLoggingConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::QueryLoggingConfigAlreadyExists, Errors::InsufficientCloudWatchLogsResourcePolicy, Errors::ConcurrentModification, Errors::NoSuchCloudWatchLogsLogGroup, Errors::NoSuchHostedZone]),
        data_parser: Parsers::CreateQueryLoggingConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQueryLoggingConfig,
        stubs: @stubs,
        params_class: Params::CreateQueryLoggingConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_query_logging_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a delegation set (a group of four name servers) that can be reused by multiple
    # 			hosted zones that were created by the same Amazon Web Services account. </p>
    # 		       <p>You can also create a reusable delegation set that uses the four name servers that are
    # 			associated with an existing hosted zone. Specify the hosted zone ID in the
    # 				<code>CreateReusableDelegationSet</code> request.</p>
    # 		       <note>
    # 			         <p>You can't associate a reusable delegation set with a private hosted zone.</p>
    # 		       </note>
    # 		       <p>For information about using a reusable delegation set to configure white label name
    # 			servers, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html">Configuring White
    # 				Label Name Servers</a>.</p>
    # 		       <p>The process for migrating existing hosted zones to use a reusable delegation set is
    # 			comparable to the process for configuring white label name servers. You need to perform
    # 			the following steps:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Create a reusable delegation set.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Recreate hosted zones, and reduce the TTL to 60 seconds or less.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Recreate resource record sets in the new hosted zones.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Change the registrar's name servers to use the name servers for the new hosted
    # 					zones.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Monitor traffic for the website or application.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Change TTLs back to their original values.</p>
    # 			         </li>
    #          </ol>
    # 		       <p>If you want to migrate existing hosted zones to use a reusable delegation set, the
    # 			existing hosted zones can't use any of the name servers that are assigned to the
    # 			reusable delegation set. If one or more hosted zones do use one or more name servers
    # 			that are assigned to the reusable delegation set, you can do one of the
    # 			following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>For small numbers of hosted zones—up to a few hundred—it's
    # 					relatively easy to create reusable delegation sets until you get one that has
    # 					four name servers that don't overlap with any of the name servers in your hosted
    # 					zones.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For larger numbers of hosted zones, the easiest solution is to use more than
    # 					one reusable delegation set.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For larger numbers of hosted zones, you can also migrate hosted zones that
    # 					have overlapping name servers to hosted zones that don't have overlapping name
    # 					servers, then migrate the hosted zones again to use the reusable delegation
    # 					set.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateReusableDelegationSetInput}.
    #
    # @option params [String] :caller_reference
    #   <p>A unique string that identifies the request, and that allows you to retry failed
    #   				<code>CreateReusableDelegationSet</code> requests without the risk of executing the
    #   			operation twice. You must use a unique <code>CallerReference</code> string every time
    #   			you submit a <code>CreateReusableDelegationSet</code> request.
    #   				<code>CallerReference</code> can be any unique string, for example a date/time
    #   			stamp.</p>
    #
    # @option params [String] :hosted_zone_id
    #   <p>If you want to mark the delegation set for an existing hosted zone as reusable, the ID
    #   			for that hosted zone.</p>
    #
    # @return [Types::CreateReusableDelegationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_reusable_delegation_set(
    #     caller_reference: 'CallerReference', # required
    #     hosted_zone_id: 'HostedZoneId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReusableDelegationSetOutput
    #   resp.data.delegation_set #=> Types::DelegationSet
    #   resp.data.delegation_set.id #=> String
    #   resp.data.delegation_set.caller_reference #=> String
    #   resp.data.delegation_set.name_servers #=> Array<String>
    #   resp.data.delegation_set.name_servers[0] #=> String
    #   resp.data.location #=> String
    #
    def create_reusable_delegation_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReusableDelegationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReusableDelegationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReusableDelegationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::DelegationSetAlreadyReusable, Errors::InvalidArgument, Errors::LimitsExceeded, Errors::HostedZoneNotFound, Errors::DelegationSetNotAvailable, Errors::DelegationSetAlreadyCreated]),
        data_parser: Parsers::CreateReusableDelegationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReusableDelegationSet,
        stubs: @stubs,
        params_class: Params::CreateReusableDelegationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_reusable_delegation_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a traffic policy, which you use to create multiple DNS resource record sets
    # 			for one domain name (such as example.com) or one subdomain name (such as
    # 			www.example.com).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrafficPolicyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the traffic policy.</p>
    #
    # @option params [String] :document
    #   <p>The definition of this traffic policy in JSON format. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
    #
    # @option params [String] :comment
    #   <p>(Optional) Any comments that you want to include about the traffic policy.</p>
    #
    # @return [Types::CreateTrafficPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy(
    #     name: 'Name', # required
    #     document: 'Document', # required
    #     comment: 'Comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrafficPolicyOutput
    #   resp.data.traffic_policy #=> Types::TrafficPolicy
    #   resp.data.traffic_policy.id #=> String
    #   resp.data.traffic_policy.version #=> Integer
    #   resp.data.traffic_policy.name #=> String
    #   resp.data.traffic_policy.type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy.document #=> String
    #   resp.data.traffic_policy.comment #=> String
    #   resp.data.location #=> String
    #
    def create_traffic_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrafficPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrafficPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrafficPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::InvalidTrafficPolicyDocument, Errors::TooManyTrafficPolicies, Errors::TrafficPolicyAlreadyExists]),
        data_parser: Parsers::CreateTrafficPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrafficPolicy,
        stubs: @stubs,
        params_class: Params::CreateTrafficPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_traffic_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates resource record sets in a specified hosted zone based on the settings in a
    # 			specified traffic policy version. In addition, <code>CreateTrafficPolicyInstance</code>
    # 			associates the resource record sets with a specified domain name (such as example.com)
    # 			or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for
    # 			the domain or subdomain name by using the resource record sets that
    # 				<code>CreateTrafficPolicyInstance</code> created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrafficPolicyInstanceInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want Amazon Route 53 to create resource record sets
    #   			in by using the configuration in a traffic policy.</p>
    #
    # @option params [String] :name
    #   <p>The domain name (such as example.com) or subdomain name (such as www.example.com) for
    #   			which Amazon Route 53 responds to DNS queries by using the resource record sets that
    #   			Route 53 creates for this traffic policy instance.</p>
    #
    # @option params [Integer] :ttl
    #   <p>(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource
    #   			record sets that it creates in the specified hosted zone.</p>
    #
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy that you want to use to create resource record sets in
    #   			the specified hosted zone.</p>
    #
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy that you want to use to create resource record sets
    #   			in the specified hosted zone.</p>
    #
    # @return [Types::CreateTrafficPolicyInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy_instance(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     name: 'Name', # required
    #     ttl: 1, # required
    #     traffic_policy_id: 'TrafficPolicyId', # required
    #     traffic_policy_version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrafficPolicyInstanceOutput
    #   resp.data.traffic_policy_instance #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instance.id #=> String
    #   resp.data.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.data.traffic_policy_instance.name #=> String
    #   resp.data.traffic_policy_instance.ttl #=> Integer
    #   resp.data.traffic_policy_instance.state #=> String
    #   resp.data.traffic_policy_instance.message #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instance.traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.location #=> String
    #
    def create_traffic_policy_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrafficPolicyInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrafficPolicyInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrafficPolicyInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy, Errors::TooManyTrafficPolicyInstances, Errors::NoSuchHostedZone, Errors::TrafficPolicyInstanceAlreadyExists]),
        data_parser: Parsers::CreateTrafficPolicyInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrafficPolicyInstance,
        stubs: @stubs,
        params_class: Params::CreateTrafficPolicyInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_traffic_policy_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of an existing traffic policy. When you create a new version of
    # 			a traffic policy, you specify the ID of the traffic policy that you want to update and a
    # 			JSON-formatted document that describes the new version. You use traffic policies to
    # 			create multiple DNS resource record sets for one domain name (such as example.com) or
    # 			one subdomain name (such as www.example.com). You can create a maximum of 1000 versions
    # 			of a traffic policy. If you reach the limit and need to create another version, you'll
    # 			need to start a new traffic policy.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrafficPolicyVersionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy for which you want to create a new version.</p>
    #
    # @option params [String] :document
    #   <p>The definition of this version of the traffic policy, in JSON format. You specified
    #   			the JSON in the <code>CreateTrafficPolicyVersion</code> request. For more information
    #   			about the JSON format, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html">CreateTrafficPolicy</a>.</p>
    #
    # @option params [String] :comment
    #   <p>The comment that you specified in the <code>CreateTrafficPolicyVersion</code> request,
    #   			if any.</p>
    #
    # @return [Types::CreateTrafficPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_policy_version(
    #     id: 'Id', # required
    #     document: 'Document', # required
    #     comment: 'Comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrafficPolicyVersionOutput
    #   resp.data.traffic_policy #=> Types::TrafficPolicy
    #   resp.data.traffic_policy.id #=> String
    #   resp.data.traffic_policy.version #=> Integer
    #   resp.data.traffic_policy.name #=> String
    #   resp.data.traffic_policy.type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy.document #=> String
    #   resp.data.traffic_policy.comment #=> String
    #   resp.data.location #=> String
    #
    def create_traffic_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrafficPolicyVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrafficPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrafficPolicyVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidInput, Errors::InvalidTrafficPolicyDocument, Errors::NoSuchTrafficPolicy, Errors::TooManyTrafficPolicyVersionsForCurrentPolicy, Errors::ConcurrentModification]),
        data_parser: Parsers::CreateTrafficPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrafficPolicyVersion,
        stubs: @stubs,
        params_class: Params::CreateTrafficPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_traffic_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Authorizes the Amazon Web Services account that created a specified VPC to submit an
    # 				<code>AssociateVPCWithHostedZone</code> request to associate the VPC with a
    # 			specified hosted zone that was created by a different account. To submit a
    # 				<code>CreateVPCAssociationAuthorization</code> request, you must use the account
    # 			that created the hosted zone. After you authorize the association, use the account that
    # 			created the VPC to submit an <code>AssociateVPCWithHostedZone</code> request.</p>
    # 		       <note>
    # 			         <p>If you want to associate multiple VPCs that you created by using one account with
    # 				a hosted zone that you created by using a different account, you must submit one
    # 				authorization request for each VPC.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::CreateVPCAssociationAuthorizationInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to authorize associating a VPC
    #   			with.</p>
    #
    # @option params [VPC] :vpc
    #   <p>A complex type that contains the VPC ID and region for the VPC that you want to
    #   			authorize associating with your hosted zone.</p>
    #
    # @return [Types::CreateVPCAssociationAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_association_authorization(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     vpc: {
    #       vpc_region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #       vpc_id: 'VPCId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVPCAssociationAuthorizationOutput
    #   resp.data.hosted_zone_id #=> String
    #   resp.data.vpc #=> Types::VPC
    #   resp.data.vpc.vpc_region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #   resp.data.vpc.vpc_id #=> String
    #
    def create_vpc_association_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVPCAssociationAuthorizationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVPCAssociationAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVPCAssociationAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidVPCId, Errors::TooManyVPCAssociationAuthorizations, Errors::ConcurrentModification, Errors::NoSuchHostedZone]),
        data_parser: Parsers::CreateVPCAssociationAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVPCAssociationAuthorization,
        stubs: @stubs,
        params_class: Params::CreateVPCAssociationAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_association_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates a key-signing key (KSK) so that it will not be used for signing by DNSSEC.
    # 			This operation changes the KSK status to <code>INACTIVE</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateKeySigningKeyInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK).</p>
    #
    # @return [Types::DeactivateKeySigningKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_key_signing_key(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateKeySigningKeyOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def deactivate_key_signing_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateKeySigningKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateKeySigningKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateKeySigningKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::KeySigningKeyInUse, Errors::NoSuchKeySigningKey, Errors::InvalidSigningStatus, Errors::KeySigningKeyInParentDSRecord]),
        data_parser: Parsers::DeactivateKeySigningKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateKeySigningKey,
        stubs: @stubs,
        params_class: Params::DeactivateKeySigningKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_key_signing_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a CIDR collection in the current Amazon Web Services account. The collection
    # 			must be empty before it can be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCidrCollectionInput}.
    #
    # @option params [String] :id
    #   <p>The UUID of the collection to delete.</p>
    #
    # @return [Types::DeleteCidrCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cidr_collection(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCidrCollectionOutput
    #
    def delete_cidr_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCidrCollectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCidrCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCidrCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::CidrCollectionInUseException, Errors::ConcurrentModification, Errors::NoSuchCidrCollectionException]),
        data_parser: Parsers::DeleteCidrCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCidrCollection,
        stubs: @stubs,
        params_class: Params::DeleteCidrCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cidr_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a health check.</p>
    # 		       <important>
    # 			         <p>Amazon Route 53 does not prevent you from deleting a health check even if the
    # 				health check is associated with one or more resource record sets. If you delete a
    # 				health check and you don't update the associated resource record sets, the future
    # 				status of the health check can't be predicted and may change. This will affect the
    # 				routing of DNS queries for your DNS failover configuration. For more information,
    # 				see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html">Replacing and Deleting Health Checks</a> in the <i>Amazon Route 53
    # 					Developer Guide</i>.</p>
    # 		       </important>
    # 		       <p>If you're using Cloud Map and you configured Cloud Map to create a Route 53
    # 			health check when you register an instance, you can't use the Route 53
    # 				<code>DeleteHealthCheck</code> command to delete the health check. The health check
    # 			is deleted automatically when you deregister the instance; there can be a delay of
    # 			several hours before the health check is deleted from Route 53. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHealthCheckInput}.
    #
    # @option params [String] :health_check_id
    #   <p>The ID of the health check that you want to delete.</p>
    #
    # @return [Types::DeleteHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_health_check(
    #     health_check_id: 'HealthCheckId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHealthCheckOutput
    #
    def delete_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHealthCheckInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHealthCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHealthCheck, Errors::HealthCheckInUse]),
        data_parser: Parsers::DeleteHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHealthCheck,
        stubs: @stubs,
        params_class: Params::DeleteHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a hosted zone.</p>
    # 		       <p>If the hosted zone was created by another service, such as Cloud Map, see
    # 				<a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service">Deleting Public Hosted Zones That Were Created by Another Service</a> in the
    # 					<i>Amazon Route 53 Developer Guide</i> for information
    # 			about how to delete it. (The process is the same for public and private hosted zones
    # 			that were created by another service.)</p>
    # 		       <p>If you want to keep your domain registration but you want to stop routing internet
    # 			traffic to your website or web application, we recommend that you delete resource record
    # 			sets in the hosted zone instead of deleting the hosted zone.</p>
    # 		       <important>
    # 			         <p>If you delete a hosted zone, you can't undelete it. You must create a new hosted
    # 				zone and update the name servers for your domain registration, which can require up
    # 				to 48 hours to take effect. (If you delegated responsibility for a subdomain to a
    # 				hosted zone and you delete the child hosted zone, you must update the name servers
    # 				in the parent hosted zone.) In addition, if you delete a hosted zone, someone could
    # 				hijack the domain and route traffic to their own resources using your domain
    # 				name.</p>
    # 		       </important>
    # 		       <p>If you want to avoid the monthly charge for the hosted zone, you can transfer DNS
    # 			service for the domain to a free DNS service. When you transfer DNS service, you have to
    # 			update the name servers for the domain registration. If the domain is registered with
    # 				Route 53, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html">UpdateDomainNameservers</a> for information about how to replace Route 53 name servers with name servers for the new DNS service. If the domain is
    # 			registered with another registrar, use the method provided by the registrar to update
    # 			name servers for the domain registration. For more information, perform an internet
    # 			search on "free DNS service."</p>
    # 		       <p>You can delete a hosted zone only if it contains only the default SOA record and NS
    # 			resource record sets. If the hosted zone contains other resource record sets, you must
    # 			delete them before you can delete the hosted zone. If you try to delete a hosted zone
    # 			that contains other resource record sets, the request fails, and Route 53
    # 			returns a <code>HostedZoneNotEmpty</code> error. For information about deleting records
    # 			from your hosted zone, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html">ChangeResourceRecordSets</a>.</p>
    # 		       <p>To verify that the hosted zone has been deleted, do one of the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Use the <code>GetHostedZone</code> action to request information about the
    # 					hosted zone.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Use the <code>ListHostedZones</code> action to get a list of the hosted zones
    # 					associated with the current Amazon Web Services account.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteHostedZoneInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the hosted zone you want to delete.</p>
    #
    # @return [Types::DeleteHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hosted_zone(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHostedZoneOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def delete_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::HostedZoneNotEmpty, Errors::NoSuchHostedZone, Errors::InvalidDomainName]),
        data_parser: Parsers::DeleteHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHostedZone,
        stubs: @stubs,
        params_class: Params::DeleteHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a key-signing key (KSK). Before you can delete a KSK, you must deactivate it.
    # 			The KSK must be deactivated before you can delete it regardless of whether the hosted
    # 			zone is enabled for DNSSEC signing.</p>
    # 		       <p>You can use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeactivateKeySigningKey.html">DeactivateKeySigningKey</a> to deactivate the key before you delete it.</p>
    # 		       <p>Use <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetDNSSEC.html">GetDNSSEC</a> to verify that the KSK is in an <code>INACTIVE</code>
    # 			status.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteKeySigningKeyInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @option params [String] :name
    #   <p>A string used to identify a key-signing key (KSK).</p>
    #
    # @return [Types::DeleteKeySigningKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_signing_key(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteKeySigningKeyOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def delete_key_signing_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteKeySigningKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteKeySigningKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteKeySigningKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidKMSArn, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::NoSuchKeySigningKey, Errors::InvalidSigningStatus]),
        data_parser: Parsers::DeleteKeySigningKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteKeySigningKey,
        stubs: @stubs,
        params_class: Params::DeleteKeySigningKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_key_signing_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a configuration for DNS query logging. If you delete a configuration, Amazon
    # 			Route 53 stops sending query logs to CloudWatch Logs. Route 53 doesn't delete any logs
    # 			that are already in CloudWatch Logs.</p>
    # 		       <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQueryLoggingConfigInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the configuration that you want to delete. </p>
    #
    # @return [Types::DeleteQueryLoggingConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_logging_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQueryLoggingConfigOutput
    #
    def delete_query_logging_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQueryLoggingConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQueryLoggingConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQueryLoggingConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchQueryLoggingConfig, Errors::ConcurrentModification]),
        data_parser: Parsers::DeleteQueryLoggingConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQueryLoggingConfig,
        stubs: @stubs,
        params_class: Params::DeleteQueryLoggingConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_query_logging_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a reusable delegation set.</p>
    # 		       <important>
    # 			         <p>You can delete a reusable delegation set only if it isn't associated with any
    # 				hosted zones.</p>
    # 		       </important>
    # 		       <p>To verify that the reusable delegation set is not associated with any hosted zones,
    # 			submit a <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html">GetReusableDelegationSet</a> request and specify the ID of the reusable
    # 			delegation set that you want to delete.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReusableDelegationSetInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the reusable delegation set that you want to delete.</p>
    #
    # @return [Types::DeleteReusableDelegationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reusable_delegation_set(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReusableDelegationSetOutput
    #
    def delete_reusable_delegation_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReusableDelegationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReusableDelegationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReusableDelegationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DelegationSetInUse, Errors::InvalidInput, Errors::DelegationSetNotReusable, Errors::NoSuchDelegationSet]),
        data_parser: Parsers::DeleteReusableDelegationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReusableDelegationSet,
        stubs: @stubs,
        params_class: Params::DeleteReusableDelegationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_reusable_delegation_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a traffic policy.</p>
    # 		       <p>When you delete a traffic policy, Route 53 sets a flag on the policy to indicate that
    # 			it has been deleted. However, Route 53 never fully deletes the traffic policy. Note the
    # 			following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Deleted traffic policies aren't listed if you run <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListTrafficPolicies.html">ListTrafficPolicies</a>.</p>
    # 			         </li>
    #             <li>
    # 				           <p> There's no way to get a list of deleted policies.</p>
    # 			         </li>
    #             <li>
    # 				           <p>If you retain the ID of the policy, you can get information about the policy,
    # 					including the traffic policy document, by running <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html">GetTrafficPolicy</a>.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrafficPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy that you want to delete.</p>
    #
    # @option params [Integer] :version
    #   <p>The version number of the traffic policy that you want to delete.</p>
    #
    # @return [Types::DeleteTrafficPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_policy(
    #     id: 'Id', # required
    #     version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrafficPolicyOutput
    #
    def delete_traffic_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrafficPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrafficPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTrafficPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy, Errors::TrafficPolicyInUse, Errors::ConcurrentModification]),
        data_parser: Parsers::DeleteTrafficPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTrafficPolicy,
        stubs: @stubs,
        params_class: Params::DeleteTrafficPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_traffic_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a traffic policy instance and all of the resource record sets that Amazon
    # 			Route 53 created when you created the instance.</p>
    # 		       <note>
    # 			         <p>In the Route 53 console, traffic policy instances are known as policy
    # 				records.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrafficPolicyInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to delete. </p>
    #   		       <important>
    #   			         <p>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the
    #   				resource record sets that were created when you created the traffic policy
    #   				instance.</p>
    #   		       </important>
    #
    # @return [Types::DeleteTrafficPolicyInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_policy_instance(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrafficPolicyInstanceOutput
    #
    def delete_traffic_policy_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrafficPolicyInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrafficPolicyInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTrafficPolicyInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::NoSuchTrafficPolicyInstance]),
        data_parser: Parsers::DeleteTrafficPolicyInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTrafficPolicyInstance,
        stubs: @stubs,
        params_class: Params::DeleteTrafficPolicyInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_traffic_policy_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes authorization to submit an <code>AssociateVPCWithHostedZone</code> request to
    # 			associate a specified VPC with a hosted zone that was created by a different account.
    # 			You must use the account that created the hosted zone to submit a
    # 				<code>DeleteVPCAssociationAuthorization</code> request.</p>
    # 		       <important>
    # 			         <p>Sending this request only prevents the Amazon Web Services account that created the
    # 				VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If
    # 				the VPC is already associated with the hosted zone,
    # 					<code>DeleteVPCAssociationAuthorization</code> won't disassociate the VPC from
    # 				the hosted zone. If you want to delete an existing association, use
    # 					<code>DisassociateVPCFromHostedZone</code>.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteVPCAssociationAuthorizationInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>When removing authorization to associate a VPC that was created by one Amazon Web Services account with a hosted zone that was created with a different Amazon Web Services account, the ID of the hosted zone.</p>
    #
    # @option params [VPC] :vpc
    #   <p>When removing authorization to associate a VPC that was created by one Amazon Web Services account with a hosted zone that was created with a different Amazon Web Services account, a complex type that includes the ID and region of the
    #   			VPC.</p>
    #
    # @return [Types::DeleteVPCAssociationAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_association_authorization(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     vpc: {
    #       vpc_region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #       vpc_id: 'VPCId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVPCAssociationAuthorizationOutput
    #
    def delete_vpc_association_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVPCAssociationAuthorizationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVPCAssociationAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVPCAssociationAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidVPCId, Errors::VPCAssociationAuthorizationNotFound, Errors::ConcurrentModification, Errors::NoSuchHostedZone]),
        data_parser: Parsers::DeleteVPCAssociationAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVPCAssociationAuthorization,
        stubs: @stubs,
        params_class: Params::DeleteVPCAssociationAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpc_association_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables DNSSEC signing in a specific hosted zone. This action does not deactivate any
    # 			key-signing keys (KSKs) that are active in the hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableHostedZoneDNSSECInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @return [Types::DisableHostedZoneDNSSECOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_hosted_zone_dnssec(
    #     hosted_zone_id: 'HostedZoneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableHostedZoneDNSSECOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def disable_hosted_zone_dnssec(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableHostedZoneDNSSECInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableHostedZoneDNSSECInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableHostedZoneDNSSEC
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidKMSArn, Errors::DNSSECNotFound, Errors::InvalidArgument, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::NoSuchHostedZone, Errors::KeySigningKeyInParentDSRecord]),
        data_parser: Parsers::DisableHostedZoneDNSSEC
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableHostedZoneDNSSEC,
        stubs: @stubs,
        params_class: Params::DisableHostedZoneDNSSECOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_hosted_zone_dnssec
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route 53
    # 			private hosted zone. Note the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>You can't disassociate the last Amazon VPC from a private hosted zone.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You can't convert a private hosted zone into a public hosted zone.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You can submit a <code>DisassociateVPCFromHostedZone</code> request using
    # 					either the account that created the hosted zone or the account that created the
    # 					Amazon VPC.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Some services, such as Cloud Map and Amazon Elastic File System
    # 					(Amazon EFS) automatically create hosted zones and associate VPCs with the
    # 					hosted zones. A service can create a hosted zone using your account or using its
    # 					own account. You can disassociate a VPC from a hosted zone only if the service
    # 					created the hosted zone using your account.</p>
    # 				           <p>When you run <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html">DisassociateVPCFromHostedZone</a>, if the hosted zone has a value for
    # 						<code>OwningAccount</code>, you can use
    # 						<code>DisassociateVPCFromHostedZone</code>. If the hosted zone has a value
    # 					for <code>OwningService</code>, you can't use
    # 						<code>DisassociateVPCFromHostedZone</code>.</p>
    # 			         </li>
    #          </ul>
    # 		       <note>
    # 			         <p>When revoking access, the hosted zone and the Amazon VPC must belong to
    # 				the same partition. A partition is a group of Amazon Web Services Regions. Each
    # 					Amazon Web Services account is scoped to one partition.</p>
    # 			         <p>The following are the supported partitions:</p>
    # 			         <ul>
    #                <li>
    # 					             <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-cn</code> - China Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    # 				           </li>
    #             </ul>
    # 			         <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateVPCFromHostedZoneInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the private hosted zone that you want to disassociate a VPC from.</p>
    #
    # @option params [VPC] :vpc
    #   <p>A complex type that contains information about the VPC that you're disassociating from
    #   			the specified hosted zone.</p>
    #
    # @option params [String] :comment
    #   <p>
    #               <i>Optional:</i> A comment about the disassociation request.</p>
    #
    # @return [Types::DisassociateVPCFromHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_vpc_from_hosted_zone(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     vpc: {
    #       vpc_region: 'us-east-1', # accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #       vpc_id: 'VPCId'
    #     }, # required
    #     comment: 'Comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateVPCFromHostedZoneOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def disassociate_vpc_from_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateVPCFromHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateVPCFromHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateVPCFromHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidVPCId, Errors::LastVPCAssociation, Errors::VPCAssociationNotFound, Errors::NoSuchHostedZone]),
        data_parser: Parsers::DisassociateVPCFromHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateVPCFromHostedZone,
        stubs: @stubs,
        params_class: Params::DisassociateVPCFromHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_vpc_from_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables DNSSEC signing in a specific hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableHostedZoneDNSSECInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @return [Types::EnableHostedZoneDNSSECOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_hosted_zone_dnssec(
    #     hosted_zone_id: 'HostedZoneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableHostedZoneDNSSECOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def enable_hosted_zone_dnssec(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableHostedZoneDNSSECInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableHostedZoneDNSSECInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableHostedZoneDNSSEC
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HostedZonePartiallyDelegated, Errors::InvalidInput, Errors::InvalidKMSArn, Errors::DNSSECNotFound, Errors::InvalidArgument, Errors::InvalidKeySigningKeyStatus, Errors::ConcurrentModification, Errors::NoSuchHostedZone, Errors::KeySigningKeyWithActiveStatusNotFound]),
        data_parser: Parsers::EnableHostedZoneDNSSEC
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableHostedZoneDNSSEC,
        stubs: @stubs,
        params_class: Params::EnableHostedZoneDNSSECOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_hosted_zone_dnssec
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified limit for the current account, for example, the maximum number of
    # 			health checks that you can create using the account.</p>
    # 		       <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    # 		       <note>
    # 			         <p>You can also view account limits in Amazon Web Services Trusted Advisor. Sign in to
    # 				the Amazon Web Services Management Console and open the Trusted Advisor console at <a href="https://console.aws.amazon.com/trustedadvisor">https://console.aws.amazon.com/trustedadvisor/</a>. Then choose <b>Service limits</b> in the navigation pane.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetAccountLimitInput}.
    #
    # @option params [String] :type
    #   <p>The limit that you want to get. Valid values include the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>MAX_HEALTH_CHECKS_BY_OWNER</b>: The maximum
    #   					number of health checks that you can create using the current account.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>MAX_HOSTED_ZONES_BY_OWNER</b>: The maximum number
    #   					of hosted zones that you can create using the current account.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>MAX_REUSABLE_DELEGATION_SETS_BY_OWNER</b>: The
    #   					maximum number of reusable delegation sets that you can create using the current
    #   					account.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>MAX_TRAFFIC_POLICIES_BY_OWNER</b>: The maximum
    #   					number of traffic policies that you can create using the current account.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER</b>: The
    #   					maximum number of traffic policy instances that you can create using the current
    #   					account. (Traffic policy instances are referred to as traffic flow policy
    #   					records in the Amazon Route 53 console.)</p>
    #   			         </li>
    #            </ul>
    #
    # @return [Types::GetAccountLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_limit(
    #     type: 'MAX_HEALTH_CHECKS_BY_OWNER' # required - accepts ["MAX_HEALTH_CHECKS_BY_OWNER", "MAX_HOSTED_ZONES_BY_OWNER", "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER", "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER", "MAX_TRAFFIC_POLICIES_BY_OWNER"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountLimitOutput
    #   resp.data.limit #=> Types::AccountLimit
    #   resp.data.limit.type #=> String, one of ["MAX_HEALTH_CHECKS_BY_OWNER", "MAX_HOSTED_ZONES_BY_OWNER", "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER", "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER", "MAX_TRAFFIC_POLICIES_BY_OWNER"]
    #   resp.data.limit.value #=> Integer
    #   resp.data.count #=> Integer
    #
    def get_account_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountLimitInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::GetAccountLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountLimit,
        stubs: @stubs,
        params_class: Params::GetAccountLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the current status of a change batch request. The status is one of the
    # 			following values:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>PENDING</code> indicates that the changes in this request have not
    # 					propagated to all Amazon Route 53 DNS servers. This is the initial status of all
    # 					change batch requests.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>INSYNC</code> indicates that the changes have propagated to all Route 53
    # 					DNS servers. </p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetChangeInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the change batch request. The value that you specify here is the value that
    #   				<code>ChangeResourceRecordSets</code> returned in the <code>Id</code> element when
    #   			you submitted the request.</p>
    #
    # @return [Types::GetChangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_change(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChangeOutput
    #   resp.data.change_info #=> Types::ChangeInfo
    #   resp.data.change_info.id #=> String
    #   resp.data.change_info.status #=> String, one of ["PENDING", "INSYNC"]
    #   resp.data.change_info.submitted_at #=> Time
    #   resp.data.change_info.comment #=> String
    #
    def get_change(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChangeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChange
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchChange]),
        data_parser: Parsers::GetChange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChange,
        stubs: @stubs,
        params_class: Params::GetChangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_change
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    # 		       <important>
    # 			         <p>
    #                <code>GetCheckerIpRanges</code> still works, but we recommend that you download
    # 				ip-ranges.json, which includes IP address ranges for all Amazon Web Services
    # 				services. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html">IP Address Ranges
    # 					of Amazon Route 53 Servers</a> in the <i>Amazon Route 53 Developer
    # 					Guide</i>.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::GetCheckerIpRangesInput}.
    #
    # @return [Types::GetCheckerIpRangesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_checker_ip_ranges()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCheckerIpRangesOutput
    #   resp.data.checker_ip_ranges #=> Array<String>
    #   resp.data.checker_ip_ranges[0] #=> String
    #
    def get_checker_ip_ranges(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCheckerIpRangesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCheckerIpRangesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCheckerIpRanges
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetCheckerIpRanges
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCheckerIpRanges,
        stubs: @stubs,
        params_class: Params::GetCheckerIpRangesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_checker_ip_ranges
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about DNSSEC for a specific hosted zone, including the key-signing
    # 			keys (KSKs) in the hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDNSSECInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>A unique string used to identify a hosted zone.</p>
    #
    # @return [Types::GetDNSSECOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dnssec(
    #     hosted_zone_id: 'HostedZoneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDNSSECOutput
    #   resp.data.status #=> Types::DNSSECStatus
    #   resp.data.status.serve_signature #=> String
    #   resp.data.status.status_message #=> String
    #   resp.data.key_signing_keys #=> Array<KeySigningKey>
    #   resp.data.key_signing_keys[0] #=> Types::KeySigningKey
    #   resp.data.key_signing_keys[0].name #=> String
    #   resp.data.key_signing_keys[0].kms_arn #=> String
    #   resp.data.key_signing_keys[0].flag #=> Integer
    #   resp.data.key_signing_keys[0].signing_algorithm_mnemonic #=> String
    #   resp.data.key_signing_keys[0].signing_algorithm_type #=> Integer
    #   resp.data.key_signing_keys[0].digest_algorithm_mnemonic #=> String
    #   resp.data.key_signing_keys[0].digest_algorithm_type #=> Integer
    #   resp.data.key_signing_keys[0].key_tag #=> Integer
    #   resp.data.key_signing_keys[0].digest_value #=> String
    #   resp.data.key_signing_keys[0].public_key #=> String
    #   resp.data.key_signing_keys[0].ds_record #=> String
    #   resp.data.key_signing_keys[0].dnskey_record #=> String
    #   resp.data.key_signing_keys[0].status #=> String
    #   resp.data.key_signing_keys[0].status_message #=> String
    #   resp.data.key_signing_keys[0].created_date #=> Time
    #   resp.data.key_signing_keys[0].last_modified_date #=> Time
    #
    def get_dnssec(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDNSSECInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDNSSECInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDNSSEC
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidArgument, Errors::NoSuchHostedZone]),
        data_parser: Parsers::GetDNSSEC
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDNSSEC,
        stubs: @stubs,
        params_class: Params::GetDNSSECOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dnssec
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about whether a specified geographic location is supported for Amazon
    # 			Route 53 geolocation resource record sets.</p>
    # 		       <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    # 		       <p>Use the following syntax to determine whether a continent is supported for
    # 			geolocation:</p>
    # 		       <p>
    #             <code>GET /2013-04-01/geolocation?continentcode=<i>two-letter abbreviation for
    # 					a continent</i>
    #             </code>
    #          </p>
    # 		       <p>Use the following syntax to determine whether a country is supported for
    # 			geolocation:</p>
    # 		       <p>
    #             <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
    # 					code</i>
    #             </code>
    #          </p>
    # 		       <p>Use the following syntax to determine whether a subdivision of a country is supported
    # 			for geolocation:</p>
    # 		       <p>
    #             <code>GET /2013-04-01/geolocation?countrycode=<i>two-character country
    # 					code</i>&subdivisioncode=<i>subdivision
    # 			code</i>
    #             </code>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::GetGeoLocationInput}.
    #
    # @option params [String] :continent_code
    #   <p>For geolocation resource record sets, a two-letter abbreviation that identifies a
    #   			continent. Amazon Route 53 supports the following continent codes:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>AF</b>: Africa</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>AN</b>: Antarctica</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>AS</b>: Asia</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>EU</b>: Europe</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>OC</b>: Oceania</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>NA</b>: North America</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>SA</b>: South America</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :country_code
    #   <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1
    #   				alpha-2</a>.</p>
    #
    # @option params [String] :subdivision_code
    #   <p>The code for the subdivision, such as a particular state within the United States. For
    #   			a list of US state abbreviations, see <a href="https://pe.usps.com/text/pub28/28apb.htm">Appendix B: Two–Letter State and
    #   				Possession Abbreviations</a> on the United States Postal Service website. For a
    #   			list of all supported subdivision codes, use the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListGeoLocations.html">ListGeoLocations</a>
    #   			API.</p>
    #
    # @return [Types::GetGeoLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_geo_location(
    #     continent_code: 'ContinentCode',
    #     country_code: 'CountryCode',
    #     subdivision_code: 'SubdivisionCode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGeoLocationOutput
    #   resp.data.geo_location_details #=> Types::GeoLocationDetails
    #   resp.data.geo_location_details.continent_code #=> String
    #   resp.data.geo_location_details.continent_name #=> String
    #   resp.data.geo_location_details.country_code #=> String
    #   resp.data.geo_location_details.country_name #=> String
    #   resp.data.geo_location_details.subdivision_code #=> String
    #   resp.data.geo_location_details.subdivision_name #=> String
    #
    def get_geo_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGeoLocationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGeoLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGeoLocation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchGeoLocation]),
        data_parser: Parsers::GetGeoLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGeoLocation,
        stubs: @stubs,
        params_class: Params::GetGeoLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_geo_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified health check.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHealthCheckInput}.
    #
    # @option params [String] :health_check_id
    #   <p>The identifier that Amazon Route 53 assigned to the health check when you created it.
    #   			When you add or update a resource record set, you use this value to specify which health
    #   			check to use. The value can be up to 64 characters long.</p>
    #
    # @return [Types::GetHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check(
    #     health_check_id: 'HealthCheckId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHealthCheckOutput
    #   resp.data.health_check #=> Types::HealthCheck
    #   resp.data.health_check.id #=> String
    #   resp.data.health_check.caller_reference #=> String
    #   resp.data.health_check.linked_service #=> Types::LinkedService
    #   resp.data.health_check.linked_service.service_principal #=> String
    #   resp.data.health_check.linked_service.description #=> String
    #   resp.data.health_check.health_check_config #=> Types::HealthCheckConfig
    #   resp.data.health_check.health_check_config.ip_address #=> String
    #   resp.data.health_check.health_check_config.port #=> Integer
    #   resp.data.health_check.health_check_config.type #=> String, one of ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"]
    #   resp.data.health_check.health_check_config.resource_path #=> String
    #   resp.data.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.data.health_check.health_check_config.search_string #=> String
    #   resp.data.health_check.health_check_config.request_interval #=> Integer
    #   resp.data.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.data.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.data.health_check.health_check_config.inverted #=> Boolean
    #   resp.data.health_check.health_check_config.disabled #=> Boolean
    #   resp.data.health_check.health_check_config.health_threshold #=> Integer
    #   resp.data.health_check.health_check_config.child_health_checks #=> Array<String>
    #   resp.data.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.data.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.data.health_check.health_check_config.regions #=> Array<String>
    #   resp.data.health_check.health_check_config.regions[0] #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier #=> Types::AlarmIdentifier
    #   resp.data.health_check.health_check_config.alarm_identifier.region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.data.health_check.health_check_config.insufficient_data_health_status #=> String, one of ["Healthy", "Unhealthy", "LastKnownStatus"]
    #   resp.data.health_check.health_check_config.routing_control_arn #=> String
    #   resp.data.health_check.health_check_version #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration #=> Types::CloudWatchAlarmConfiguration
    #   resp.data.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.data.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of ["Average", "Sum", "SampleCount", "Maximum", "Minimum"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions #=> Array<Dimension>
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0] #=> Types::Dimension
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #
    def get_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHealthCheckInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHealthCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHealthCheck, Errors::IncompatibleVersion]),
        data_parser: Parsers::GetHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHealthCheck,
        stubs: @stubs,
        params_class: Params::GetHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the number of health checks that are associated with the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHealthCheckCountInput}.
    #
    # @return [Types::GetHealthCheckCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_count()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHealthCheckCountOutput
    #   resp.data.health_check_count #=> Integer
    #
    def get_health_check_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHealthCheckCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHealthCheckCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHealthCheckCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetHealthCheckCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHealthCheckCount,
        stubs: @stubs,
        params_class: Params::GetHealthCheckCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_health_check_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the reason that a specified health check failed most recently.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHealthCheckLastFailureReasonInput}.
    #
    # @option params [String] :health_check_id
    #   <p>The ID for the health check for which you want the last failure reason. When you
    #   			created the health check, <code>CreateHealthCheck</code> returned the ID in the
    #   			response, in the <code>HealthCheckId</code> element.</p>
    #   		       <note>
    #   			         <p>If you want to get the last failure reason for a calculated health check, you must
    #   				use the Amazon Route 53 console or the CloudWatch console. You can't use
    #   					<code>GetHealthCheckLastFailureReason</code> for a calculated health
    #   				check.</p>
    #   		       </note>
    #
    # @return [Types::GetHealthCheckLastFailureReasonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_last_failure_reason(
    #     health_check_id: 'HealthCheckId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHealthCheckLastFailureReasonOutput
    #   resp.data.health_check_observations #=> Array<HealthCheckObservation>
    #   resp.data.health_check_observations[0] #=> Types::HealthCheckObservation
    #   resp.data.health_check_observations[0].region #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_check_observations[0].ip_address #=> String
    #   resp.data.health_check_observations[0].status_report #=> Types::StatusReport
    #   resp.data.health_check_observations[0].status_report.status #=> String
    #   resp.data.health_check_observations[0].status_report.checked_time #=> Time
    #
    def get_health_check_last_failure_reason(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHealthCheckLastFailureReasonInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHealthCheckLastFailureReasonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHealthCheckLastFailureReason
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHealthCheck]),
        data_parser: Parsers::GetHealthCheckLastFailureReason
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHealthCheckLastFailureReason,
        stubs: @stubs,
        params_class: Params::GetHealthCheckLastFailureReasonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_health_check_last_failure_reason
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets status of a specified health check. </p>
    # 		       <important>
    # 			         <p>This API is intended for use during development to diagnose behavior. It doesn’t
    # 				support production use-cases with high query rates that require immediate and
    # 				actionable responses.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::GetHealthCheckStatusInput}.
    #
    # @option params [String] :health_check_id
    #   <p>The ID for the health check that you want the current status for. When you created the
    #   			health check, <code>CreateHealthCheck</code> returned the ID in the response, in the
    #   				<code>HealthCheckId</code> element.</p>
    #   		       <note>
    #   			         <p>If you want to check the status of a calculated health check, you must use the
    #   				Amazon Route 53 console or the CloudWatch console. You can't use
    #   					<code>GetHealthCheckStatus</code> to get the status of a calculated health
    #   				check.</p>
    #   		       </note>
    #
    # @return [Types::GetHealthCheckStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_health_check_status(
    #     health_check_id: 'HealthCheckId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHealthCheckStatusOutput
    #   resp.data.health_check_observations #=> Array<HealthCheckObservation>
    #   resp.data.health_check_observations[0] #=> Types::HealthCheckObservation
    #   resp.data.health_check_observations[0].region #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_check_observations[0].ip_address #=> String
    #   resp.data.health_check_observations[0].status_report #=> Types::StatusReport
    #   resp.data.health_check_observations[0].status_report.status #=> String
    #   resp.data.health_check_observations[0].status_report.checked_time #=> Time
    #
    def get_health_check_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHealthCheckStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHealthCheckStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHealthCheckStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHealthCheck]),
        data_parser: Parsers::GetHealthCheckStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHealthCheckStatus,
        stubs: @stubs,
        params_class: Params::GetHealthCheckStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_health_check_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified hosted zone including the four name servers
    # 			assigned to the hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostedZoneInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the hosted zone that you want to get information about.</p>
    #
    # @return [Types::GetHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostedZoneOutput
    #   resp.data.hosted_zone #=> Types::HostedZone
    #   resp.data.hosted_zone.id #=> String
    #   resp.data.hosted_zone.name #=> String
    #   resp.data.hosted_zone.caller_reference #=> String
    #   resp.data.hosted_zone.config #=> Types::HostedZoneConfig
    #   resp.data.hosted_zone.config.comment #=> String
    #   resp.data.hosted_zone.config.private_zone #=> Boolean
    #   resp.data.hosted_zone.resource_record_set_count #=> Integer
    #   resp.data.hosted_zone.linked_service #=> Types::LinkedService
    #   resp.data.hosted_zone.linked_service.service_principal #=> String
    #   resp.data.hosted_zone.linked_service.description #=> String
    #   resp.data.delegation_set #=> Types::DelegationSet
    #   resp.data.delegation_set.id #=> String
    #   resp.data.delegation_set.caller_reference #=> String
    #   resp.data.delegation_set.name_servers #=> Array<String>
    #   resp.data.delegation_set.name_servers[0] #=> String
    #   resp.data.vp_cs #=> Array<VPC>
    #   resp.data.vp_cs[0] #=> Types::VPC
    #   resp.data.vp_cs[0].vpc_region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #   resp.data.vp_cs[0].vpc_id #=> String
    #
    def get_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHostedZone]),
        data_parser: Parsers::GetHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHostedZone,
        stubs: @stubs,
        params_class: Params::GetHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the number of hosted zones that are associated with the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostedZoneCountInput}.
    #
    # @return [Types::GetHostedZoneCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone_count()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostedZoneCountOutput
    #   resp.data.hosted_zone_count #=> Integer
    #
    def get_hosted_zone_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostedZoneCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostedZoneCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHostedZoneCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::GetHostedZoneCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHostedZoneCount,
        stubs: @stubs,
        params_class: Params::GetHostedZoneCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hosted_zone_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified limit for a specified hosted zone, for example, the maximum number
    # 			of records that you can create in the hosted zone. </p>
    # 		       <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostedZoneLimitInput}.
    #
    # @option params [String] :type
    #   <p>The limit that you want to get. Valid values include the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>MAX_RRSETS_BY_ZONE</b>: The maximum number of
    #   					records that you can create in the specified hosted zone.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>MAX_VPCS_ASSOCIATED_BY_ZONE</b>: The maximum
    #   					number of Amazon VPCs that you can associate with the specified private hosted
    #   					zone.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to get a limit for.</p>
    #
    # @return [Types::GetHostedZoneLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_zone_limit(
    #     type: 'MAX_RRSETS_BY_ZONE', # required - accepts ["MAX_RRSETS_BY_ZONE", "MAX_VPCS_ASSOCIATED_BY_ZONE"]
    #     hosted_zone_id: 'HostedZoneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostedZoneLimitOutput
    #   resp.data.limit #=> Types::HostedZoneLimit
    #   resp.data.limit.type #=> String, one of ["MAX_RRSETS_BY_ZONE", "MAX_VPCS_ASSOCIATED_BY_ZONE"]
    #   resp.data.limit.value #=> Integer
    #   resp.data.count #=> Integer
    #
    def get_hosted_zone_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostedZoneLimitInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostedZoneLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHostedZoneLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::HostedZoneNotPrivate, Errors::NoSuchHostedZone]),
        data_parser: Parsers::GetHostedZoneLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHostedZoneLimit,
        stubs: @stubs,
        params_class: Params::GetHostedZoneLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hosted_zone_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified configuration for DNS query logging.</p>
    # 		       <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a> and <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS
    # 			Queries</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryLoggingConfigInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the configuration for DNS query logging that you want to get information
    #   			about.</p>
    #
    # @return [Types::GetQueryLoggingConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_logging_config(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryLoggingConfigOutput
    #   resp.data.query_logging_config #=> Types::QueryLoggingConfig
    #   resp.data.query_logging_config.id #=> String
    #   resp.data.query_logging_config.hosted_zone_id #=> String
    #   resp.data.query_logging_config.cloud_watch_logs_log_group_arn #=> String
    #
    def get_query_logging_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryLoggingConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryLoggingConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryLoggingConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchQueryLoggingConfig]),
        data_parser: Parsers::GetQueryLoggingConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryLoggingConfig,
        stubs: @stubs,
        params_class: Params::GetQueryLoggingConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_logging_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a specified reusable delegation set, including the four
    # 			name servers that are assigned to the delegation set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReusableDelegationSetInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the reusable delegation set that you want to get a list of name servers
    #   			for.</p>
    #
    # @return [Types::GetReusableDelegationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reusable_delegation_set(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReusableDelegationSetOutput
    #   resp.data.delegation_set #=> Types::DelegationSet
    #   resp.data.delegation_set.id #=> String
    #   resp.data.delegation_set.caller_reference #=> String
    #   resp.data.delegation_set.name_servers #=> Array<String>
    #   resp.data.delegation_set.name_servers[0] #=> String
    #
    def get_reusable_delegation_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReusableDelegationSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReusableDelegationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReusableDelegationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::DelegationSetNotReusable, Errors::NoSuchDelegationSet]),
        data_parser: Parsers::GetReusableDelegationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReusableDelegationSet,
        stubs: @stubs,
        params_class: Params::GetReusableDelegationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reusable_delegation_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the maximum number of hosted zones that you can associate with the specified
    # 			reusable delegation set.</p>
    # 		       <p>For the default limit, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the
    # 				<i>Amazon Route 53 Developer Guide</i>. To request a higher limit,
    # 				<a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-route53">open a case</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReusableDelegationSetLimitInput}.
    #
    # @option params [String] :type
    #   <p>Specify <code>MAX_ZONES_BY_REUSABLE_DELEGATION_SET</code> to get the maximum number of
    #   			hosted zones that you can associate with the specified reusable delegation set.</p>
    #
    # @option params [String] :delegation_set_id
    #   <p>The ID of the delegation set that you want to get the limit for.</p>
    #
    # @return [Types::GetReusableDelegationSetLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reusable_delegation_set_limit(
    #     type: 'MAX_ZONES_BY_REUSABLE_DELEGATION_SET', # required - accepts ["MAX_ZONES_BY_REUSABLE_DELEGATION_SET"]
    #     delegation_set_id: 'DelegationSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReusableDelegationSetLimitOutput
    #   resp.data.limit #=> Types::ReusableDelegationSetLimit
    #   resp.data.limit.type #=> String, one of ["MAX_ZONES_BY_REUSABLE_DELEGATION_SET"]
    #   resp.data.limit.value #=> Integer
    #   resp.data.count #=> Integer
    #
    def get_reusable_delegation_set_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReusableDelegationSetLimitInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReusableDelegationSetLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReusableDelegationSetLimit
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchDelegationSet]),
        data_parser: Parsers::GetReusableDelegationSetLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReusableDelegationSetLimit,
        stubs: @stubs,
        params_class: Params::GetReusableDelegationSetLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_reusable_delegation_set_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specific traffic policy version.</p>
    # 		       <p>For information about how of deleting a traffic policy affects the response from
    # 				<code>GetTrafficPolicy</code>, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html">DeleteTrafficPolicy</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetTrafficPolicyInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy that you want to get information about.</p>
    #
    # @option params [Integer] :version
    #   <p>The version number of the traffic policy that you want to get information
    #   			about.</p>
    #
    # @return [Types::GetTrafficPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy(
    #     id: 'Id', # required
    #     version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrafficPolicyOutput
    #   resp.data.traffic_policy #=> Types::TrafficPolicy
    #   resp.data.traffic_policy.id #=> String
    #   resp.data.traffic_policy.version #=> Integer
    #   resp.data.traffic_policy.name #=> String
    #   resp.data.traffic_policy.type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy.document #=> String
    #   resp.data.traffic_policy.comment #=> String
    #
    def get_traffic_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrafficPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrafficPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrafficPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy]),
        data_parser: Parsers::GetTrafficPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrafficPolicy,
        stubs: @stubs,
        params_class: Params::GetTrafficPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_traffic_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specified traffic policy instance.</p>
    # 		       <note>
    # 			         <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an
    # 					<code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while
    # 				Amazon Route 53 creates the resource record sets that are specified in the traffic
    # 				policy definition. For more information, see the <code>State</code> response
    # 				element.</p>
    # 		       </note>
    # 		       <note>
    # 			         <p>In the Route 53 console, traffic policy instances are known as policy
    # 				records.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::GetTrafficPolicyInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to get information about.</p>
    #
    # @return [Types::GetTrafficPolicyInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy_instance(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrafficPolicyInstanceOutput
    #   resp.data.traffic_policy_instance #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instance.id #=> String
    #   resp.data.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.data.traffic_policy_instance.name #=> String
    #   resp.data.traffic_policy_instance.ttl #=> Integer
    #   resp.data.traffic_policy_instance.state #=> String
    #   resp.data.traffic_policy_instance.message #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instance.traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #
    def get_traffic_policy_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrafficPolicyInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrafficPolicyInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrafficPolicyInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicyInstance]),
        data_parser: Parsers::GetTrafficPolicyInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrafficPolicyInstance,
        stubs: @stubs,
        params_class: Params::GetTrafficPolicyInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_traffic_policy_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the number of traffic policy instances that are associated with the current
    # 				Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTrafficPolicyInstanceCountInput}.
    #
    # @return [Types::GetTrafficPolicyInstanceCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_policy_instance_count()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrafficPolicyInstanceCountOutput
    #   resp.data.traffic_policy_instance_count #=> Integer
    #
    def get_traffic_policy_instance_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrafficPolicyInstanceCountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrafficPolicyInstanceCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrafficPolicyInstanceCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetTrafficPolicyInstanceCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrafficPolicyInstanceCount,
        stubs: @stubs,
        params_class: Params::GetTrafficPolicyInstanceCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_traffic_policy_instance_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of location objects and their CIDR blocks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCidrBlocksInput}.
    #
    # @option params [String] :collection_id
    #   <p>The UUID of the CIDR collection.</p>
    #
    # @option params [String] :location_name
    #   <p>The name of the CIDR collection location.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results you want returned.</p>
    #
    # @return [Types::ListCidrBlocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cidr_blocks(
    #     collection_id: 'CollectionId', # required
    #     location_name: 'LocationName',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCidrBlocksOutput
    #   resp.data.next_token #=> String
    #   resp.data.cidr_blocks #=> Array<CidrBlockSummary>
    #   resp.data.cidr_blocks[0] #=> Types::CidrBlockSummary
    #   resp.data.cidr_blocks[0].cidr_block #=> String
    #   resp.data.cidr_blocks[0].location_name #=> String
    #
    def list_cidr_blocks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCidrBlocksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCidrBlocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCidrBlocks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchCidrLocationException, Errors::NoSuchCidrCollectionException]),
        data_parser: Parsers::ListCidrBlocks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCidrBlocks,
        stubs: @stubs,
        params_class: Params::ListCidrBlocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cidr_blocks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of CIDR collections in the Amazon Web Services account
    # 			(metadata only).</p>
    #
    # @param [Hash] params
    #   See {Types::ListCidrCollectionsInput}.
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    #   		       <p>If no value is provided, the listing of results starts from the beginning.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIDR collections to return in the response.</p>
    #
    # @return [Types::ListCidrCollectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cidr_collections(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCidrCollectionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.cidr_collections #=> Array<CollectionSummary>
    #   resp.data.cidr_collections[0] #=> Types::CollectionSummary
    #   resp.data.cidr_collections[0].arn #=> String
    #   resp.data.cidr_collections[0].id #=> String
    #   resp.data.cidr_collections[0].name #=> String
    #   resp.data.cidr_collections[0].version #=> Integer
    #
    def list_cidr_collections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCidrCollectionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCidrCollectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCidrCollections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListCidrCollections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCidrCollections,
        stubs: @stubs,
        params_class: Params::ListCidrCollectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cidr_collections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of CIDR locations for the given collection (metadata only,
    # 			does not include CIDR blocks).</p>
    #
    # @param [Hash] params
    #   See {Types::ListCidrLocationsInput}.
    #
    # @option params [String] :collection_id
    #   <p>The CIDR collection ID.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token to indicate where the service is to begin enumerating
    #   			results.</p>
    #   		       <p>If no value is provided, the listing of results starts from the beginning.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of CIDR collection locations to return in the response.</p>
    #
    # @return [Types::ListCidrLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cidr_locations(
    #     collection_id: 'CollectionId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCidrLocationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.cidr_locations #=> Array<LocationSummary>
    #   resp.data.cidr_locations[0] #=> Types::LocationSummary
    #   resp.data.cidr_locations[0].location_name #=> String
    #
    def list_cidr_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCidrLocationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCidrLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCidrLocations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchCidrCollectionException]),
        data_parser: Parsers::ListCidrLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCidrLocations,
        stubs: @stubs,
        params_class: Params::ListCidrLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cidr_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of supported geographic locations.</p>
    # 		       <p>Countries are listed first, and continents are listed last. If Amazon Route 53
    # 			supports subdivisions for a country (for example, states or provinces), the subdivisions
    # 			for that country are listed in alphabetical order immediately after the corresponding
    # 			country.</p>
    # 		       <p>Route 53 does not perform authorization for this API because it retrieves information
    # 			that is already available to the public.</p>
    # 		       <p>For a list of supported geolocation codes, see the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html">GeoLocation</a> data
    # 			type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGeoLocationsInput}.
    #
    # @option params [String] :start_continent_code
    #   <p>The code for the continent with which you want to start listing locations that Amazon
    #   			Route 53 supports for geolocation. If Route 53 has already returned a page or more of
    #   			results, if <code>IsTruncated</code> is true, and if <code>NextContinentCode</code> from
    #   			the previous response has a value, enter that value in <code>startcontinentcode</code>
    #   			to return the next page of results.</p>
    #   		       <p>Include <code>startcontinentcode</code> only if you want to list continents. Don't
    #   			include <code>startcontinentcode</code> when you're listing countries or countries with
    #   			their subdivisions.</p>
    #
    # @option params [String] :start_country_code
    #   <p>The code for the country with which you want to start listing locations that Amazon
    #   			Route 53 supports for geolocation. If Route 53 has already returned a page or more of
    #   			results, if <code>IsTruncated</code> is <code>true</code>, and if
    #   				<code>NextCountryCode</code> from the previous response has a value, enter that
    #   			value in <code>startcountrycode</code> to return the next page of results.</p>
    #
    # @option params [String] :start_subdivision_code
    #   <p>The code for the state of the United States with which you want to start listing
    #   			locations that Amazon Route 53 supports for geolocation. If Route 53 has already
    #   			returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>,
    #   			and if <code>NextSubdivisionCode</code> from the previous response has a value, enter
    #   			that value in <code>startsubdivisioncode</code> to return the next page of
    #   			results.</p>
    #   		       <p>To list subdivisions (U.S. states), you must include both
    #   				<code>startcountrycode</code> and <code>startsubdivisioncode</code>.</p>
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of geolocations to be included in the response body for
    #   			this request. If more than <code>maxitems</code> geolocations remain to be listed, then
    #   			the value of the <code>IsTruncated</code> element in the response is
    #   			<code>true</code>.</p>
    #
    # @return [Types::ListGeoLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_geo_locations(
    #     start_continent_code: 'StartContinentCode',
    #     start_country_code: 'StartCountryCode',
    #     start_subdivision_code: 'StartSubdivisionCode',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGeoLocationsOutput
    #   resp.data.geo_location_details_list #=> Array<GeoLocationDetails>
    #   resp.data.geo_location_details_list[0] #=> Types::GeoLocationDetails
    #   resp.data.geo_location_details_list[0].continent_code #=> String
    #   resp.data.geo_location_details_list[0].continent_name #=> String
    #   resp.data.geo_location_details_list[0].country_code #=> String
    #   resp.data.geo_location_details_list[0].country_name #=> String
    #   resp.data.geo_location_details_list[0].subdivision_code #=> String
    #   resp.data.geo_location_details_list[0].subdivision_name #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_continent_code #=> String
    #   resp.data.next_country_code #=> String
    #   resp.data.next_subdivision_code #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_geo_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGeoLocationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGeoLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGeoLocations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListGeoLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGeoLocations,
        stubs: @stubs,
        params_class: Params::ListGeoLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_geo_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve a list of the health checks that are associated with the current Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListHealthChecksInput}.
    #
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more health checks. To get another group, submit another
    #   				<code>ListHealthChecks</code> request. </p>
    #   		       <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first health check that Amazon Route
    #   			53 will return if you submit another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more health checks to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of health checks that you want <code>ListHealthChecks</code> to
    #   			return in response to the current request. Amazon Route 53 returns a maximum of 100
    #   			items. If you set <code>MaxItems</code> to a value greater than 100, Route 53 returns
    #   			only the first 100 health checks. </p>
    #
    # @return [Types::ListHealthChecksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_health_checks(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHealthChecksOutput
    #   resp.data.health_checks #=> Array<HealthCheck>
    #   resp.data.health_checks[0] #=> Types::HealthCheck
    #   resp.data.health_checks[0].id #=> String
    #   resp.data.health_checks[0].caller_reference #=> String
    #   resp.data.health_checks[0].linked_service #=> Types::LinkedService
    #   resp.data.health_checks[0].linked_service.service_principal #=> String
    #   resp.data.health_checks[0].linked_service.description #=> String
    #   resp.data.health_checks[0].health_check_config #=> Types::HealthCheckConfig
    #   resp.data.health_checks[0].health_check_config.ip_address #=> String
    #   resp.data.health_checks[0].health_check_config.port #=> Integer
    #   resp.data.health_checks[0].health_check_config.type #=> String, one of ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"]
    #   resp.data.health_checks[0].health_check_config.resource_path #=> String
    #   resp.data.health_checks[0].health_check_config.fully_qualified_domain_name #=> String
    #   resp.data.health_checks[0].health_check_config.search_string #=> String
    #   resp.data.health_checks[0].health_check_config.request_interval #=> Integer
    #   resp.data.health_checks[0].health_check_config.failure_threshold #=> Integer
    #   resp.data.health_checks[0].health_check_config.measure_latency #=> Boolean
    #   resp.data.health_checks[0].health_check_config.inverted #=> Boolean
    #   resp.data.health_checks[0].health_check_config.disabled #=> Boolean
    #   resp.data.health_checks[0].health_check_config.health_threshold #=> Integer
    #   resp.data.health_checks[0].health_check_config.child_health_checks #=> Array<String>
    #   resp.data.health_checks[0].health_check_config.child_health_checks[0] #=> String
    #   resp.data.health_checks[0].health_check_config.enable_sni #=> Boolean
    #   resp.data.health_checks[0].health_check_config.regions #=> Array<String>
    #   resp.data.health_checks[0].health_check_config.regions[0] #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_checks[0].health_check_config.alarm_identifier #=> Types::AlarmIdentifier
    #   resp.data.health_checks[0].health_check_config.alarm_identifier.region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #   resp.data.health_checks[0].health_check_config.alarm_identifier.name #=> String
    #   resp.data.health_checks[0].health_check_config.insufficient_data_health_status #=> String, one of ["Healthy", "Unhealthy", "LastKnownStatus"]
    #   resp.data.health_checks[0].health_check_config.routing_control_arn #=> String
    #   resp.data.health_checks[0].health_check_version #=> Integer
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration #=> Types::CloudWatchAlarmConfiguration
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.period #=> Integer
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.namespace #=> String
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.statistic #=> String, one of ["Average", "Sum", "SampleCount", "Maximum", "Minimum"]
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.dimensions #=> Array<Dimension>
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.dimensions[0] #=> Types::Dimension
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.data.health_checks[0].cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #   resp.data.marker #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_marker #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_health_checks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHealthChecksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHealthChecksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHealthChecks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::IncompatibleVersion]),
        data_parser: Parsers::ListHealthChecks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHealthChecks,
        stubs: @stubs,
        params_class: Params::ListHealthChecksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_health_checks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of the public and private hosted zones that are associated with the
    # 			current Amazon Web Services account. The response includes a <code>HostedZones</code>
    # 			child element for each hosted zone.</p>
    # 		       <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of
    # 			hosted zones, you can use the <code>maxitems</code> parameter to list them in groups of
    # 			up to 100.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHostedZonesInput}.
    #
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more hosted zones. To get more hosted zones, submit
    #   			another <code>ListHostedZones</code> request. </p>
    #   		       <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first hosted zone that Amazon Route
    #   			53 will return if you submit another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more hosted zones to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return.
    #   			If you have more than <code>maxitems</code> hosted zones, the value of
    #   				<code>IsTruncated</code> in the response is <code>true</code>, and the value of
    #   				<code>NextMarker</code> is the hosted zone ID of the first hosted zone that Route 53
    #   			will return if you submit another request.</p>
    #
    # @option params [String] :delegation_set_id
    #   <p>If you're using reusable delegation sets and you want to list all of the hosted zones
    #   			that are associated with a reusable delegation set, specify the ID of that reusable
    #   			delegation set. </p>
    #
    # @return [Types::ListHostedZonesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zones(
    #     marker: 'Marker',
    #     max_items: 1,
    #     delegation_set_id: 'DelegationSetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHostedZonesOutput
    #   resp.data.hosted_zones #=> Array<HostedZone>
    #   resp.data.hosted_zones[0] #=> Types::HostedZone
    #   resp.data.hosted_zones[0].id #=> String
    #   resp.data.hosted_zones[0].name #=> String
    #   resp.data.hosted_zones[0].caller_reference #=> String
    #   resp.data.hosted_zones[0].config #=> Types::HostedZoneConfig
    #   resp.data.hosted_zones[0].config.comment #=> String
    #   resp.data.hosted_zones[0].config.private_zone #=> Boolean
    #   resp.data.hosted_zones[0].resource_record_set_count #=> Integer
    #   resp.data.hosted_zones[0].linked_service #=> Types::LinkedService
    #   resp.data.hosted_zones[0].linked_service.service_principal #=> String
    #   resp.data.hosted_zones[0].linked_service.description #=> String
    #   resp.data.marker #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_marker #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_hosted_zones(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHostedZonesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHostedZonesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHostedZones
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::DelegationSetNotReusable, Errors::NoSuchDelegationSet]),
        data_parser: Parsers::ListHostedZones
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHostedZones,
        stubs: @stubs,
        params_class: Params::ListHostedZonesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hosted_zones
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of your hosted zones in lexicographic order. The response includes a
    # 				<code>HostedZones</code> child element for each hosted zone created by the current
    # 				Amazon Web Services account. </p>
    # 		       <p>
    #             <code>ListHostedZonesByName</code> sorts hosted zones by name with the labels
    # 			reversed. For example:</p>
    # 		       <p>
    #             <code>com.example.www.</code>
    #          </p>
    # 		       <p>Note the trailing dot, which can change the sort order in some circumstances.</p>
    # 		       <p>If the domain name includes escape characters or Punycode,
    # 				<code>ListHostedZonesByName</code> alphabetizes the domain name using the escaped or
    # 			Punycoded value, which is the format that Amazon Route 53 saves in its database. For
    # 			example, to create a hosted zone for exämple.com, you specify ex\344mple.com for
    # 			the domain name. <code>ListHostedZonesByName</code> alphabetizes it as:</p>
    # 		       <p>
    #             <code>com.ex\344mple.</code>
    #          </p>
    # 		       <p>The labels are reversed and alphabetized using the escaped value. For more information
    # 			about valid domain name formats, including internationalized domain names, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS
    # 				Domain Name Format</a> in the <i>Amazon Route 53 Developer
    # 				Guide</i>.</p>
    # 		       <p>Route 53 returns up to 100 items in each response. If you have a lot of hosted zones,
    # 			use the <code>MaxItems</code> parameter to list them in groups of up to 100. The
    # 			response includes values that help navigate from one group of <code>MaxItems</code>
    # 			hosted zones to the next:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>The <code>DNSName</code> and <code>HostedZoneId</code> elements in the
    # 					response contain the values, if any, specified for the <code>dnsname</code> and
    # 						<code>hostedzoneid</code> parameters in the request that produced the
    # 					current response.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The <code>MaxItems</code> element in the response contains the value, if any,
    # 					that you specified for the <code>maxitems</code> parameter in the request that
    # 					produced the current response.</p>
    # 			         </li>
    #             <li>
    # 				           <p>If the value of <code>IsTruncated</code> in the response is true, there are
    # 					more hosted zones associated with the current Amazon Web Services account. </p>
    # 				           <p>If <code>IsTruncated</code> is false, this response includes the last hosted
    # 					zone that is associated with the current account. The <code>NextDNSName</code>
    # 					element and <code>NextHostedZoneId</code> elements are omitted from the
    # 					response.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the
    # 					response contain the domain name and the hosted zone ID of the next hosted zone
    # 					that is associated with the current Amazon Web Services account. If you want to
    # 					list more hosted zones, make another call to <code>ListHostedZonesByName</code>,
    # 					and specify the value of <code>NextDNSName</code> and
    # 						<code>NextHostedZoneId</code> in the <code>dnsname</code> and
    # 						<code>hostedzoneid</code> parameters, respectively.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListHostedZonesByNameInput}.
    #
    # @option params [String] :dns_name
    #   <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, include the
    #   				<code>dnsname</code> parameter only if you want to specify the name of the first
    #   			hosted zone in the response. If you don't include the <code>dnsname</code> parameter,
    #   			Amazon Route 53 returns all of the hosted zones that were created by the current Amazon Web Services account, in ASCII order. For subsequent requests, include both
    #   				<code>dnsname</code> and <code>hostedzoneid</code> parameters. For
    #   				<code>dnsname</code>, specify the value of <code>NextDNSName</code> from the
    #   			previous response.</p>
    #
    # @option params [String] :hosted_zone_id
    #   <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, do not
    #   			include the <code>hostedzoneid</code> parameter.</p>
    #   		       <p>If you have more hosted zones than the value of <code>maxitems</code>,
    #   				<code>ListHostedZonesByName</code> returns only the first <code>maxitems</code>
    #   			hosted zones. To get the next group of <code>maxitems</code> hosted zones, submit
    #   			another request to <code>ListHostedZonesByName</code> and include both
    #   				<code>dnsname</code> and <code>hostedzoneid</code> parameters. For the value of
    #   				<code>hostedzoneid</code>, specify the value of the <code>NextHostedZoneId</code>
    #   			element from the previous response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of hosted zones to be included in the response body for this
    #   			request. If you have more than <code>maxitems</code> hosted zones, then the value of the
    #   				<code>IsTruncated</code> element in the response is true, and the values of
    #   				<code>NextDNSName</code> and <code>NextHostedZoneId</code> specify the first hosted
    #   			zone in the next group of <code>maxitems</code> hosted zones. </p>
    #
    # @return [Types::ListHostedZonesByNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zones_by_name(
    #     dns_name: 'DNSName',
    #     hosted_zone_id: 'HostedZoneId',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHostedZonesByNameOutput
    #   resp.data.hosted_zones #=> Array<HostedZone>
    #   resp.data.hosted_zones[0] #=> Types::HostedZone
    #   resp.data.hosted_zones[0].id #=> String
    #   resp.data.hosted_zones[0].name #=> String
    #   resp.data.hosted_zones[0].caller_reference #=> String
    #   resp.data.hosted_zones[0].config #=> Types::HostedZoneConfig
    #   resp.data.hosted_zones[0].config.comment #=> String
    #   resp.data.hosted_zones[0].config.private_zone #=> Boolean
    #   resp.data.hosted_zones[0].resource_record_set_count #=> Integer
    #   resp.data.hosted_zones[0].linked_service #=> Types::LinkedService
    #   resp.data.hosted_zones[0].linked_service.service_principal #=> String
    #   resp.data.hosted_zones[0].linked_service.description #=> String
    #   resp.data.dns_name #=> String
    #   resp.data.hosted_zone_id #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_dns_name #=> String
    #   resp.data.next_hosted_zone_id #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_hosted_zones_by_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHostedZonesByNameInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHostedZonesByNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHostedZonesByName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidDomainName]),
        data_parser: Parsers::ListHostedZonesByName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHostedZonesByName,
        stubs: @stubs,
        params_class: Params::ListHostedZonesByNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hosted_zones_by_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the private hosted zones that a specified VPC is associated with, regardless
    # 			of which Amazon Web Services account or Amazon Web Services service owns the hosted zones.
    # 			The <code>HostedZoneOwner</code> structure in the response contains one of the following
    # 			values:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>An <code>OwningAccount</code> element, which contains the account number of
    # 					either the current Amazon Web Services account or another Amazon Web Services account. Some services, such as Cloud Map, create
    # 					hosted zones using the current account. </p>
    # 			         </li>
    #             <li>
    # 				           <p>An <code>OwningService</code> element, which identifies the Amazon Web Services
    # 					service that created and owns the hosted zone. For example, if a hosted zone was
    # 					created by Amazon Elastic File System (Amazon EFS), the value of
    # 						<code>Owner</code> is <code>efs.amazonaws.com</code>. </p>
    # 			         </li>
    #          </ul>
    # 		       <note>
    # 			         <p>When listing private hosted zones, the hosted zone and the Amazon VPC must
    # 				belong to the same partition where the hosted zones were created. A partition is a
    # 				group of Amazon Web Services Regions. Each Amazon Web Services account is scoped to
    # 				one partition.</p>
    # 			         <p>The following are the supported partitions:</p>
    # 			         <ul>
    #                <li>
    # 					             <p>
    #                      <code>aws</code> - Amazon Web Services Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-cn</code> - China Regions</p>
    # 				           </li>
    #                <li>
    # 					             <p>
    #                      <code>aws-us-gov</code> - Amazon Web Services GovCloud (US) Region</p>
    # 				           </li>
    #             </ul>
    # 			         <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Access Management</a>
    # 				in the <i>Amazon Web Services General Reference</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::ListHostedZonesByVPCInput}.
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the Amazon VPC that you want to list hosted zones for.</p>
    #
    # @option params [String] :vpc_region
    #   <p>For the Amazon VPC that you specified for <code>VPCId</code>, the Amazon Web Services
    #   			Region that you created the VPC in. </p>
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return.
    #   			If the specified VPC is associated with more than <code>MaxItems</code> hosted zones,
    #   			the response includes a <code>NextToken</code> element. <code>NextToken</code> contains
    #   			an encrypted token that identifies the first hosted zone that Route 53 will return if
    #   			you submit another request.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified VPC
    #   			is associated with more hosted zones. To get more hosted zones, submit another
    #   				<code>ListHostedZonesByVPC</code> request. </p>
    #   		       <p>For the value of <code>NextToken</code>, specify the value of <code>NextToken</code>
    #   			from the previous response.</p>
    #   		       <p>If the previous response didn't include a <code>NextToken</code> element, there are no
    #   			more hosted zones to get.</p>
    #
    # @return [Types::ListHostedZonesByVPCOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_zones_by_vpc(
    #     vpc_id: 'VPCId', # required
    #     vpc_region: 'us-east-1', # required - accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #     max_items: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHostedZonesByVPCOutput
    #   resp.data.hosted_zone_summaries #=> Array<HostedZoneSummary>
    #   resp.data.hosted_zone_summaries[0] #=> Types::HostedZoneSummary
    #   resp.data.hosted_zone_summaries[0].hosted_zone_id #=> String
    #   resp.data.hosted_zone_summaries[0].name #=> String
    #   resp.data.hosted_zone_summaries[0].owner #=> Types::HostedZoneOwner
    #   resp.data.hosted_zone_summaries[0].owner.owning_account #=> String
    #   resp.data.hosted_zone_summaries[0].owner.owning_service #=> String
    #   resp.data.max_items #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_hosted_zones_by_vpc(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHostedZonesByVPCInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHostedZonesByVPCInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHostedZonesByVPC
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidPaginationToken]),
        data_parser: Parsers::ListHostedZonesByVPC
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHostedZonesByVPC,
        stubs: @stubs,
        params_class: Params::ListHostedZonesByVPCOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hosted_zones_by_vpc
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the configurations for DNS query logging that are associated with the current
    # 				Amazon Web Services account or the configuration that is associated with a specified
    # 			hosted zone.</p>
    # 		       <p>For more information about DNS query logs, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html">CreateQueryLoggingConfig</a>. Additional information, including the format of
    # 			DNS query logs, appears in <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html">Logging DNS Queries</a> in
    # 			the <i>Amazon Route 53 Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueryLoggingConfigsInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>(Optional) If you want to list the query logging configuration that is associated with
    #   			a hosted zone, specify the ID in <code>HostedZoneId</code>. </p>
    #   		       <p>If you don't specify a hosted zone ID, <code>ListQueryLoggingConfigs</code> returns
    #   			all of the configurations that are associated with the current Amazon Web Services account.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) If the current Amazon Web Services account has more than
    #   				<code>MaxResults</code> query logging configurations, use <code>NextToken</code> to
    #   			get the second and subsequent pages of results.</p>
    #   		       <p>For the first <code>ListQueryLoggingConfigs</code> request, omit this value.</p>
    #   		       <p>For the second and subsequent requests, get the value of <code>NextToken</code> from
    #   			the previous response and specify that value for <code>NextToken</code> in the
    #   			request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of query logging configurations that you want Amazon
    #   			Route 53 to return in response to the current request. If the current Amazon Web Services account has more than <code>MaxResults</code> configurations, use the
    #   			value of <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html#API_ListQueryLoggingConfigs_RequestSyntax">NextToken</a> in the response to get the next page of results.</p>
    #   		       <p>If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100
    #   			configurations.</p>
    #
    # @return [Types::ListQueryLoggingConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_logging_configs(
    #     hosted_zone_id: 'HostedZoneId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueryLoggingConfigsOutput
    #   resp.data.query_logging_configs #=> Array<QueryLoggingConfig>
    #   resp.data.query_logging_configs[0] #=> Types::QueryLoggingConfig
    #   resp.data.query_logging_configs[0].id #=> String
    #   resp.data.query_logging_configs[0].hosted_zone_id #=> String
    #   resp.data.query_logging_configs[0].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_query_logging_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueryLoggingConfigsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueryLoggingConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueryLoggingConfigs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidPaginationToken, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ListQueryLoggingConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueryLoggingConfigs,
        stubs: @stubs,
        params_class: Params::ListQueryLoggingConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_query_logging_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource record sets in a specified hosted zone.</p>
    # 		       <p>
    #             <code>ListResourceRecordSets</code> returns up to 300 resource record sets at a time
    # 			in ASCII order, beginning at a position specified by the <code>name</code> and
    # 				<code>type</code> elements.</p>
    # 		       <p>
    #             <b>Sort order</b>
    #          </p>
    # 		       <p>
    #             <code>ListResourceRecordSets</code> sorts results first by DNS name with the labels
    # 			reversed, for example:</p>
    # 		       <p>
    #             <code>com.example.www.</code>
    #          </p>
    # 		       <p>Note the trailing dot, which can change the sort order when the record name contains
    # 			characters that appear before <code>.</code> (decimal 46) in the ASCII table. These
    # 			characters include the following: <code>! " # $ % & ' ( ) * + , -</code>
    #          </p>
    # 		       <p>When multiple records have the same DNS name, <code>ListResourceRecordSets</code>
    # 			sorts results by the record type.</p>
    # 		       <p>
    #             <b>Specifying where to start listing records</b>
    #          </p>
    # 		       <p>You can use the name and type elements to specify the resource record set that the
    # 			list begins with:</p>
    # 		       <dl>
    #             <dt>If you do not specify Name or Type</dt>
    #             <dd>
    # 					          <p>The results begin with the first resource record set that the hosted zone
    # 						contains.</p>
    # 				        </dd>
    #             <dt>If you specify Name but not Type</dt>
    #             <dd>
    # 					          <p>The results begin with the first resource record set in the list whose
    # 						name is greater than or equal to <code>Name</code>.</p>
    # 				        </dd>
    #             <dt>If you specify Type but not Name</dt>
    #             <dd>
    # 					          <p>Amazon Route 53 returns the <code>InvalidInput</code> error.</p>
    # 				        </dd>
    #             <dt>If you specify both Name and Type</dt>
    #             <dd>
    # 					          <p>The results begin with the first resource record set in the list whose
    # 						name is greater than or equal to <code>Name</code>, and whose type is
    # 						greater than or equal to <code>Type</code>.</p>
    # 				        </dd>
    #          </dl>
    # 		       <p>
    #             <b>Resource record sets that are PENDING</b>
    #          </p>
    # 		       <p>This action returns the most current version of the records. This includes records
    # 			that are <code>PENDING</code>, and that are not yet available on all Route 53 DNS
    # 			servers.</p>
    # 		       <p>
    #             <b>Changing resource record sets</b>
    #          </p>
    # 		       <p>To ensure that you get an accurate listing of the resource record sets for a hosted
    # 			zone at a point in time, do not submit a <code>ChangeResourceRecordSets</code> request
    # 			while you're paging through the results of a <code>ListResourceRecordSets</code>
    # 			request. If you do, some pages may display results without the latest changes while
    # 			other pages display results with the latest changes.</p>
    # 		       <p>
    #             <b>Displaying the next page of results</b>
    #          </p>
    # 		       <p>If a <code>ListResourceRecordSets</code> command returns more than one page of
    # 			results, the value of <code>IsTruncated</code> is <code>true</code>. To display the next
    # 			page of results, get the values of <code>NextRecordName</code>,
    # 				<code>NextRecordType</code>, and <code>NextRecordIdentifier</code> (if any) from the
    # 			response. Then submit another <code>ListResourceRecordSets</code> request, and specify
    # 			those values for <code>StartRecordName</code>, <code>StartRecordType</code>, and
    # 				<code>StartRecordIdentifier</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceRecordSetsInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that contains the resource record sets that you want to
    #   			list.</p>
    #
    # @option params [String] :start_record_name
    #   <p>The first name in the lexicographic ordering of resource record sets that you want to
    #   			list. If the specified record name doesn't exist, the results begin with the first
    #   			resource record set that has a name greater than the value of <code>name</code>.</p>
    #
    # @option params [String] :start_record_type
    #   <p>The type of resource record set to begin the record listing from.</p>
    #   		       <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> |
    #   				<code>CAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> |
    #   				<code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> |
    #   				<code>SRV</code> | <code>TXT</code>
    #            </p>
    #   		       <p>Values for weighted, latency, geolocation, and failover resource record sets:
    #   				<code>A</code> | <code>AAAA</code> | <code>CAA</code> | <code>CNAME</code> |
    #   				<code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> |
    #   				<code>SRV</code> | <code>TXT</code>
    #            </p>
    #   		       <p>Values for alias resource record sets: </p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>API Gateway custom regional API or edge-optimized
    #   						API</b>: A</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>CloudFront distribution</b>: A or AAAA</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Elastic Beanstalk environment that has a regionalized
    #   						subdomain</b>: A</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Elastic Load Balancing load balancer</b>: A |
    #   					AAAA</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>S3 bucket</b>: A</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>VPC interface VPC endpoint</b>: A</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Another resource record set in this hosted
    #   						zone:</b> The type of the resource record set that the alias
    #   					references.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>Constraint: Specifying <code>type</code> without specifying <code>name</code> returns
    #   			an <code>InvalidInput</code> error.</p>
    #
    # @option params [String] :start_record_identifier
    #   <p>
    #               <i>Resource record sets that have a routing policy other than
    #   				simple:</i> If results were truncated for a given DNS name and type, specify
    #   			the value of <code>NextRecordIdentifier</code> from the previous response to get the
    #   			next resource record set that has the current DNS name and type.</p>
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of resource records sets to include in the response body
    #   			for this request. If the response includes more than <code>maxitems</code> resource
    #   			record sets, the value of the <code>IsTruncated</code> element in the response is
    #   				<code>true</code>, and the values of the <code>NextRecordName</code> and
    #   				<code>NextRecordType</code> elements in the response identify the first resource
    #   			record set in the next group of <code>maxitems</code> resource record sets.</p>
    #
    # @return [Types::ListResourceRecordSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_record_sets(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     start_record_name: 'StartRecordName',
    #     start_record_type: 'SOA', # accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #     start_record_identifier: 'StartRecordIdentifier',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceRecordSetsOutput
    #   resp.data.resource_record_sets #=> Array<ResourceRecordSet>
    #   resp.data.resource_record_sets[0] #=> Types::ResourceRecordSet
    #   resp.data.resource_record_sets[0].name #=> String
    #   resp.data.resource_record_sets[0].type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.resource_record_sets[0].set_identifier #=> String
    #   resp.data.resource_record_sets[0].weight #=> Integer
    #   resp.data.resource_record_sets[0].region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-north-1", "cn-northwest-1", "ap-east-1", "me-south-1", "ap-south-1", "af-south-1", "eu-south-1"]
    #   resp.data.resource_record_sets[0].geo_location #=> Types::GeoLocation
    #   resp.data.resource_record_sets[0].geo_location.continent_code #=> String
    #   resp.data.resource_record_sets[0].geo_location.country_code #=> String
    #   resp.data.resource_record_sets[0].geo_location.subdivision_code #=> String
    #   resp.data.resource_record_sets[0].failover #=> String, one of ["PRIMARY", "SECONDARY"]
    #   resp.data.resource_record_sets[0].multi_value_answer #=> Boolean
    #   resp.data.resource_record_sets[0].ttl #=> Integer
    #   resp.data.resource_record_sets[0].resource_records #=> Array<ResourceRecord>
    #   resp.data.resource_record_sets[0].resource_records[0] #=> Types::ResourceRecord
    #   resp.data.resource_record_sets[0].resource_records[0].value #=> String
    #   resp.data.resource_record_sets[0].alias_target #=> Types::AliasTarget
    #   resp.data.resource_record_sets[0].alias_target.hosted_zone_id #=> String
    #   resp.data.resource_record_sets[0].alias_target.dns_name #=> String
    #   resp.data.resource_record_sets[0].alias_target.evaluate_target_health #=> Boolean
    #   resp.data.resource_record_sets[0].health_check_id #=> String
    #   resp.data.resource_record_sets[0].traffic_policy_instance_id #=> String
    #   resp.data.resource_record_sets[0].cidr_routing_config #=> Types::CidrRoutingConfig
    #   resp.data.resource_record_sets[0].cidr_routing_config.collection_id #=> String
    #   resp.data.resource_record_sets[0].cidr_routing_config.location_name #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_record_name #=> String
    #   resp.data.next_record_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.next_record_identifier #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_resource_record_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceRecordSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceRecordSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceRecordSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ListResourceRecordSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceRecordSets,
        stubs: @stubs,
        params_class: Params::ListResourceRecordSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_record_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of the reusable delegation sets that are associated with the current
    # 				Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReusableDelegationSetsInput}.
    #
    # @option params [String] :marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more reusable delegation sets. To get another group,
    #   			submit another <code>ListReusableDelegationSets</code> request. </p>
    #   		       <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code>
    #   			from the previous response, which is the ID of the first reusable delegation set that
    #   			Amazon Route 53 will return if you submit another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more reusable delegation sets to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The number of reusable delegation sets that you want Amazon Route 53 to return in the
    #   			response to this request. If you specify a value greater than 100, Route 53 returns only
    #   			the first 100 reusable delegation sets.</p>
    #
    # @return [Types::ListReusableDelegationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reusable_delegation_sets(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReusableDelegationSetsOutput
    #   resp.data.delegation_sets #=> Array<DelegationSet>
    #   resp.data.delegation_sets[0] #=> Types::DelegationSet
    #   resp.data.delegation_sets[0].id #=> String
    #   resp.data.delegation_sets[0].caller_reference #=> String
    #   resp.data.delegation_sets[0].name_servers #=> Array<String>
    #   resp.data.delegation_sets[0].name_servers[0] #=> String
    #   resp.data.marker #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_marker #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_reusable_delegation_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReusableDelegationSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReusableDelegationSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReusableDelegationSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListReusableDelegationSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReusableDelegationSets,
        stubs: @stubs,
        params_class: Params::ListReusableDelegationSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_reusable_delegation_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags for one health check or hosted zone. </p>
    # 		       <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource for which you want to retrieve tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_type: 'healthcheck', # required - accepts ["healthcheck", "hostedzone"]
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.resource_tag_set #=> Types::ResourceTagSet
    #   resp.data.resource_tag_set.resource_type #=> String, one of ["healthcheck", "hostedzone"]
    #   resp.data.resource_tag_set.resource_id #=> String
    #   resp.data.resource_tag_set.tags #=> Array<Tag>
    #   resp.data.resource_tag_set.tags[0] #=> Types::Tag
    #   resp.data.resource_tag_set.tags[0].key #=> String
    #   resp.data.resource_tag_set.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::ThrottlingException, Errors::NoSuchHealthCheck, Errors::NoSuchHostedZone]),
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

    # <p>Lists tags for up to 10 health checks or hosted zones.</p>
    # 		       <p>For information about using tags for cost allocation, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    # 				Tags</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourcesInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of the resources.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The resource type for health checks is <code>healthcheck</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>The resource type for hosted zones is <code>hostedzone</code>.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [Array<String>] :resource_ids
    #   <p>A complex type that contains the ResourceId element for each resource for which you
    #   			want to get a list of tags.</p>
    #
    # @return [Types::ListTagsForResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resources(
    #     resource_type: 'healthcheck', # required - accepts ["healthcheck", "hostedzone"]
    #     resource_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourcesOutput
    #   resp.data.resource_tag_sets #=> Array<ResourceTagSet>
    #   resp.data.resource_tag_sets[0] #=> Types::ResourceTagSet
    #   resp.data.resource_tag_sets[0].resource_type #=> String, one of ["healthcheck", "hostedzone"]
    #   resp.data.resource_tag_sets[0].resource_id #=> String
    #   resp.data.resource_tag_sets[0].tags #=> Array<Tag>
    #   resp.data.resource_tag_sets[0].tags[0] #=> Types::Tag
    #   resp.data.resource_tag_sets[0].tags[0].key #=> String
    #   resp.data.resource_tag_sets[0].tags[0].value #=> String
    #
    def list_tags_for_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::ThrottlingException, Errors::NoSuchHealthCheck, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ListTagsForResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResources,
        stubs: @stubs,
        params_class: Params::ListTagsForResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the latest version for every traffic policy that is associated
    # 			with the current Amazon Web Services account. Policies are listed in the order that they
    # 			were created in. </p>
    # 		       <p>For information about how of deleting a traffic policy affects the response from
    # 				<code>ListTrafficPolicies</code>, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicy.html">DeleteTrafficPolicy</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTrafficPoliciesInput}.
    #
    # @option params [String] :traffic_policy_id_marker
    #   <p>(Conditional) For your first request to <code>ListTrafficPolicies</code>, don't
    #   			include the <code>TrafficPolicyIdMarker</code> parameter.</p>
    #   		       <p>If you have more traffic policies than the value of <code>MaxItems</code>,
    #   				<code>ListTrafficPolicies</code> returns only the first <code>MaxItems</code>
    #   			traffic policies. To get the next group of policies, submit another request to
    #   				<code>ListTrafficPolicies</code>. For the value of
    #   				<code>TrafficPolicyIdMarker</code>, specify the value of
    #   				<code>TrafficPolicyIdMarker</code> that was returned in the previous
    #   			response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of traffic policies that you want Amazon Route 53 to
    #   			return in response to this request. If you have more than <code>MaxItems</code> traffic
    #   			policies, the value of <code>IsTruncated</code> in the response is <code>true</code>,
    #   			and the value of <code>TrafficPolicyIdMarker</code> is the ID of the first traffic
    #   			policy that Route 53 will return if you submit another request.</p>
    #
    # @return [Types::ListTrafficPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policies(
    #     traffic_policy_id_marker: 'TrafficPolicyIdMarker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrafficPoliciesOutput
    #   resp.data.traffic_policy_summaries #=> Array<TrafficPolicySummary>
    #   resp.data.traffic_policy_summaries[0] #=> Types::TrafficPolicySummary
    #   resp.data.traffic_policy_summaries[0].id #=> String
    #   resp.data.traffic_policy_summaries[0].name #=> String
    #   resp.data.traffic_policy_summaries[0].type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy_summaries[0].latest_version #=> Integer
    #   resp.data.traffic_policy_summaries[0].traffic_policy_count #=> Integer
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.traffic_policy_id_marker #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_traffic_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrafficPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrafficPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrafficPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput]),
        data_parser: Parsers::ListTrafficPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrafficPolicies,
        stubs: @stubs,
        params_class: Params::ListTrafficPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_traffic_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the traffic policy instances that you created by using the
    # 			current Amazon Web Services account.</p>
    # 		       <note>
    # 			         <p>After you submit an <code>UpdateTrafficPolicyInstance</code> request, there's a
    # 				brief delay while Amazon Route 53 creates the resource record sets that are
    # 				specified in the traffic policy definition. For more information, see the
    # 					<code>State</code> response element.</p>
    # 		       </note>
    # 		       <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrafficPolicyInstancesInput}.
    #
    # @option params [String] :hosted_zone_id_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>HostedZoneId</code>, specify the value of
    #   				<code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone
    #   			ID of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For
    #   			the value of <code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the type of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances that you want Amazon Route 53 to return
    #   			in response to a <code>ListTrafficPolicyInstances</code> request. If you have more than
    #   				<code>MaxItems</code> traffic policy instances, the value of the
    #   				<code>IsTruncated</code> element in the response is <code>true</code>, and the
    #   			values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>,
    #   			and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
    #
    # @return [Types::ListTrafficPolicyInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances(
    #     hosted_zone_id_marker: 'HostedZoneIdMarker',
    #     traffic_policy_instance_name_marker: 'TrafficPolicyInstanceNameMarker',
    #     traffic_policy_instance_type_marker: 'SOA', # accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrafficPolicyInstancesOutput
    #   resp.data.traffic_policy_instances #=> Array<TrafficPolicyInstance>
    #   resp.data.traffic_policy_instances[0] #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instances[0].id #=> String
    #   resp.data.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.data.traffic_policy_instances[0].name #=> String
    #   resp.data.traffic_policy_instances[0].ttl #=> Integer
    #   resp.data.traffic_policy_instances[0].state #=> String
    #   resp.data.traffic_policy_instances[0].message #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instances[0].traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.hosted_zone_id_marker #=> String
    #   resp.data.traffic_policy_instance_name_marker #=> String
    #   resp.data.traffic_policy_instance_type_marker #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.max_items #=> Integer
    #
    def list_traffic_policy_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrafficPolicyInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrafficPolicyInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrafficPolicyInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicyInstance]),
        data_parser: Parsers::ListTrafficPolicyInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrafficPolicyInstances,
        stubs: @stubs,
        params_class: Params::ListTrafficPolicyInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_traffic_policy_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the traffic policy instances that you created in a specified
    # 			hosted zone.</p>
    # 		       <note>
    # 			         <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an
    # 					<code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while
    # 				Amazon Route 53 creates the resource record sets that are specified in the traffic
    # 				policy definition. For more information, see the <code>State</code> response
    # 				element.</p>
    # 		       </note>
    # 		       <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrafficPolicyInstancesByHostedZoneInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want to list traffic policy instances for.</p>
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response is true, you have
    #   			more traffic policy instances. To get more traffic policy instances, submit another
    #   				<code>ListTrafficPolicyInstances</code> request. For the value of
    #   				<code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response is true, you have
    #   			more traffic policy instances. To get more traffic policy instances, submit another
    #   				<code>ListTrafficPolicyInstances</code> request. For the value of
    #   				<code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the type of the first traffic policy instance in the next group of traffic policy
    #   			instances.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances to be included in the response body for
    #   			this request. If you have more than <code>MaxItems</code> traffic policy instances, the
    #   			value of the <code>IsTruncated</code> element in the response is <code>true</code>, and
    #   			the values of <code>HostedZoneIdMarker</code>,
    #   				<code>TrafficPolicyInstanceNameMarker</code>, and
    #   				<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance that Amazon Route 53 will return if you submit another request.</p>
    #
    # @return [Types::ListTrafficPolicyInstancesByHostedZoneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances_by_hosted_zone(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     traffic_policy_instance_name_marker: 'TrafficPolicyInstanceNameMarker',
    #     traffic_policy_instance_type_marker: 'SOA', # accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrafficPolicyInstancesByHostedZoneOutput
    #   resp.data.traffic_policy_instances #=> Array<TrafficPolicyInstance>
    #   resp.data.traffic_policy_instances[0] #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instances[0].id #=> String
    #   resp.data.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.data.traffic_policy_instances[0].name #=> String
    #   resp.data.traffic_policy_instances[0].ttl #=> Integer
    #   resp.data.traffic_policy_instances[0].state #=> String
    #   resp.data.traffic_policy_instances[0].message #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instances[0].traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy_instance_name_marker #=> String
    #   resp.data.traffic_policy_instance_type_marker #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.max_items #=> Integer
    #
    def list_traffic_policy_instances_by_hosted_zone(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrafficPolicyInstancesByHostedZoneInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrafficPolicyInstancesByHostedZoneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrafficPolicyInstancesByHostedZone
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicyInstance, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ListTrafficPolicyInstancesByHostedZone
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrafficPolicyInstancesByHostedZone,
        stubs: @stubs,
        params_class: Params::ListTrafficPolicyInstancesByHostedZoneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_traffic_policy_instances_by_hosted_zone
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the traffic policy instances that you created by using a
    # 			specify traffic policy version.</p>
    # 		       <note>
    # 			         <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an
    # 					<code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while
    # 				Amazon Route 53 creates the resource record sets that are specified in the traffic
    # 				policy definition. For more information, see the <code>State</code> response
    # 				element.</p>
    # 		       </note>
    # 		       <p>Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic
    # 			policy instances, you can use the <code>MaxItems</code> parameter to list them in groups
    # 			of up to 100.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrafficPolicyInstancesByPolicyInput}.
    #
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy for which you want to list traffic policy
    #   			instances.</p>
    #
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy for which you want to list traffic policy instances.
    #   			The version must be associated with the traffic policy that is specified by
    #   				<code>TrafficPolicyId</code>.</p>
    #
    # @option params [String] :hosted_zone_id_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request. </p>
    #   		       <p>For the value of <code>hostedzoneid</code>, specify the value of
    #   				<code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone
    #   			ID of the first traffic policy instance that Amazon Route 53 will return if you submit
    #   			another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [String] :traffic_policy_instance_name_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request.</p>
    #   		       <p>For the value of <code>trafficpolicyinstancename</code>, specify the value of
    #   				<code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance that Amazon Route 53 will return if you
    #   			submit another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [String] :traffic_policy_instance_type_marker
    #   <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>true</code>, you have more traffic policy instances. To get more traffic
    #   			policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code>
    #   			request.</p>
    #   		       <p>For the value of <code>trafficpolicyinstancetype</code>, specify the value of
    #   				<code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is
    #   			the name of the first traffic policy instance that Amazon Route 53 will return if you
    #   			submit another request.</p>
    #   		       <p>If the value of <code>IsTruncated</code> in the previous response was
    #   				<code>false</code>, there are no more traffic policy instances to get.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy instances to be included in the response body for
    #   			this request. If you have more than <code>MaxItems</code> traffic policy instances, the
    #   			value of the <code>IsTruncated</code> element in the response is <code>true</code>, and
    #   			the values of <code>HostedZoneIdMarker</code>,
    #   				<code>TrafficPolicyInstanceNameMarker</code>, and
    #   				<code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy
    #   			instance that Amazon Route 53 will return if you submit another request.</p>
    #
    # @return [Types::ListTrafficPolicyInstancesByPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_instances_by_policy(
    #     traffic_policy_id: 'TrafficPolicyId', # required
    #     traffic_policy_version: 1, # required
    #     hosted_zone_id_marker: 'HostedZoneIdMarker',
    #     traffic_policy_instance_name_marker: 'TrafficPolicyInstanceNameMarker',
    #     traffic_policy_instance_type_marker: 'SOA', # accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrafficPolicyInstancesByPolicyOutput
    #   resp.data.traffic_policy_instances #=> Array<TrafficPolicyInstance>
    #   resp.data.traffic_policy_instances[0] #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instances[0].id #=> String
    #   resp.data.traffic_policy_instances[0].hosted_zone_id #=> String
    #   resp.data.traffic_policy_instances[0].name #=> String
    #   resp.data.traffic_policy_instances[0].ttl #=> Integer
    #   resp.data.traffic_policy_instances[0].state #=> String
    #   resp.data.traffic_policy_instances[0].message #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_id #=> String
    #   resp.data.traffic_policy_instances[0].traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instances[0].traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.hosted_zone_id_marker #=> String
    #   resp.data.traffic_policy_instance_name_marker #=> String
    #   resp.data.traffic_policy_instance_type_marker #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.max_items #=> Integer
    #
    def list_traffic_policy_instances_by_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrafficPolicyInstancesByPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrafficPolicyInstancesByPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrafficPolicyInstancesByPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy, Errors::NoSuchTrafficPolicyInstance]),
        data_parser: Parsers::ListTrafficPolicyInstancesByPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrafficPolicyInstancesByPolicy,
        stubs: @stubs,
        params_class: Params::ListTrafficPolicyInstancesByPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_traffic_policy_instances_by_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about all of the versions for a specified traffic policy.</p>
    # 		       <p>Traffic policy versions are listed in numerical order by
    # 			<code>VersionNumber</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrafficPolicyVersionsInput}.
    #
    # @option params [String] :id
    #   <p>Specify the value of <code>Id</code> of the traffic policy for which you want to list
    #   			all versions.</p>
    #
    # @option params [String] :traffic_policy_version_marker
    #   <p>For your first request to <code>ListTrafficPolicyVersions</code>, don't include the
    #   				<code>TrafficPolicyVersionMarker</code> parameter.</p>
    #   		       <p>If you have more traffic policy versions than the value of <code>MaxItems</code>,
    #   				<code>ListTrafficPolicyVersions</code> returns only the first group of
    #   				<code>MaxItems</code> versions. To get more traffic policy versions, submit another
    #   				<code>ListTrafficPolicyVersions</code> request. For the value of
    #   				<code>TrafficPolicyVersionMarker</code>, specify the value of
    #   				<code>TrafficPolicyVersionMarker</code> in the previous response.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of traffic policy versions that you want Amazon Route 53 to include
    #   			in the response body for this request. If the specified traffic policy has more than
    #   				<code>MaxItems</code> versions, the value of <code>IsTruncated</code> in the
    #   			response is <code>true</code>, and the value of the
    #   				<code>TrafficPolicyVersionMarker</code> element is the ID of the first version that
    #   			Route 53 will return if you submit another request.</p>
    #
    # @return [Types::ListTrafficPolicyVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_policy_versions(
    #     id: 'Id', # required
    #     traffic_policy_version_marker: 'TrafficPolicyVersionMarker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrafficPolicyVersionsOutput
    #   resp.data.traffic_policies #=> Array<TrafficPolicy>
    #   resp.data.traffic_policies[0] #=> Types::TrafficPolicy
    #   resp.data.traffic_policies[0].id #=> String
    #   resp.data.traffic_policies[0].version #=> Integer
    #   resp.data.traffic_policies[0].name #=> String
    #   resp.data.traffic_policies[0].type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policies[0].document #=> String
    #   resp.data.traffic_policies[0].comment #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.traffic_policy_version_marker #=> String
    #   resp.data.max_items #=> Integer
    #
    def list_traffic_policy_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrafficPolicyVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrafficPolicyVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrafficPolicyVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy]),
        data_parser: Parsers::ListTrafficPolicyVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrafficPolicyVersions,
        stubs: @stubs,
        params_class: Params::ListTrafficPolicyVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_traffic_policy_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the VPCs that were created by other accounts and that can be associated
    # 			with a specified hosted zone because you've submitted one or more
    # 				<code>CreateVPCAssociationAuthorization</code> requests. </p>
    # 		       <p>The response includes a <code>VPCs</code> element with a <code>VPC</code> child
    # 			element for each VPC that can be associated with the hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVPCAssociationAuthorizationsInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone for which you want a list of VPCs that can be associated
    #   			with the hosted zone.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               <i>Optional</i>: If a response includes a <code>NextToken</code>
    #   			element, there are more VPCs that can be associated with the specified hosted zone. To
    #   			get the next page of results, submit another request, and include the value of
    #   				<code>NextToken</code> from the response in the <code>nexttoken</code> parameter in
    #   			another <code>ListVPCAssociationAuthorizations</code> request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               <i>Optional</i>: An integer that specifies the maximum number of VPCs
    #   			that you want Amazon Route 53 to return. If you don't specify a value for
    #   				<code>MaxResults</code>, Route 53 returns up to 50 VPCs per page.</p>
    #
    # @return [Types::ListVPCAssociationAuthorizationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_association_authorizations(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVPCAssociationAuthorizationsOutput
    #   resp.data.hosted_zone_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.vp_cs #=> Array<VPC>
    #   resp.data.vp_cs[0] #=> Types::VPC
    #   resp.data.vp_cs[0].vpc_region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "ap-east-1", "me-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-south-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "ca-central-1", "cn-north-1", "af-south-1", "eu-south-1"]
    #   resp.data.vp_cs[0].vpc_id #=> String
    #
    def list_vpc_association_authorizations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVPCAssociationAuthorizationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVPCAssociationAuthorizationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVPCAssociationAuthorizations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::InvalidPaginationToken, Errors::NoSuchHostedZone]),
        data_parser: Parsers::ListVPCAssociationAuthorizations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVPCAssociationAuthorizations,
        stubs: @stubs,
        params_class: Params::ListVPCAssociationAuthorizationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vpc_association_authorizations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a
    # 			specified record name and type. You can optionally specify the IP address of a DNS
    # 			resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
    # 		       <p>This call only supports querying public hosted zones.</p>
    #
    # @param [Hash] params
    #   See {Types::TestDNSAnswerInput}.
    #
    # @option params [String] :hosted_zone_id
    #   <p>The ID of the hosted zone that you want Amazon Route 53 to simulate a query
    #   			for.</p>
    #
    # @option params [String] :record_name
    #   <p>The name of the resource record set that you want Amazon Route 53 to simulate a query
    #   			for.</p>
    #
    # @option params [String] :record_type
    #   <p>The type of the resource record set.</p>
    #
    # @option params [String] :resolver_ip
    #   <p>If you want to simulate a request from a specific DNS resolver, specify the IP address
    #   			for that resolver. If you omit this value, <code>TestDnsAnswer</code> uses the IP
    #   			address of a DNS resolver in the Amazon Web Services US East (N. Virginia) Region
    #   				(<code>us-east-1</code>).</p>
    #
    # @option params [String] :edns0_client_subnet_ip
    #   <p>If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or
    #   			IPv6 address of a client in the applicable location, for example,
    #   				<code>192.0.2.44</code> or <code>2001:db8:85a3::8a2e:370:7334</code>.</p>
    #
    # @option params [String] :edns0_client_subnet_mask
    #   <p>If you specify an IP address for <code>edns0clientsubnetip</code>, you can optionally
    #   			specify the number of bits of the IP address that you want the checking tool to include
    #   			in the DNS query. For example, if you specify <code>192.0.2.44</code> for
    #   				<code>edns0clientsubnetip</code> and <code>24</code> for
    #   				<code>edns0clientsubnetmask</code>, the checking tool will simulate a request from
    #   			192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6
    #   			addresses.</p>
    #   		       <p>The range of valid values depends on whether <code>edns0clientsubnetip</code> is an
    #   			IPv4 or an IPv6 address:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>IPv4</b>: Specify a value between 0 and 32</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>IPv6</b>: Specify a value between 0 and
    #   					128</p>
    #   			         </li>
    #            </ul>
    #
    # @return [Types::TestDNSAnswerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_dns_answer(
    #     hosted_zone_id: 'HostedZoneId', # required
    #     record_name: 'RecordName', # required
    #     record_type: 'SOA', # required - accepts ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #     resolver_ip: 'ResolverIP',
    #     edns0_client_subnet_ip: 'EDNS0ClientSubnetIP',
    #     edns0_client_subnet_mask: 'EDNS0ClientSubnetMask'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestDNSAnswerOutput
    #   resp.data.nameserver #=> String
    #   resp.data.record_name #=> String
    #   resp.data.record_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.record_data #=> Array<String>
    #   resp.data.record_data[0] #=> String
    #   resp.data.response_code #=> String
    #   resp.data.protocol #=> String
    #
    def test_dns_answer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestDNSAnswerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestDNSAnswerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestDNSAnswer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchHostedZone]),
        data_parser: Parsers::TestDNSAnswer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestDNSAnswer,
        stubs: @stubs,
        params_class: Params::TestDNSAnswerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_dns_answer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing health check. Note that some values can't be updated. </p>
    # 		       <p>For more information about updating health checks, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html">Creating,
    # 				Updating, and Deleting Health Checks</a> in the <i>Amazon Route 53
    # 				Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHealthCheckInput}.
    #
    # @option params [String] :health_check_id
    #   <p>The ID for the health check for which you want detailed information. When you created
    #   			the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the
    #   				<code>HealthCheckId</code> element.</p>
    #
    # @option params [Integer] :health_check_version
    #   <p>A sequential counter that Amazon Route 53 sets to <code>1</code> when you create a
    #   			health check and increments by 1 each time you update settings for the health
    #   			check.</p>
    #   		       <p>We recommend that you use <code>GetHealthCheck</code> or <code>ListHealthChecks</code>
    #   			to get the current value of <code>HealthCheckVersion</code> for the health check that
    #   			you want to update, and that you include that value in your
    #   				<code>UpdateHealthCheck</code> request. This prevents Route 53 from overwriting an
    #   			intervening update:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>If the value in the <code>UpdateHealthCheck</code> request matches the value
    #   					of <code>HealthCheckVersion</code> in the health check, Route 53 updates the
    #   					health check with the new settings.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If the value of <code>HealthCheckVersion</code> in the health check is
    #   					greater, the health check was changed after you got the version number. Route 53
    #   					does not update the health check, and it returns a
    #   						<code>HealthCheckVersionMismatch</code> error.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :ip_address
    #   <p>The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform
    #   			health checks on. If you don't specify a value for <code>IPAddress</code>, Route 53
    #   			sends a DNS request to resolve the domain name that you specify in
    #   				<code>FullyQualifiedDomainName</code> at the interval that you specify in
    #   				<code>RequestInterval</code>. Using an IP address that is returned by DNS, Route 53
    #   			then checks the health of the endpoint.</p>
    #   		       <p>Use one of the following formats for the value of <code>IPAddress</code>: </p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>IPv4 address</b>: four values between 0 and 255,
    #   					separated by periods (.), for example, <code>192.0.2.44</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>IPv6 address</b>: eight groups of four
    #   					hexadecimal values, separated by colons (:), for example,
    #   						<code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten
    #   					IPv6 addresses as described in RFC 5952, for example,
    #   						<code>2001:db8:85a3::abcd:1:2345</code>.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP
    #   			address, associate it with your EC2 instance, and specify the Elastic IP address for
    #   				<code>IPAddress</code>. This ensures that the IP address of your instance never
    #   			changes. For more information, see the applicable documentation:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Linux: <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #   						Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Linux
    #   						Instances</i>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>Windows: <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html">Elastic IP
    #   						Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Windows
    #   						Instances</i>
    #                  </p>
    #   			         </li>
    #            </ul>
    #   		       <note>
    #   			         <p>If a health check already has a value for <code>IPAddress</code>, you can change
    #   				the value. However, you can't update an existing health check to add or remove the
    #   				value of <code>IPAddress</code>. </p>
    #   		       </note>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>. </p>
    #   		       <p>Constraints: Route 53 can't check the health of endpoints for which the IP address is
    #   			in local, private, non-routable, or multicast ranges. For more information about IP
    #   			addresses for which you can't create health checks, see the following documents:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4
    #   						Addresses</a>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4
    #   						Prefix for Shared Address Space</a>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6
    #   						Addresses</a>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    # @option params [Integer] :port
    #   <p>The port on the endpoint that you want Amazon Route 53 to perform health checks
    #   			on.</p>
    #   		       <note>
    #   			         <p>Don't specify a value for <code>Port</code> when you specify a value for
    #   					<code>Type</code> of <code>CLOUDWATCH_METRIC</code> or
    #   				<code>CALCULATED</code>.</p>
    #   		       </note>
    #
    # @option params [String] :resource_path
    #   <p>The path that you want Amazon Route 53 to request when performing health checks. The
    #   			path can be any value for which your endpoint will return an HTTP status code of 2xx or
    #   			3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.
    #   			You can also include query string parameters, for example,
    #   				<code>/welcome.html?language=jp&login=y</code>. </p>
    #   		       <p>Specify this value only if you want to change it.</p>
    #
    # @option params [String] :fully_qualified_domain_name
    #   <p>Amazon Route 53 behavior depends on whether you specify a value for
    #   				<code>IPAddress</code>.</p>
    #   		       <note>
    #   			         <p>If a health check already has a value for <code>IPAddress</code>, you can change
    #   				the value. However, you can't update an existing health check to add or remove the
    #   				value of <code>IPAddress</code>. </p>
    #   		       </note>
    #   		       <p>
    #               <b>If you specify a value for</b>
    #   			         <code>IPAddress</code>:</p>
    #   		       <p>Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes
    #   			the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for
    #   			all health checks except TCP health checks. This is typically the fully qualified DNS
    #   			name of the endpoint on which you want Route 53 to perform health checks.</p>
    #   		       <p>When Route 53 checks the health of an endpoint, here is how it constructs the
    #   				<code>Host</code> header:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>If you specify a value of <code>80</code> for <code>Port</code> and
    #   						<code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>,
    #   					Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the
    #   					endpoint in the <code>Host</code> header.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you specify a value of <code>443</code> for <code>Port</code> and
    #   						<code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>,
    #   					Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the
    #   					endpoint in the <code>Host</code> header.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you specify another value for <code>Port</code> and any value except
    #   						<code>TCP</code> for <code>Type</code>, Route 53 passes
    #   							<i>
    #                        <code>FullyQualifiedDomainName</code>:<code>Port</code>
    #                     </i>
    #   					to the endpoint in the <code>Host</code> header.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Route 53
    #   			substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each
    #   			of the above cases.</p>
    #   		       <p>
    #               <b>If you don't specify a value for</b>
    #   			         <code>IPAddress</code>:</p>
    #   		       <p>If you don't specify a value for <code>IPAddress</code>, Route 53 sends a DNS request
    #   			to the domain that you specify in <code>FullyQualifiedDomainName</code> at the interval
    #   			you specify in <code>RequestInterval</code>. Using an IPv4 address that is returned by
    #   			DNS, Route 53 then checks the health of the endpoint.</p>
    #   		       <note>
    #   			         <p>If you don't specify a value for <code>IPAddress</code>, Route 53 uses only IPv4
    #   				to send health checks to the endpoint. If there's no resource record set with a type
    #   				of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the
    #   				health check fails with a "DNS resolution failed" error.</p>
    #   		       </note>
    #   		       <p>If you want to check the health of weighted, latency, or failover resource record sets
    #   			and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we
    #   			recommend that you create a separate health check for each endpoint. For example, create
    #   			a health check for each HTTP server that is serving content for www.example.com. For the
    #   			value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server
    #   			(such as <code>us-east-2-www.example.com</code>), not the name of the resource record
    #   			sets (www.example.com).</p>
    #   		       <important>
    #   			         <p>In this configuration, if the value of <code>FullyQualifiedDomainName</code>
    #   				matches the name of the resource record sets and you then associate the health check
    #   				with those resource record sets, health check results will be unpredictable.</p>
    #   		       </important>
    #   		       <p>In addition, if the value of <code>Type</code> is <code>HTTP</code>,
    #   				<code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>,
    #   			Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the
    #   				<code>Host</code> header, as it does when you specify a value for
    #   				<code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Route
    #   			53 doesn't pass a <code>Host</code> header.</p>
    #
    # @option params [String] :search_string
    #   <p>If the value of <code>Type</code> is <code>HTTP_STR_MATCH</code> or
    #   				<code>HTTPS_STR_MATCH</code>, the string that you want Amazon Route 53 to search for
    #   			in the response body from the specified resource. If the string appears in the response
    #   			body, Route 53 considers the resource healthy. (You can't change the value of
    #   				<code>Type</code> when you update a health check.)</p>
    #
    # @option params [Integer] :failure_threshold
    #   <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon
    #   			Route 53 to change the current status of the endpoint from unhealthy to healthy or vice
    #   			versa. For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the
    #   				<i>Amazon Route 53 Developer Guide</i>.</p>
    #   		       <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is
    #   			three health checks.</p>
    #
    # @option params [Boolean] :inverted
    #   <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for
    #   			example, to consider a health check unhealthy when it otherwise would be considered
    #   			healthy.</p>
    #
    # @option params [Boolean] :disabled
    #   <p>Stops Route 53 from performing health checks. When you disable a health check, here's
    #   			what happens:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <b>Health checks that check the health of
    #   						endpoints:</b> Route 53 stops submitting requests to your
    #   					application, server, or other resource.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Calculated health checks:</b> Route 53 stops
    #   					aggregating the status of the referenced health checks.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <b>Health checks that monitor CloudWatch alarms:</b>
    #   					Route 53 stops monitoring the corresponding CloudWatch metrics.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>After you disable a health check, Route 53 considers the status of the health check to
    #   			always be healthy. If you configured DNS failover, Route 53 continues to route traffic
    #   			to the corresponding resources. If you want to stop routing traffic to a resource,
    #   			change the value of <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-Inverted">Inverted</a>. </p>
    #   		       <p>Charges for a health check still apply when the health check is disabled. For more
    #   			information, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53
    #   				Pricing</a>.</p>
    #
    # @option params [Integer] :health_threshold
    #   <p>The number of child health checks that are associated with a <code>CALCULATED</code>
    #   			health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health
    #   			check to be considered healthy. To specify the child health checks that you want to
    #   			associate with a <code>CALCULATED</code> health check, use the
    #   				<code>ChildHealthChecks</code> and <code>ChildHealthCheck</code> elements.</p>
    #   		       <p>Note the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>If you specify a number greater than the number of child health checks, Route
    #   					53 always considers this health check to be unhealthy.</p>
    #   			         </li>
    #               <li>
    #   				           <p>If you specify <code>0</code>, Route 53 always considers this health check to
    #   					be healthy.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [Array<String>] :child_health_checks
    #   <p>A complex type that contains one <code>ChildHealthCheck</code> element for each health
    #   			check that you want to associate with a <code>CALCULATED</code> health check.</p>
    #
    # @option params [Boolean] :enable_sni
    #   <p>Specify whether you want Amazon Route 53 to send the value of
    #   				<code>FullyQualifiedDomainName</code> to the endpoint in the
    #   				<code>client_hello</code> message during <code>TLS</code> negotiation. This allows
    #   			the endpoint to respond to <code>HTTPS</code> health check requests with the applicable
    #   			SSL/TLS certificate.</p>
    #   		       <p>Some endpoints require that HTTPS requests include the host name in the
    #   				<code>client_hello</code> message. If you don't enable SNI, the status of the health
    #   			check will be SSL alert <code>handshake_failure</code>. A health check can also have
    #   			that status for other reasons. If SNI is enabled and you're still getting the error,
    #   			check the SSL/TLS configuration on your endpoint and confirm that your certificate is
    #   			valid.</p>
    #   		       <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common
    #   				Name</code> field and possibly several more in the <code>Subject Alternative
    #   				Names</code> field. One of the domain names in the certificate should match the
    #   			value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint
    #   			responds to the <code>client_hello</code> message with a certificate that does not
    #   			include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a
    #   			health checker will retry the handshake. In the second attempt, the health checker will
    #   			omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code>
    #   			message.</p>
    #
    # @option params [Array<String>] :regions
    #   <p>A complex type that contains one <code>Region</code> element for each region that you
    #   			want Amazon Route 53 health checkers to check the specified endpoint from.</p>
    #
    # @option params [AlarmIdentifier] :alarm_identifier
    #   <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53
    #   			health checkers to use to determine whether the specified health check is
    #   			healthy.</p>
    #
    # @option params [String] :insufficient_data_health_status
    #   <p>When CloudWatch has insufficient data about the metric to determine the alarm state,
    #   			the status that you want Amazon Route 53 to assign to the health check:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>Healthy</code>: Route 53 considers the health check to be
    #   					healthy.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>Unhealthy</code>: Route 53 considers the health check to be
    #   					unhealthy.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>LastKnownStatus</code>: By default, Route 53 uses the status of the
    #   					health check from the last time CloudWatch had sufficient data to determine the
    #   					alarm state. For new health checks that have no last known status, the status
    #   					for the health check is healthy.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [Array<String>] :reset_elements
    #   <p>A complex type that contains one <code>ResettableElementName</code> element for each
    #   			element that you want to reset to the default value. Valid values for
    #   				<code>ResettableElementName</code> include the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>ChildHealthChecks</code>: Amazon Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ChildHealthChecks">ChildHealthChecks</a> to null.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>FullyQualifiedDomainName</code>: Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>. to null.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>Regions</code>: Route 53 resets the <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a> list to the default set of regions. </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ResourcePath</code>: Route 53 resets <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ResourcePath">ResourcePath</a> to null.</p>
    #   			         </li>
    #            </ul>
    #
    # @return [Types::UpdateHealthCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_health_check(
    #     health_check_id: 'HealthCheckId', # required
    #     health_check_version: 1,
    #     ip_address: 'IPAddress',
    #     port: 1,
    #     resource_path: 'ResourcePath',
    #     fully_qualified_domain_name: 'FullyQualifiedDomainName',
    #     search_string: 'SearchString',
    #     failure_threshold: 1,
    #     inverted: false,
    #     disabled: false,
    #     health_threshold: 1,
    #     child_health_checks: [
    #       'member'
    #     ],
    #     enable_sni: false,
    #     regions: [
    #       'us-east-1' # accepts ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #     ],
    #     alarm_identifier: {
    #       region: 'us-east-1', # required - accepts ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #       name: 'Name' # required
    #     },
    #     insufficient_data_health_status: 'Healthy', # accepts ["Healthy", "Unhealthy", "LastKnownStatus"]
    #     reset_elements: [
    #       'FullyQualifiedDomainName' # accepts ["FullyQualifiedDomainName", "Regions", "ResourcePath", "ChildHealthChecks"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHealthCheckOutput
    #   resp.data.health_check #=> Types::HealthCheck
    #   resp.data.health_check.id #=> String
    #   resp.data.health_check.caller_reference #=> String
    #   resp.data.health_check.linked_service #=> Types::LinkedService
    #   resp.data.health_check.linked_service.service_principal #=> String
    #   resp.data.health_check.linked_service.description #=> String
    #   resp.data.health_check.health_check_config #=> Types::HealthCheckConfig
    #   resp.data.health_check.health_check_config.ip_address #=> String
    #   resp.data.health_check.health_check_config.port #=> Integer
    #   resp.data.health_check.health_check_config.type #=> String, one of ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP", "CALCULATED", "CLOUDWATCH_METRIC", "RECOVERY_CONTROL"]
    #   resp.data.health_check.health_check_config.resource_path #=> String
    #   resp.data.health_check.health_check_config.fully_qualified_domain_name #=> String
    #   resp.data.health_check.health_check_config.search_string #=> String
    #   resp.data.health_check.health_check_config.request_interval #=> Integer
    #   resp.data.health_check.health_check_config.failure_threshold #=> Integer
    #   resp.data.health_check.health_check_config.measure_latency #=> Boolean
    #   resp.data.health_check.health_check_config.inverted #=> Boolean
    #   resp.data.health_check.health_check_config.disabled #=> Boolean
    #   resp.data.health_check.health_check_config.health_threshold #=> Integer
    #   resp.data.health_check.health_check_config.child_health_checks #=> Array<String>
    #   resp.data.health_check.health_check_config.child_health_checks[0] #=> String
    #   resp.data.health_check.health_check_config.enable_sni #=> Boolean
    #   resp.data.health_check.health_check_config.regions #=> Array<String>
    #   resp.data.health_check.health_check_config.regions[0] #=> String, one of ["us-east-1", "us-west-1", "us-west-2", "eu-west-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier #=> Types::AlarmIdentifier
    #   resp.data.health_check.health_check_config.alarm_identifier.region #=> String, one of ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "ap-east-1", "me-south-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "eu-north-1", "sa-east-1", "cn-northwest-1", "cn-north-1", "af-south-1", "eu-south-1", "us-gov-west-1", "us-gov-east-1", "us-iso-east-1", "us-iso-west-1", "us-isob-east-1"]
    #   resp.data.health_check.health_check_config.alarm_identifier.name #=> String
    #   resp.data.health_check.health_check_config.insufficient_data_health_status #=> String, one of ["Healthy", "Unhealthy", "LastKnownStatus"]
    #   resp.data.health_check.health_check_config.routing_control_arn #=> String
    #   resp.data.health_check.health_check_version #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration #=> Types::CloudWatchAlarmConfiguration
    #   resp.data.health_check.cloud_watch_alarm_configuration.evaluation_periods #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.threshold #=> Float
    #   resp.data.health_check.cloud_watch_alarm_configuration.comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.period #=> Integer
    #   resp.data.health_check.cloud_watch_alarm_configuration.metric_name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.namespace #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.statistic #=> String, one of ["Average", "Sum", "SampleCount", "Maximum", "Minimum"]
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions #=> Array<Dimension>
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0] #=> Types::Dimension
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].name #=> String
    #   resp.data.health_check.cloud_watch_alarm_configuration.dimensions[0].value #=> String
    #
    def update_health_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHealthCheckInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHealthCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHealthCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::HealthCheckVersionMismatch, Errors::NoSuchHealthCheck]),
        data_parser: Parsers::UpdateHealthCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHealthCheck,
        stubs: @stubs,
        params_class: Params::UpdateHealthCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_health_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the comment for a specified hosted zone.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHostedZoneCommentInput}.
    #
    # @option params [String] :id
    #   <p>The ID for the hosted zone that you want to update the comment for.</p>
    #
    # @option params [String] :comment
    #   <p>The new comment for the hosted zone. If you don't specify a value for
    #   				<code>Comment</code>, Amazon Route 53 deletes the existing value of the
    #   				<code>Comment</code> element, if any.</p>
    #
    # @return [Types::UpdateHostedZoneCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hosted_zone_comment(
    #     id: 'Id', # required
    #     comment: 'Comment'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHostedZoneCommentOutput
    #   resp.data.hosted_zone #=> Types::HostedZone
    #   resp.data.hosted_zone.id #=> String
    #   resp.data.hosted_zone.name #=> String
    #   resp.data.hosted_zone.caller_reference #=> String
    #   resp.data.hosted_zone.config #=> Types::HostedZoneConfig
    #   resp.data.hosted_zone.config.comment #=> String
    #   resp.data.hosted_zone.config.private_zone #=> Boolean
    #   resp.data.hosted_zone.resource_record_set_count #=> Integer
    #   resp.data.hosted_zone.linked_service #=> Types::LinkedService
    #   resp.data.hosted_zone.linked_service.service_principal #=> String
    #   resp.data.hosted_zone.linked_service.description #=> String
    #
    def update_hosted_zone_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHostedZoneCommentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHostedZoneCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHostedZoneComment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::PriorRequestNotComplete, Errors::NoSuchHostedZone]),
        data_parser: Parsers::UpdateHostedZoneComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHostedZoneComment,
        stubs: @stubs,
        params_class: Params::UpdateHostedZoneCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_hosted_zone_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the comment for a specified traffic policy version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrafficPolicyCommentInput}.
    #
    # @option params [String] :id
    #   <p>The value of <code>Id</code> for the traffic policy that you want to update the
    #   			comment for.</p>
    #
    # @option params [Integer] :version
    #   <p>The value of <code>Version</code> for the traffic policy that you want to update the
    #   			comment for.</p>
    #
    # @option params [String] :comment
    #   <p>The new comment for the specified traffic policy and version.</p>
    #
    # @return [Types::UpdateTrafficPolicyCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_policy_comment(
    #     id: 'Id', # required
    #     version: 1, # required
    #     comment: 'Comment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrafficPolicyCommentOutput
    #   resp.data.traffic_policy #=> Types::TrafficPolicy
    #   resp.data.traffic_policy.id #=> String
    #   resp.data.traffic_policy.version #=> Integer
    #   resp.data.traffic_policy.name #=> String
    #   resp.data.traffic_policy.type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #   resp.data.traffic_policy.document #=> String
    #   resp.data.traffic_policy.comment #=> String
    #
    def update_traffic_policy_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrafficPolicyCommentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrafficPolicyCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTrafficPolicyComment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInput, Errors::NoSuchTrafficPolicy, Errors::ConcurrentModification]),
        data_parser: Parsers::UpdateTrafficPolicyComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTrafficPolicyComment,
        stubs: @stubs,
        params_class: Params::UpdateTrafficPolicyCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_traffic_policy_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the resource record sets in a specified hosted zone that were created based on
    # 			the settings in a specified traffic policy version.</p>
    # 		       <p>When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS
    # 			queries for the root resource record set name (such as example.com) while it replaces
    # 			one group of resource record sets with another. Route 53 performs the following
    # 			operations:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>Route 53 creates a new group of resource record sets based on the specified
    # 					traffic policy. This is true regardless of how significant the differences are
    # 					between the existing resource record sets and the new resource record sets.
    # 				</p>
    # 			         </li>
    #             <li>
    # 				           <p>When all of the new resource record sets have been created, Route 53 starts to
    # 					respond to DNS queries for the root resource record set name (such as
    # 					example.com) by using the new resource record sets.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Route 53 deletes the old group of resource record sets that are associated
    # 					with the root resource record set name.</p>
    # 			         </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrafficPolicyInstanceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the traffic policy instance that you want to update.</p>
    #
    # @option params [Integer] :ttl
    #   <p>The TTL that you want Amazon Route 53 to assign to all of the updated resource record
    #   			sets.</p>
    #
    # @option params [String] :traffic_policy_id
    #   <p>The ID of the traffic policy that you want Amazon Route 53 to use to update resource
    #   			record sets for the specified traffic policy instance.</p>
    #
    # @option params [Integer] :traffic_policy_version
    #   <p>The version of the traffic policy that you want Amazon Route 53 to use to update
    #   			resource record sets for the specified traffic policy instance.</p>
    #
    # @return [Types::UpdateTrafficPolicyInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_policy_instance(
    #     id: 'Id', # required
    #     ttl: 1, # required
    #     traffic_policy_id: 'TrafficPolicyId', # required
    #     traffic_policy_version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrafficPolicyInstanceOutput
    #   resp.data.traffic_policy_instance #=> Types::TrafficPolicyInstance
    #   resp.data.traffic_policy_instance.id #=> String
    #   resp.data.traffic_policy_instance.hosted_zone_id #=> String
    #   resp.data.traffic_policy_instance.name #=> String
    #   resp.data.traffic_policy_instance.ttl #=> Integer
    #   resp.data.traffic_policy_instance.state #=> String
    #   resp.data.traffic_policy_instance.message #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_id #=> String
    #   resp.data.traffic_policy_instance.traffic_policy_version #=> Integer
    #   resp.data.traffic_policy_instance.traffic_policy_type #=> String, one of ["SOA", "A", "TXT", "NS", "CNAME", "MX", "NAPTR", "PTR", "SRV", "SPF", "AAAA", "CAA", "DS"]
    #
    def update_traffic_policy_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrafficPolicyInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrafficPolicyInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTrafficPolicyInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictingTypes, Errors::InvalidInput, Errors::NoSuchTrafficPolicy, Errors::PriorRequestNotComplete, Errors::NoSuchTrafficPolicyInstance]),
        data_parser: Parsers::UpdateTrafficPolicyInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTrafficPolicyInstance,
        stubs: @stubs,
        params_class: Params::UpdateTrafficPolicyInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_traffic_policy_instance
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
