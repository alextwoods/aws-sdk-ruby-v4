# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ResourceGroupsTaggingAPI
  # An API client for ResourceGroupsTaggingAPI_20170126
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Resource Groups Tagging API</fullname>
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
    def initialize(config = AWS::SDK::ResourceGroupsTaggingAPI::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Describes the status of the <code>StartReportCreation</code> operation. </p>
    #         <p>You can call this operation only from the organization's
    #     management account and from the us-east-1 Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReportCreationInput}.
    #
    # @return [Types::DescribeReportCreationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_creation()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReportCreationOutput
    #   resp.data.status #=> String
    #   resp.data.s3_location #=> String
    #   resp.data.start_date #=> String
    #   resp.data.error_message #=> String
    #
    def describe_report_creation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReportCreationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReportCreationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReportCreation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConstraintViolationException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ThrottledException]),
        data_parser: Parsers::DescribeReportCreation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReportCreation,
        stubs: @stubs,
        params_class: Params::DescribeReportCreationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_report_creation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a table that shows counts of resources that are noncompliant with their tag
    #             policies.</p>
    #         <p>For more information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag Policies</a> in
    #             the <i>Organizations User Guide.</i>
    #          </p>
    #         <p>You can call this operation only from the organization's
    #     management account and from the us-east-1 Region.</p>
    #         <p>This operation supports pagination, where the response can be sent in
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceSummaryInput}.
    #
    # @option params [Array<String>] :target_id_filters
    #   <p>Specifies target identifiers (usually, specific account IDs) to limit the output by.
    #               If you use this parameter, the count of returned noncompliant resources includes only
    #               resources with the specified target IDs.</p>
    #
    # @option params [Array<String>] :region_filters
    #   <p>Specifies a list of Amazon Web Services Regions to limit the output to. If you use this parameter,
    #               the count of returned noncompliant resources includes only resources in the specified
    #               Regions.</p>
    #
    # @option params [Array<String>] :resource_type_filters
    #   <p>Specifies that you want the response to include information for only resources of the
    #               specified types. The format of each resource type is
    #               <code>service[:resourceType]</code>. For example, specifying a resource type of
    #                   <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances).
    #               Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances.</p>
    #           <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). Consult the <i>
    #                  <a href="https://docs.aws.amazon.com/general/latest/gr/">Amazon Web Services General Reference</a>
    #               </i>
    #               for the following:</p>
    #           <ul>
    #               <li>
    #                   <p>For a list of service name strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #               <li>
    #                   <p>For resource type strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax">Example
    #                           ARNs</a>.</p>
    #               </li>
    #               <li>
    #                   <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #                           (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #            </ul>
    #           <p>You can specify multiple resource types by using a comma separated array. The array
    #               can include up to 100 items. Note that the length constraint requirement applies to each
    #               resource type filter. </p>
    #
    # @option params [Array<String>] :tag_key_filters
    #   <p>Specifies that you want the response to include information for only resources that
    #               have tags with the specified tag keys. If you use this parameter, the count of returned
    #               noncompliant resources includes only resources that have the specified tag keys.</p>
    #
    # @option params [Array<String>] :group_by
    #   <p>Specifies a list of attributes to group the counts of noncompliant resources by. If
    #               supplied, the counts are sorted by those attributes.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to be returned in each page. A
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    #
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a
    #       previous request to indicate that you want the next page of results. Leave this parameter empty
    #       in your initial request.</p>
    #
    # @return [Types::GetComplianceSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_summary(
    #     target_id_filters: [
    #       'member'
    #     ],
    #     region_filters: [
    #       'member'
    #     ],
    #     resource_type_filters: [
    #       'member'
    #     ],
    #     tag_key_filters: [
    #       'member'
    #     ],
    #     group_by: [
    #       'TARGET_ID' # accepts ["TARGET_ID", "REGION", "RESOURCE_TYPE"]
    #     ],
    #     max_results: 1,
    #     pagination_token: 'PaginationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceSummaryOutput
    #   resp.data.summary_list #=> Array<Summary>
    #   resp.data.summary_list[0] #=> Types::Summary
    #   resp.data.summary_list[0].last_updated #=> String
    #   resp.data.summary_list[0].target_id #=> String
    #   resp.data.summary_list[0].target_id_type #=> String, one of ["ACCOUNT", "OU", "ROOT"]
    #   resp.data.summary_list[0].region #=> String
    #   resp.data.summary_list[0].resource_type #=> String
    #   resp.data.summary_list[0].non_compliant_resources #=> Integer
    #   resp.data.pagination_token #=> String
    #
    def get_compliance_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConstraintViolationException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ThrottledException]),
        data_parser: Parsers::GetComplianceSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceSummary,
        stubs: @stubs,
        params_class: Params::GetComplianceSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all the tagged or previously tagged resources that are located in the
    #             specified Amazon Web Services Region for the account.</p>
    #         <p>Depending on what information you want returned, you can also specify the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <i>Filters</i> that specify what tags and resource types you
    #                     want returned. The response includes all tags that are associated with the
    #                     requested resources.</p>
    #             </li>
    #             <li>
    #                 <p>Information about compliance with the account's effective tag policy. For more
    #                     information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag
    #                         Policies</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>This operation supports pagination, where the response can be sent in
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcesInput}.
    #
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a
    #       previous request to indicate that you want the next page of results. Leave this parameter empty
    #       in your initial request.</p>
    #
    # @option params [Array<TagFilter>] :tag_filters
    #   <p>Specifies a list of TagFilters (keys and values) to restrict the output to only those
    #               resources that have tags with the specified keys and, if included, the specified values.
    #               Each <code>TagFilter</code> must contain a key with values optional. A request can
    #               include up to 50 keys, and each key can include up to 20 values. </p>
    #           <p>Note the following when deciding how to use TagFilters:</p>
    #           <ul>
    #               <li>
    #                   <p>If you <i>don't</i> specify a <code>TagFilter</code>, the
    #                       response includes all resources that are currently tagged or ever had a tag.
    #                       Resources that currently don't have tags are shown with an empty tag set, like
    #                       this: <code>"Tags": []</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify more than one filter in a single request, the response returns
    #                       only those resources that satisfy all filters.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify a filter that contains more than one value for a key, the
    #                       response returns resources that match <i>any</i> of the specified
    #                       values for that key.</p>
    #               </li>
    #               <li>
    #                   <p>If you don't specify a value for a key, the response returns all resources
    #                       that are tagged with that key, with any or no value.</p>
    #                   <p>For example, for the following filters: <code>filter1= {keyA,{value1}}</code>,
    #                           <code>filter2={keyB,{value2,value3,value4}}</code>, <code>filter3=
    #                           {keyC}</code>:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>GetResources({filter1})</code> returns resources tagged with
    #                                   <code>key1=value1</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>GetResources({filter2})</code> returns resources tagged with
    #                                   <code>key2=value2</code> or <code>key2=value3</code> or
    #                                   <code>key2=value4</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>GetResources({filter3})</code> returns resources tagged with any
    #                               tag with the key <code>key3</code>, and with any or no value</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>GetResources({filter1,filter2,filter3})</code> returns resources
    #                               tagged with <code>(key1=value1) and (key2=value2 or key2=value3 or
    #                                   key2=value4) and (key3, any or no value)</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :resources_per_page
    #   <p>Specifies the maximum number of results to be returned in each page. A
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    #
    # @option params [Integer] :tags_per_page
    #   <p>Amazon Web Services recommends using <code>ResourcesPerPage</code> instead of this parameter.</p>
    #           <p>A limit that restricts the number of tags (key and value pairs) returned by
    #                   <code>GetResources</code> in paginated output. A resource with no tags is counted as
    #               having one tag (one key and value pair).</p>
    #           <p>
    #               <code>GetResources</code> does not split a resource and its associated tags across
    #               pages. If the specified <code>TagsPerPage</code> would cause such a break, a
    #                   <code>PaginationToken</code> is returned in place of the affected resource and its
    #               tags. Use that token in another request to get the remaining data. For example, if you
    #               specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources
    #               with 10 tags each (meaning that each resource has 10 key and value pairs), the output
    #               will consist of three pages. The first page displays the first 10 resources, each with
    #               its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The
    #               third page displays the remaining 2 resources, each with its 10 tags.</p>
    #           <p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to a maximum of 500
    #               items.</p>
    #
    # @option params [Array<String>] :resource_type_filters
    #   <p>Specifies the resource types that you want included in the response. The format of
    #               each resource type is <code>service[:resourceType]</code>. For example, specifying a
    #               resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2
    #               instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances. </p>
    #           <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). For the list of services whose resources you can
    #               use in this parameter, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the Resource Groups Tagging API</a>.</p>
    #           <p>You can specify multiple resource types by using an array. The array can include up to
    #               100 items. Note that the length constraint requirement applies to each resource type
    #               filter. For example, the following string would limit the response to only Amazon EC2
    #               instances, Amazon S3 buckets, or any Audit Manager resource:</p>
    #           <p>
    #               <code>ec2:instance,s3:bucket,auditmanager</code>
    #            </p>
    #
    # @option params [Boolean] :include_compliance_details
    #   <p>Specifies whether to include details regarding the compliance with the effective tag
    #               policy. Set this to <code>true</code> to determine whether resources are compliant with
    #               the tag policy and to get details.</p>
    #
    # @option params [Boolean] :exclude_compliant_resources
    #   <p>Specifies whether to exclude resources that are compliant with the tag policy. Set
    #               this to <code>true</code> if you are interested in retrieving information on
    #               noncompliant resources only.</p>
    #           <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter
    #               is also set to <code>true</code>.</p>
    #
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies a list of ARNs of resources for which you want to retrieve tag data. You
    #               can't specify both this parameter and any of the pagination parameters
    #                   (<code>ResourcesPerPage</code>, <code>TagsPerPage</code>,
    #                   <code>PaginationToken</code>) in the same request. If you specify both, you get an
    #                   <code>Invalid Parameter</code> exception.</p>
    #           <p>If a resource specified by this parameter doesn't exist, it doesn't generate an error;
    #               it simply isn't included in the response.</p>
    #           <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::GetResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources(
    #     pagination_token: 'PaginationToken',
    #     tag_filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     resources_per_page: 1,
    #     tags_per_page: 1,
    #     resource_type_filters: [
    #       'member'
    #     ],
    #     include_compliance_details: false,
    #     exclude_compliant_resources: false,
    #     resource_arn_list: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcesOutput
    #   resp.data.pagination_token #=> String
    #   resp.data.resource_tag_mapping_list #=> Array<ResourceTagMapping>
    #   resp.data.resource_tag_mapping_list[0] #=> Types::ResourceTagMapping
    #   resp.data.resource_tag_mapping_list[0].resource_arn #=> String
    #   resp.data.resource_tag_mapping_list[0].tags #=> Array<Tag>
    #   resp.data.resource_tag_mapping_list[0].tags[0] #=> Types::Tag
    #   resp.data.resource_tag_mapping_list[0].tags[0].key #=> String
    #   resp.data.resource_tag_mapping_list[0].tags[0].value #=> String
    #   resp.data.resource_tag_mapping_list[0].compliance_details #=> Types::ComplianceDetails
    #   resp.data.resource_tag_mapping_list[0].compliance_details.noncompliant_keys #=> Array<String>
    #   resp.data.resource_tag_mapping_list[0].compliance_details.noncompliant_keys[0] #=> String
    #   resp.data.resource_tag_mapping_list[0].compliance_details.keys_with_noncompliant_values #=> Array<String>
    #   resp.data.resource_tag_mapping_list[0].compliance_details.compliance_status #=> Boolean
    #
    def get_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidParameterException, Errors::PaginationTokenExpiredException, Errors::ThrottledException]),
        data_parser: Parsers::GetResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResources,
        stubs: @stubs,
        params_class: Params::GetResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling
    #             account.</p>
    #         <p>This operation supports pagination, where the response can be sent in
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTagKeysInput}.
    #
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a
    #       previous request to indicate that you want the next page of results. Leave this parameter empty
    #       in your initial request.</p>
    #
    # @return [Types::GetTagKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tag_keys(
    #     pagination_token: 'PaginationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTagKeysOutput
    #   resp.data.pagination_token #=> String
    #   resp.data.tag_keys #=> Array<String>
    #   resp.data.tag_keys[0] #=> String
    #
    def get_tag_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTagKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTagKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTagKeys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidParameterException, Errors::PaginationTokenExpiredException, Errors::ThrottledException]),
        data_parser: Parsers::GetTagKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTagKeys,
        stubs: @stubs,
        params_class: Params::GetTagKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_tag_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all tag values for the specified key that are used in the specified Amazon Web Services
    #             Region for the calling account.</p>
    #         <p>This operation supports pagination, where the response can be sent in
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTagValuesInput}.
    #
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a
    #       previous request to indicate that you want the next page of results. Leave this parameter empty
    #       in your initial request.</p>
    #
    # @option params [String] :key
    #   <p>Specifies the tag key for which you want to list all existing values that are
    #               currently used in the specified Amazon Web Services Region for the calling account.</p>
    #
    # @return [Types::GetTagValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tag_values(
    #     pagination_token: 'PaginationToken',
    #     key: 'Key' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTagValuesOutput
    #   resp.data.pagination_token #=> String
    #   resp.data.tag_values #=> Array<String>
    #   resp.data.tag_values[0] #=> String
    #
    def get_tag_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTagValuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTagValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTagValues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidParameterException, Errors::PaginationTokenExpiredException, Errors::ThrottledException]),
        data_parser: Parsers::GetTagValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTagValues,
        stubs: @stubs,
        params_class: Params::GetTagValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_tag_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a report that lists all tagged resources in the accounts across your
    #             organization and tells whether each resource is compliant with the effective tag policy.
    #             Compliance data is refreshed daily. The report is generated asynchronously.</p>
    #         <p>The generated report is saved to the following location:</p>
    #         <p>
    #             <code>s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv</code>
    #          </p>
    #         <p>You can call this operation only from the organization's
    #     management account and from the us-east-1 Region.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReportCreationInput}.
    #
    # @option params [String] :s3_bucket
    #   <p>The name of the Amazon S3 bucket where the report will be stored; for example:</p>
    #           <p>
    #               <code>awsexamplebucket</code>
    #            </p>
    #           <p>For more information on S3 bucket requirements, including an example bucket policy,
    #               see the example S3 bucket policy on this page.</p>
    #
    # @return [Types::StartReportCreationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_report_creation(
    #     s3_bucket: 'S3Bucket' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReportCreationOutput
    #
    def start_report_creation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReportCreationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReportCreationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReportCreation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ConstraintViolationException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ThrottledException]),
        data_parser: Parsers::StartReportCreation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReportCreation,
        stubs: @stubs,
        params_class: Params::StartReportCreationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_report_creation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies one or more tags to the specified resources. Note the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Not all resources can have tags. For a list of services with resources that
    #                     support tagging using this operation, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the
    #                         Resource Groups Tagging API</a>. If the resource doesn't yet support
    #                     this operation, the resource's service might support tagging using its own API
    #                     operations. For more information, refer to the documentation for that
    #                     service.</p>
    #             </li>
    #             <li>
    #                 <p>Each resource can have up to 50 tags. For other limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag Naming and Usage Conventions</a> in the <i>Amazon Web Services General
    #                         Reference.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>You can only tag resources that are located in the specified Amazon Web Services Region for
    #                     the Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                 <p>To add tags to a resource, you need the necessary permissions for the service
    #                     that the resource belongs to as well as permissions for adding tags. For more
    #                     information, see the documentation for each service.</p>
    #             </li>
    #          </ul>
    #         <important>
    #             <p>Do not store personally identifiable information (PII) or other confidential or
    #                 sensitive information in tags. We use tags to provide you with billing and
    #                 administration services. Tags are not intended to be used for private or sensitive
    #                 data.</p>
    #         </important>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #         <p>In addition to the <code>tag:TagResources</code> permission required by this
    #             operation, you must also have the tagging permission defined by the service that created
    #             the resource. For example, to tag an Amazon EC2 instance using the <code>TagResources</code>
    #             operation, you must have both of the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>tag:TagResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ec2:CreateTags</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TagResourcesInput}.
    #
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies the list of ARNs of the resources that you want to apply tags to.</p>
    #           <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Specifies a list of tags that you want to add to the specified resources. A tag
    #               consists of a key and a value that you define.</p>
    #
    # @return [Types::TagResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resources(
    #     resource_arn_list: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourcesOutput
    #   resp.data.failed_resources_map #=> Hash<String, FailureInfo>
    #   resp.data.failed_resources_map['key'] #=> Types::FailureInfo
    #   resp.data.failed_resources_map['key'].status_code #=> Integer
    #   resp.data.failed_resources_map['key'].error_code #=> String, one of ["InternalServiceException", "InvalidParameterException"]
    #   resp.data.failed_resources_map['key'].error_message #=> String
    #
    def tag_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ThrottledException]),
        data_parser: Parsers::TagResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResources,
        stubs: @stubs,
        params_class: Params::TagResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified resources. When you specify a tag key,
    #             the action removes both that key and its associated value. The operation succeeds even
    #             if you attempt to remove tags from a resource that were already removed. Note the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>To remove tags from a resource, you need the necessary permissions for the
    #                     service that the resource belongs to as well as permissions for removing tags.
    #                     For more information, see the documentation for the service whose resource you
    #                     want to untag.</p>
    #             </li>
    #             <li>
    #                 <p>You can only tag resources that are located in the specified Amazon Web Services Region for
    #                     the calling Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    #
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #         <p>In addition to the <code>tag:UntagResources</code> permission required by this
    #             operation, you must also have the remove tags permission defined by the service that
    #             created the resource. For example, to remove the tags from an Amazon EC2 instance using the
    #                 <code>UntagResources</code> operation, you must have both of the following
    #             permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>tag:UntagResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ec2:DeleteTags</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UntagResourcesInput}.
    #
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies a list of ARNs of the resources that you want to remove tags from.</p>
    #           <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified
    #               resources.</p>
    #
    # @return [Types::UntagResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resources(
    #     resource_arn_list: [
    #       'member'
    #     ], # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourcesOutput
    #   resp.data.failed_resources_map #=> Hash<String, FailureInfo>
    #   resp.data.failed_resources_map['key'] #=> Types::FailureInfo
    #   resp.data.failed_resources_map['key'].status_code #=> Integer
    #   resp.data.failed_resources_map['key'].error_code #=> String, one of ["InternalServiceException", "InvalidParameterException"]
    #   resp.data.failed_resources_map['key'].error_message #=> String
    #
    def untag_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ThrottledException]),
        data_parser: Parsers::UntagResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResources,
        stubs: @stubs,
        params_class: Params::UntagResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resources
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
