# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Snowball
  # An API client for AWSIESnowballJobManagementService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Web Services Snow Family provides a petabyte-scale data transport solution that uses
  #       secure devices to transfer large amounts of data between your on-premises data centers and
  #       Amazon Simple Storage Service (Amazon S3). The Snow Family commands described here provide access to the same
  #       functionality that is available in the Amazon Web Services Snow Family Management Console, which enables you to create
  #       and manage jobs for a Snow Family device. To transfer data locally with a Snow Family device,
  #       you'll need to use the Snowball Edge client or the Amazon S3 API Interface for Snowball or OpsHub for Snow Family. For more information, see the <a href="https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html">User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Snowball::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels a cluster job. You can only cancel a cluster job while it's in the
    #         <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster
    #       job to cancel it.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The 39-character ID for the cluster that you want to cancel, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::CancelClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_cluster(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelClusterOutput
    #
    def cancel_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::KMSRequestFailedException, Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::CancelCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelCluster,
        stubs: @stubs,
        params_class: Params::CancelClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code>
    #       value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or
    #         <code>DescribeJob</code> action returns a job's <code>JobState</code> as part of the
    #       response element data returned.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The 39-character job ID for the job that you want to cancel, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobOutput
    #
    def cancel_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::KMSRequestFailedException, Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::CancelJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJob,
        stubs: @stubs,
        params_class: Params::CancelJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an address for a Snow device to be shipped to. In most regions,
    #       addresses are validated at the time of creation. The address you provide must be located
    #       within the serviceable area of your region. If the address is invalid or unsupported, then an
    #       exception is thrown.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAddressInput}.
    #
    # @option params [Address] :address
    #   <p>The address that you want the Snow device shipped to.</p>
    #
    # @return [Types::CreateAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address(
    #     address: {
    #       address_id: 'AddressId',
    #       name: 'Name',
    #       company: 'Company',
    #       street1: 'Street1',
    #       street2: 'Street2',
    #       street3: 'Street3',
    #       city: 'City',
    #       state_or_province: 'StateOrProvince',
    #       prefecture_or_district: 'PrefectureOrDistrict',
    #       landmark: 'Landmark',
    #       country: 'Country',
    #       postal_code: 'PostalCode',
    #       phone_number: 'PhoneNumber',
    #       is_restricted: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAddressOutput
    #   resp.data.address_id #=> String
    #
    def create_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAddressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAddress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAddressException, Errors::InvalidAddressException]),
        data_parser: Parsers::CreateAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAddress,
        stubs: @stubs,
        params_class: Params::CreateAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The
    #       cluster does not ship until these five node jobs have been created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :job_type
    #   <p>The type of job for this cluster. Currently, the only job type supported for clusters
    #         is <code>LOCAL_USE</code>.</p>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [JobResource] :resources
    #   <p>The resources associated with the cluster job. These resources include Amazon S3
    #         buckets and optional Lambda functions written in the Python language.
    #       </p>
    #
    # @option params [OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    #
    # @option params [String] :description
    #   <p>An optional description of this specific cluster, for example <code>Environmental Data
    #           Cluster-01</code>.</p>
    #
    # @option params [String] :address_id
    #   <p>The ID for the address that you want the cluster shipped to.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster.
    #           <code>KmsKeyARN</code> values are created by using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in Key Management Service (KMS). </p>
    #
    # @option params [String] :role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this cluster.
    #           <code>RoleArn</code> values are created by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    #
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family Devices to use for this cluster. </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [String] :shipping_option
    #   <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
    #         you'll get each Snowball Edge device, rather it represents how quickly each device moves to
    #         its destination while in transit. Regional shipping speeds are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the United States of America (US), you have access to one-day shipping and
    #             two-day shipping.</p>
    #               </li>
    #            </ul>
    #
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Notification] :notification
    #   <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
    #         cluster.</p>
    #
    # @option params [String] :forwarding_address_id
    #   <p>The forwarding address ID for a cluster. This field is not supported in most
    #         regions.</p>
    #
    # @option params [TaxDocuments] :tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    #
    # @option params [String] :remote_management
    #   <p>Allows you to securely operate and manage Snow devices in a cluster remotely from outside
    #         of your internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Client to manage the device.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     job_type: 'IMPORT', # required - accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: 'BucketArn',
    #           key_range: {
    #             begin_marker: 'BeginMarker',
    #             end_marker: 'EndMarker'
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: 'NFS_ON_DEVICE_SERVICE', # accepts ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #               transfer_option: 'IMPORT' # accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: 'LambdaArn',
    #           event_triggers: [
    #             {
    #               event_resource_arn: 'EventResourceARN'
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: 'AmiId', # required
    #           snowball_ami_id: 'SnowballAmiId'
    #         }
    #       ]
    #     }, # required
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       }
    #     },
    #     description: 'Description',
    #     address_id: 'AddressId', # required
    #     kms_key_arn: 'KmsKeyARN',
    #     role_arn: 'RoleARN', # required
    #     snowball_type: 'STANDARD', # required - accepts ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #     shipping_option: 'SECOND_DAY', # required - accepts ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #     notification: {
    #       sns_topic_arn: 'SnsTopicARN',
    #       job_states_to_notify: [
    #         'New' # accepts ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #       ],
    #       notify_all: false
    #     },
    #     forwarding_address_id: 'ForwardingAddressId',
    #     tax_documents: {
    #       ind: {
    #         gstin: 'GSTIN'
    #       }
    #     },
    #     remote_management: 'INSTALLED_ONLY' # accepts ["INSTALLED_ONLY", "INSTALLED_AUTOSTART"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster_id #=> String
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::KMSRequestFailedException, Errors::Ec2RequestFailedException, Errors::InvalidResourceException, Errors::InvalidInputCombinationException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job to import or export data between Amazon S3 and your on-premises data
    #       center. Your Amazon Web Services account must have the right trust policies and permissions in
    #       place to create a job for a Snow device. If you're creating a job for a node in a cluster, you
    #       only need to provide the <code>clusterId</code> value; the other job attributes are inherited
    #       from the cluster. </p>
    #          <note>
    #             <p>Only the Snowball; Edge device type is supported when ordering clustered jobs.</p>
    #             <p>The device capacity is optional.</p>
    #             <p>Availability of device types differ by Amazon Web Services Region. For more information
    #         about Region availability, see <a href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&loc=4">Amazon Web Services Regional Services</a>.</p>
    #          </note>
    #
    #          <p></p>
    #
    #          <p class="title">
    #             <b>Snow Family Devices and their capacities.</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Snow Family device type: <b>SNC1_SSD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T14</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowcone </p>
    #                   </li>
    #                </ul>
    #
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Snow Family device type: <b>SNC1_HDD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T8</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowcone </p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_S</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T98</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Storage Optimized for data transfer only </p>
    #                   </li>
    #                </ul>
    #
    #
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_CG</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T42</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Compute Optimized with GPU</p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE_C</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T42</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Compute Optimized without GPU</p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>EDGE</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T100</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Snowball Edge Storage Optimized with EC2 Compute</p>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>STANDARD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T50</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Original Snowball device</p>
    #                      <note>
    #                         <p>This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region
    #               </p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #             <li>
    #                <p>Device type: <b>STANDARD</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Capacity: T80</p>
    #                   </li>
    #                   <li>
    #                      <p>Description: Original Snowball device</p>
    #                      <note>
    #                         <p>This device is only available in the Ningxia, Beijing, and Singapore Amazon Web Services Region. </p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p></p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [String] :job_type
    #   <p>Defines the type of job that you're creating.
    #         </p>
    #
    # @option params [JobResource] :resources
    #   <p>Defines the Amazon S3 buckets associated with this job.</p>
    #
    #            <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be imported into.</p>
    #
    #            <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If
    #         you choose to export a range, you define the length of the range by providing either an
    #         inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both.
    #         Ranges are UTF-8 binary sorted.</p>
    #
    # @option params [OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    #
    # @option params [String] :description
    #   <p>Defines an optional description of this specific job, for example <code>Important
    #           Photos 2016-08-11</code>.</p>
    #
    # @option params [String] :address_id
    #   <p>The ID for the address that you want the Snow device shipped to.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The <code>KmsKeyARN</code> that you want to associate with this job.
    #           <code>KmsKeyARN</code>s are created using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a>
    #         Key Management Service (KMS) API action.</p>
    #
    # @option params [String] :role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this job.
    #         <code>RoleArn</code>s are created using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>
    #         Identity and Access Management (IAM) API action.</p>
    #
    # @option params [String] :snowball_capacity_preference
    #   <p>If your job is being created in one of the US regions, you have the option of
    #         specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
    #         with 80 TB in storage capacity.</p>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [String] :shipping_option
    #   <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the
    #         Snow device, rather it represents how quickly the Snow device moves to its destination while
    #         in transit. Regional shipping speeds are as follows:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Notification] :notification
    #   <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for
    #         this job.</p>
    #
    # @option params [String] :cluster_id
    #   <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to
    #         provide only this <code>clusterId</code> value. The other job attributes are inherited from
    #         the cluster.</p>
    #
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family Devices to use for this job.
    #         </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #            <p>The type of Amazon Web Services Snow device to use for this job. Currently, the only
    #         supported device type for cluster jobs is <code>EDGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html">Snowball Edge Device
    #           Options</a> in the Snowball Edge Developer Guide.</p>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [String] :forwarding_address_id
    #   <p>The forwarding address ID for a job. This field is not supported in most
    #         Regions.</p>
    #
    # @option params [TaxDocuments] :tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    #
    # @option params [DeviceConfiguration] :device_configuration
    #   <p>Defines the device configuration for an Snowcone job.</p>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [String] :remote_management
    #   <p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
    #         internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Client to manage the device.</p>
    #
    # @option params [String] :long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #
    # @return [Types::CreateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     job_type: 'IMPORT', # accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: 'BucketArn',
    #           key_range: {
    #             begin_marker: 'BeginMarker',
    #             end_marker: 'EndMarker'
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: 'NFS_ON_DEVICE_SERVICE', # accepts ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #               transfer_option: 'IMPORT' # accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: 'LambdaArn',
    #           event_triggers: [
    #             {
    #               event_resource_arn: 'EventResourceARN'
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: 'AmiId', # required
    #           snowball_ami_id: 'SnowballAmiId'
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       }
    #     },
    #     description: 'Description',
    #     address_id: 'AddressId',
    #     kms_key_arn: 'KmsKeyARN',
    #     role_arn: 'RoleARN',
    #     snowball_capacity_preference: 'T50', # accepts ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "NoPreference"]
    #     shipping_option: 'SECOND_DAY', # accepts ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #     notification: {
    #       sns_topic_arn: 'SnsTopicARN',
    #       job_states_to_notify: [
    #         'New' # accepts ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #       ],
    #       notify_all: false
    #     },
    #     cluster_id: 'ClusterId',
    #     snowball_type: 'STANDARD', # accepts ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #     forwarding_address_id: 'ForwardingAddressId',
    #     tax_documents: {
    #       ind: {
    #         gstin: 'GSTIN'
    #       }
    #     },
    #     device_configuration: {
    #       snowcone_device_configuration: {
    #         wireless_connection: {
    #           is_wifi_enabled: false
    #         }
    #       }
    #     },
    #     remote_management: 'INSTALLED_ONLY', # accepts ["INSTALLED_ONLY", "INSTALLED_AUTOSTART"]
    #     long_term_pricing_id: 'LongTermPricingId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOutput
    #   resp.data.job_id #=> String
    #
    def create_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterLimitExceededException, Errors::KMSRequestFailedException, Errors::Ec2RequestFailedException, Errors::InvalidResourceException, Errors::InvalidInputCombinationException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job with the long-term usage option for a device. The long-term usage is a
    #       1-year or 3-year long-term pricing type for the device. You are billed upfront, and Amazon Web Services provides discounts for long-term pricing.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateLongTermPricingInput}.
    #
    # @option params [String] :long_term_pricing_type
    #   <p>The type of long-term pricing option you want for the device, either 1-year or 3-year
    #         long-term pricing.</p>
    #
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   <p>Specifies whether the current long-term pricing type for the device should be
    #         renewed.</p>
    #
    # @option params [String] :snowball_type
    #   <p>The type of Snow Family Devices to use for the long-term pricing job.</p>
    #
    # @return [Types::CreateLongTermPricingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_long_term_pricing(
    #     long_term_pricing_type: 'OneYear', # required - accepts ["OneYear", "ThreeYear"]
    #     is_long_term_pricing_auto_renew: false,
    #     snowball_type: 'STANDARD' # accepts ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLongTermPricingOutput
    #   resp.data.long_term_pricing_id #=> String
    #
    def create_long_term_pricing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLongTermPricingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLongTermPricingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLongTermPricing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException]),
        data_parser: Parsers::CreateLongTermPricing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLongTermPricing,
        stubs: @stubs,
        params_class: Params::CreateLongTermPricingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_long_term_pricing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a shipping label that will be used to return the Snow device to Amazon Web Services.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReturnShippingLabelInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to create the return shipping label for; for example,
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @option params [String] :shipping_option
    #   <p>The shipping speed for a particular job. This speed doesn't dictate how soon the device
    #         is returned to Amazon Web Services. This speed represents how quickly it moves to its
    #         destination while in transit. Regional shipping speeds are as follows:</p>
    #
    # @return [Types::CreateReturnShippingLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_return_shipping_label(
    #     job_id: 'JobId', # required
    #     shipping_option: 'SECOND_DAY' # accepts ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReturnShippingLabelOutput
    #   resp.data.status #=> String, one of ["InProgress", "TimedOut", "Succeeded", "Failed"]
    #
    def create_return_shipping_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReturnShippingLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReturnShippingLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReturnShippingLabel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::ReturnShippingLabelAlreadyExistsException, Errors::ConflictException, Errors::InvalidResourceException, Errors::InvalidInputCombinationException]),
        data_parser: Parsers::CreateReturnShippingLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReturnShippingLabel,
        stubs: @stubs,
        params_class: Params::CreateReturnShippingLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_return_shipping_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Takes an <code>AddressId</code> and returns specific details about that address in the
    #       form of an <code>Address</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAddressInput}.
    #
    # @option params [String] :address_id
    #   <p>The automatically generated ID for a specific address.</p>
    #
    # @return [Types::DescribeAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_address(
    #     address_id: 'AddressId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAddressOutput
    #   resp.data.address #=> Types::Address
    #   resp.data.address.address_id #=> String
    #   resp.data.address.name #=> String
    #   resp.data.address.company #=> String
    #   resp.data.address.street1 #=> String
    #   resp.data.address.street2 #=> String
    #   resp.data.address.street3 #=> String
    #   resp.data.address.city #=> String
    #   resp.data.address.state_or_province #=> String
    #   resp.data.address.prefecture_or_district #=> String
    #   resp.data.address.landmark #=> String
    #   resp.data.address.country #=> String
    #   resp.data.address.postal_code #=> String
    #   resp.data.address.phone_number #=> String
    #   resp.data.address.is_restricted #=> Boolean
    #
    def describe_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAddressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAddress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException]),
        data_parser: Parsers::DescribeAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAddress,
        stubs: @stubs,
        params_class: Params::DescribeAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of
    #       the US regions will return addresses from the list of all addresses associated with this
    #       account in all US regions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAddressesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of <code>ADDRESS</code> objects to return.</p>
    #
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ADDRESS</code> objects, you have the option of specifying a value for
    #           <code>NextToken</code> as the starting point for your list of returned addresses.</p>
    #
    # @return [Types::DescribeAddressesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addresses(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAddressesOutput
    #   resp.data.addresses #=> Array<Address>
    #   resp.data.addresses[0] #=> Types::Address
    #   resp.data.addresses[0].address_id #=> String
    #   resp.data.addresses[0].name #=> String
    #   resp.data.addresses[0].company #=> String
    #   resp.data.addresses[0].street1 #=> String
    #   resp.data.addresses[0].street2 #=> String
    #   resp.data.addresses[0].street3 #=> String
    #   resp.data.addresses[0].city #=> String
    #   resp.data.addresses[0].state_or_province #=> String
    #   resp.data.addresses[0].prefecture_or_district #=> String
    #   resp.data.addresses[0].landmark #=> String
    #   resp.data.addresses[0].country #=> String
    #   resp.data.addresses[0].postal_code #=> String
    #   resp.data.addresses[0].phone_number #=> String
    #   resp.data.addresses[0].is_restricted #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_addresses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAddressesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAddressesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAddresses
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::DescribeAddresses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAddresses,
        stubs: @stubs,
        params_class: Params::DescribeAddressesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_addresses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific cluster including shipping information, cluster
    #       status, and other important metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The automatically generated ID for a cluster.</p>
    #
    # @return [Types::DescribeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOutput
    #   resp.data.cluster_metadata #=> Types::ClusterMetadata
    #   resp.data.cluster_metadata.cluster_id #=> String
    #   resp.data.cluster_metadata.description #=> String
    #   resp.data.cluster_metadata.kms_key_arn #=> String
    #   resp.data.cluster_metadata.role_arn #=> String
    #   resp.data.cluster_metadata.cluster_state #=> String, one of ["AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"]
    #   resp.data.cluster_metadata.job_type #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.cluster_metadata.snowball_type #=> String, one of ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   resp.data.cluster_metadata.creation_date #=> Time
    #   resp.data.cluster_metadata.resources #=> Types::JobResource
    #   resp.data.cluster_metadata.resources.s3_resources #=> Array<S3Resource>
    #   resp.data.cluster_metadata.resources.s3_resources[0] #=> Types::S3Resource
    #   resp.data.cluster_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.data.cluster_metadata.resources.s3_resources[0].key_range #=> Types::KeyRange
    #   resp.data.cluster_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.data.cluster_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.data.cluster_metadata.resources.s3_resources[0].target_on_device_services #=> Array<TargetOnDeviceService>
    #   resp.data.cluster_metadata.resources.s3_resources[0].target_on_device_services[0] #=> Types::TargetOnDeviceService
    #   resp.data.cluster_metadata.resources.s3_resources[0].target_on_device_services[0].service_name #=> String, one of ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #   resp.data.cluster_metadata.resources.s3_resources[0].target_on_device_services[0].transfer_option #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.cluster_metadata.resources.lambda_resources #=> Array<LambdaResource>
    #   resp.data.cluster_metadata.resources.lambda_resources[0] #=> Types::LambdaResource
    #   resp.data.cluster_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.data.cluster_metadata.resources.lambda_resources[0].event_triggers #=> Array<EventTriggerDefinition>
    #   resp.data.cluster_metadata.resources.lambda_resources[0].event_triggers[0] #=> Types::EventTriggerDefinition
    #   resp.data.cluster_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.data.cluster_metadata.resources.ec2_ami_resources #=> Array<Ec2AmiResource>
    #   resp.data.cluster_metadata.resources.ec2_ami_resources[0] #=> Types::Ec2AmiResource
    #   resp.data.cluster_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.data.cluster_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.data.cluster_metadata.address_id #=> String
    #   resp.data.cluster_metadata.shipping_option #=> String, one of ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #   resp.data.cluster_metadata.notification #=> Types::Notification
    #   resp.data.cluster_metadata.notification.sns_topic_arn #=> String
    #   resp.data.cluster_metadata.notification.job_states_to_notify #=> Array<String>
    #   resp.data.cluster_metadata.notification.job_states_to_notify[0] #=> String, one of ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #   resp.data.cluster_metadata.notification.notify_all #=> Boolean
    #   resp.data.cluster_metadata.forwarding_address_id #=> String
    #   resp.data.cluster_metadata.tax_documents #=> Types::TaxDocuments
    #   resp.data.cluster_metadata.tax_documents.ind #=> Types::INDTaxDocuments
    #   resp.data.cluster_metadata.tax_documents.ind.gstin #=> String
    #   resp.data.cluster_metadata.on_device_service_configuration #=> Types::OnDeviceServiceConfiguration
    #   resp.data.cluster_metadata.on_device_service_configuration.nfs_on_device_service #=> Types::NFSOnDeviceServiceConfiguration
    #   resp.data.cluster_metadata.on_device_service_configuration.nfs_on_device_service.storage_limit #=> Integer
    #   resp.data.cluster_metadata.on_device_service_configuration.nfs_on_device_service.storage_unit #=> String, one of ["TB"]
    #   resp.data.cluster_metadata.on_device_service_configuration.tgw_on_device_service #=> Types::TGWOnDeviceServiceConfiguration
    #   resp.data.cluster_metadata.on_device_service_configuration.tgw_on_device_service.storage_limit #=> Integer
    #   resp.data.cluster_metadata.on_device_service_configuration.tgw_on_device_service.storage_unit #=> String, one of ["TB"]
    #
    def describe_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException]),
        data_parser: Parsers::DescribeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCluster,
        stubs: @stubs,
        params_class: Params::DescribeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific job including shipping information, job status,
    #       and other important metadata. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::DescribeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobOutput
    #   resp.data.job_metadata #=> Types::JobMetadata
    #   resp.data.job_metadata.job_id #=> String
    #   resp.data.job_metadata.job_state #=> String, one of ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #   resp.data.job_metadata.job_type #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.job_metadata.snowball_type #=> String, one of ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   resp.data.job_metadata.creation_date #=> Time
    #   resp.data.job_metadata.resources #=> Types::JobResource
    #   resp.data.job_metadata.resources.s3_resources #=> Array<S3Resource>
    #   resp.data.job_metadata.resources.s3_resources[0] #=> Types::S3Resource
    #   resp.data.job_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.data.job_metadata.resources.s3_resources[0].key_range #=> Types::KeyRange
    #   resp.data.job_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.data.job_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.data.job_metadata.resources.s3_resources[0].target_on_device_services #=> Array<TargetOnDeviceService>
    #   resp.data.job_metadata.resources.s3_resources[0].target_on_device_services[0] #=> Types::TargetOnDeviceService
    #   resp.data.job_metadata.resources.s3_resources[0].target_on_device_services[0].service_name #=> String, one of ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #   resp.data.job_metadata.resources.s3_resources[0].target_on_device_services[0].transfer_option #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.job_metadata.resources.lambda_resources #=> Array<LambdaResource>
    #   resp.data.job_metadata.resources.lambda_resources[0] #=> Types::LambdaResource
    #   resp.data.job_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.data.job_metadata.resources.lambda_resources[0].event_triggers #=> Array<EventTriggerDefinition>
    #   resp.data.job_metadata.resources.lambda_resources[0].event_triggers[0] #=> Types::EventTriggerDefinition
    #   resp.data.job_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.data.job_metadata.resources.ec2_ami_resources #=> Array<Ec2AmiResource>
    #   resp.data.job_metadata.resources.ec2_ami_resources[0] #=> Types::Ec2AmiResource
    #   resp.data.job_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.data.job_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.data.job_metadata.description #=> String
    #   resp.data.job_metadata.kms_key_arn #=> String
    #   resp.data.job_metadata.role_arn #=> String
    #   resp.data.job_metadata.address_id #=> String
    #   resp.data.job_metadata.shipping_details #=> Types::ShippingDetails
    #   resp.data.job_metadata.shipping_details.shipping_option #=> String, one of ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #   resp.data.job_metadata.shipping_details.inbound_shipment #=> Types::Shipment
    #   resp.data.job_metadata.shipping_details.inbound_shipment.status #=> String
    #   resp.data.job_metadata.shipping_details.inbound_shipment.tracking_number #=> String
    #   resp.data.job_metadata.shipping_details.outbound_shipment #=> Types::Shipment
    #   resp.data.job_metadata.snowball_capacity_preference #=> String, one of ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "NoPreference"]
    #   resp.data.job_metadata.notification #=> Types::Notification
    #   resp.data.job_metadata.notification.sns_topic_arn #=> String
    #   resp.data.job_metadata.notification.job_states_to_notify #=> Array<String>
    #   resp.data.job_metadata.notification.job_states_to_notify[0] #=> String, one of ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #   resp.data.job_metadata.notification.notify_all #=> Boolean
    #   resp.data.job_metadata.data_transfer_progress #=> Types::DataTransfer
    #   resp.data.job_metadata.data_transfer_progress.bytes_transferred #=> Integer
    #   resp.data.job_metadata.data_transfer_progress.objects_transferred #=> Integer
    #   resp.data.job_metadata.data_transfer_progress.total_bytes #=> Integer
    #   resp.data.job_metadata.data_transfer_progress.total_objects #=> Integer
    #   resp.data.job_metadata.job_log_info #=> Types::JobLogs
    #   resp.data.job_metadata.job_log_info.job_completion_report_uri #=> String
    #   resp.data.job_metadata.job_log_info.job_success_log_uri #=> String
    #   resp.data.job_metadata.job_log_info.job_failure_log_uri #=> String
    #   resp.data.job_metadata.cluster_id #=> String
    #   resp.data.job_metadata.forwarding_address_id #=> String
    #   resp.data.job_metadata.tax_documents #=> Types::TaxDocuments
    #   resp.data.job_metadata.tax_documents.ind #=> Types::INDTaxDocuments
    #   resp.data.job_metadata.tax_documents.ind.gstin #=> String
    #   resp.data.job_metadata.device_configuration #=> Types::DeviceConfiguration
    #   resp.data.job_metadata.device_configuration.snowcone_device_configuration #=> Types::SnowconeDeviceConfiguration
    #   resp.data.job_metadata.device_configuration.snowcone_device_configuration.wireless_connection #=> Types::WirelessConnection
    #   resp.data.job_metadata.device_configuration.snowcone_device_configuration.wireless_connection.is_wifi_enabled #=> Boolean
    #   resp.data.job_metadata.remote_management #=> String, one of ["INSTALLED_ONLY", "INSTALLED_AUTOSTART"]
    #   resp.data.job_metadata.long_term_pricing_id #=> String
    #   resp.data.job_metadata.on_device_service_configuration #=> Types::OnDeviceServiceConfiguration
    #   resp.data.job_metadata.on_device_service_configuration.nfs_on_device_service #=> Types::NFSOnDeviceServiceConfiguration
    #   resp.data.job_metadata.on_device_service_configuration.nfs_on_device_service.storage_limit #=> Integer
    #   resp.data.job_metadata.on_device_service_configuration.nfs_on_device_service.storage_unit #=> String, one of ["TB"]
    #   resp.data.job_metadata.on_device_service_configuration.tgw_on_device_service #=> Types::TGWOnDeviceServiceConfiguration
    #   resp.data.job_metadata.on_device_service_configuration.tgw_on_device_service.storage_limit #=> Integer
    #   resp.data.job_metadata.on_device_service_configuration.tgw_on_device_service.storage_unit #=> String, one of ["TB"]
    #   resp.data.sub_job_metadata #=> Array<JobMetadata>
    #
    def describe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException]),
        data_parser: Parsers::DescribeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJob,
        stubs: @stubs,
        params_class: Params::DescribeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information on the shipping label of a Snow device that is being returned to Amazon Web Services.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReturnShippingLabelInput}.
    #
    # @option params [String] :job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::DescribeReturnShippingLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_return_shipping_label(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReturnShippingLabelOutput
    #   resp.data.status #=> String, one of ["InProgress", "TimedOut", "Succeeded", "Failed"]
    #   resp.data.expiration_date #=> Time
    #   resp.data.return_shipping_label_uri #=> String
    #
    def describe_return_shipping_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReturnShippingLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReturnShippingLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReturnShippingLabel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::ConflictException, Errors::InvalidResourceException]),
        data_parser: Parsers::DescribeReturnShippingLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReturnShippingLabel,
        stubs: @stubs,
        params_class: Params::DescribeReturnShippingLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_return_shipping_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the
    #       specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes
    #       after this request has been made. To access the manifest file after 60 minutes have passed,
    #       you'll have to make another call to the <code>GetJobManifest</code> action.</p>
    #
    #          <p>The manifest is an encrypted file that you can download after your job enters the
    #         <code>WithCustomer</code> status. The manifest is decrypted by using the
    #         <code>UnlockCode</code> code value, when you pass both values to the Snow device through the
    #       Snowball client when the client is started for the first time.</p>
    #
    #
    #          <p>As a best practice, we recommend that you don't save a copy of an
    #         <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving
    #       these separately helps prevent unauthorized parties from gaining access to the Snow device
    #       associated with that job.</p>
    #
    #
    #          <p>The credentials of a given job, including its manifest file and unlock code, expire 360
    #       days after the job is created.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobManifestInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to get the manifest file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::GetJobManifestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_manifest(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobManifestOutput
    #   resp.data.manifest_uri #=> String
    #
    def get_job_manifest(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobManifestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobManifestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobManifest
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::GetJobManifest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobManifest,
        stubs: @stubs,
        params_class: Params::GetJobManifestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_manifest
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular
    #         <code>UnlockCode</code> value can be accessed for up to 360 days after the associated job
    #       has been created.</p>
    #
    #          <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric
    #       characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed
    #       along with the manifest to the Snow device through the Snowball client when the client is
    #       started for the first time.</p>
    #
    #          <p>As a best practice, we recommend that you don't save a copy of the
    #         <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these
    #       separately helps prevent unauthorized parties from gaining access to the Snow device
    #       associated with that job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobUnlockCodeInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for
    #         example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::GetJobUnlockCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_unlock_code(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobUnlockCodeOutput
    #   resp.data.unlock_code #=> String
    #
    def get_job_unlock_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobUnlockCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobUnlockCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobUnlockCode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::GetJobUnlockCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobUnlockCode,
        stubs: @stubs,
        params_class: Params::GetJobUnlockCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_unlock_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the Snow Family service limit for your account, and also the
    #       number of Snow devices your account has in use.</p>
    #
    #          <p>The default service limit for the number of Snow devices that you can have at one time
    #       is 1. If you want to increase your service limit, contact Amazon Web Services Support.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSnowballUsageInput}.
    #
    # @return [Types::GetSnowballUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snowball_usage()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSnowballUsageOutput
    #   resp.data.snowball_limit #=> Integer
    #   resp.data.snowballs_in_use #=> Integer
    #
    def get_snowball_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSnowballUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSnowballUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSnowballUsage
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
        data_parser: Parsers::GetSnowballUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSnowballUsage,
        stubs: @stubs,
        params_class: Params::GetSnowballUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_snowball_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an Amazon S3 presigned URL for an update file associated with a specified
    #         <code>JobId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSoftwareUpdatesInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID for a job that you want to get the software update file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @return [Types::GetSoftwareUpdatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_software_updates(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSoftwareUpdatesOutput
    #   resp.data.updates_uri #=> String
    #
    def get_software_updates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSoftwareUpdatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSoftwareUpdatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSoftwareUpdates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::GetSoftwareUpdates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSoftwareUpdates,
        stubs: @stubs,
        params_class: Params::GetSoftwareUpdatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_software_updates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each
    #         <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's
    #       state, a job's ID, and other information.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClusterJobsInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The 39-character ID for the cluster that you want to list, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    #
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    #
    # @return [Types::ListClusterJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_jobs(
    #     cluster_id: 'ClusterId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClusterJobsOutput
    #   resp.data.job_list_entries #=> Array<JobListEntry>
    #   resp.data.job_list_entries[0] #=> Types::JobListEntry
    #   resp.data.job_list_entries[0].job_id #=> String
    #   resp.data.job_list_entries[0].job_state #=> String, one of ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #   resp.data.job_list_entries[0].is_master #=> Boolean
    #   resp.data.job_list_entries[0].job_type #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.job_list_entries[0].snowball_type #=> String, one of ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   resp.data.job_list_entries[0].creation_date #=> Time
    #   resp.data.job_list_entries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_cluster_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClusterJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClusterJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusterJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListClusterJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusterJobs,
        stubs: @stubs,
        params_class: Params::ListClusterJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cluster_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each
    #         <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other
    #       important status information.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of <code>ClusterListEntry</code> objects to return.</p>
    #
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ClusterListEntry</code> objects, you have the option of specifying
    #           <code>NextToken</code> as the starting point for your returned list.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.cluster_list_entries #=> Array<ClusterListEntry>
    #   resp.data.cluster_list_entries[0] #=> Types::ClusterListEntry
    #   resp.data.cluster_list_entries[0].cluster_id #=> String
    #   resp.data.cluster_list_entries[0].cluster_state #=> String, one of ["AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"]
    #   resp.data.cluster_list_entries[0].creation_date #=> Time
    #   resp.data.cluster_list_entries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs)
    #       that are owned by your Amazon Web Services accountthat would be supported for use on a Snow
    #       device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM,
    #       Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the
    #         Amazon Web Services Marketplace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCompatibleImagesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results for the list of compatible images. Currently, a Snowball
    #         Edge device can store 10 AMIs.</p>
    #
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #         compatible images, you can specify a value for <code>NextToken</code> as the starting point
    #         for your list of returned images.</p>
    #
    # @return [Types::ListCompatibleImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compatible_images(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCompatibleImagesOutput
    #   resp.data.compatible_images #=> Array<CompatibleImage>
    #   resp.data.compatible_images[0] #=> Types::CompatibleImage
    #   resp.data.compatible_images[0].ami_id #=> String
    #   resp.data.compatible_images[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_compatible_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCompatibleImagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCompatibleImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCompatibleImages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::Ec2RequestFailedException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListCompatibleImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCompatibleImages,
        stubs: @stubs,
        params_class: Params::ListCompatibleImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_compatible_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each
    #         <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that
    #       indicates whether the job is a job part, in the case of export jobs. Calling this API action
    #       in one of the US regions will return jobs from the list of all jobs associated with this
    #       account in all US regions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    #
    # @option params [String] :next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.job_list_entries #=> Array<JobListEntry>
    #   resp.data.job_list_entries[0] #=> Types::JobListEntry
    #   resp.data.job_list_entries[0].job_id #=> String
    #   resp.data.job_list_entries[0].job_state #=> String, one of ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #   resp.data.job_list_entries[0].is_master #=> Boolean
    #   resp.data.job_list_entries[0].job_type #=> String, one of ["IMPORT", "EXPORT", "LOCAL_USE"]
    #   resp.data.job_list_entries[0].snowball_type #=> String, one of ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   resp.data.job_list_entries[0].creation_date #=> Time
    #   resp.data.job_list_entries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all long-term pricing types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLongTermPricingInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>ListLongTermPricing</code> objects to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for your next list of
    #           <code>ListLongTermPricing</code> to return.</p>
    #
    # @return [Types::ListLongTermPricingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_long_term_pricing(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLongTermPricingOutput
    #   resp.data.long_term_pricing_entries #=> Array<LongTermPricingListEntry>
    #   resp.data.long_term_pricing_entries[0] #=> Types::LongTermPricingListEntry
    #   resp.data.long_term_pricing_entries[0].long_term_pricing_id #=> String
    #   resp.data.long_term_pricing_entries[0].long_term_pricing_end_date #=> Time
    #   resp.data.long_term_pricing_entries[0].long_term_pricing_start_date #=> Time
    #   resp.data.long_term_pricing_entries[0].long_term_pricing_type #=> String, one of ["OneYear", "ThreeYear"]
    #   resp.data.long_term_pricing_entries[0].current_active_job #=> String
    #   resp.data.long_term_pricing_entries[0].replacement_job #=> String
    #   resp.data.long_term_pricing_entries[0].is_long_term_pricing_auto_renew #=> Boolean
    #   resp.data.long_term_pricing_entries[0].long_term_pricing_status #=> String
    #   resp.data.long_term_pricing_entries[0].snowball_type #=> String, one of ["STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD"]
    #   resp.data.long_term_pricing_entries[0].job_ids #=> Array<String>
    #   resp.data.long_term_pricing_entries[0].job_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_long_term_pricing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLongTermPricingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLongTermPricingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLongTermPricing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException, Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListLongTermPricing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLongTermPricing,
        stubs: @stubs,
        params_class: Params::ListLongTermPricingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_long_term_pricing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code>
    #       state, you can update some of the information associated with a cluster. Once the cluster
    #       changes to a different job state, usually 60 minutes after the cluster being created, this
    #       action is no longer available.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The cluster ID of the cluster that you want to update, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster.
    #         To create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    #
    # @option params [String] :description
    #   <p>The updated description of this cluster.</p>
    #
    # @option params [JobResource] :resources
    #   <p>The updated arrays of <a>JobResource</a> objects that can include updated
    #           <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
    #
    # @option params [OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    #
    # @option params [String] :address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    #
    # @option params [String] :shipping_option
    #   <p>The updated shipping option value of this cluster's <a>ShippingDetails</a>
    #         object.</p>
    #
    # @option params [Notification] :notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    #
    # @option params [String] :forwarding_address_id
    #   <p>The updated ID for the forwarding address for a cluster. This field is not
    #         supported in most regions.</p>
    #
    # @return [Types::UpdateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster(
    #     cluster_id: 'ClusterId', # required
    #     role_arn: 'RoleARN',
    #     description: 'Description',
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: 'BucketArn',
    #           key_range: {
    #             begin_marker: 'BeginMarker',
    #             end_marker: 'EndMarker'
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: 'NFS_ON_DEVICE_SERVICE', # accepts ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #               transfer_option: 'IMPORT' # accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: 'LambdaArn',
    #           event_triggers: [
    #             {
    #               event_resource_arn: 'EventResourceARN'
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: 'AmiId', # required
    #           snowball_ami_id: 'SnowballAmiId'
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       }
    #     },
    #     address_id: 'AddressId',
    #     shipping_option: 'SECOND_DAY', # accepts ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #     notification: {
    #       sns_topic_arn: 'SnsTopicARN',
    #       job_states_to_notify: [
    #         'New' # accepts ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #       ],
    #       notify_all: false
    #     },
    #     forwarding_address_id: 'ForwardingAddressId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterOutput
    #
    def update_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::KMSRequestFailedException, Errors::InvalidJobStateException, Errors::Ec2RequestFailedException, Errors::InvalidResourceException, Errors::InvalidInputCombinationException]),
        data_parser: Parsers::UpdateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCluster,
        stubs: @stubs,
        params_class: Params::UpdateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of
    #       the information associated with a job. Once the job changes to a different job state, usually
    #       within 60 minutes of the job being created, this action is no longer available.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job ID of the job that you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To
    #         create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>Identity and Access Management
    #         (IAM) API action.</p>
    #
    # @option params [Notification] :notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    #
    # @option params [JobResource] :resources
    #   <p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>
    #
    # @option params [OnDeviceServiceConfiguration] :on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    #
    # @option params [String] :address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    #
    # @option params [String] :shipping_option
    #   <p>The updated shipping option value of this job's <a>ShippingDetails</a>
    #         object.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of this job's <a>JobMetadata</a> object.</p>
    #
    # @option params [String] :snowball_capacity_preference
    #   <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US
    #         regions.</p>
    #
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #
    # @option params [String] :forwarding_address_id
    #   <p>The updated ID for the forwarding address for a job. This field is not
    #         supported in most regions.</p>
    #
    # @return [Types::UpdateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job(
    #     job_id: 'JobId', # required
    #     role_arn: 'RoleARN',
    #     notification: {
    #       sns_topic_arn: 'SnsTopicARN',
    #       job_states_to_notify: [
    #         'New' # accepts ["New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"]
    #       ],
    #       notify_all: false
    #     },
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: 'BucketArn',
    #           key_range: {
    #             begin_marker: 'BeginMarker',
    #             end_marker: 'EndMarker'
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: 'NFS_ON_DEVICE_SERVICE', # accepts ["NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"]
    #               transfer_option: 'IMPORT' # accepts ["IMPORT", "EXPORT", "LOCAL_USE"]
    #             }
    #           ]
    #         }
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: 'LambdaArn',
    #           event_triggers: [
    #             {
    #               event_resource_arn: 'EventResourceARN'
    #             }
    #           ]
    #         }
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: 'AmiId', # required
    #           snowball_ami_id: 'SnowballAmiId'
    #         }
    #       ]
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: 'TB' # accepts ["TB"]
    #       }
    #     },
    #     address_id: 'AddressId',
    #     shipping_option: 'SECOND_DAY', # accepts ["SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"]
    #     description: 'Description',
    #     snowball_capacity_preference: 'T50', # accepts ["T50", "T80", "T100", "T42", "T98", "T8", "T14", "NoPreference"]
    #     forwarding_address_id: 'ForwardingAddressId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobOutput
    #
    def update_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterLimitExceededException, Errors::KMSRequestFailedException, Errors::InvalidJobStateException, Errors::Ec2RequestFailedException, Errors::InvalidResourceException, Errors::InvalidInputCombinationException]),
        data_parser: Parsers::UpdateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJob,
        stubs: @stubs,
        params_class: Params::UpdateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the state when a shipment state changes to a different state.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobShipmentStateInput}.
    #
    # @option params [String] :job_id
    #   <p>The job ID of the job whose shipment date you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #
    # @option params [String] :shipment_state
    #   <p>The state of a device when it is being shipped. </p>
    #            <p>Set to <code>RECEIVED</code> when the device arrives at your location.</p>
    #            <p>Set to <code>RETURNED</code> when you have returned the device to Amazon Web Services.</p>
    #
    # @return [Types::UpdateJobShipmentStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_shipment_state(
    #     job_id: 'JobId', # required
    #     shipment_state: 'RECEIVED' # required - accepts ["RECEIVED", "RETURNED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobShipmentStateOutput
    #
    def update_job_shipment_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobShipmentStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobShipmentStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJobShipmentState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::InvalidResourceException]),
        data_parser: Parsers::UpdateJobShipmentState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJobShipmentState,
        stubs: @stubs,
        params_class: Params::UpdateJobShipmentStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job_shipment_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the long-term pricing type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLongTermPricingInput}.
    #
    # @option params [String] :long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #
    # @option params [String] :replacement_job
    #   <p>Specifies that a device that is ordered with long-term pricing should be replaced with a
    #         new device.</p>
    #
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   <p>If set to <code>true</code>, specifies that the current long-term pricing type for the
    #         device should be automatically renewed before the long-term pricing contract expires.</p>
    #
    # @return [Types::UpdateLongTermPricingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_long_term_pricing(
    #     long_term_pricing_id: 'LongTermPricingId', # required
    #     replacement_job: 'ReplacementJob',
    #     is_long_term_pricing_auto_renew: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLongTermPricingOutput
    #
    def update_long_term_pricing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLongTermPricingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLongTermPricingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLongTermPricing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceException]),
        data_parser: Parsers::UpdateLongTermPricing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLongTermPricing,
        stubs: @stubs,
        params_class: Params::UpdateLongTermPricingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_long_term_pricing
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
