# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::S3
  # An API client for AmazonS3
  # See {#initialize} for a full list of supported configuration options
  # <p></p>
  #
  class Client
    include Hearth::ClientStubs
    @plugins = Hearth::PluginList.new

    def self.plugins
      @plugins
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::S3::Config.new, options = {})
      @config = initialize_config(config)
      @stubs = Hearth::Stubbing::Stubs.new
    end

    # @return [Config] config
    attr_reader :config

    # <p>This action aborts a multipart upload. After a multipart upload is aborted, no
    #          additional parts can be uploaded using that upload ID. The storage consumed by any
    #          previously uploaded parts will be freed. However, if any part uploads are currently in
    #          progress, those part uploads might or might not succeed. As a result, it might be necessary
    #          to abort a given multipart upload multiple times in order to completely free all storage
    #          consumed by all parts. </p>
    #          <p>To verify that all parts have been removed, so you don't get charged for the part
    #          storage, you should call the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a> action and ensure that
    #          the parts list is empty.</p>
    #          <p>For information about permissions required to use the multipart upload, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #             and Permissions</a>.</p>
    #          <p>The following operations are related to <code>AbortMultipartUpload</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::AbortMultipartUploadInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name to which the upload was taking place. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #
    # @option params [String] :upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::AbortMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_multipart_upload(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     upload_id: 'UploadId', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AbortMultipartUploadOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def abort_multipart_upload(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::AbortMultipartUploadInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AbortMultipartUploadInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AbortMultipartUpload
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NoSuchUpload]),
        data_parser: Parsers::AbortMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchUpload],
        stub_data_class: Stubs::AbortMultipartUpload,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :abort_multipart_upload,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Completes a multipart upload by assembling previously uploaded parts.</p>
    #          <p>You first initiate the multipart upload and then upload all parts using the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #          operation. After successfully uploading all relevant parts of an upload, you call this
    #          action to complete the upload. Upon receiving this request, Amazon S3 concatenates all the
    #          parts in ascending order by part number to create a new object. In the Complete Multipart
    #          Upload request, you must provide the parts list. You must ensure that the parts list is
    #          complete. This action concatenates the parts that you provide in the list. For each part in
    #          the list, you must provide the part number and the <code>ETag</code> value, returned after
    #          that part was uploaded.</p>
    #          <p>Processing of a Complete Multipart Upload request could take several minutes to
    #          complete. After Amazon S3 begins processing the request, it sends an HTTP response header that
    #          specifies a 200 OK response. While processing is in progress, Amazon S3 periodically sends white
    #          space characters to keep the connection from timing out. A request could fail after the
    #          initial 200 OK response has been sent. This means that a <code>200 OK</code> response can
    #          contain either a success or an error. If you call the S3 API directly, make sure to design
    #          your application to parse the contents of the response and handle it appropriately. If you
    #          use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the embedded error and apply
    #          error handling per your configuration settings (including automatically retrying the
    #          request as appropriate). If the condition persists, the SDKs throws an exception (or, for
    #          the SDKs that don't use exceptions, they return the error). </p>
    #          <p>Note that if <code>CompleteMultipartUpload</code> fails, applications should be prepared
    #          to retry the failed requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html">Amazon S3 Error Best
    #          Practices</a>.</p>
    #          <important>
    #             <p>You cannot use <code>Content-Type: application/x-www-form-urlencoded</code> with
    #             Complete Multipart Upload requests. Also, if you do not provide a
    #                <code>Content-Type</code> header, <code>CompleteMultipartUpload</code> returns a 200
    #             OK response.</p>
    #          </important>
    #          <p>For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #             Upload</a>.</p>
    #          <p>For information about permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #             and Permissions</a>.</p>
    #          <p>
    #             <code>CompleteMultipartUpload</code> has the following special errors:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>EntityTooSmall</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: Your proposed upload is smaller than the minimum allowed object
    #                      size. Each part must be at least 5 MB in size, except the last part.</p>
    #                   </li>
    #                   <li>
    #                      <p>400 Bad Request</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>InvalidPart</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: One or more of the specified parts could not be found. The part
    #                      might not have been uploaded, or the specified entity tag might not have
    #                      matched the part's entity tag.</p>
    #                   </li>
    #                   <li>
    #                      <p>400 Bad Request</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>InvalidPartOrder</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The list of parts was not in ascending order. The parts list
    #                      must be specified in order by part number.</p>
    #                   </li>
    #                   <li>
    #                      <p>400 Bad Request</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>NoSuchUpload</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The specified multipart upload does not exist. The upload ID
    #                      might be invalid, or the multipart upload might have been aborted or
    #                      completed.</p>
    #                   </li>
    #                   <li>
    #                      <p>404 Not Found</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to <code>CompleteMultipartUpload</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CompleteMultipartUploadInput}.
    #
    # @option params [String] :bucket
    #   <p>Name of the bucket to which the multipart upload was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    # @option params [CompletedMultipartUpload] :multipart_upload
    #   <p>The container for the multipart upload request information.</p>
    #
    # @option params [String] :upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #
    # @option params [String] :checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::CompleteMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_multipart_upload(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     multipart_upload: {
    #       parts: [
    #         {
    #           e_tag: 'ETag',
    #           checksum_crc32: 'ChecksumCRC32',
    #           checksum_crc32_c: 'ChecksumCRC32C',
    #           checksum_sha1: 'ChecksumSHA1',
    #           checksum_sha256: 'ChecksumSHA256',
    #           part_number: 1
    #         }
    #       ]
    #     },
    #     upload_id: 'UploadId', # required
    #     checksum_crc32: 'ChecksumCRC32',
    #     checksum_crc32_c: 'ChecksumCRC32C',
    #     checksum_sha1: 'ChecksumSHA1',
    #     checksum_sha256: 'ChecksumSHA256',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteMultipartUploadOutput
    #   resp.data.location #=> String
    #   resp.data.bucket #=> String
    #   resp.data.key #=> String
    #   resp.data.expiration #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.version_id #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def complete_multipart_upload(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteMultipartUploadInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteMultipartUploadInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteMultipartUpload
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CompleteMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::CompleteMultipartUpload,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :complete_multipart_upload,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a copy of an object that is already stored in Amazon S3.</p>
    #          <note>
    #             <p>You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your
    #             object up to 5 GB in size in a single atomic action using this API. However, to copy an
    #             object greater than 5 GB, you must use the multipart upload Upload Part - Copy
    #             (UploadPartCopy) API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html">Copy Object Using the
    #                REST Multipart Upload API</a>.</p>
    #          </note>
    #          <p>All copy requests must be authenticated. Additionally, you must have
    #             <i>read</i> access to the source object and <i>write</i>
    #          access to the destination bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>. Both the
    #          Region that you want to copy the object from and the Region that you want to copy the
    #          object to must be enabled for your account.</p>
    #          <p>A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3
    #          is copying the files. If the error occurs before the copy action starts, you receive a
    #          standard Amazon S3 error. If the error occurs during the copy operation, the error response is
    #          embedded in the <code>200 OK</code> response. This means that a <code>200 OK</code>
    #          response can contain either a success or an error. If you call the S3 API directly, make
    #          sure to design your application to parse the contents of the response and handle it
    #          appropriately. If you use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the
    #          embedded error and apply error handling per your configuration settings (including
    #          automatically retrying the request as appropriate). If the condition persists, the SDKs
    #          throws an exception (or, for the SDKs that don't use exceptions, they return the
    #          error).</p>
    #          <p>If the copy is successful, you receive a response with information about the copied
    #          object.</p>
    #          <note>
    #             <p>If the request is an HTTP 1.1 request, the response is chunk encoded. If it were not,
    #             it would not contain the content-length, and you would need to read the entire
    #             body.</p>
    #          </note>
    #          <p>The copy request charge is based on the storage class and Region that you specify for
    #          the destination object. For pricing information, see <a href="http://aws.amazon.com/s3/pricing/">Amazon S3 pricing</a>.</p>
    #          <important>
    #             <p>Amazon S3 transfer acceleration does not support cross-Region copies. If you request a
    #             cross-Region copy using a transfer acceleration endpoint, you get a 400 <code>Bad
    #                Request</code> error. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
    #             Acceleration</a>.</p>
    #          </important>
    #          <p>
    #             <b>Metadata</b>
    #          </p>
    #          <p>When copying an object, you can preserve all metadata (default) or specify new metadata.
    #          However, the ACL is not preserved and is set to private for the user making the request. To
    #          override the default ACL setting, specify a new ACL when generating a copy request. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>. </p>
    #          <p>To specify whether you want the object metadata copied from the source object or
    #          replaced with metadata provided in the request, you can optionally add the
    #             <code>x-amz-metadata-directive</code> header. When you grant permissions, you can use
    #          the <code>s3:x-amz-metadata-directive</code> condition key to enforce certain metadata
    #          behavior when objects are uploaded. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html">Specifying Conditions in a
    #             Policy</a> in the <i>Amazon S3 User Guide</i>. For a complete list of
    #          Amazon S3-specific condition keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html">Actions, Resources, and Condition Keys for
    #             Amazon S3</a>.</p>
    #          <note>
    #             <p>
    #                <code>x-amz-website-redirect-location</code> is unique to each object and must be
    #             specified in the request headers to copy the value.</p>
    #          </note>
    #          <p>
    #             <b>x-amz-copy-source-if Headers</b>
    #          </p>
    #          <p>To only copy an object under certain conditions, such as whether the <code>Etag</code>
    #          matches or whether the object was modified before or after a specified date, use the
    #          following request parameters:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-match</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-none-match</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-unmodified-since</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-modified-since</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p> If both the <code>x-amz-copy-source-if-match</code> and
    #             <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the request
    #          and evaluate as follows, Amazon S3 returns <code>200 OK</code> and copies the data:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-match</code> condition evaluates to true</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #                false</p>
    #             </li>
    #          </ul>
    #          <p>If both the <code>x-amz-copy-source-if-none-match</code> and
    #             <code>x-amz-copy-source-if-modified-since</code> headers are present in the request and
    #          evaluate as follows, Amazon S3 returns the <code>412 Precondition Failed</code> response
    #          code:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-none-match</code> condition evaluates to false</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #                true</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>All headers with the <code>x-amz-</code> prefix, including
    #                <code>x-amz-copy-source</code>, must be signed.</p>
    #          </note>
    #          <p>
    #             <b>Server-side encryption</b>
    #          </p>
    #          <p>Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket. When
    #          copying an object, if you don't specify encryption information in your copy request, the
    #          encryption setting of the target object is set to the default encryption configuration of
    #          the destination bucket. By default, all buckets have a base level of encryption
    #          configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the
    #          destination bucket has a default encryption configuration that uses server-side encryption
    #          with an Key Management Service (KMS) key (SSE-KMS), or a customer-provided encryption key (SSE-C),
    #          Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the target
    #          object copy. When you perform a CopyObject operation, if you want to use a different type
    #          of encryption setting for the target object, you can use other appropriate
    #          encryption-related headers to encrypt the target object with a KMS key, an Amazon S3 managed
    #          key, or a customer-provided key. With server-side encryption, Amazon S3 encrypts your data as it
    #          writes it to disks in its data centers and decrypts the data when you access it. If the
    #          encryption setting in your request is different from the default encryption configuration
    #          of the destination bucket, the encryption setting in your request takes precedence. If the
    #          source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary
    #          encryption information in your request so that Amazon S3 can decrypt the object for copying. For
    #          more information about server-side encryption, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Using Server-Side
    #          Encryption</a>.</p>
    #          <p>If a target object uses SSE-KMS, you can enable an S3 Bucket Key for the object. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>
    #             <b>Access Control List (ACL)-Specific Request
    #          Headers</b>
    #          </p>
    #          <p>When copying an object, you can optionally use headers to grant ACL-based permissions.
    #          By default, all objects are private. Only the owner has full access control. When adding a
    #          new object, you can grant permissions to individual Amazon Web Services accounts or to predefined groups
    #          defined by Amazon S3. These permissions are then added to the ACL on the object. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL) Overview</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing ACLs Using the REST
    #             API</a>. </p>
    #          <p>If the bucket that you're copying objects to uses the bucket owner enforced setting for
    #          S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use
    #          this setting only accept PUT requests that don't specify an ACL or PUT requests that
    #          specify bucket owner full control ACLs, such as the <code>bucket-owner-full-control</code>
    #          canned ACL or an equivalent form of this ACL expressed in the XML format.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling ownership of
    #             objects and disabling ACLs</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>If your bucket uses the bucket owner enforced setting for Object Ownership, all
    #             objects written to the bucket by any account will be owned by the bucket owner.</p>
    #          </note>
    #          <p>
    #             <b>Checksums</b>
    #          </p>
    #          <p>When copying an object, if it has a checksum, that checksum will be copied to the new
    #          object by default. When you copy the object over, you may optionally specify a different
    #          checksum algorithm to use with the <code>x-amz-checksum-algorithm</code> header.</p>
    #          <p>
    #             <b>Storage Class Options</b>
    #          </p>
    #          <p>You can use the <code>CopyObject</code> action to change the storage class of an object
    #          that is already stored in Amazon S3 using the <code>StorageClass</code> parameter. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>
    #             <b>Versioning</b>
    #          </p>
    #          <p>By default, <code>x-amz-copy-source</code> identifies the current version of an object
    #          to copy. If the current version is a delete marker, Amazon S3 behaves as if the object was
    #          deleted. To copy a different version, use the <code>versionId</code> subresource.</p>
    #          <p>If you enable versioning on the target bucket, Amazon S3 generates a unique version ID for
    #          the object being copied. This version ID is different from the version ID of the source
    #          object. Amazon S3 returns the version ID of the copied object in the
    #             <code>x-amz-version-id</code> response header in the response.</p>
    #          <p>If you do not enable versioning or suspend it on the target bucket, the version ID that
    #          Amazon S3 generates is always null.</p>
    #          <p>If the source object's storage class is GLACIER, you must restore a copy of this object
    #          before you can use it as a source object for the copy operation. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>.</p>
    #          <p>The following operations are related to <code>CopyObject</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html">Copying Objects</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyObjectInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the destination bucket.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    # @option params [String] :content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    # @option params [String] :content_language
    #   <p>The language the content is in.</p>
    #
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    # @option params [String] :copy_source
    #   <p>Specifies the source object for the copy operation. You specify the value in one of two
    #            formats, depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket
    #                  and the key of the source object, separated by a slash (/). For example, to copy the
    #                  object <code>reports/january.pdf</code> from the bucket
    #                  <code>awsexamplebucket</code>, use <code>awsexamplebucket/reports/january.pdf</code>.
    #                  The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
    #            to the value (for example,
    #               <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            If you don't specify a version ID, Amazon S3 copies the latest version of the source
    #            object.</p>
    #
    # @option params [String] :copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #
    # @option params [Time] :copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #
    # @option params [String] :copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #
    # @option params [Time] :copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #
    # @option params [Time] :expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :key
    #   <p>The key of the destination object.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    # @option params [String] :metadata_directive
    #   <p>Specifies whether the metadata is copied from the source object or replaced with
    #            metadata provided in the request.</p>
    #
    # @option params [String] :tagging_directive
    #   <p>Specifies whether the object tag-set are copied from the source object or replaced with
    #            tag-set provided in the request.</p>
    #
    # @option params [String] :server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    # @option params [String] :storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. This value is unique to each object and is not copied when using the
    #               <code>x-amz-metadata-directive</code> header. Instead, you may opt to provide this
    #            header in combination with the directive.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :ssekms_key_id
    #   <p>Specifies the Amazon Web Services KMS key ID to use for object encryption. All GET and PUT requests
    #            for an object protected by Amazon Web Services KMS will fail if not made via SSL or using SigV4. For
    #            information about configuring using any of the officially supported Amazon Web Services SDKs and Amazon Web Services
    #            CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version">Specifying the
    #               Signature Version in Request Authentication</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs.</p>
    #
    # @option params [Boolean] :bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS. </p>
    #            <p>Specifying this header with a COPY action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    # @option params [String] :copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            AES256).</p>
    #
    # @option params [String] :copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be one that was used when the
    #            source object was created.</p>
    #
    # @option params [String] :copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :tagging
    #   <p>The tag-set for the object destination object this value must be used in conjunction
    #            with the <code>TaggingDirective</code>. The tag-set must be encoded as URL Query
    #            parameters.</p>
    #
    # @option params [String] :object_lock_mode
    #   <p>The Object Lock mode that you want to apply to the copied object.</p>
    #
    # @option params [Time] :object_lock_retain_until_date
    #   <p>The date and time when you want the copied object's Object Lock to expire.</p>
    #
    # @option params [String] :object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the copied object.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::CopyObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_object(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #     bucket: 'Bucket', # required
    #     cache_control: 'CacheControl',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     content_disposition: 'ContentDisposition',
    #     content_encoding: 'ContentEncoding',
    #     content_language: 'ContentLanguage',
    #     content_type: 'ContentType',
    #     copy_source: 'CopySource', # required
    #     copy_source_if_match: 'CopySourceIfMatch',
    #     copy_source_if_modified_since: Time.now,
    #     copy_source_if_none_match: 'CopySourceIfNoneMatch',
    #     copy_source_if_unmodified_since: Time.now,
    #     expires: Time.now,
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write_acp: 'GrantWriteACP',
    #     key: 'Key', # required
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     metadata_directive: 'COPY', # accepts ["COPY", "REPLACE"]
    #     tagging_directive: 'COPY', # accepts ["COPY", "REPLACE"]
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #     website_redirect_location: 'WebsiteRedirectLocation',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     ssekms_key_id: 'SSEKMSKeyId',
    #     ssekms_encryption_context: 'SSEKMSEncryptionContext',
    #     bucket_key_enabled: false,
    #     copy_source_sse_customer_algorithm: 'CopySourceSSECustomerAlgorithm',
    #     copy_source_sse_customer_key: 'CopySourceSSECustomerKey',
    #     copy_source_sse_customer_key_md5: 'CopySourceSSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     tagging: 'Tagging',
    #     object_lock_mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #     object_lock_retain_until_date: Time.now,
    #     object_lock_legal_hold_status: 'ON', # accepts ["ON", "OFF"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     expected_source_bucket_owner: 'ExpectedSourceBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyObjectOutput
    #   resp.data.copy_object_result #=> Types::CopyObjectResult
    #   resp.data.copy_object_result.e_tag #=> String
    #   resp.data.copy_object_result.last_modified #=> Time
    #   resp.data.copy_object_result.checksum_crc32 #=> String
    #   resp.data.copy_object_result.checksum_crc32_c #=> String
    #   resp.data.copy_object_result.checksum_sha1 #=> String
    #   resp.data.copy_object_result.checksum_sha256 #=> String
    #   resp.data.expiration #=> String
    #   resp.data.copy_source_version_id #=> String
    #   resp.data.version_id #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def copy_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyObjectInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyObject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ObjectNotInActiveTierError]),
        data_parser: Parsers::CopyObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::ObjectNotInActiveTierError],
        stub_data_class: Stubs::CopyObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :copy_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new S3 bucket. To create a bucket, you must register with Amazon S3 and have a
    #          valid Amazon Web Services Access Key ID to authenticate requests. Anonymous requests are never allowed to
    #          create buckets. By creating the bucket, you become the bucket owner.</p>
    #          <p>Not every string is an acceptable bucket name. For information about bucket naming
    #          restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Bucket naming
    #          rules</a>.</p>
    #          <p>If you want to create an Amazon S3 on Outposts bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">Create Bucket</a>. </p>
    #          <p>By default, the bucket is created in the US East (N. Virginia) Region. You can
    #          optionally specify a Region in the request body. You might choose a Region to optimize
    #          latency, minimize costs, or address regulatory requirements. For example, if you reside in
    #          Europe, you will probably find it advantageous to create buckets in the Europe (Ireland)
    #          Region. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro">Accessing a
    #             bucket</a>.</p>
    #          <note>
    #             <p>If you send your create bucket request to the <code>s3.amazonaws.com</code> endpoint,
    #             the request goes to the us-east-1 Region. Accordingly, the signature calculations in
    #             Signature Version 4 must use us-east-1 as the Region, even if the location constraint in
    #             the request specifies another Region where the bucket is to be created. If you create a
    #             bucket in a Region other than US East (N. Virginia), your application must be able to
    #             handle 307 redirect. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html">Virtual hosting of
    #             buckets</a>.</p>
    #          </note>
    #          <p>
    #             <b>Access control lists (ACLs)</b>
    #          </p>
    #          <p>When creating a bucket using this operation, you can optionally configure the bucket ACL
    #          to specify the accounts or groups that should be granted specific permissions on the
    #          bucket.</p>
    #          <important>
    #             <p>If your CreateBucket request sets bucket owner enforced for S3 Object Ownership and
    #             specifies a bucket ACL that provides access to an external Amazon Web Services account, your request
    #             fails with a <code>400</code> error and returns the
    #                <code>InvalidBucketAclWithObjectOwnership</code> error code. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling object
    #                ownership</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </important>
    #          <p>There are two ways to grant the appropriate permissions using the request
    #          headers.</p>
    #          <ul>
    #             <li>
    #                <p>Specify a canned ACL using the <code>x-amz-acl</code> request header. Amazon S3
    #                supports a set of predefined ACLs, known as <i>canned ACLs</i>. Each
    #                canned ACL has a predefined set of grantees and permissions. For more information,
    #                see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned ACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Specify access permissions explicitly using the <code>x-amz-grant-read</code>,
    #                   <code>x-amz-grant-write</code>, <code>x-amz-grant-read-acp</code>,
    #                   <code>x-amz-grant-write-acp</code>, and <code>x-amz-grant-full-control</code>
    #                headers. These headers map to the set of permissions Amazon S3 supports in an ACL. For
    #                more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html">Access control list (ACL)
    #                   overview</a>.</p>
    #                <p>You specify each grantee as a type=value pair, where the type is one of the
    #                following:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>id</code> – if the value specified is the canonical user ID of an
    #                      Amazon Web Services account</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>uri</code> – if you are granting permissions to a predefined
    #                      group</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>emailAddress</code> – if the value specified is the email address of
    #                      an Amazon Web Services account</p>
    #                      <note>
    #                         <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                         <ul>
    #                            <li>
    #                               <p>US East (N. Virginia)</p>
    #                            </li>
    #                            <li>
    #                               <p>US West (N. California)</p>
    #                            </li>
    #                            <li>
    #                               <p> US West (Oregon)</p>
    #                            </li>
    #                            <li>
    #                               <p> Asia Pacific (Singapore)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Sydney)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Tokyo)</p>
    #                            </li>
    #                            <li>
    #                               <p>Europe (Ireland)</p>
    #                            </li>
    #                            <li>
    #                               <p>South America (São Paulo)</p>
    #                            </li>
    #                         </ul>
    #                         <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #                <p>
    #                   <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>You can use either a canned ACL or specify access permissions explicitly. You cannot
    #             do both.</p>
    #          </note>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>In addition to <code>s3:CreateBucket</code>, the following permissions are required when
    #          your CreateBucket includes specific headers:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>ACLs</b> - If your <code>CreateBucket</code> request
    #                specifies ACL permissions and the ACL is public-read, public-read-write,
    #                authenticated-read, or if you specify access permissions explicitly through any other
    #                ACL, both <code>s3:CreateBucket</code> and <code>s3:PutBucketAcl</code> permissions
    #                are needed. If the ACL the <code>CreateBucket</code> request is private or doesn't
    #                specify any ACLs, only <code>s3:CreateBucket</code> permission is needed. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Object Lock</b> - If
    #                   <code>ObjectLockEnabledForBucket</code> is set to true in your
    #                   <code>CreateBucket</code> request,
    #                   <code>s3:PutBucketObjectLockConfiguration</code> and
    #                   <code>s3:PutBucketVersioning</code> permissions are required.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>S3 Object Ownership</b> - If your CreateBucket
    #                request includes the the <code>x-amz-object-ownership</code> header,
    #                   <code>s3:PutBucketOwnershipControls</code> permission is required.</p>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to <code>CreateBucket</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateBucketInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to create.</p>
    #
    # @option params [CreateBucketConfiguration] :create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #
    # @option params [String] :grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #
    # @option params [Boolean] :object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #
    # @option params [String] :object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket
    #            owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned
    #            ACL.</p>
    #            <p>ObjectWriter - The uploading account will own the object if the object is uploaded with
    #            the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect
    #            permissions. The bucket owner automatically owns and has full control over every object in
    #            the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner
    #            full control ACLs, such as the <code>bucket-owner-full-control</code> canned ACL or an
    #            equivalent form of this ACL expressed in the XML format.</p>
    #
    # @return [Types::CreateBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bucket(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read"]
    #     bucket: 'Bucket', # required
    #     create_bucket_configuration: {
    #       location_constraint: 'af-south-1' # accepts ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #     },
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write: 'GrantWrite',
    #     grant_write_acp: 'GrantWriteACP',
    #     object_lock_enabled_for_bucket: false,
    #     object_ownership: 'BucketOwnerPreferred' # accepts ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBucketOutput
    #   resp.data.location #=> String
    #
    def create_bucket(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBucketInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBucketInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBucket
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BucketAlreadyExists, Errors::BucketAlreadyOwnedByYou]),
        data_parser: Parsers::CreateBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::BucketAlreadyExists, Stubs::BucketAlreadyOwnedByYou],
        stub_data_class: Stubs::CreateBucket,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :create_bucket,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action initiates a multipart upload and returns an upload ID. This upload ID is
    #          used to associate all of the parts in the specific multipart upload. You specify this
    #          upload ID in each of your subsequent upload part requests (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>). You also include this
    #          upload ID in the final request to either complete or abort the multipart upload
    #          request.</p>
    #          <p>For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a>.</p>
    #          <p>If you have configured a lifecycle rule to abort incomplete multipart uploads, the
    #          upload must complete within the number of days specified in the bucket lifecycle
    #          configuration. Otherwise, the incomplete multipart upload becomes eligible for an abort
    #          action and Amazon S3 aborts the multipart upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy</a>.</p>
    #          <p>For information about the permissions required to use the multipart upload API, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
    #             Upload and Permissions</a>.</p>
    #          <p>For request signing, multipart upload is just a series of regular requests. You initiate
    #          a multipart upload, send one or more requests to upload parts, and then complete the
    #          multipart upload process. You sign each request individually. There is nothing special
    #          about signing multipart upload requests. For more information about signing, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests (Amazon Web Services Signature Version 4)</a>.</p>
    #          <note>
    #             <p>After you initiate a multipart upload and upload one or more parts, to stop being
    #             charged for storing the uploaded parts, you must either complete or abort the multipart
    #             upload. Amazon S3 frees up the space used to store the parts and stop charging you for
    #             storing them only after you either complete or abort a multipart upload. </p>
    #          </note>
    #          <p>Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it
    #          writes it to disks in its data centers and decrypts it when you access it. Amazon S3
    #          automatically encrypts all new objects that are uploaded to an S3 bucket. When doing a
    #          multipart upload, if you don't specify encryption information in your request, the
    #          encryption setting of the uploaded parts is set to the default encryption configuration of
    #          the destination bucket. By default, all buckets have a base level of encryption
    #          configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the
    #          destination bucket has a default encryption configuration that uses server-side encryption
    #          with an Key Management Service (KMS) key (SSE-KMS), or a customer-provided encryption key (SSE-C),
    #          Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the uploaded
    #          parts. When you perform a CreateMultipartUpload operation, if you want to use a different
    #          type of encryption setting for the uploaded parts, you can request that Amazon S3 encrypts the
    #          object with a KMS key, an Amazon S3 managed key, or a customer-provided key. If the encryption
    #          setting in your request is different from the default encryption configuration of the
    #          destination bucket, the encryption setting in your request takes precedence. If you choose
    #          to provide your own encryption key, the request headers you provide in <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #          and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a> requests must
    #          match the headers you used in the request to initiate the upload by using
    #             <code>CreateMultipartUpload</code>. you can request that Amazon S3
    #          save the uploaded parts encrypted with server-side encryption with an Amazon S3 managed key
    #          (SSE-S3), an Key Management Service (KMS) key (SSE-KMS), or a customer-provided encryption key
    #          (SSE-C). </p>
    #          <p>To perform a multipart upload with encryption by using an Amazon Web Services KMS key, the requester
    #          must have permission to the <code>kms:Decrypt</code> and <code>kms:GenerateDataKey*</code>
    #          actions on the key. These permissions are required because Amazon S3 must decrypt and read data
    #          from the encrypted file parts before it completes the multipart upload. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions">Multipart upload API
    #             and permissions</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">Protecting data using
    #             server-side encryption with Amazon Web Services KMS</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>If your Identity and Access Management (IAM) user or role is in the same Amazon Web Services account as the KMS key,
    #          then you must have these permissions on the key policy. If your IAM user or role belongs
    #          to a different account than the key, then you must have the permissions on both the key
    #          policy and your IAM user or role.</p>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting Data Using Server-Side
    #             Encryption</a>.</p>
    #          <dl>
    #             <dt>Access Permissions</dt>
    #             <dd>
    #                <p>When copying an object, you can optionally specify the accounts or groups that
    #                   should be granted specific permissions on the new object. There are two ways to
    #                   grant the permissions using the request headers:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify a canned ACL with the <code>x-amz-acl</code> request header. For
    #                         more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                         ACL</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Specify access permissions explicitly with the
    #                            <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
    #                            <code>x-amz-grant-write-acp</code>, and
    #                            <code>x-amz-grant-full-control</code> headers. These parameters map to
    #                         the set of permissions that Amazon S3 supports in an ACL. For more information,
    #                         see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL) Overview</a>.</p>
    #                   </li>
    #                </ul>
    #                <p>You can use either a canned ACL or specify access permissions explicitly. You
    #                   cannot do both.</p>
    #             </dd>
    #             <dt>Server-Side- Encryption-Specific Request Headers</dt>
    #             <dd>
    #                <p>Amazon S3 encrypts data
    #                   by using server-side encryption with an Amazon S3 managed key (SSE-S3) by default. Server-side encryption is for data encryption at rest. Amazon S3 encrypts
    #                   your data as it writes it to disks in its data centers and decrypts it when you
    #                   access it. You can request that Amazon S3 encrypts
    #                   data at rest by using server-side encryption with other key options. The option you use depends on
    #                   whether you want to use KMS keys (SSE-KMS) or provide your own encryption keys
    #                   (SSE-C).</p>
    #                <ul>
    #                   <li>
    #                      <p>Use KMS keys (SSE-KMS) that include the Amazon Web Services managed key
    #                         (<code>aws/s3</code>) and KMS customer managed keys stored in Key Management Service (KMS) – If you
    #                         want Amazon Web Services to manage the keys used to encrypt data, specify the following
    #                         headers in the request.</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption-aws-kms-key-id</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption-context</code>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                      <note>
    #                         <p>If you specify <code>x-amz-server-side-encryption:aws:kms</code>, but
    #                            don't provide <code>x-amz-server-side-encryption-aws-kms-key-id</code>,
    #                            Amazon S3 uses the Amazon Web Services managed key (<code>aws/s3</code> key) in KMS to
    #                            protect the data.</p>
    #                      </note>
    #                      <important>
    #                         <p>All <code>GET</code> and <code>PUT</code> requests for an object protected
    #                            by KMS fail if you don't make them by using Secure Sockets Layer (SSL),
    #                            Transport Layer Security (TLS), or Signature Version 4.</p>
    #                      </important>
    #                      <p>For more information about server-side encryption with KMS keys
    #                         (SSE-KMS), see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">Protecting Data
    #                            Using Server-Side Encryption with KMS keys</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Use customer-provided encryption keys (SSE-C) – If you want to manage
    #                         your own encryption keys, provide all the following headers in the
    #                         request.</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption-customer-key</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                      <p>For more information about server-side encryption with customer-provided
    #                         encryption keys (SSE-C), see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">
    #                            Protecting data using server-side encryption with customer-provided
    #                            encryption keys (SSE-C)</a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Access-Control-List (ACL)-Specific Request Headers</dt>
    #             <dd>
    #                <p>You also can use the following access control–related headers with this
    #                   operation. By default, all objects are private. Only the owner has full access
    #                   control. When adding a new object, you can grant permissions to individual
    #                   Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then
    #                   added to the access control list (ACL) on the object. For more information, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>. With this operation, you can grant access permissions
    #                   using one of the following two methods:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify a canned ACL (<code>x-amz-acl</code>) — Amazon S3 supports a set of
    #                         predefined ACLs, known as <i>canned ACLs</i>. Each canned ACL
    #                         has a predefined set of grantees and permissions. For more information, see
    #                            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                         ACL</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Specify access permissions explicitly — To explicitly grant access
    #                         permissions to specific Amazon Web Services accounts or groups, use the following headers.
    #                         Each header maps to specific permissions that Amazon S3 supports in an ACL. For
    #                         more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #                            Overview</a>. In the header, you specify a list of grantees who get
    #                         the specific permission. To grant permissions explicitly, use:</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-grant-read</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-grant-write</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-grant-read-acp</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-grant-write-acp</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>x-amz-grant-full-control</code>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                      <p>You specify each grantee as a type=value pair, where the type is one of
    #                         the following:</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>id</code> – if the value specified is the canonical user ID
    #                               of an Amazon Web Services account</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>uri</code> – if you are granting permissions to a predefined
    #                               group</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>emailAddress</code> – if the value specified is the email
    #                               address of an Amazon Web Services account</p>
    #                            <note>
    #                               <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                               <ul>
    #                                  <li>
    #                                     <p>US East (N. Virginia)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>US West (N. California)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p> US West (Oregon)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p> Asia Pacific (Singapore)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>Asia Pacific (Sydney)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>Asia Pacific (Tokyo)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>Europe (Ireland)</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>South America (São Paulo)</p>
    #                                  </li>
    #                               </ul>
    #                               <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                      <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #                      <p>
    #                         <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>CreateMultipartUpload</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateMultipartUploadInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to which to initiate the upload</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    # @option params [String] :content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    # @option params [String] :content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    # @option params [String] :content_language
    #   <p>The language the content is in.</p>
    #
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    # @option params [Time] :expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the multipart upload is to be initiated.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    # @option params [String] :server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    # @option params [String] :storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :ssekms_key_id
    #   <p>Specifies the ID of the symmetric encryption customer managed key to use for object encryption.
    #            All GET and PUT requests for an object protected by Amazon Web Services KMS will fail if not made via SSL
    #            or using SigV4. For information about configuring using any of the officially supported
    #            Amazon Web Services SDKs and Amazon Web Services CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version">Specifying the Signature Version in Request Authentication</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs.</p>
    #
    # @option params [Boolean] :bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with an object action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters.</p>
    #
    # @option params [String] :object_lock_mode
    #   <p>Specifies the Object Lock mode that you want to apply to the uploaded object.</p>
    #
    # @option params [Time] :object_lock_retain_until_date
    #   <p>Specifies the date and time when you want the Object Lock to expire.</p>
    #
    # @option params [String] :object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the uploaded object.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::CreateMultipartUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multipart_upload(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #     bucket: 'Bucket', # required
    #     cache_control: 'CacheControl',
    #     content_disposition: 'ContentDisposition',
    #     content_encoding: 'ContentEncoding',
    #     content_language: 'ContentLanguage',
    #     content_type: 'ContentType',
    #     expires: Time.now,
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write_acp: 'GrantWriteACP',
    #     key: 'Key', # required
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #     website_redirect_location: 'WebsiteRedirectLocation',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     ssekms_key_id: 'SSEKMSKeyId',
    #     ssekms_encryption_context: 'SSEKMSEncryptionContext',
    #     bucket_key_enabled: false,
    #     request_payer: 'requester', # accepts ["requester"]
    #     tagging: 'Tagging',
    #     object_lock_mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #     object_lock_retain_until_date: Time.now,
    #     object_lock_legal_hold_status: 'ON', # accepts ["ON", "OFF"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_algorithm: 'CRC32' # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMultipartUploadOutput
    #   resp.data.abort_date #=> Time
    #   resp.data.abort_rule_id #=> String
    #   resp.data.bucket #=> String
    #   resp.data.key #=> String
    #   resp.data.upload_id #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    def create_multipart_upload(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMultipartUploadInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMultipartUploadInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMultipartUpload
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CreateMultipartUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::CreateMultipartUpload,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :create_multipart_upload,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the S3 bucket. All objects (including all object versions and delete markers) in
    #          the bucket must be deleted before the bucket itself can be deleted.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketInput}.
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket being deleted.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketOutput
    #
    def delete_bucket(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucket
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucket,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an analytics configuration for the bucket (specified by the analytics
    #          configuration ID).</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutAnalyticsConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about the Amazon S3 analytics feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon S3 Analytics – Storage Class
    #             Analysis</a>. </p>
    #          <p>The following operations are related to
    #          <code>DeleteBucketAnalyticsConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html">GetBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html">ListBucketAnalyticsConfigurations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html">PutBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketAnalyticsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket from which an analytics configuration is deleted.</p>
    #
    # @option params [String] :id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketAnalyticsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketAnalyticsConfigurationOutput
    #
    def delete_bucket_analytics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketAnalyticsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketAnalyticsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketAnalyticsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketAnalyticsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketAnalyticsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_analytics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the <code>cors</code> configuration information set for the bucket.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutBucketCORS</code> action. The bucket owner has this permission by default
    #          and can grant this permission to others. </p>
    #          <p>For information about <code>cors</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling Cross-Origin Resource Sharing</a> in
    #          the <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Related Resources:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html">PutBucketCors</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html">RESTOPTIONSobject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketCorsInput}.
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket whose <code>cors</code> configuration is being deleted.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketCorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_cors(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketCorsOutput
    #
    def delete_bucket_cors(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketCorsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketCorsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketCors
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketCors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketCors,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_cors,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the DELETE action resets the default encryption for the
    #          bucket as server-side encryption with Amazon S3 managed keys (SSE-S3). For information about the
    #          bucket default encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket Default Encryption</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutEncryptionConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html">PutBucketEncryption</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html">GetBucketEncryption</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketEncryptionInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the server-side encryption configuration to
    #            delete.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketEncryptionOutput
    #
    def delete_bucket_encryption(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketEncryptionInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketEncryptionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketEncryption
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketEncryption,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_encryption,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the S3 Intelligent-Tiering configuration from the specified bucket.</p>
    #          <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without performance impact or operational overhead. S3 Intelligent-Tiering delivers automatic cost savings in three low latency and high throughput access tiers. To get the lowest storage cost on data that can be accessed in minutes to hours, you can choose to activate additional archiving capabilities.</p>
    #          <p>The S3 Intelligent-Tiering storage class is  the ideal storage class for data with unknown, changing, or unpredictable access patterns, independent of object size or retention period. If the size of an object is less than 128 KB, it is not monitored and not eligible for auto-tiering. Smaller objects can be stored, but they are always charged at the Frequent Access tier rates in the S3 Intelligent-Tiering storage class.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for automatically optimizing frequently and infrequently accessed objects</a>.</p>
    #          <p>Operations related to <code>DeleteBucketIntelligentTieringConfiguration</code> include: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html">GetBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html">PutBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html">ListBucketIntelligentTieringConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketIntelligentTieringConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    # @return [Types::DeleteBucketIntelligentTieringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketIntelligentTieringConfigurationOutput
    #
    def delete_bucket_intelligent_tiering_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketIntelligentTieringConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketIntelligentTieringConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketIntelligentTieringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketIntelligentTieringConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_intelligent_tiering_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an inventory configuration (identified by the inventory ID) from the
    #          bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutInventoryConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about the Amazon S3 inventory feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon S3 Inventory</a>.</p>
    #          <p>Operations related to <code>DeleteBucketInventoryConfiguration</code> include: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html">GetBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html">PutBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html">ListBucketInventoryConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketInventoryConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the inventory configuration to delete.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketInventoryConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_inventory_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketInventoryConfigurationOutput
    #
    def delete_bucket_inventory_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketInventoryConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketInventoryConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketInventoryConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketInventoryConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketInventoryConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_inventory_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the lifecycle configuration from the specified bucket. Amazon S3 removes all the
    #          lifecycle configuration rules in the lifecycle subresource associated with the bucket. Your
    #          objects never expire, and Amazon S3 no longer automatically deletes any objects on the basis of
    #          rules contained in the deleted lifecycle configuration.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutLifecycleConfiguration</code> action. By default, the bucket owner has this
    #          permission and the bucket owner can grant this permission to others.</p>
    #          <p>There is usually some time lag before lifecycle configuration deletion is fully
    #          propagated to all the Amazon S3 systems.</p>
    #          <p>For more information about the object expiration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions">Elements to Describe Lifecycle Actions</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketLifecycleInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name of the lifecycle to delete.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketLifecycleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_lifecycle(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketLifecycleOutput
    #
    def delete_bucket_lifecycle(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketLifecycleInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketLifecycleInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketLifecycle
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketLifecycle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketLifecycle,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_lifecycle,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a metrics configuration for the Amazon CloudWatch request metrics (specified by the
    #          metrics configuration ID) from the bucket. Note that this doesn't include the daily storage
    #          metrics.</p>
    #          <p> To use this operation, you must have permissions to perform the
    #             <code>s3:PutMetricsConfiguration</code> action. The bucket owner has this permission by
    #          default. The bucket owner can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about CloudWatch request metrics for Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring Metrics with
    #             Amazon CloudWatch</a>. </p>
    #          <p>The following operations are related to
    #          <code>DeleteBucketMetricsConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html">GetBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html">ListBucketMetricsConfigurations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring Metrics with Amazon CloudWatch</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketMetricsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the metrics configuration to delete.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketMetricsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketMetricsConfigurationOutput
    #
    def delete_bucket_metrics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketMetricsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketMetricsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketMetricsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketMetricsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketMetricsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_metrics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes <code>OwnershipControls</code> for an Amazon S3 bucket. To use this operation, you
    #          must have the <code>s3:PutBucketOwnershipControls</code> permission. For more information
    #          about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>.</p>
    #          <p>For information about Amazon S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html">Using Object Ownership</a>. </p>
    #          <p>The following operations are related to
    #          <code>DeleteBucketOwnershipControls</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>PutBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketOwnershipControlsInput}.
    #
    # @option params [String] :bucket
    #   <p>The Amazon S3 bucket whose <code>OwnershipControls</code> you want to delete. </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketOwnershipControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_ownership_controls(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketOwnershipControlsOutput
    #
    def delete_bucket_ownership_controls(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketOwnershipControlsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketOwnershipControlsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketOwnershipControls
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketOwnershipControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketOwnershipControls,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_ownership_controls,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the DELETE action uses the policy subresource to delete the
    #          policy of a specified bucket. If you are using an identity other than the root user of the
    #          Amazon Web Services account that owns the bucket, the calling identity must have the
    #             <code>DeleteBucketPolicy</code> permissions on the specified bucket and belong to the
    #          bucket owner's account to use this operation. </p>
    #          <p>If you don't have <code>DeleteBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error. </p>
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this operation, even if the policy explicitly denies the root user the
    #             ability to perform this action.</p>
    #          </important>
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and
    #             UserPolicies</a>. </p>
    #          <p>The following operations are related to <code>DeleteBucketPolicy</code>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketPolicyInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_policy(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketPolicyOutput
    #
    def delete_bucket_policy(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketPolicyInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketPolicyInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketPolicy,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_policy,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes the replication configuration from the bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutReplicationConfiguration</code> action. The bucket owner has these
    #          permissions by default and can grant it to others. For more information about permissions,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>. </p>
    #          <note>
    #             <p>It can take a while for the deletion of a replication configuration to fully
    #             propagate.</p>
    #          </note>
    #          <p> For information about replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following operations are related to <code>DeleteBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html">PutBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html">GetBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketReplicationInput}.
    #
    # @option params [String] :bucket
    #   <p> The bucket name. </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_replication(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketReplicationOutput
    #
    def delete_bucket_replication(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketReplicationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketReplicationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketReplication
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketReplication,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_replication,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the tags from the bucket.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutBucketTagging</code> action. By default, the bucket owner has this
    #          permission and can grant this permission to others. </p>
    #          <p>The following operations are related to <code>DeleteBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket that has the tag set to be removed.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_tagging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketTaggingOutput
    #
    def delete_bucket_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action removes the website configuration for a bucket. Amazon S3 returns a <code>200
    #             OK</code> response upon successfully deleting a website configuration on the specified
    #          bucket. You will get a <code>200 OK</code> response if the website configuration you are
    #          trying to delete does not exist on the bucket. Amazon S3 returns a <code>404</code> response if
    #          the bucket specified in the request does not exist.</p>
    #          <p>This DELETE action requires the <code>S3:DeleteBucketWebsite</code> permission. By
    #          default, only the bucket owner can delete the website configuration attached to a bucket.
    #          However, bucket owners can grant other users permission to delete the website configuration
    #          by writing a bucket policy granting them the <code>S3:DeleteBucketWebsite</code>
    #          permission. </p>
    #          <p>For more information about hosting websites, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a>. </p>
    #          <p>The following operations are related to <code>DeleteBucketWebsite</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketWebsite.html">GetBucketWebsite</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html">PutBucketWebsite</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteBucketWebsiteInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which you want to remove the website configuration. </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteBucketWebsiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_website(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBucketWebsiteOutput
    #
    def delete_bucket_website(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBucketWebsiteInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBucketWebsiteInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBucketWebsite
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteBucketWebsite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteBucketWebsite,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_bucket_website,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the null version (if there is one) of an object and inserts a delete marker,
    #          which becomes the latest version of the object. If there isn't a null version, Amazon S3 does
    #          not remove any objects but will still respond that the command was successful.</p>
    #          <p>To remove a specific version, you must use the version Id subresource. Using this
    #          subresource permanently deletes the version. If the object deleted is a delete marker, Amazon S3
    #          sets the response header, <code>x-amz-delete-marker</code>, to true. </p>
    #          <p>If the object you want to delete is in a bucket where the bucket versioning
    #          configuration is MFA Delete enabled, you must include the <code>x-amz-mfa</code> request
    #          header in the DELETE <code>versionId</code> request. Requests that include
    #             <code>x-amz-mfa</code> must use HTTPS. </p>
    #          <p> For more information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html">Using MFA Delete</a>. To see sample
    #          requests that use versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete">Sample
    #             Request</a>. </p>
    #          <p>You can delete objects by explicitly calling DELETE Object or configure its lifecycle
    #             (<a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html">PutBucketLifecycle</a>) to enable Amazon S3 to remove them for you. If you want to block
    #          users or accounts from removing or deleting objects from your bucket, you must deny them
    #          the <code>s3:DeleteObject</code>, <code>s3:DeleteObjectVersion</code>, and
    #             <code>s3:PutLifeCycleConfiguration</code> actions. </p>
    #          <p>The following action is related to <code>DeleteObject</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name of the bucket containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Key name of the object to delete.</p>
    #
    # @option params [String] :mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process
    #            this operation. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     mfa: 'MFA',
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     bypass_governance_retention: false,
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectOutput
    #   resp.data.delete_marker #=> Boolean
    #   resp.data.version_id #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def delete_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the entire tag set from the specified object. For more information about
    #          managing object tags, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html"> Object Tagging</a>.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:DeleteObjectTagging</code> action.</p>
    #          <p>To delete tags of a specific object version, add the <code>versionId</code> query
    #          parameter in the request. You will need permission for the
    #             <code>s3:DeleteObjectVersionTagging</code> action.</p>
    #          <p>The following operations are related to <code>DeleteObjectTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html">PutObjectTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the objects from which to remove the tags. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key that identifies the object in the bucket from which to remove all tags.</p>
    #
    # @option params [String] :version_id
    #   <p>The versionId of the object that the tag-set will be removed from.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeleteObjectTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object_tagging(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectTaggingOutput
    #   resp.data.version_id #=> String
    #
    def delete_object_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObjectTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeleteObjectTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteObjectTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_object_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action enables you to delete multiple objects from a bucket using a single HTTP
    #          request. If you know the object keys that you want to delete, then this action provides a
    #          suitable alternative to sending individual delete requests, reducing per-request
    #          overhead.</p>
    #          <p>The request contains a list of up to 1000 keys that you want to delete. In the XML, you
    #          provide the object key names, and optionally, version IDs if you want to delete a specific
    #          version of the object from a versioning-enabled bucket. For each key, Amazon S3 performs a
    #          delete action and returns the result of that delete, success, or failure, in the response.
    #          Note that if the object specified in the request is not found, Amazon S3 returns the result as
    #          deleted.</p>
    #          <p> The action supports two modes for the response: verbose and quiet. By default, the
    #          action uses verbose mode in which the response includes the result of deletion of each key
    #          in your request. In quiet mode the response includes only keys where the delete action
    #          encountered an error. For a successful deletion, the action does not return any information
    #          about the delete in the response body.</p>
    #          <p>When performing this action on an MFA Delete enabled bucket, that attempts to delete any
    #          versioned objects, you must include an MFA token. If you do not provide one, the entire
    #          request will fail, even if there are non-versioned objects you are trying to delete. If you
    #          provide an invalid token, whether there are versioned keys in the request or not, the
    #          entire Multi-Object Delete request will fail. For information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete"> MFA
    #             Delete</a>.</p>
    #          <p>Finally, the Content-MD5 header is required for all Multi-Object Delete requests. Amazon S3 uses the header value to ensure that your request body has not been altered in
    #          transit.</p>
    #          <p>The following operations are related to <code>DeleteObjects</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectsInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the objects to delete. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Delete] :delete
    #   <p>Container for the request.</p>
    #
    # @option params [String] :mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device. Required to permanently delete a versioned
    #            object if versioning is configured with MFA delete enabled.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Specifies whether you want to delete this object even if it has a Governance-type Object
    #            Lock in place. To use this header, you must have the
    #               <code>s3:BypassGovernanceRetention</code> permission.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value
    #            supplied in the <code>CreateMultipartUpload</code> request.</p>
    #
    # @return [Types::DeleteObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_objects(
    #     bucket: 'Bucket', # required
    #     delete: {
    #       objects: [
    #         {
    #           key: 'Key', # required
    #           version_id: 'VersionId'
    #         }
    #       ], # required
    #       quiet: false
    #     }, # required
    #     mfa: 'MFA',
    #     request_payer: 'requester', # accepts ["requester"]
    #     bypass_governance_retention: false,
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_algorithm: 'CRC32' # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectsOutput
    #   resp.data.deleted #=> Array<DeletedObject>
    #   resp.data.deleted[0] #=> Types::DeletedObject
    #   resp.data.deleted[0].key #=> String
    #   resp.data.deleted[0].version_id #=> String
    #   resp.data.deleted[0].delete_marker #=> Boolean
    #   resp.data.deleted[0].delete_marker_version_id #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.errors #=> Array<Error>
    #   resp.data.errors[0] #=> Types::Error
    #   resp.data.errors[0].key #=> String
    #   resp.data.errors[0].version_id #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def delete_objects(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObjects
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeleteObjects,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_objects,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket. To use this
    #          operation, you must have the <code>s3:PutBucketPublicAccessBlock</code> permission. For
    #          more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>The following operations are related to <code>DeletePublicAccessBlock</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using Amazon S3 Block
    #                   Public Access</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html">GetBucketPolicyStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeletePublicAccessBlockInput}.
    #
    # @option params [String] :bucket
    #   <p>The Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to delete.
    #         </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::DeletePublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_access_block(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePublicAccessBlockOutput
    #
    def delete_public_access_block(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePublicAccessBlockInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePublicAccessBlockInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePublicAccessBlock
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
        data_parser: Parsers::DeletePublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::DeletePublicAccessBlock,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :delete_public_access_block,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the GET action uses the <code>accelerate</code> subresource to
    #          return the Transfer Acceleration state of a bucket, which is either <code>Enabled</code> or
    #             <code>Suspended</code>. Amazon S3 Transfer Acceleration is a bucket-level feature that
    #          enables you to perform faster data transfers to and from Amazon S3.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:GetAccelerateConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>You set the Transfer Acceleration state of an existing bucket to <code>Enabled</code> or
    #             <code>Suspended</code> by using the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html">PutBucketAccelerateConfiguration</a> operation. </p>
    #          <p>A GET <code>accelerate</code> request does not return a state value for a bucket that
    #          has no transfer acceleration state. A bucket has no Transfer Acceleration state if a state
    #          has never been set on the bucket. </p>
    #          <p>For more information about transfer acceleration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer Acceleration</a> in
    #          the Amazon S3 User Guide.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html">PutBucketAccelerateConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketAccelerateConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which the accelerate configuration is retrieved.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketAccelerateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_accelerate_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketAccelerateConfigurationOutput
    #   resp.data.status #=> String, one of ["Enabled", "Suspended"]
    #
    def get_bucket_accelerate_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketAccelerateConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketAccelerateConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketAccelerateConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketAccelerateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketAccelerateConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_accelerate_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the <code>GET</code> action uses the <code>acl</code> subresource
    #          to return the access control list (ACL) of a bucket. To use <code>GET</code> to return the
    #          ACL of the bucket, you must have <code>READ_ACP</code> access to the bucket. If
    #             <code>READ_ACP</code> permission is granted to the anonymous user, you can return the
    #          ACL of the bucket without using an authorization header.</p>
    #          <p>To use this API against an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <note>
    #             <p>If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
    #             requests to read ACLs are still supported and return the
    #                <code>bucket-owner-full-control</code> ACL with the owner being the account that
    #             created the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling object
    #                ownership and disabling ACLs</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketAclInput}.
    #
    # @option params [String] :bucket
    #   <p>Specifies the S3 bucket whose ACL is being requested.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketAclOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_acl(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketAclOutput
    #   resp.data.owner #=> Types::Owner
    #   resp.data.owner.display_name #=> String
    #   resp.data.owner.id #=> String
    #   resp.data.grants #=> Array<Grant>
    #   resp.data.grants[0] #=> Types::Grant
    #   resp.data.grants[0].grantee #=> Types::Grantee
    #   resp.data.grants[0].grantee.display_name #=> String
    #   resp.data.grants[0].grantee.email_address #=> String
    #   resp.data.grants[0].grantee.id #=> String
    #   resp.data.grants[0].grantee.uri #=> String
    #   resp.data.grants[0].grantee.type #=> String, one of ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #   resp.data.grants[0].permission #=> String, one of ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #
    def get_bucket_acl(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketAclInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketAclInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketAcl
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketAcl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketAcl,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_acl,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the GET action returns an analytics configuration (identified by
    #          the analytics configuration ID) from the bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:GetAnalyticsConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources"> Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p>For information about Amazon S3 analytics feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon S3 Analytics – Storage Class
    #             Analysis</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html">DeleteBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html">ListBucketAnalyticsConfigurations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html">PutBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketAnalyticsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket from which an analytics configuration is retrieved.</p>
    #
    # @option params [String] :id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketAnalyticsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketAnalyticsConfigurationOutput
    #   resp.data.analytics_configuration #=> Types::AnalyticsConfiguration
    #   resp.data.analytics_configuration.id #=> String
    #   resp.data.analytics_configuration.filter #=> Types::AnalyticsFilter, one of [Prefix, Tag, And]
    #   resp.data.analytics_configuration.filter.prefix #=> String
    #   resp.data.analytics_configuration.filter.tag #=> Types::Tag
    #   resp.data.analytics_configuration.filter.tag.key #=> String
    #   resp.data.analytics_configuration.filter.tag.value #=> String
    #   resp.data.analytics_configuration.filter.and #=> Types::AnalyticsAndOperator
    #   resp.data.analytics_configuration.filter.and.prefix #=> String
    #   resp.data.analytics_configuration.filter.and.tags #=> Array<Tag>
    #   resp.data.analytics_configuration.storage_class_analysis #=> Types::StorageClassAnalysis
    #   resp.data.analytics_configuration.storage_class_analysis.data_export #=> Types::StorageClassAnalysisDataExport
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.output_schema_version #=> String, one of ["V_1"]
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination #=> Types::AnalyticsExportDestination
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination #=> Types::AnalyticsS3BucketDestination
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.format #=> String, one of ["CSV"]
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.bucket_account_id #=> String
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.bucket #=> String
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.prefix #=> String
    #
    def get_bucket_analytics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketAnalyticsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketAnalyticsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketAnalyticsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketAnalyticsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketAnalyticsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_analytics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Cross-Origin Resource Sharing (CORS) configuration information set for the
    #          bucket.</p>
    #          <p> To use this operation, you must have permission to perform the
    #             <code>s3:GetBucketCORS</code> action. By default, the bucket owner has this permission
    #          and can grant it to others.</p>
    #          <p>To use this API against an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p> For more information about CORS, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html"> Enabling Cross-Origin Resource
    #          Sharing</a>.</p>
    #          <p>The following operations are related to <code>GetBucketCors</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketCors.html">PutBucketCors</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html">DeleteBucketCors</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketCorsInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which to get the cors configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketCorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_cors(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketCorsOutput
    #   resp.data.cors_rules #=> Array<CORSRule>
    #   resp.data.cors_rules[0] #=> Types::CORSRule
    #   resp.data.cors_rules[0].id #=> String
    #   resp.data.cors_rules[0].allowed_headers #=> Array<String>
    #   resp.data.cors_rules[0].allowed_headers[0] #=> String
    #   resp.data.cors_rules[0].allowed_methods #=> Array<String>
    #   resp.data.cors_rules[0].allowed_methods[0] #=> String
    #   resp.data.cors_rules[0].allowed_origins #=> Array<String>
    #   resp.data.cors_rules[0].allowed_origins[0] #=> String
    #   resp.data.cors_rules[0].expose_headers #=> Array<String>
    #   resp.data.cors_rules[0].expose_headers[0] #=> String
    #   resp.data.cors_rules[0].max_age_seconds #=> Integer
    #
    def get_bucket_cors(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketCorsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketCorsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketCors
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketCors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketCors,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_cors,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the default encryption configuration for an Amazon S3 bucket. By default, all buckets have a default encryption configuration that
    #          uses server-side encryption with Amazon S3 managed keys (SSE-S3). For information
    #          about the bucket default encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket
    #             Default Encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:GetEncryptionConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>The following operations are related to <code>GetBucketEncryption</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html">PutBucketEncryption</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html">DeleteBucketEncryption</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketEncryptionInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket from which the server-side encryption configuration is
    #            retrieved.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketEncryptionOutput
    #   resp.data.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.server_side_encryption_configuration.rules #=> Array<ServerSideEncryptionRule>
    #   resp.data.server_side_encryption_configuration.rules[0] #=> Types::ServerSideEncryptionRule
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default #=> Types::ServerSideEncryptionByDefault
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.sse_algorithm #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.kms_master_key_id #=> String
    #   resp.data.server_side_encryption_configuration.rules[0].bucket_key_enabled #=> Boolean
    #
    def get_bucket_encryption(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketEncryptionInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketEncryptionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketEncryption
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketEncryption,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_encryption,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the S3 Intelligent-Tiering configuration from the specified bucket.</p>
    #          <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without performance impact or operational overhead. S3 Intelligent-Tiering delivers automatic cost savings in three low latency and high throughput access tiers. To get the lowest storage cost on data that can be accessed in minutes to hours, you can choose to activate additional archiving capabilities.</p>
    #          <p>The S3 Intelligent-Tiering storage class is  the ideal storage class for data with unknown, changing, or unpredictable access patterns, independent of object size or retention period. If the size of an object is less than 128 KB, it is not monitored and not eligible for auto-tiering. Smaller objects can be stored, but they are always charged at the Frequent Access tier rates in the S3 Intelligent-Tiering storage class.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for automatically optimizing frequently and infrequently accessed objects</a>.</p>
    #          <p>Operations related to <code>GetBucketIntelligentTieringConfiguration</code> include: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html">DeleteBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html">PutBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html">ListBucketIntelligentTieringConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketIntelligentTieringConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    # @return [Types::GetBucketIntelligentTieringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketIntelligentTieringConfigurationOutput
    #   resp.data.intelligent_tiering_configuration #=> Types::IntelligentTieringConfiguration
    #   resp.data.intelligent_tiering_configuration.id #=> String
    #   resp.data.intelligent_tiering_configuration.filter #=> Types::IntelligentTieringFilter
    #   resp.data.intelligent_tiering_configuration.filter.prefix #=> String
    #   resp.data.intelligent_tiering_configuration.filter.tag #=> Types::Tag
    #   resp.data.intelligent_tiering_configuration.filter.tag.key #=> String
    #   resp.data.intelligent_tiering_configuration.filter.tag.value #=> String
    #   resp.data.intelligent_tiering_configuration.filter.and #=> Types::IntelligentTieringAndOperator
    #   resp.data.intelligent_tiering_configuration.filter.and.prefix #=> String
    #   resp.data.intelligent_tiering_configuration.filter.and.tags #=> Array<Tag>
    #   resp.data.intelligent_tiering_configuration.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.intelligent_tiering_configuration.tierings #=> Array<Tiering>
    #   resp.data.intelligent_tiering_configuration.tierings[0] #=> Types::Tiering
    #   resp.data.intelligent_tiering_configuration.tierings[0].days #=> Integer
    #   resp.data.intelligent_tiering_configuration.tierings[0].access_tier #=> String, one of ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #
    def get_bucket_intelligent_tiering_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketIntelligentTieringConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketIntelligentTieringConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketIntelligentTieringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketIntelligentTieringConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_intelligent_tiering_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an inventory configuration (identified by the inventory configuration ID) from
    #          the bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:GetInventoryConfiguration</code> action. The bucket owner has this permission
    #          by default and can grant this permission to others. For more information about permissions,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about the Amazon S3 inventory feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon S3 Inventory</a>.</p>
    #          <p>The following operations are related to
    #          <code>GetBucketInventoryConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html">DeleteBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html">ListBucketInventoryConfigurations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html">PutBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketInventoryConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the inventory configuration to retrieve.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketInventoryConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_inventory_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketInventoryConfigurationOutput
    #   resp.data.inventory_configuration #=> Types::InventoryConfiguration
    #   resp.data.inventory_configuration.destination #=> Types::InventoryDestination
    #   resp.data.inventory_configuration.destination.s3_bucket_destination #=> Types::InventoryS3BucketDestination
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.account_id #=> String
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.bucket #=> String
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.format #=> String, one of ["CSV", "ORC", "Parquet"]
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.prefix #=> String
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.encryption #=> Types::InventoryEncryption
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.encryption.sses3 #=> Types::SSES3
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.encryption.ssekms #=> Types::SSEKMS
    #   resp.data.inventory_configuration.destination.s3_bucket_destination.encryption.ssekms.key_id #=> String
    #   resp.data.inventory_configuration.is_enabled #=> Boolean
    #   resp.data.inventory_configuration.filter #=> Types::InventoryFilter
    #   resp.data.inventory_configuration.filter.prefix #=> String
    #   resp.data.inventory_configuration.id #=> String
    #   resp.data.inventory_configuration.included_object_versions #=> String, one of ["All", "Current"]
    #   resp.data.inventory_configuration.optional_fields #=> Array<String>
    #   resp.data.inventory_configuration.optional_fields[0] #=> String, one of ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm"]
    #   resp.data.inventory_configuration.schedule #=> Types::InventorySchedule
    #   resp.data.inventory_configuration.schedule.frequency #=> String, one of ["Daily", "Weekly"]
    #
    def get_bucket_inventory_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketInventoryConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketInventoryConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketInventoryConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketInventoryConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketInventoryConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_inventory_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>Bucket lifecycle configuration now supports specifying a lifecycle rule using an
    #             object key name prefix, one or more object tags, or a combination of both. Accordingly,
    #             this section describes the latest API. The response describes the new filter element
    #             that you can use to specify a filter to select a subset of objects to which the rule
    #             applies. If you are using a previous version of the lifecycle configuration, it still
    #             works. For the earlier action, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html">GetBucketLifecycle</a>.</p>
    #          </note>
    #          <p>Returns the lifecycle configuration information set on the bucket. For information about
    #          lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle
    #          Management</a>.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:GetLifecycleConfiguration</code> action. The bucket owner has this permission,
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>
    #             <code>GetBucketLifecycleConfiguration</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchLifecycleConfiguration</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The lifecycle configuration does not exist.</p>
    #                   </li>
    #                   <li>
    #                      <p>HTTP Status Code: 404 Not Found</p>
    #                   </li>
    #                   <li>
    #                      <p>SOAP Fault Code Prefix: Client</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to
    #          <code>GetBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycle.html">GetBucketLifecycle</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html">PutBucketLifecycle</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html">DeleteBucketLifecycle</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketLifecycleConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the lifecycle information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_lifecycle_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketLifecycleConfigurationOutput
    #   resp.data.rules #=> Array<LifecycleRule>
    #   resp.data.rules[0] #=> Types::LifecycleRule
    #   resp.data.rules[0].expiration #=> Types::LifecycleExpiration
    #   resp.data.rules[0].expiration.date #=> Time
    #   resp.data.rules[0].expiration.days #=> Integer
    #   resp.data.rules[0].expiration.expired_object_delete_marker #=> Boolean
    #   resp.data.rules[0].id #=> String
    #   resp.data.rules[0].prefix #=> String
    #   resp.data.rules[0].filter #=> Types::LifecycleRuleFilter, one of [Prefix, Tag, ObjectSizeGreaterThan, ObjectSizeLessThan, And]
    #   resp.data.rules[0].filter.prefix #=> String
    #   resp.data.rules[0].filter.tag #=> Types::Tag
    #   resp.data.rules[0].filter.tag.key #=> String
    #   resp.data.rules[0].filter.tag.value #=> String
    #   resp.data.rules[0].filter.object_size_greater_than #=> Integer
    #   resp.data.rules[0].filter.object_size_less_than #=> Integer
    #   resp.data.rules[0].filter.and #=> Types::LifecycleRuleAndOperator
    #   resp.data.rules[0].filter.and.prefix #=> String
    #   resp.data.rules[0].filter.and.tags #=> Array<Tag>
    #   resp.data.rules[0].filter.and.object_size_greater_than #=> Integer
    #   resp.data.rules[0].filter.and.object_size_less_than #=> Integer
    #   resp.data.rules[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.rules[0].transitions #=> Array<Transition>
    #   resp.data.rules[0].transitions[0] #=> Types::Transition
    #   resp.data.rules[0].transitions[0].date #=> Time
    #   resp.data.rules[0].transitions[0].days #=> Integer
    #   resp.data.rules[0].transitions[0].storage_class #=> String, one of ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #   resp.data.rules[0].noncurrent_version_transitions #=> Array<NoncurrentVersionTransition>
    #   resp.data.rules[0].noncurrent_version_transitions[0] #=> Types::NoncurrentVersionTransition
    #   resp.data.rules[0].noncurrent_version_transitions[0].noncurrent_days #=> Integer
    #   resp.data.rules[0].noncurrent_version_transitions[0].storage_class #=> String, one of ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #   resp.data.rules[0].noncurrent_version_transitions[0].newer_noncurrent_versions #=> Integer
    #   resp.data.rules[0].noncurrent_version_expiration #=> Types::NoncurrentVersionExpiration
    #   resp.data.rules[0].noncurrent_version_expiration.noncurrent_days #=> Integer
    #   resp.data.rules[0].noncurrent_version_expiration.newer_noncurrent_versions #=> Integer
    #   resp.data.rules[0].abort_incomplete_multipart_upload #=> Types::AbortIncompleteMultipartUpload
    #   resp.data.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
    #
    def get_bucket_lifecycle_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketLifecycleConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketLifecycleConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketLifecycleConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketLifecycleConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_lifecycle_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Region the bucket resides in. You set the bucket's Region using the
    #             <code>LocationConstraint</code> request parameter in a <code>CreateBucket</code>
    #          request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>.</p>
    #          <p>To use this implementation of the operation, you must be the bucket owner.</p>
    #          <p>To use this API against an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <note>
    #             <p>For requests made using Amazon Web Services Signature Version 4 (SigV4), we recommend that you use
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html">HeadBucket</a> to return the bucket Region instead of GetBucketLocation.</p>
    #          </note>
    #          <p>The following operations are related to <code>GetBucketLocation</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketLocationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the location.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_location(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketLocationOutput
    #   resp.data.location_constraint #=> String, one of ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #
    def get_bucket_location(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketLocationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketLocationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketLocation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketLocation,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_location,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the logging status of a bucket and the permissions users have to view and modify
    #          that status.</p>
    #          <p>The following operations are related to <code>GetBucketLogging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html">PutBucketLogging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketLoggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which to get the logging information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_logging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketLoggingOutput
    #   resp.data.logging_enabled #=> Types::LoggingEnabled
    #   resp.data.logging_enabled.target_bucket #=> String
    #   resp.data.logging_enabled.target_grants #=> Array<TargetGrant>
    #   resp.data.logging_enabled.target_grants[0] #=> Types::TargetGrant
    #   resp.data.logging_enabled.target_grants[0].grantee #=> Types::Grantee
    #   resp.data.logging_enabled.target_grants[0].grantee.display_name #=> String
    #   resp.data.logging_enabled.target_grants[0].grantee.email_address #=> String
    #   resp.data.logging_enabled.target_grants[0].grantee.id #=> String
    #   resp.data.logging_enabled.target_grants[0].grantee.uri #=> String
    #   resp.data.logging_enabled.target_grants[0].grantee.type #=> String, one of ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #   resp.data.logging_enabled.target_grants[0].permission #=> String, one of ["FULL_CONTROL", "READ", "WRITE"]
    #   resp.data.logging_enabled.target_prefix #=> String
    #
    def get_bucket_logging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketLoggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketLoggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketLogging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketLogging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_logging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a metrics configuration (specified by the metrics configuration ID) from the
    #          bucket. Note that this doesn't include the daily storage metrics.</p>
    #          <p> To use this operation, you must have permissions to perform the
    #             <code>s3:GetMetricsConfiguration</code> action. The bucket owner has this permission by
    #          default. The bucket owner can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p> For information about CloudWatch request metrics for Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
    #             Metrics with Amazon CloudWatch</a>.</p>
    #          <p>The following operations are related to
    #          <code>GetBucketMetricsConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html">DeleteBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html">ListBucketMetricsConfigurations</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring Metrics with Amazon CloudWatch</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketMetricsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the metrics configuration to retrieve.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketMetricsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketMetricsConfigurationOutput
    #   resp.data.metrics_configuration #=> Types::MetricsConfiguration
    #   resp.data.metrics_configuration.id #=> String
    #   resp.data.metrics_configuration.filter #=> Types::MetricsFilter, one of [Prefix, Tag, AccessPointArn, And]
    #   resp.data.metrics_configuration.filter.prefix #=> String
    #   resp.data.metrics_configuration.filter.tag #=> Types::Tag
    #   resp.data.metrics_configuration.filter.tag.key #=> String
    #   resp.data.metrics_configuration.filter.tag.value #=> String
    #   resp.data.metrics_configuration.filter.access_point_arn #=> String
    #   resp.data.metrics_configuration.filter.and #=> Types::MetricsAndOperator
    #   resp.data.metrics_configuration.filter.and.prefix #=> String
    #   resp.data.metrics_configuration.filter.and.tags #=> Array<Tag>
    #   resp.data.metrics_configuration.filter.and.access_point_arn #=> String
    #
    def get_bucket_metrics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketMetricsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketMetricsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketMetricsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketMetricsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketMetricsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_metrics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the notification configuration of a bucket.</p>
    #          <p>If notifications are not enabled on the bucket, the action returns an empty
    #             <code>NotificationConfiguration</code> element.</p>
    #          <p>By default, you must be the bucket owner to read the notification configuration of a
    #          bucket. However, the bucket owner can use a bucket policy to grant permission to other
    #          users to read this configuration with the <code>s3:GetBucketNotification</code>
    #          permission.</p>
    #          <p>To use this API against an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>For more information about setting and reading the notification configuration on a
    #          bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Setting Up Notification of Bucket Events</a>. For more information about bucket
    #          policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies</a>.</p>
    #          <p>The following action is related to <code>GetBucketNotification</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotification.html">PutBucketNotification</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketNotificationConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the notification configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_notification_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketNotificationConfigurationOutput
    #   resp.data.topic_configurations #=> Array<TopicConfiguration>
    #   resp.data.topic_configurations[0] #=> Types::TopicConfiguration
    #   resp.data.topic_configurations[0].id #=> String
    #   resp.data.topic_configurations[0].topic_arn #=> String
    #   resp.data.topic_configurations[0].events #=> Array<String>
    #   resp.data.topic_configurations[0].events[0] #=> String, one of ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated", "s3:ObjectRestore:*", "s3:ObjectRestore:Post", "s3:ObjectRestore:Completed", "s3:Replication:*", "s3:Replication:OperationFailedReplication", "s3:Replication:OperationNotTracked", "s3:Replication:OperationMissedThreshold", "s3:Replication:OperationReplicatedAfterThreshold", "s3:ObjectRestore:Delete", "s3:LifecycleTransition", "s3:IntelligentTiering", "s3:ObjectAcl:Put", "s3:LifecycleExpiration:*", "s3:LifecycleExpiration:Delete", "s3:LifecycleExpiration:DeleteMarkerCreated", "s3:ObjectTagging:*", "s3:ObjectTagging:Put", "s3:ObjectTagging:Delete"]
    #   resp.data.topic_configurations[0].filter #=> Types::NotificationConfigurationFilter
    #   resp.data.topic_configurations[0].filter.key #=> Types::S3KeyFilter
    #   resp.data.topic_configurations[0].filter.key.filter_rules #=> Array<FilterRule>
    #   resp.data.topic_configurations[0].filter.key.filter_rules[0] #=> Types::FilterRule
    #   resp.data.topic_configurations[0].filter.key.filter_rules[0].name #=> String, one of ["prefix", "suffix"]
    #   resp.data.topic_configurations[0].filter.key.filter_rules[0].value #=> String
    #   resp.data.queue_configurations #=> Array<QueueConfiguration>
    #   resp.data.queue_configurations[0] #=> Types::QueueConfiguration
    #   resp.data.queue_configurations[0].id #=> String
    #   resp.data.queue_configurations[0].queue_arn #=> String
    #   resp.data.queue_configurations[0].events #=> Array<String>
    #   resp.data.queue_configurations[0].filter #=> Types::NotificationConfigurationFilter
    #   resp.data.lambda_function_configurations #=> Array<LambdaFunctionConfiguration>
    #   resp.data.lambda_function_configurations[0] #=> Types::LambdaFunctionConfiguration
    #   resp.data.lambda_function_configurations[0].id #=> String
    #   resp.data.lambda_function_configurations[0].lambda_function_arn #=> String
    #   resp.data.lambda_function_configurations[0].events #=> Array<String>
    #   resp.data.lambda_function_configurations[0].filter #=> Types::NotificationConfigurationFilter
    #   resp.data.event_bridge_configuration #=> Types::EventBridgeConfiguration
    #
    def get_bucket_notification_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketNotificationConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketNotificationConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketNotificationConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketNotificationConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_notification_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves <code>OwnershipControls</code> for an Amazon S3 bucket. To use this operation, you
    #          must have the <code>s3:GetBucketOwnershipControls</code> permission. For more information
    #          about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html">Specifying permissions in a
    #             policy</a>. </p>
    #          <p>For information about Amazon S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Using Object
    #             Ownership</a>. </p>
    #          <p>The following operations are related to <code>GetBucketOwnershipControls</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>PutBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketOwnershipControlsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to retrieve.
    #         </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketOwnershipControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_ownership_controls(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketOwnershipControlsOutput
    #   resp.data.ownership_controls #=> Types::OwnershipControls
    #   resp.data.ownership_controls.rules #=> Array<OwnershipControlsRule>
    #   resp.data.ownership_controls.rules[0] #=> Types::OwnershipControlsRule
    #   resp.data.ownership_controls.rules[0].object_ownership #=> String, one of ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #
    def get_bucket_ownership_controls(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketOwnershipControlsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketOwnershipControlsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketOwnershipControls
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketOwnershipControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketOwnershipControls,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_ownership_controls,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the policy of a specified bucket. If you are using an identity other than the
    #          root user of the Amazon Web Services account that owns the bucket, the calling identity must have the
    #             <code>GetBucketPolicy</code> permissions on the specified bucket and belong to the
    #          bucket owner's account in order to use this operation.</p>
    #          <p>If you don't have <code>GetBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error.</p>
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this operation, even if the policy explicitly denies the root user the
    #             ability to perform this action.</p>
    #          </important>
    #          <p>To use this API against an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #          <p>The following action is related to <code>GetBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketPolicyInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which to get the bucket policy.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_policy(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_bucket_policy(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketPolicyInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketPolicyInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketPolicy,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_policy,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public.
    #          In order to use this operation, you must have the <code>s3:GetBucketPolicyStatus</code>
    #          permission. For more information about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>.</p>
    #          <p> For more information about when Amazon S3 considers a bucket public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a>. </p>
    #          <p>The following operations are related to <code>GetBucketPolicyStatus</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using Amazon S3 Block
    #                   Public Access</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketPolicyStatusInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose policy status you want to retrieve.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketPolicyStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_policy_status(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketPolicyStatusOutput
    #   resp.data.policy_status #=> Types::PolicyStatus
    #   resp.data.policy_status.is_public #=> Boolean
    #
    def get_bucket_policy_status(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketPolicyStatusInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketPolicyStatusInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketPolicyStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketPolicyStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketPolicyStatus,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_policy_status,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the replication configuration of a bucket.</p>
    #          <note>
    #             <p> It can take a while to propagate the put or delete a replication configuration to
    #             all Amazon S3 systems. Therefore, a get request soon after put or delete can return a wrong
    #             result. </p>
    #          </note>
    #          <p> For information about replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>This action requires permissions for the <code>s3:GetReplicationConfiguration</code>
    #          action. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #          <p>If you include the <code>Filter</code> element in a replication configuration, you must
    #          also include the <code>DeleteMarkerReplication</code> and <code>Priority</code> elements.
    #          The response also returns those elements.</p>
    #          <p>For information about <code>GetBucketReplication</code> errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList">List of
    #             replication-related error codes</a>
    #          </p>
    #          <p>The following operations are related to <code>GetBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html">PutBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html">DeleteBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketReplicationInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which to get the replication information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_replication(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketReplicationOutput
    #   resp.data.replication_configuration #=> Types::ReplicationConfiguration
    #   resp.data.replication_configuration.role #=> String
    #   resp.data.replication_configuration.rules #=> Array<ReplicationRule>
    #   resp.data.replication_configuration.rules[0] #=> Types::ReplicationRule
    #   resp.data.replication_configuration.rules[0].id #=> String
    #   resp.data.replication_configuration.rules[0].priority #=> Integer
    #   resp.data.replication_configuration.rules[0].prefix #=> String
    #   resp.data.replication_configuration.rules[0].filter #=> Types::ReplicationRuleFilter, one of [Prefix, Tag, And]
    #   resp.data.replication_configuration.rules[0].filter.prefix #=> String
    #   resp.data.replication_configuration.rules[0].filter.tag #=> Types::Tag
    #   resp.data.replication_configuration.rules[0].filter.tag.key #=> String
    #   resp.data.replication_configuration.rules[0].filter.tag.value #=> String
    #   resp.data.replication_configuration.rules[0].filter.and #=> Types::ReplicationRuleAndOperator
    #   resp.data.replication_configuration.rules[0].filter.and.prefix #=> String
    #   resp.data.replication_configuration.rules[0].filter.and.tags #=> Array<Tag>
    #   resp.data.replication_configuration.rules[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].source_selection_criteria #=> Types::SourceSelectionCriteria
    #   resp.data.replication_configuration.rules[0].source_selection_criteria.sse_kms_encrypted_objects #=> Types::SseKmsEncryptedObjects
    #   resp.data.replication_configuration.rules[0].source_selection_criteria.sse_kms_encrypted_objects.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].source_selection_criteria.replica_modifications #=> Types::ReplicaModifications
    #   resp.data.replication_configuration.rules[0].source_selection_criteria.replica_modifications.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].existing_object_replication #=> Types::ExistingObjectReplication
    #   resp.data.replication_configuration.rules[0].existing_object_replication.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].destination #=> Types::Destination
    #   resp.data.replication_configuration.rules[0].destination.bucket #=> String
    #   resp.data.replication_configuration.rules[0].destination.account #=> String
    #   resp.data.replication_configuration.rules[0].destination.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.replication_configuration.rules[0].destination.access_control_translation #=> Types::AccessControlTranslation
    #   resp.data.replication_configuration.rules[0].destination.access_control_translation.owner #=> String, one of ["Destination"]
    #   resp.data.replication_configuration.rules[0].destination.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.replication_configuration.rules[0].destination.encryption_configuration.replica_kms_key_id #=> String
    #   resp.data.replication_configuration.rules[0].destination.replication_time #=> Types::ReplicationTime
    #   resp.data.replication_configuration.rules[0].destination.replication_time.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].destination.replication_time.time #=> Types::ReplicationTimeValue
    #   resp.data.replication_configuration.rules[0].destination.replication_time.time.minutes #=> Integer
    #   resp.data.replication_configuration.rules[0].destination.metrics #=> Types::Metrics
    #   resp.data.replication_configuration.rules[0].destination.metrics.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.replication_configuration.rules[0].destination.metrics.event_threshold #=> Types::ReplicationTimeValue
    #   resp.data.replication_configuration.rules[0].delete_marker_replication #=> Types::DeleteMarkerReplication
    #   resp.data.replication_configuration.rules[0].delete_marker_replication.status #=> String, one of ["Enabled", "Disabled"]
    #
    def get_bucket_replication(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketReplicationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketReplicationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketReplication
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketReplication,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_replication,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the request payment configuration of a bucket. To use this version of the
    #          operation, you must be the bucket owner. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester Pays
    #             Buckets</a>.</p>
    #          <p>The following operations are related to <code>GetBucketRequestPayment</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketRequestPaymentInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the payment request configuration</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketRequestPaymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_request_payment(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketRequestPaymentOutput
    #   resp.data.payer #=> String, one of ["Requester", "BucketOwner"]
    #
    def get_bucket_request_payment(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketRequestPaymentInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketRequestPaymentInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketRequestPayment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketRequestPayment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketRequestPayment,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_request_payment,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the tag set associated with the bucket.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:GetBucketTagging</code> action. By default, the bucket owner has this
    #          permission and can grant this permission to others.</p>
    #          <p>
    #             <code>GetBucketTagging</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchTagSet</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: There is no tag set associated with the bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to <code>GetBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the tagging information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_tagging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketTaggingOutput
    #   resp.data.tag_set #=> Array<Tag>
    #   resp.data.tag_set[0] #=> Types::Tag
    #   resp.data.tag_set[0].key #=> String
    #   resp.data.tag_set[0].value #=> String
    #
    def get_bucket_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the versioning state of a bucket.</p>
    #          <p>To retrieve the versioning state of a bucket, you must be the bucket owner.</p>
    #          <p>This implementation also returns the MFA Delete status of the versioning state. If the
    #          MFA Delete status is <code>enabled</code>, the bucket owner must use an authentication
    #          device to change the versioning state of the bucket.</p>
    #          <p>The following operations are related to <code>GetBucketVersioning</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketVersioningInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to get the versioning information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketVersioningOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_versioning(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketVersioningOutput
    #   resp.data.status #=> String, one of ["Enabled", "Suspended"]
    #   resp.data.mfa_delete #=> String, one of ["Enabled", "Disabled"]
    #
    def get_bucket_versioning(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketVersioningInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketVersioningInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketVersioning
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketVersioning
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketVersioning,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_versioning,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the website configuration for a bucket. To host website on Amazon S3, you can
    #          configure a bucket as website by adding a website configuration. For more information about
    #          hosting websites, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a>. </p>
    #          <p>This GET action requires the <code>S3:GetBucketWebsite</code> permission. By default,
    #          only the bucket owner can read the bucket website configuration. However, bucket owners can
    #          allow other users to read the website configuration by writing a bucket policy granting
    #          them the <code>S3:GetBucketWebsite</code> permission.</p>
    #          <p>The following operations are related to <code>DeleteBucketWebsite</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketWebsite.html">DeleteBucketWebsite</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html">PutBucketWebsite</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetBucketWebsiteInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name for which to get the website configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetBucketWebsiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_website(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketWebsiteOutput
    #   resp.data.redirect_all_requests_to #=> Types::RedirectAllRequestsTo
    #   resp.data.redirect_all_requests_to.host_name #=> String
    #   resp.data.redirect_all_requests_to.protocol #=> String, one of ["http", "https"]
    #   resp.data.index_document #=> Types::IndexDocument
    #   resp.data.index_document.suffix #=> String
    #   resp.data.error_document #=> Types::ErrorDocument
    #   resp.data.error_document.key #=> String
    #   resp.data.routing_rules #=> Array<RoutingRule>
    #   resp.data.routing_rules[0] #=> Types::RoutingRule
    #   resp.data.routing_rules[0].condition #=> Types::Condition
    #   resp.data.routing_rules[0].condition.http_error_code_returned_equals #=> String
    #   resp.data.routing_rules[0].condition.key_prefix_equals #=> String
    #   resp.data.routing_rules[0].redirect #=> Types::Redirect
    #   resp.data.routing_rules[0].redirect.host_name #=> String
    #   resp.data.routing_rules[0].redirect.http_redirect_code #=> String
    #   resp.data.routing_rules[0].redirect.protocol #=> String, one of ["http", "https"]
    #   resp.data.routing_rules[0].redirect.replace_key_prefix_with #=> String
    #   resp.data.routing_rules[0].redirect.replace_key_with #=> String
    #
    def get_bucket_website(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketWebsiteInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketWebsiteInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketWebsite
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetBucketWebsite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetBucketWebsite,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_bucket_website,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves objects from Amazon S3. To use <code>GET</code>, you must have <code>READ</code>
    #          access to the object. If you grant <code>READ</code> access to the anonymous user, you can
    #          return the object without using an authorization header.</p>
    #          <p>An Amazon S3 bucket has no directory hierarchy such as you would find in a typical computer
    #          file system. You can, however, create a logical hierarchy by using object key names that
    #          imply a folder structure. For example, instead of naming an object <code>sample.jpg</code>,
    #          you can name it <code>photos/2006/February/sample.jpg</code>.</p>
    #          <p>To get an object from such a logical hierarchy, specify the full key name for the object
    #          in the <code>GET</code> operation. For a virtual hosted-style request example, if you have
    #          the object <code>photos/2006/February/sample.jpg</code>, specify the resource as
    #             <code>/photos/2006/February/sample.jpg</code>. For a path-style request example, if you
    #          have the object <code>photos/2006/February/sample.jpg</code> in the bucket named
    #             <code>examplebucket</code>, specify the resource as
    #             <code>/examplebucket/photos/2006/February/sample.jpg</code>. For more information about
    #          request types, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket">HTTP Host
    #             Header Bucket Specification</a>.</p>
    #          <p>For more information about returning the ACL of an object, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html">GetObjectAcl</a>.</p>
    #          <p>If the object you are retrieving is stored in the S3 Glacier or
    #          S3 Glacier Deep Archive storage class, or S3 Intelligent-Tiering Archive or
    #          S3 Intelligent-Tiering Deep Archive tiers, before you can retrieve the object you must first restore a
    #          copy using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>. Otherwise, this action returns an
    #             <code>InvalidObjectState</code> error. For information about restoring archived objects,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring
    #             Archived Objects</a>.</p>
    #          <p>Encryption request headers, like <code>x-amz-server-side-encryption</code>, should not
    #          be sent for GET requests if your object uses server-side encryption with KMS keys
    #          (SSE-KMS) or server-side encryption with Amazon S3–managed encryption keys (SSE-S3). If your
    #          object does use these types of keys, you’ll get an HTTP 400 BadRequest error.</p>
    #          <p>If you encrypt an object by using server-side encryption with customer-provided
    #          encryption keys (SSE-C) when you store the object in Amazon S3, then when you GET the object,
    #          you must use the following headers:</p>
    #          <ul>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-algorithm</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key-MD5</p>
    #             </li>
    #          </ul>
    #          <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #             (Using Customer-Provided Encryption Keys)</a>.</p>
    #          <p>Assuming you have the relevant permission to read object tags, the response also returns
    #          the <code>x-amz-tagging-count</code> header that provides the count of number of tags
    #          associated with the object. You can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a> to retrieve
    #          the tag set associated with an object.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>You need the relevant read object (or version) permission for this operation. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>. If the object you request does not exist, the error Amazon S3 returns depends
    #          on whether you also have the <code>s3:ListBucket</code> permission.</p>
    #          <ul>
    #             <li>
    #                <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3 will
    #                return an HTTP status code 404 ("no such key") error.</p>
    #             </li>
    #             <li>
    #                <p>If you don’t have the <code>s3:ListBucket</code> permission, Amazon S3 will return an
    #                HTTP status code 403 ("access denied") error.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Versioning</b>
    #          </p>
    #          <p>By default, the GET action returns the current version of an object. To return a
    #          different version, use the <code>versionId</code> subresource.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p> If you supply a <code>versionId</code>, you need the
    #                      <code>s3:GetObjectVersion</code> permission to access a specific version of an
    #                   object. If you request a specific version, you do not need to have the
    #                      <code>s3:GetObject</code> permission. If you request the current version
    #                   without a specific version ID, only <code>s3:GetObject</code> permission is
    #                   required. <code>s3:GetObjectVersion</code> permission won't be required.</p>
    #                </li>
    #                <li>
    #                   <p>If the current version of the object is a delete marker, Amazon S3 behaves as if the
    #                   object was deleted and includes <code>x-amz-delete-marker: true</code> in the
    #                   response.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html">PutBucketVersioning</a>. </p>
    #          <p>
    #             <b>Overriding Response Header Values</b>
    #          </p>
    #          <p>There are times when you want to override certain response header values in a GET
    #          response. For example, you might override the <code>Content-Disposition</code> response
    #          header value in your GET request.</p>
    #          <p>You can override values for a set of response headers using the following query
    #          parameters. These response header values are sent only on a successful request, that is,
    #          when status code 200 OK is returned. The set of headers you can override using these
    #          parameters is a subset of the headers that Amazon S3 accepts when you create an object. The
    #          response headers that you can override for the GET response are <code>Content-Type</code>,
    #             <code>Content-Language</code>, <code>Expires</code>, <code>Cache-Control</code>,
    #             <code>Content-Disposition</code>, and <code>Content-Encoding</code>. To override these
    #          header values in the GET response, you use the following request parameters.</p>
    #          <note>
    #             <p>You must sign the request, either using an Authorization header or a presigned URL,
    #             when using these parameters. They cannot be used with an unsigned (anonymous)
    #             request.</p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>response-content-type</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>response-content-language</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>response-expires</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>response-cache-control</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>response-content-disposition</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>response-content-encoding</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Additional Considerations about Request Headers</b>
    #          </p>
    #          <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are
    #          present in the request as follows: <code>If-Match</code> condition evaluates to
    #             <code>true</code>, and; <code>If-Unmodified-Since</code> condition evaluates to
    #             <code>false</code>; then, S3 returns 200 OK and the data requested. </p>
    #          <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are
    #          present in the request as follows:<code> If-None-Match</code> condition evaluates to
    #             <code>false</code>, and; <code>If-Modified-Since</code> condition evaluates to
    #             <code>true</code>; then, S3 returns 304 Not Modified response code.</p>
    #          <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #          <p>The following operations are related to <code>GetObject</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html">ListBuckets</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html">GetObjectAcl</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When using an Object Lambda access point the hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-object-lambda.<i>Region</i>.amazonaws.com.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified;
    #            otherwise, return a 412 (precondition failed) error.</p>
    #
    # @option params [Time] :if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a 304 (not modified) error.</p>
    #
    # @option params [String] :if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified;
    #            otherwise, return a 304 (not modified) error.</p>
    #
    # @option params [Time] :if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a 412 (precondition failed) error.</p>
    #
    # @option params [String] :key
    #   <p>Key of the object to get.</p>
    #
    # @option params [String] :range
    #   <p>Downloads the specified range bytes of an object. For more information about the HTTP
    #            Range header, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-range">https://www.rfc-editor.org/rfc/rfc9110.html#name-range</a>.</p>
    #            <note>
    #               <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code>
    #               request.</p>
    #            </note>
    #
    # @option params [String] :response_cache_control
    #   <p>Sets the <code>Cache-Control</code> header of the response.</p>
    #
    # @option params [String] :response_content_disposition
    #   <p>Sets the <code>Content-Disposition</code> header of the response</p>
    #
    # @option params [String] :response_content_encoding
    #   <p>Sets the <code>Content-Encoding</code> header of the response.</p>
    #
    # @option params [String] :response_content_language
    #   <p>Sets the <code>Content-Language</code> header of the response.</p>
    #
    # @option params [String] :response_content_type
    #   <p>Sets the <code>Content-Type</code> header of the response.</p>
    #
    # @option params [Time] :response_expires
    #   <p>Sets the <code>Expires</code> header of the response.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when decrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This
    #            value is used to decrypt the object when recovering it and must match the one used when
    #            storing the data. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Integer] :part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' GET request for the part specified. Useful for downloading
    #            just a part of an object.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :checksum_mode
    #   <p>To retrieve the checksum, this mode must be enabled.</p>
    #
    # @return [Types::GetObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object(
    #     bucket: 'Bucket', # required
    #     if_match: 'IfMatch',
    #     if_modified_since: Time.now,
    #     if_none_match: 'IfNoneMatch',
    #     if_unmodified_since: Time.now,
    #     key: 'Key', # required
    #     range: 'Range',
    #     response_cache_control: 'ResponseCacheControl',
    #     response_content_disposition: 'ResponseContentDisposition',
    #     response_content_encoding: 'ResponseContentEncoding',
    #     response_content_language: 'ResponseContentLanguage',
    #     response_content_type: 'ResponseContentType',
    #     response_expires: Time.now,
    #     version_id: 'VersionId',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     part_number: 1,
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_mode: 'ENABLED' # accepts ["ENABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectOutput
    #   resp.data.body #=> String
    #   resp.data.delete_marker #=> Boolean
    #   resp.data.accept_ranges #=> String
    #   resp.data.expiration #=> String
    #   resp.data.restore #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.content_length #=> Integer
    #   resp.data.e_tag #=> String
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.missing_meta #=> Integer
    #   resp.data.version_id #=> String
    #   resp.data.cache_control #=> String
    #   resp.data.content_disposition #=> String
    #   resp.data.content_encoding #=> String
    #   resp.data.content_language #=> String
    #   resp.data.content_range #=> String
    #   resp.data.content_type #=> String
    #   resp.data.expires #=> Time
    #   resp.data.website_redirect_location #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.metadata #=> Hash<String, String>
    #   resp.data.metadata['key'] #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.replication_status #=> String, one of ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #   resp.data.parts_count #=> Integer
    #   resp.data.tag_count #=> Integer
    #   resp.data.object_lock_mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_retain_until_date #=> Time
    #   resp.data.object_lock_legal_hold_status #=> String, one of ["ON", "OFF"]
    #
    def get_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectInput.build(params, context: 'params')
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        response_algorithms: ['CRC32', 'CRC32C', 'SHA256', 'SHA1'],
        request_validation_mode_member: :checksum_mode,
        request_checksum_required: false
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidObjectState, Errors::NoSuchKey]),
        data_parser: Parsers::GetObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::InvalidObjectState, Stubs::NoSuchKey],
        stub_data_class: Stubs::GetObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the access control list (ACL) of an object. To use this operation, you must have
    #             <code>s3:GetObjectAcl</code> permissions or <code>READ_ACP</code> access to the object.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping">Mapping of ACL permissions and access policy permissions</a> in the <i>Amazon S3
    #             User Guide</i>
    #          </p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>
    #             <b>Versioning</b>
    #          </p>
    #          <p>By default, GET returns ACL information about the current version of an object. To
    #          return ACL information about a different version, use the versionId subresource.</p>
    #          <note>
    #             <p>If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
    #             requests to read ACLs are still supported and return the
    #                <code>bucket-owner-full-control</code> ACL with the owner being the account that
    #             created the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling object
    #                ownership and disabling ACLs</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p>The following operations are related to <code>GetObjectAcl</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectAclInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name that contains the object for which to get the ACL information. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key of the object for which to get the ACL information.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetObjectAclOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_acl(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectAclOutput
    #   resp.data.owner #=> Types::Owner
    #   resp.data.owner.display_name #=> String
    #   resp.data.owner.id #=> String
    #   resp.data.grants #=> Array<Grant>
    #   resp.data.grants[0] #=> Types::Grant
    #   resp.data.grants[0].grantee #=> Types::Grantee
    #   resp.data.grants[0].grantee.display_name #=> String
    #   resp.data.grants[0].grantee.email_address #=> String
    #   resp.data.grants[0].grantee.id #=> String
    #   resp.data.grants[0].grantee.uri #=> String
    #   resp.data.grants[0].grantee.type #=> String, one of ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #   resp.data.grants[0].permission #=> String, one of ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def get_object_acl(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectAclInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectAclInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectAcl
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchKey]),
        data_parser: Parsers::GetObjectAcl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchKey],
        stub_data_class: Stubs::GetObjectAcl,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_acl,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all the metadata from an object without returning the object itself. This
    #          action is useful if you're interested only in an object's metadata. To use
    #             <code>GetObjectAttributes</code>, you must have READ access to the object.</p>
    #          <p>
    #             <code>GetObjectAttributes</code> combines the functionality of <code>HeadObject</code>
    #          and <code>ListParts</code>. All of the data returned with each of those individual calls
    #          can be returned with a single call to <code>GetObjectAttributes</code>.</p>
    #          <p>If you encrypt an object by using server-side encryption with customer-provided
    #          encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the
    #          metadata from the object, you must use the following headers:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-server-side-encryption-customer-key</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #             (Using Customer-Provided Encryption Keys)</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Encryption request headers, such as <code>x-amz-server-side-encryption</code>,
    #                   should not be sent for GET requests if your object uses server-side encryption
    #                   with Amazon Web Services KMS keys stored in Amazon Web Services Key Management Service (SSE-KMS) or
    #                   server-side encryption with Amazon S3 managed keys (SSE-S3). If your object does use
    #                   these types of keys, you'll get an HTTP <code>400 Bad Request</code> error.</p>
    #                </li>
    #                <li>
    #                   <p> The last modified property in this case is the creation date of the
    #                   object.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>Consider the following when using request headers:</p>
    #          <ul>
    #             <li>
    #                <p> If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers
    #                are present in the request as follows, then Amazon S3 returns the HTTP status code
    #                   <code>200 OK</code> and the data requested:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>If-Match</code> condition evaluates to <code>true</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>If-Unmodified-Since</code> condition evaluates to
    #                      <code>false</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code>
    #                headers are present in the request as follows, then Amazon S3 returns the HTTP status code
    #                   <code>304 Not Modified</code>:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>If-None-Match</code> condition evaluates to <code>false</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>If-Modified-Since</code> condition evaluates to
    #                      <code>true</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The permissions that you need to use this operation depend on whether the bucket is
    #          versioned. If the bucket is versioned, you need both the <code>s3:GetObjectVersion</code>
    #          and <code>s3:GetObjectVersionAttributes</code> permissions for this operation. If the
    #          bucket is not versioned, you need the <code>s3:GetObject</code> and
    #             <code>s3:GetObjectAttributes</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying
    #             Permissions in a Policy</a> in the <i>Amazon S3 User Guide</i>. If the
    #          object that you request does not exist, the error Amazon S3 returns depends on whether you also
    #          have the <code>s3:ListBucket</code> permission.</p>
    #          <ul>
    #             <li>
    #                <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3 returns
    #                an HTTP status code <code>404 Not Found</code> ("no such key") error.</p>
    #             </li>
    #             <li>
    #                <p>If you don't have the <code>s3:ListBucket</code> permission, Amazon S3 returns an HTTP
    #                status code <code>403 Forbidden</code> ("access denied") error.</p>
    #             </li>
    #          </ul>
    #          <p>The following actions are related to <code>GetObjectAttributes</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html">GetObjectAcl</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLegalHold.html">GetObjectLegalHold</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLockConfiguration.html">GetObjectLockConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectRetention.html">GetObjectRetention</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html">HeadObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectAttributesInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The object key.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID used to reference a specific version of the object.</p>
    #
    # @option params [Integer] :max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #
    # @option params [String] :part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [Array<String>] :object_attributes
    #   <p>An XML header that specifies the fields at the root level that you want returned in the
    #            response. Fields that you do not specify are not returned.</p>
    #
    # @return [Types::GetObjectAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_attributes(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     max_parts: 1,
    #     part_number_marker: 'PartNumberMarker',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     object_attributes: [
    #       'ETag' # accepts ["ETag", "Checksum", "ObjectParts", "StorageClass", "ObjectSize"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectAttributesOutput
    #   resp.data.delete_marker #=> Boolean
    #   resp.data.last_modified #=> Time
    #   resp.data.version_id #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.e_tag #=> String
    #   resp.data.checksum #=> Types::Checksum
    #   resp.data.checksum.checksum_crc32 #=> String
    #   resp.data.checksum.checksum_crc32_c #=> String
    #   resp.data.checksum.checksum_sha1 #=> String
    #   resp.data.checksum.checksum_sha256 #=> String
    #   resp.data.object_parts #=> Types::GetObjectAttributesParts
    #   resp.data.object_parts.total_parts_count #=> Integer
    #   resp.data.object_parts.part_number_marker #=> String
    #   resp.data.object_parts.next_part_number_marker #=> String
    #   resp.data.object_parts.max_parts #=> Integer
    #   resp.data.object_parts.is_truncated #=> Boolean
    #   resp.data.object_parts.parts #=> Array<ObjectPart>
    #   resp.data.object_parts.parts[0] #=> Types::ObjectPart
    #   resp.data.object_parts.parts[0].part_number #=> Integer
    #   resp.data.object_parts.parts[0].size #=> Integer
    #   resp.data.object_parts.parts[0].checksum_crc32 #=> String
    #   resp.data.object_parts.parts[0].checksum_crc32_c #=> String
    #   resp.data.object_parts.parts[0].checksum_sha1 #=> String
    #   resp.data.object_parts.parts[0].checksum_sha256 #=> String
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.object_size #=> Integer
    #
    def get_object_attributes(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectAttributesInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectAttributesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchKey]),
        data_parser: Parsers::GetObjectAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchKey],
        stub_data_class: Stubs::GetObjectAttributes,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_attributes,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an object's current legal hold status. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #          Objects</a>.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectLegalHold</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectLegalHoldInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object whose legal hold status you want to retrieve. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key name for the object whose legal hold status you want to retrieve.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID of the object whose legal hold status you want to retrieve.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetObjectLegalHoldOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_legal_hold(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectLegalHoldOutput
    #   resp.data.legal_hold #=> Types::ObjectLockLegalHold
    #   resp.data.legal_hold.status #=> String, one of ["ON", "OFF"]
    #
    def get_object_legal_hold(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectLegalHoldInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectLegalHoldInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectLegalHold
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetObjectLegalHold
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetObjectLegalHold,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_legal_hold,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Object Lock configuration for a bucket. The rule specified in the Object Lock
    #          configuration will be applied by default to every new object placed in the specified
    #          bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking Objects</a>.</p>
    #          <p>The following action is related to <code>GetObjectLockConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectLockConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket whose Object Lock configuration you want to retrieve.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetObjectLockConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_lock_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectLockConfigurationOutput
    #   resp.data.object_lock_configuration #=> Types::ObjectLockConfiguration
    #   resp.data.object_lock_configuration.object_lock_enabled #=> String, one of ["Enabled"]
    #   resp.data.object_lock_configuration.rule #=> Types::ObjectLockRule
    #   resp.data.object_lock_configuration.rule.default_retention #=> Types::DefaultRetention
    #   resp.data.object_lock_configuration.rule.default_retention.mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_configuration.rule.default_retention.days #=> Integer
    #   resp.data.object_lock_configuration.rule.default_retention.years #=> Integer
    #
    def get_object_lock_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectLockConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectLockConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectLockConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetObjectLockConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetObjectLockConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_lock_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an object's retention settings. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #          Objects</a>.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectRetention</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectRetentionInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object whose retention settings you want to retrieve. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key name for the object whose retention settings you want to retrieve.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID for the object whose retention settings you want to retrieve.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetObjectRetentionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_retention(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectRetentionOutput
    #   resp.data.retention #=> Types::ObjectLockRetention
    #   resp.data.retention.mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.retention.retain_until_date #=> Time
    #
    def get_object_retention(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectRetentionInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectRetentionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectRetention
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetObjectRetention
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetObjectRetention,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_retention,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the tag-set of an object. You send the GET request against the tagging
    #          subresource associated with the object.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:GetObjectTagging</code> action. By default, the GET action returns information
    #          about current version of an object. For a versioned bucket, you can have multiple versions
    #          of an object in your bucket. To retrieve tags of any other version, use the versionId query
    #          parameter. You also need permission for the <code>s3:GetObjectVersionTagging</code>
    #          action.</p>
    #          <p> By default, the bucket owner has this permission and can grant this permission to
    #          others.</p>
    #          <p> For information about the Amazon S3 object tagging feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object Tagging</a>.</p>
    #          <p>The following actions are related to <code>GetObjectTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html">DeleteObjectTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html">PutObjectTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object for which to get the tagging information. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which to get the tagging information.</p>
    #
    # @option params [String] :version_id
    #   <p>The versionId of the object for which to get the tagging information.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::GetObjectTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_tagging(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester' # accepts ["requester"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectTaggingOutput
    #   resp.data.version_id #=> String
    #   resp.data.tag_set #=> Array<Tag>
    #   resp.data.tag_set[0] #=> Types::Tag
    #   resp.data.tag_set[0].key #=> String
    #   resp.data.tag_set[0].value #=> String
    #
    def get_object_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetObjectTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetObjectTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns torrent files from a bucket. BitTorrent can save you bandwidth when you're
    #          distributing large files.</p>
    #          <note>
    #             <p>You can get torrent only for objects that are less than 5 GB in size, and that are
    #             not encrypted using server-side encryption with a customer-provided encryption
    #             key.</p>
    #          </note>
    #          <p>To use GET, you must have READ access to the object.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectTorrent</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetObjectTorrentInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the object for which to get the torrent files.</p>
    #
    # @option params [String] :key
    #   <p>The object key for which to get the information.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetObjectTorrentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_torrent(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectTorrentOutput
    #   resp.data.body #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def get_object_torrent(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectTorrentInput.build(params, context: 'params')
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectTorrentInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectTorrent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetObjectTorrent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetObjectTorrent,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_object_torrent,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket. To use
    #          this operation, you must have the <code>s3:GetBucketPublicAccessBlock</code> permission.
    #          For more information about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>.</p>
    #          <important>
    #             <p>When Amazon S3 evaluates the <code>PublicAccessBlock</code> configuration for a bucket or
    #             an object, it checks the <code>PublicAccessBlock</code> configuration for both the
    #             bucket (or the bucket that contains the object) and the bucket owner's account. If the
    #                <code>PublicAccessBlock</code> settings are different between the bucket and the
    #             account, Amazon S3 uses the most restrictive combination of the bucket-level and
    #             account-level settings.</p>
    #          </important>
    #          <p>For more information about when Amazon S3 considers a bucket or an object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a>.</p>
    #          <p>The following operations are related to <code>GetPublicAccessBlock</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using Amazon S3 Block
    #                   Public Access</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetPublicAccessBlockInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to retrieve. </p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::GetPublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_access_block(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPublicAccessBlockOutput
    #   resp.data.public_access_block_configuration #=> Types::PublicAccessBlockConfiguration
    #   resp.data.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #
    def get_public_access_block(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPublicAccessBlockInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPublicAccessBlockInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPublicAccessBlock
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::GetPublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::GetPublicAccessBlock,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_public_access_block,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action is useful to determine if a bucket exists and you have permission to access
    #          it. The action returns a <code>200 OK</code> if the bucket exists and you have permission
    #          to access it.</p>
    #          <p>If the bucket does not exist or you do not have permission to access it, the
    #             <code>HEAD</code> request returns a generic <code>400 Bad Request</code>, <code>403
    #             Forbidden</code> or <code>404 Not Found</code> code. A message body is not included, so
    #          you cannot determine the exception beyond these error codes.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:ListBucket</code> action. The bucket owner has this permission by default and
    #          can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>To use this API against an access point, you must provide the alias of the access point in place of the
    #          bucket name or specify the access point ARN. When using the access point ARN, you must direct requests to
    #          the access point hostname. The access point hostname takes the form
    #          AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using the Amazon Web Services SDKs,
    #          you provide the ARN in place of the bucket name. For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
    #             access points</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::HeadBucketInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::HeadBucketOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.head_bucket(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::HeadBucketOutput
    #
    def head_bucket(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::HeadBucketInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::HeadBucketInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::HeadBucket
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFound]),
        data_parser: Parsers::HeadBucket
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NotFound],
        stub_data_class: Stubs::HeadBucket,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :head_bucket,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The HEAD action retrieves metadata from an object without returning the object itself.
    #          This action is useful if you're only interested in an object's metadata. To use HEAD, you
    #          must have READ access to the object.</p>
    #          <p>A <code>HEAD</code> request has the same options as a <code>GET</code> action on an
    #          object. The response is identical to the <code>GET</code> response except that there is no
    #          response body. Because of this, if the <code>HEAD</code> request generates an error, it
    #          returns a generic <code>400 Bad Request</code>, <code>403 Forbidden</code> or <code>404 Not
    #             Found</code> code. It is not possible to retrieve the exact exception beyond these error
    #          codes.</p>
    #          <p>If you encrypt an object by using server-side encryption with customer-provided
    #          encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the
    #          metadata from the object, you must use the following headers:</p>
    #          <ul>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-algorithm</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key-MD5</p>
    #             </li>
    #          </ul>
    #          <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #             (Using Customer-Provided Encryption Keys)</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Encryption request headers, like <code>x-amz-server-side-encryption</code>,
    #                   should not be sent for GET requests if your object uses server-side encryption
    #                   with KMS keys (SSE-KMS) or server-side encryption with Amazon S3–managed encryption
    #                   keys (SSE-S3). If your object does use these types of keys, you’ll get an HTTP 400
    #                   BadRequest error.</p>
    #                </li>
    #                <li>
    #                   <p> The last modified property in this case is the creation date of the
    #                   object.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>Request headers are limited to 8 KB in size. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html">Common
    #             Request Headers</a>.</p>
    #          <p>Consider the following when using request headers:</p>
    #          <ul>
    #             <li>
    #                <p> Consideration 1 – If both of the <code>If-Match</code> and
    #                   <code>If-Unmodified-Since</code> headers are present in the request as
    #                follows:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>If-Match</code> condition evaluates to <code>true</code>, and;</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>If-Unmodified-Since</code> condition evaluates to
    #                      <code>false</code>;</p>
    #                   </li>
    #                </ul>
    #                <p>Then Amazon S3 returns <code>200 OK</code> and the data requested.</p>
    #             </li>
    #             <li>
    #                <p> Consideration 2 – If both of the <code>If-None-Match</code> and
    #                   <code>If-Modified-Since</code> headers are present in the request as
    #                follows:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>If-None-Match</code> condition evaluates to <code>false</code>,
    #                      and;</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>If-Modified-Since</code> condition evaluates to
    #                      <code>true</code>;</p>
    #                   </li>
    #                </ul>
    #                <p>Then Amazon S3 returns the <code>304 Not Modified</code> response code.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>You need the relevant read object (or version) permission for this operation. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>. If the object you request does not exist, the error Amazon S3 returns depends
    #          on whether you also have the s3:ListBucket permission.</p>
    #          <ul>
    #             <li>
    #                <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3 returns
    #                an HTTP status code 404 ("no such key") error.</p>
    #             </li>
    #             <li>
    #                <p>If you don’t have the <code>s3:ListBucket</code> permission, Amazon S3 returns an HTTP
    #                status code 403 ("access denied") error.</p>
    #             </li>
    #          </ul>
    #          <p>The following actions are related to <code>HeadObject</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::HeadObjectInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the object.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified;
    #            otherwise, return a 412 (precondition failed) error.</p>
    #
    # @option params [Time] :if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise,
    #            return a 304 (not modified) error.</p>
    #
    # @option params [String] :if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified;
    #            otherwise, return a 304 (not modified) error.</p>
    #
    # @option params [Time] :if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise,
    #            return a 412 (precondition failed) error.</p>
    #
    # @option params [String] :key
    #   <p>The object key.</p>
    #
    # @option params [String] :range
    #   <p>HeadObject returns only the metadata for an object. If the Range is satisfiable, only
    #            the <code>ContentLength</code> is affected in the response. If the Range is not
    #            satisfiable, S3 returns a <code>416 - Requested Range Not Satisfiable</code> error.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Integer] :part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000.
    #            Effectively performs a 'ranged' HEAD request for the part specified. Useful querying about
    #            the size of the part and the number of parts in this object.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :checksum_mode
    #   <p>To retrieve the checksum, this parameter must be enabled.</p>
    #            <p>In addition, if you enable <code>ChecksumMode</code> and the object is encrypted with
    #            Amazon Web Services Key Management Service (Amazon Web Services KMS), you must have permission to use the
    #               <code>kms:Decrypt</code> action for the request to succeed.</p>
    #
    # @return [Types::HeadObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.head_object(
    #     bucket: 'Bucket', # required
    #     if_match: 'IfMatch',
    #     if_modified_since: Time.now,
    #     if_none_match: 'IfNoneMatch',
    #     if_unmodified_since: Time.now,
    #     key: 'Key', # required
    #     range: 'Range',
    #     version_id: 'VersionId',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     part_number: 1,
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_mode: 'ENABLED' # accepts ["ENABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::HeadObjectOutput
    #   resp.data.delete_marker #=> Boolean
    #   resp.data.accept_ranges #=> String
    #   resp.data.expiration #=> String
    #   resp.data.restore #=> String
    #   resp.data.archive_status #=> String, one of ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #   resp.data.last_modified #=> Time
    #   resp.data.content_length #=> Integer
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.missing_meta #=> Integer
    #   resp.data.version_id #=> String
    #   resp.data.cache_control #=> String
    #   resp.data.content_disposition #=> String
    #   resp.data.content_encoding #=> String
    #   resp.data.content_language #=> String
    #   resp.data.content_type #=> String
    #   resp.data.expires #=> Time
    #   resp.data.website_redirect_location #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.metadata #=> Hash<String, String>
    #   resp.data.metadata['key'] #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.replication_status #=> String, one of ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #   resp.data.parts_count #=> Integer
    #   resp.data.object_lock_mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_retain_until_date #=> Time
    #   resp.data.object_lock_legal_hold_status #=> String, one of ["ON", "OFF"]
    #
    def head_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::HeadObjectInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::HeadObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::HeadObject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFound]),
        data_parser: Parsers::HeadObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NotFound],
        stub_data_class: Stubs::HeadObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :head_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the analytics configurations for the bucket. You can have up to 1,000 analytics
    #          configurations per bucket.</p>
    #          <p>This action supports list pagination and does not return more than 100 configurations at
    #          a time. You should always check the <code>IsTruncated</code> element in the response. If
    #          there are no more configurations to list, <code>IsTruncated</code> is set to false. If
    #          there are more configurations to list, <code>IsTruncated</code> is set to true, and there
    #          will be a value in <code>NextContinuationToken</code>. You use the
    #             <code>NextContinuationToken</code> value to continue the pagination of the list by
    #          passing the value in continuation-token in the request to <code>GET</code> the next
    #          page.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:GetAnalyticsConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about Amazon S3 analytics feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon S3 Analytics – Storage Class
    #             Analysis</a>. </p>
    #          <p>The following operations are related to
    #          <code>ListBucketAnalyticsConfigurations</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html">GetBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html">DeleteBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html">PutBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListBucketAnalyticsConfigurationsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket from which analytics configurations are retrieved.</p>
    #
    # @option params [String] :continuation_token
    #   <p>The ContinuationToken that represents a placeholder from where this request should
    #            begin.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListBucketAnalyticsConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bucket_analytics_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBucketAnalyticsConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.analytics_configuration_list #=> Array<AnalyticsConfiguration>
    #   resp.data.analytics_configuration_list[0] #=> Types::AnalyticsConfiguration
    #   resp.data.analytics_configuration_list[0].id #=> String
    #   resp.data.analytics_configuration_list[0].filter #=> Types::AnalyticsFilter, one of [Prefix, Tag, And]
    #   resp.data.analytics_configuration_list[0].filter.prefix #=> String
    #   resp.data.analytics_configuration_list[0].filter.tag #=> Types::Tag
    #   resp.data.analytics_configuration_list[0].filter.tag.key #=> String
    #   resp.data.analytics_configuration_list[0].filter.tag.value #=> String
    #   resp.data.analytics_configuration_list[0].filter.and #=> Types::AnalyticsAndOperator
    #   resp.data.analytics_configuration_list[0].filter.and.prefix #=> String
    #   resp.data.analytics_configuration_list[0].filter.and.tags #=> Array<Tag>
    #   resp.data.analytics_configuration_list[0].storage_class_analysis #=> Types::StorageClassAnalysis
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export #=> Types::StorageClassAnalysisDataExport
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.output_schema_version #=> String, one of ["V_1"]
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination #=> Types::AnalyticsExportDestination
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination #=> Types::AnalyticsS3BucketDestination
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.format #=> String, one of ["CSV"]
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.bucket_account_id #=> String
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.bucket #=> String
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.prefix #=> String
    #
    def list_bucket_analytics_configurations(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBucketAnalyticsConfigurationsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBucketAnalyticsConfigurationsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBucketAnalyticsConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBucketAnalyticsConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListBucketAnalyticsConfigurations,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_bucket_analytics_configurations,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the S3 Intelligent-Tiering configuration from the specified bucket.</p>
    #          <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without performance impact or operational overhead. S3 Intelligent-Tiering delivers automatic cost savings in three low latency and high throughput access tiers. To get the lowest storage cost on data that can be accessed in minutes to hours, you can choose to activate additional archiving capabilities.</p>
    #          <p>The S3 Intelligent-Tiering storage class is  the ideal storage class for data with unknown, changing, or unpredictable access patterns, independent of object size or retention period. If the size of an object is less than 128 KB, it is not monitored and not eligible for auto-tiering. Smaller objects can be stored, but they are always charged at the Frequent Access tier rates in the S3 Intelligent-Tiering storage class.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for automatically optimizing frequently and infrequently accessed objects</a>.</p>
    #          <p>Operations related to <code>ListBucketIntelligentTieringConfigurations</code> include: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html">DeleteBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketIntelligentTieringConfiguration.html">PutBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html">GetBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListBucketIntelligentTieringConfigurationsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    # @option params [String] :continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request
    #            should begin.</p>
    #
    # @return [Types::ListBucketIntelligentTieringConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bucket_intelligent_tiering_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBucketIntelligentTieringConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.intelligent_tiering_configuration_list #=> Array<IntelligentTieringConfiguration>
    #   resp.data.intelligent_tiering_configuration_list[0] #=> Types::IntelligentTieringConfiguration
    #   resp.data.intelligent_tiering_configuration_list[0].id #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].filter #=> Types::IntelligentTieringFilter
    #   resp.data.intelligent_tiering_configuration_list[0].filter.prefix #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].filter.tag #=> Types::Tag
    #   resp.data.intelligent_tiering_configuration_list[0].filter.tag.key #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].filter.tag.value #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].filter.and #=> Types::IntelligentTieringAndOperator
    #   resp.data.intelligent_tiering_configuration_list[0].filter.and.prefix #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].filter.and.tags #=> Array<Tag>
    #   resp.data.intelligent_tiering_configuration_list[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.intelligent_tiering_configuration_list[0].tierings #=> Array<Tiering>
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0] #=> Types::Tiering
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0].days #=> Integer
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0].access_tier #=> String, one of ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #
    def list_bucket_intelligent_tiering_configurations(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBucketIntelligentTieringConfigurationsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBucketIntelligentTieringConfigurationsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBucketIntelligentTieringConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBucketIntelligentTieringConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListBucketIntelligentTieringConfigurations,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_bucket_intelligent_tiering_configurations,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of inventory configurations for the bucket. You can have up to 1,000
    #          analytics configurations per bucket.</p>
    #          <p>This action supports list pagination and does not return more than 100 configurations at
    #          a time. Always check the <code>IsTruncated</code> element in the response. If there are no
    #          more configurations to list, <code>IsTruncated</code> is set to false. If there are more
    #          configurations to list, <code>IsTruncated</code> is set to true, and there is a value in
    #             <code>NextContinuationToken</code>. You use the <code>NextContinuationToken</code> value
    #          to continue the pagination of the list by passing the value in continuation-token in the
    #          request to <code>GET</code> the next page.</p>
    #          <p> To use this operation, you must have permissions to perform the
    #             <code>s3:GetInventoryConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about the Amazon S3 inventory feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon S3 Inventory</a>
    #          </p>
    #          <p>The following operations are related to
    #          <code>ListBucketInventoryConfigurations</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html">GetBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html">DeleteBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketInventoryConfiguration.html">PutBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListBucketInventoryConfigurationsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the inventory configurations to retrieve.</p>
    #
    # @option params [String] :continuation_token
    #   <p>The marker used to continue an inventory configuration listing that has been truncated.
    #            Use the NextContinuationToken from a previously truncated list response to continue the
    #            listing. The continuation token is an opaque value that Amazon S3 understands.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListBucketInventoryConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bucket_inventory_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBucketInventoryConfigurationsOutput
    #   resp.data.continuation_token #=> String
    #   resp.data.inventory_configuration_list #=> Array<InventoryConfiguration>
    #   resp.data.inventory_configuration_list[0] #=> Types::InventoryConfiguration
    #   resp.data.inventory_configuration_list[0].destination #=> Types::InventoryDestination
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination #=> Types::InventoryS3BucketDestination
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.account_id #=> String
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.bucket #=> String
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.format #=> String, one of ["CSV", "ORC", "Parquet"]
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.prefix #=> String
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.encryption #=> Types::InventoryEncryption
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.encryption.sses3 #=> Types::SSES3
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.encryption.ssekms #=> Types::SSEKMS
    #   resp.data.inventory_configuration_list[0].destination.s3_bucket_destination.encryption.ssekms.key_id #=> String
    #   resp.data.inventory_configuration_list[0].is_enabled #=> Boolean
    #   resp.data.inventory_configuration_list[0].filter #=> Types::InventoryFilter
    #   resp.data.inventory_configuration_list[0].filter.prefix #=> String
    #   resp.data.inventory_configuration_list[0].id #=> String
    #   resp.data.inventory_configuration_list[0].included_object_versions #=> String, one of ["All", "Current"]
    #   resp.data.inventory_configuration_list[0].optional_fields #=> Array<String>
    #   resp.data.inventory_configuration_list[0].optional_fields[0] #=> String, one of ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm"]
    #   resp.data.inventory_configuration_list[0].schedule #=> Types::InventorySchedule
    #   resp.data.inventory_configuration_list[0].schedule.frequency #=> String, one of ["Daily", "Weekly"]
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_continuation_token #=> String
    #
    def list_bucket_inventory_configurations(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBucketInventoryConfigurationsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBucketInventoryConfigurationsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBucketInventoryConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBucketInventoryConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListBucketInventoryConfigurations,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_bucket_inventory_configurations,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the metrics configurations for the bucket. The metrics configurations are only for
    #          the request metrics of the bucket and do not provide information on daily storage metrics.
    #          You can have up to 1,000 configurations per bucket.</p>
    #          <p>This action supports list pagination and does not return more than 100 configurations at
    #          a time. Always check the <code>IsTruncated</code> element in the response. If there are no
    #          more configurations to list, <code>IsTruncated</code> is set to false. If there are more
    #          configurations to list, <code>IsTruncated</code> is set to true, and there is a value in
    #             <code>NextContinuationToken</code>. You use the <code>NextContinuationToken</code> value
    #          to continue the pagination of the list by passing the value in
    #             <code>continuation-token</code> in the request to <code>GET</code> the next page.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:GetMetricsConfiguration</code> action. The bucket owner has this permission by
    #          default. The bucket owner can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For more information about metrics configurations and CloudWatch request metrics, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring Metrics with Amazon CloudWatch</a>.</p>
    #          <p>The following operations are related to
    #          <code>ListBucketMetricsConfigurations</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html">GetBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html">DeleteBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListBucketMetricsConfigurationsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the metrics configurations to retrieve.</p>
    #
    # @option params [String] :continuation_token
    #   <p>The marker that is used to continue a metrics configuration listing that has been
    #            truncated. Use the NextContinuationToken from a previously truncated list response to
    #            continue the listing. The continuation token is an opaque value that Amazon S3
    #            understands.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListBucketMetricsConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bucket_metrics_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBucketMetricsConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.metrics_configuration_list #=> Array<MetricsConfiguration>
    #   resp.data.metrics_configuration_list[0] #=> Types::MetricsConfiguration
    #   resp.data.metrics_configuration_list[0].id #=> String
    #   resp.data.metrics_configuration_list[0].filter #=> Types::MetricsFilter, one of [Prefix, Tag, AccessPointArn, And]
    #   resp.data.metrics_configuration_list[0].filter.prefix #=> String
    #   resp.data.metrics_configuration_list[0].filter.tag #=> Types::Tag
    #   resp.data.metrics_configuration_list[0].filter.tag.key #=> String
    #   resp.data.metrics_configuration_list[0].filter.tag.value #=> String
    #   resp.data.metrics_configuration_list[0].filter.access_point_arn #=> String
    #   resp.data.metrics_configuration_list[0].filter.and #=> Types::MetricsAndOperator
    #   resp.data.metrics_configuration_list[0].filter.and.prefix #=> String
    #   resp.data.metrics_configuration_list[0].filter.and.tags #=> Array<Tag>
    #   resp.data.metrics_configuration_list[0].filter.and.access_point_arn #=> String
    #
    def list_bucket_metrics_configurations(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBucketMetricsConfigurationsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBucketMetricsConfigurationsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBucketMetricsConfigurations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBucketMetricsConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListBucketMetricsConfigurations,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_bucket_metrics_configurations,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all buckets owned by the authenticated sender of the request. To use
    #          this operation, you must have the <code>s3:ListAllMyBuckets</code> permission. </p>
    #          <p>For information about Amazon S3 buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating, configuring, and
    #             working with Amazon S3 buckets</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBucketsInput}.
    #
    # @return [Types::ListBucketsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_buckets()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBucketsOutput
    #   resp.data.buckets #=> Array<Bucket>
    #   resp.data.buckets[0] #=> Types::Bucket
    #   resp.data.buckets[0].name #=> String
    #   resp.data.buckets[0].creation_date #=> Time
    #   resp.data.owner #=> Types::Owner
    #   resp.data.owner.display_name #=> String
    #   resp.data.owner.id #=> String
    #
    def list_buckets(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBucketsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBucketsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuckets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListBuckets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListBuckets,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_buckets,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action lists in-progress multipart uploads. An in-progress multipart upload is a
    #          multipart upload that has been initiated using the Initiate Multipart Upload request, but
    #          has not yet been completed or aborted.</p>
    #          <p>This action returns at most 1,000 multipart uploads in the response. 1,000 multipart
    #          uploads is the maximum number of uploads a response can include, which is also the default
    #          value. You can further limit the number of uploads in a response by specifying the
    #             <code>max-uploads</code> parameter in the response. If additional multipart uploads
    #          satisfy the list criteria, the response will contain an <code>IsTruncated</code> element
    #          with the value true. To list the additional multipart uploads, use the
    #             <code>key-marker</code> and <code>upload-id-marker</code> request parameters.</p>
    #          <p>In the response, the uploads are sorted by key. If your application has initiated more
    #          than one multipart upload using the same object key, then uploads in the response are first
    #          sorted by key. Additionally, uploads are sorted in ascending order within each key by the
    #          upload initiation time.</p>
    #          <p>For more information on multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #             Upload</a>.</p>
    #          <p>For information on permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #             and Permissions</a>.</p>
    #          <p>The following operations are related to <code>ListMultipartUploads</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListMultipartUploadsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :delimiter
    #   <p>Character you use to group keys.</p>
    #            <p>All keys that contain the same string between the prefix, if specified, and the first
    #            occurrence of the delimiter after the prefix are grouped under a single result element,
    #               <code>CommonPrefixes</code>. If you don't specify the prefix parameter, then the
    #            substring starts at the beginning of the key. The keys that are grouped under
    #               <code>CommonPrefixes</code> result element are not returned elsewhere in the
    #            response.</p>
    #
    # @option params [String] :encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    # @option params [String] :key_marker
    #   <p>Together with upload-id-marker, this parameter specifies the multipart upload after
    #            which listing should begin.</p>
    #            <p>If <code>upload-id-marker</code> is not specified, only the keys lexicographically
    #            greater than the specified <code>key-marker</code> will be included in the list.</p>
    #            <p>If <code>upload-id-marker</code> is specified, any multipart uploads for a key equal to
    #            the <code>key-marker</code> might also be included, provided those multipart uploads have
    #            upload IDs lexicographically greater than the specified
    #            <code>upload-id-marker</code>.</p>
    #
    # @option params [Integer] :max_uploads
    #   <p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response
    #            body. 1,000 is the maximum number of uploads that can be returned in a response.</p>
    #
    # @option params [String] :prefix
    #   <p>Lists in-progress uploads only for those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different grouping of keys. (You can think of
    #            using prefix to make groups in the same way you'd use a folder in a file system.)</p>
    #
    # @option params [String] :upload_id_marker
    #   <p>Together with key-marker, specifies the multipart upload after which listing should
    #            begin. If key-marker is not specified, the upload-id-marker parameter is ignored.
    #            Otherwise, any multipart uploads for a key equal to the key-marker might be included in the
    #            list only if they have an upload ID lexicographically greater than the specified
    #               <code>upload-id-marker</code>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListMultipartUploadsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multipart_uploads(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     key_marker: 'KeyMarker',
    #     max_uploads: 1,
    #     prefix: 'Prefix',
    #     upload_id_marker: 'UploadIdMarker',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMultipartUploadsOutput
    #   resp.data.bucket #=> String
    #   resp.data.key_marker #=> String
    #   resp.data.upload_id_marker #=> String
    #   resp.data.next_key_marker #=> String
    #   resp.data.prefix #=> String
    #   resp.data.delimiter #=> String
    #   resp.data.next_upload_id_marker #=> String
    #   resp.data.max_uploads #=> Integer
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.uploads #=> Array<MultipartUpload>
    #   resp.data.uploads[0] #=> Types::MultipartUpload
    #   resp.data.uploads[0].upload_id #=> String
    #   resp.data.uploads[0].key #=> String
    #   resp.data.uploads[0].initiated #=> Time
    #   resp.data.uploads[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.uploads[0].owner #=> Types::Owner
    #   resp.data.uploads[0].owner.display_name #=> String
    #   resp.data.uploads[0].owner.id #=> String
    #   resp.data.uploads[0].initiator #=> Types::Initiator
    #   resp.data.uploads[0].initiator.id #=> String
    #   resp.data.uploads[0].initiator.display_name #=> String
    #   resp.data.uploads[0].checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.common_prefixes #=> Array<CommonPrefix>
    #   resp.data.common_prefixes[0] #=> Types::CommonPrefix
    #   resp.data.common_prefixes[0].prefix #=> String
    #   resp.data.encoding_type #=> String, one of ["url"]
    #
    def list_multipart_uploads(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMultipartUploadsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMultipartUploadsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMultipartUploads
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListMultipartUploads
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListMultipartUploads,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_multipart_uploads,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about all versions of the objects in a bucket. You can also use request
    #          parameters as selection criteria to return metadata about a subset of all the object
    #          versions.</p>
    #          <important>
    #             <p> To use this operation, you must have permissions to perform the
    #                <code>s3:ListBucketVersions</code> action. Be aware of the name difference. </p>
    #          </important>
    #          <note>
    #             <p> A 200 OK response can contain valid or invalid XML. Make sure to design your
    #             application to parse the contents of the response and handle it appropriately.</p>
    #          </note>
    #          <p>To use this operation, you must have READ access to the bucket.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>The following operations are related to <code>ListObjectVersions</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html">ListObjectsV2</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListObjectVersionsInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name that contains the objects. </p>
    #
    # @option params [String] :delimiter
    #   <p>A delimiter is a character that you specify to group keys. All keys that contain the
    #            same string between the <code>prefix</code> and the first occurrence of the delimiter are
    #            grouped under a single result element in CommonPrefixes. These groups are counted as one
    #            result against the max-keys limitation. These keys are not returned elsewhere in the
    #            response.</p>
    #
    # @option params [String] :encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    # @option params [String] :key_marker
    #   <p>Specifies the key to start with when listing objects in a bucket.</p>
    #
    # @option params [Integer] :max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #            If additional keys satisfy the search criteria, but were not returned because max-keys was
    #            exceeded, the response contains <isTruncated>true</isTruncated>. To return the
    #            additional keys, see key-marker and version-id-marker.</p>
    #
    # @option params [String] :prefix
    #   <p>Use this parameter to select only those keys that begin with the specified prefix. You
    #            can use prefixes to separate a bucket into different groupings of keys. (You can think of
    #            using prefix to make groups in the same way you'd use a folder in a file system.) You can
    #            use prefix with delimiter to roll up numerous objects into a single result under
    #            CommonPrefixes. </p>
    #
    # @option params [String] :version_id_marker
    #   <p>Specifies the object version you want to start listing from.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListObjectVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_versions(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     key_marker: 'KeyMarker',
    #     max_keys: 1,
    #     prefix: 'Prefix',
    #     version_id_marker: 'VersionIdMarker',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectVersionsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.key_marker #=> String
    #   resp.data.version_id_marker #=> String
    #   resp.data.next_key_marker #=> String
    #   resp.data.next_version_id_marker #=> String
    #   resp.data.versions #=> Array<ObjectVersion>
    #   resp.data.versions[0] #=> Types::ObjectVersion
    #   resp.data.versions[0].e_tag #=> String
    #   resp.data.versions[0].checksum_algorithm #=> Array<String>
    #   resp.data.versions[0].checksum_algorithm[0] #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.versions[0].size #=> Integer
    #   resp.data.versions[0].storage_class #=> String, one of ["STANDARD"]
    #   resp.data.versions[0].key #=> String
    #   resp.data.versions[0].version_id #=> String
    #   resp.data.versions[0].is_latest #=> Boolean
    #   resp.data.versions[0].last_modified #=> Time
    #   resp.data.versions[0].owner #=> Types::Owner
    #   resp.data.versions[0].owner.display_name #=> String
    #   resp.data.versions[0].owner.id #=> String
    #   resp.data.delete_markers #=> Array<DeleteMarkerEntry>
    #   resp.data.delete_markers[0] #=> Types::DeleteMarkerEntry
    #   resp.data.delete_markers[0].owner #=> Types::Owner
    #   resp.data.delete_markers[0].key #=> String
    #   resp.data.delete_markers[0].version_id #=> String
    #   resp.data.delete_markers[0].is_latest #=> Boolean
    #   resp.data.delete_markers[0].last_modified #=> Time
    #   resp.data.name #=> String
    #   resp.data.prefix #=> String
    #   resp.data.delimiter #=> String
    #   resp.data.max_keys #=> Integer
    #   resp.data.common_prefixes #=> Array<CommonPrefix>
    #   resp.data.common_prefixes[0] #=> Types::CommonPrefix
    #   resp.data.common_prefixes[0].prefix #=> String
    #   resp.data.encoding_type #=> String, one of ["url"]
    #
    def list_object_versions(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectVersionsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectVersionsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectVersions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListObjectVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListObjectVersions,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_object_versions,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns some or all (up to 1,000) of the objects in a bucket. You can use the request
    #          parameters as selection criteria to return a subset of the objects in a bucket. A 200 OK
    #          response can contain valid or invalid XML. Be sure to design your application to parse the
    #          contents of the response and handle it appropriately.</p>
    #          <important>
    #             <p>This action has been revised. We recommend that you use the newer version, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html">ListObjectsV2</a>, when developing applications. For backward compatibility,
    #             Amazon S3 continues to support <code>ListObjects</code>.</p>
    #          </important>
    #          <p>The following operations are related to <code>ListObjects</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjectsV2.html">ListObjectsV2</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html">ListBuckets</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListObjectsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket containing the objects.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :delimiter
    #   <p>A delimiter is a character you use to group keys.</p>
    #
    # @option params [String] :encoding_type
    #   <p>Requests Amazon S3 to encode the object keys in the response and specifies the encoding
    #            method to use. An object key may contain any Unicode character; however, XML 1.0 parser
    #            cannot parse some characters, such as characters with an ASCII value from 0 to 10. For
    #            characters that are not supported in XML 1.0, you can add this parameter to request that
    #            Amazon S3 encode the keys in the response.</p>
    #
    # @option params [String] :marker
    #   <p>Marker is where you want Amazon S3 to start listing from. Amazon S3 starts listing after
    #            this specified key. Marker can be any key in the bucket.</p>
    #
    # @option params [Integer] :max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain more.
    #         </p>
    #
    # @option params [String] :prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request. Bucket owners need not specify this parameter in their requests.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_objects(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     marker: 'Marker',
    #     max_keys: 1,
    #     prefix: 'Prefix',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.contents #=> Array<Object>
    #   resp.data.contents[0] #=> Types::Object
    #   resp.data.contents[0].key #=> String
    #   resp.data.contents[0].last_modified #=> Time
    #   resp.data.contents[0].e_tag #=> String
    #   resp.data.contents[0].checksum_algorithm #=> Array<String>
    #   resp.data.contents[0].checksum_algorithm[0] #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.contents[0].size #=> Integer
    #   resp.data.contents[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.contents[0].owner #=> Types::Owner
    #   resp.data.contents[0].owner.display_name #=> String
    #   resp.data.contents[0].owner.id #=> String
    #   resp.data.name #=> String
    #   resp.data.prefix #=> String
    #   resp.data.delimiter #=> String
    #   resp.data.max_keys #=> Integer
    #   resp.data.common_prefixes #=> Array<CommonPrefix>
    #   resp.data.common_prefixes[0] #=> Types::CommonPrefix
    #   resp.data.common_prefixes[0].prefix #=> String
    #   resp.data.encoding_type #=> String, one of ["url"]
    #
    def list_objects(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjects
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchBucket]),
        data_parser: Parsers::ListObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchBucket],
        stub_data_class: Stubs::ListObjects,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_objects,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns some or all (up to 1,000) of the objects in a bucket with each request. You can
    #          use the request parameters as selection criteria to return a subset of the objects in a
    #          bucket. A <code>200 OK</code> response can contain valid or invalid XML. Make sure to
    #          design your application to parse the contents of the response and handle it appropriately.
    #          Objects are returned sorted in an ascending order of the respective key names in the list.
    #          For more information about listing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html">Listing object keys
    #             programmatically</a>
    #          </p>
    #          <p>To use this operation, you must have READ access to the bucket.</p>
    #          <p>To use this action in an Identity and Access Management (IAM) policy, you must have permissions to perform
    #          the <code>s3:ListBucket</code> action. The bucket owner has this permission by default and
    #          can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <important>
    #             <p>This section describes the latest revision of this action. We recommend that you use
    #             this revised API for application development. For backward compatibility, Amazon S3 continues
    #             to support the prior version of this API, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a>.</p>
    #          </important>
    #          <p>To get a list of your buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html">ListBuckets</a>.</p>
    #          <p>The following operations are related to <code>ListObjectsV2</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListObjectsV2Input}.
    #
    # @option params [String] :bucket
    #   <p>Bucket name to list. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :delimiter
    #   <p>A delimiter is a character you use to group keys.</p>
    #
    # @option params [String] :encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #
    # @option params [Integer] :max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default the action returns
    #            up to 1,000 key names. The response might contain fewer keys but will never contain
    #            more.</p>
    #
    # @option params [String] :prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #
    # @option params [String] :continuation_token
    #   <p>ContinuationToken indicates Amazon S3 that the list is being continued on this bucket with a
    #            token. ContinuationToken is obfuscated and is not a real key.</p>
    #
    # @option params [Boolean] :fetch_owner
    #   <p>The owner field is not present in listV2 by default, if you want to return owner field
    #            with each key in the result then set the fetch owner field to true.</p>
    #
    # @option params [String] :start_after
    #   <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this
    #            specified key. StartAfter can be any key in the bucket.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects
    #            request in V2 style. Bucket owners need not specify this parameter in their
    #            requests.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::ListObjectsV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_objects_v2(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     max_keys: 1,
    #     prefix: 'Prefix',
    #     continuation_token: 'ContinuationToken',
    #     fetch_owner: false,
    #     start_after: 'StartAfter',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectsV2Output
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.contents #=> Array<Object>
    #   resp.data.contents[0] #=> Types::Object
    #   resp.data.contents[0].key #=> String
    #   resp.data.contents[0].last_modified #=> Time
    #   resp.data.contents[0].e_tag #=> String
    #   resp.data.contents[0].checksum_algorithm #=> Array<String>
    #   resp.data.contents[0].checksum_algorithm[0] #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.contents[0].size #=> Integer
    #   resp.data.contents[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.contents[0].owner #=> Types::Owner
    #   resp.data.contents[0].owner.display_name #=> String
    #   resp.data.contents[0].owner.id #=> String
    #   resp.data.name #=> String
    #   resp.data.prefix #=> String
    #   resp.data.delimiter #=> String
    #   resp.data.max_keys #=> Integer
    #   resp.data.common_prefixes #=> Array<CommonPrefix>
    #   resp.data.common_prefixes[0] #=> Types::CommonPrefix
    #   resp.data.common_prefixes[0].prefix #=> String
    #   resp.data.encoding_type #=> String, one of ["url"]
    #   resp.data.key_count #=> Integer
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.start_after #=> String
    #
    def list_objects_v2(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectsV2Input.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectsV2Input,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectsV2
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchBucket]),
        data_parser: Parsers::ListObjectsV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchBucket],
        stub_data_class: Stubs::ListObjectsV2,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_objects_v2,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the parts that have been uploaded for a specific multipart upload. This operation
    #          must include the upload ID, which you obtain by sending the initiate multipart upload
    #          request (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>).
    #          This request returns a maximum of 1,000 uploaded parts. The default number of parts
    #          returned is 1,000 parts. You can restrict the number of parts returned by specifying the
    #             <code>max-parts</code> request parameter. If your multipart upload consists of more than
    #          1,000 parts, the response returns an <code>IsTruncated</code> field with the value of true,
    #          and a <code>NextPartNumberMarker</code> element. In subsequent <code>ListParts</code>
    #          requests you can include the part-number-marker query string parameter and set its value to
    #          the <code>NextPartNumberMarker</code> field value from the previous response.</p>
    #          <p>If the upload was created using a checksum algorithm, you will need to have permission
    #          to the <code>kms:Decrypt</code> action for the request to succeed. </p>
    #          <p>For more information on multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #             Upload</a>.</p>
    #          <p>For information on permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #             and Permissions</a>.</p>
    #          <p>The following operations are related to <code>ListParts</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListPartsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to which the parts are being uploaded. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    # @option params [Integer] :max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #
    # @option params [String] :part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers
    #            will be listed.</p>
    #
    # @option params [String] :upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::ListPartsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parts(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     max_parts: 1,
    #     part_number_marker: 'PartNumberMarker',
    #     upload_id: 'UploadId', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPartsOutput
    #   resp.data.abort_date #=> Time
    #   resp.data.abort_rule_id #=> String
    #   resp.data.bucket #=> String
    #   resp.data.key #=> String
    #   resp.data.upload_id #=> String
    #   resp.data.part_number_marker #=> String
    #   resp.data.next_part_number_marker #=> String
    #   resp.data.max_parts #=> Integer
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.parts #=> Array<Part>
    #   resp.data.parts[0] #=> Types::Part
    #   resp.data.parts[0].part_number #=> Integer
    #   resp.data.parts[0].last_modified #=> Time
    #   resp.data.parts[0].e_tag #=> String
    #   resp.data.parts[0].size #=> Integer
    #   resp.data.parts[0].checksum_crc32 #=> String
    #   resp.data.parts[0].checksum_crc32_c #=> String
    #   resp.data.parts[0].checksum_sha1 #=> String
    #   resp.data.parts[0].checksum_sha256 #=> String
    #   resp.data.initiator #=> Types::Initiator
    #   resp.data.initiator.id #=> String
    #   resp.data.initiator.display_name #=> String
    #   resp.data.owner #=> Types::Owner
    #   resp.data.owner.display_name #=> String
    #   resp.data.owner.id #=> String
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #
    def list_parts(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPartsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPartsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListParts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListParts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::ListParts,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_parts,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the accelerate configuration of an existing bucket. Amazon S3 Transfer Acceleration is a
    #          bucket-level feature that enables you to perform faster data transfers to Amazon S3.</p>
    #          <p> To use this operation, you must have permission to perform the
    #             <code>s3:PutAccelerateConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p> The Transfer Acceleration state of a bucket can be set to one of the following two
    #          values:</p>
    #          <ul>
    #             <li>
    #                <p> Enabled – Enables accelerated data transfers to the bucket.</p>
    #             </li>
    #             <li>
    #                <p> Suspended – Disables accelerated data transfers to the bucket.</p>
    #             </li>
    #          </ul>
    #          <p>The <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html">GetBucketAccelerateConfiguration</a> action returns the transfer acceleration state
    #          of a bucket.</p>
    #          <p>After setting the Transfer Acceleration state of a bucket to Enabled, it might take up
    #          to thirty minutes before the data transfer rates to the bucket increase.</p>
    #          <p> The name of the bucket used for Transfer Acceleration must be DNS-compliant and must
    #          not contain periods (".").</p>
    #          <p> For more information about transfer acceleration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
    #          Acceleration</a>.</p>
    #          <p>The following operations are related to
    #          <code>PutBucketAccelerateConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAccelerateConfiguration.html">GetBucketAccelerateConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketAccelerateConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which the accelerate configuration is set.</p>
    #
    # @option params [AccelerateConfiguration] :accelerate_configuration
    #   <p>Container for setting the transfer acceleration state.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @return [Types::PutBucketAccelerateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_accelerate_configuration(
    #     bucket: 'Bucket', # required
    #     accelerate_configuration: {
    #       status: 'Enabled' # accepts ["Enabled", "Suspended"]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_algorithm: 'CRC32' # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketAccelerateConfigurationOutput
    #
    def put_bucket_accelerate_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketAccelerateConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketAccelerateConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketAccelerateConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: false
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketAccelerateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketAccelerateConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_accelerate_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the permissions on an existing bucket using access control lists (ACL). For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>. To set the ACL of a
    #          bucket, you must have <code>WRITE_ACP</code> permission.</p>
    #          <p>You can use one of the following two ways to set a bucket's permissions:</p>
    #          <ul>
    #             <li>
    #                <p>Specify the ACL in the request body</p>
    #             </li>
    #             <li>
    #                <p>Specify permissions using request headers</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>You cannot specify access permission using both the body and the request
    #             headers.</p>
    #          </note>
    #          <p>Depending on your application needs, you may choose to set the ACL on a bucket using
    #          either the request body or the headers. For example, if you have an existing application
    #          that updates a bucket ACL using the request body, then you can continue to use that
    #          approach.</p>
    #          <important>
    #             <p>If your bucket uses the bucket owner enforced setting for S3 Object Ownership, ACLs
    #             are disabled and no longer affect permissions. You must use policies to grant access to
    #             your bucket and the objects in it. Requests to set ACLs or update ACLs fail and return
    #             the <code>AccessControlListNotSupported</code> error code. Requests to read ACLs are
    #             still supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling object
    #                ownership</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </important>
    #          <p>
    #             <b>Access Permissions</b>
    #          </p>
    #          <p>You can set access permissions using one of the following methods:</p>
    #          <ul>
    #             <li>
    #                <p>Specify a canned ACL with the <code>x-amz-acl</code> request header. Amazon S3 supports
    #                a set of predefined ACLs, known as <i>canned ACLs</i>. Each canned ACL
    #                has a predefined set of grantees and permissions. Specify the canned ACL name as the
    #                value of <code>x-amz-acl</code>. If you use this header, you cannot use other access
    #                control-specific headers in your request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                   ACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Specify access permissions explicitly with the <code>x-amz-grant-read</code>,
    #                   <code>x-amz-grant-read-acp</code>, <code>x-amz-grant-write-acp</code>, and
    #                   <code>x-amz-grant-full-control</code> headers. When using these headers, you
    #                specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3 groups) who
    #                will receive the permission. If you use these ACL-specific headers, you cannot use
    #                the <code>x-amz-acl</code> header to set a canned ACL. These parameters map to the
    #                set of permissions that Amazon S3 supports in an ACL. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control
    #                   List (ACL) Overview</a>.</p>
    #                <p>You specify each grantee as a type=value pair, where the type is one of the
    #                following:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>id</code> – if the value specified is the canonical user ID of an
    #                      Amazon Web Services account</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>uri</code> – if you are granting permissions to a predefined
    #                      group</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>emailAddress</code> – if the value specified is the email address of
    #                      an Amazon Web Services account</p>
    #                      <note>
    #                         <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                         <ul>
    #                            <li>
    #                               <p>US East (N. Virginia)</p>
    #                            </li>
    #                            <li>
    #                               <p>US West (N. California)</p>
    #                            </li>
    #                            <li>
    #                               <p> US West (Oregon)</p>
    #                            </li>
    #                            <li>
    #                               <p> Asia Pacific (Singapore)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Sydney)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Tokyo)</p>
    #                            </li>
    #                            <li>
    #                               <p>Europe (Ireland)</p>
    #                            </li>
    #                            <li>
    #                               <p>South America (São Paulo)</p>
    #                            </li>
    #                         </ul>
    #                         <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p>For example, the following <code>x-amz-grant-write</code> header grants create,
    #                overwrite, and delete objects permission to LogDelivery group predefined by Amazon S3 and
    #                two Amazon Web Services accounts identified by their email addresses.</p>
    #                <p>
    #                   <code>x-amz-grant-write: uri="http://acs.amazonaws.com/groups/s3/LogDelivery",
    #                   id="111122223333", id="555566667777" </code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can use either a canned ACL or specify access permissions explicitly. You cannot do
    #          both.</p>
    #          <p>
    #             <b>Grantee Values</b>
    #          </p>
    #          <p>You can specify the person (grantee) to whom you're assigning access rights (using
    #          request elements) in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>By the person's ID:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                   </Grantee></code>
    #                </p>
    #                <p>DisplayName is optional and ignored in the request</p>
    #             </li>
    #             <li>
    #                <p>By URI:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>By Email address:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>&</Grantee></code>
    #                </p>
    #                <p>The grantee is resolved to the CanonicalUser and, in a response to a GET Object
    #                acl request, appears as the CanonicalUser. </p>
    #                <note>
    #                   <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                   <ul>
    #                      <li>
    #                         <p>US East (N. Virginia)</p>
    #                      </li>
    #                      <li>
    #                         <p>US West (N. California)</p>
    #                      </li>
    #                      <li>
    #                         <p> US West (Oregon)</p>
    #                      </li>
    #                      <li>
    #                         <p> Asia Pacific (Singapore)</p>
    #                      </li>
    #                      <li>
    #                         <p>Asia Pacific (Sydney)</p>
    #                      </li>
    #                      <li>
    #                         <p>Asia Pacific (Tokyo)</p>
    #                      </li>
    #                      <li>
    #                         <p>Europe (Ireland)</p>
    #                      </li>
    #                      <li>
    #                         <p>South America (São Paulo)</p>
    #                      </li>
    #                   </ul>
    #                   <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html">GetObjectAcl</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketAclInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #
    # @option params [AccessControlPolicy] :access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #
    # @option params [String] :bucket
    #   <p>The bucket to which to apply the ACL.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #
    # @option params [String] :grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketAclOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_acl(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read"]
    #     access_control_policy: {
    #       grants: [
    #         {
    #           grantee: {
    #             display_name: 'DisplayName',
    #             email_address: 'EmailAddress',
    #             id: 'ID',
    #             uri: 'URI',
    #             type: 'CanonicalUser' # required - accepts ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #           },
    #           permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #         }
    #       ],
    #       owner: {
    #         display_name: 'DisplayName',
    #         id: 'ID'
    #       }
    #     },
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write: 'GrantWrite',
    #     grant_write_acp: 'GrantWriteACP',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketAclOutput
    #
    def put_bucket_acl(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketAclInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketAclInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketAcl
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketAcl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketAcl,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_acl,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets an analytics configuration for the bucket (specified by the analytics configuration
    #          ID). You can have up to 1,000 analytics configurations per bucket.</p>
    #          <p>You can choose to have storage class analysis export analysis reports sent to a
    #          comma-separated values (CSV) flat file. See the <code>DataExport</code> request element.
    #          Reports are updated daily and are based on the object filters that you configure. When
    #          selecting data export, you specify a destination bucket and an optional destination prefix
    #          where the file is written. You can export the data to a destination bucket in a different
    #          account. However, the destination bucket must be in the same Region as the bucket that you
    #          are making the PUT analytics configuration to. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon S3
    #             Analytics – Storage Class Analysis</a>. </p>
    #          <important>
    #             <p>You must create a bucket policy on the destination bucket where the exported file is
    #             written to grant permissions to Amazon S3 to write objects to the bucket. For an example
    #             policy, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9">Granting Permissions for Amazon S3 Inventory and Storage Class Analysis</a>.</p>
    #          </important>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutAnalyticsConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Error: HTTP 400 Bad Request</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Code: InvalidArgument</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: Invalid argument.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Error: HTTP 400 Bad Request</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Code: TooManyConfigurations</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: You are attempting to create a new configuration but have
    #                         already reached the 1,000-configuration limit.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Error: HTTP 403 Forbidden</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Code: AccessDenied</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: You are not the owner of the specified bucket, or you do
    #                         not have the s3:PutAnalyticsConfiguration bucket permission to set the
    #                         configuration on the bucket.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html">GetBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html">DeleteBucketAnalyticsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketAnalyticsConfigurations.html">ListBucketAnalyticsConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketAnalyticsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to which an analytics configuration is stored.</p>
    #
    # @option params [String] :id
    #   <p>The ID that identifies the analytics configuration.</p>
    #
    # @option params [AnalyticsConfiguration] :analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketAnalyticsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     analytics_configuration: {
    #       id: 'Id', # required
    #       filter: {
    #         # One of:
    #         prefix: 'Prefix',
    #         tag: {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         },
    #         and: {
    #           prefix: 'Prefix',
    #         }
    #       },
    #       storage_class_analysis: {
    #         data_export: {
    #           output_schema_version: 'V_1', # required - accepts ["V_1"]
    #           destination: {
    #             s3_bucket_destination: {
    #               format: 'CSV', # required - accepts ["CSV"]
    #               bucket_account_id: 'BucketAccountId',
    #               bucket: 'Bucket', # required
    #               prefix: 'Prefix'
    #             } # required
    #           } # required
    #         }
    #       } # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketAnalyticsConfigurationOutput
    #
    def put_bucket_analytics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketAnalyticsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketAnalyticsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketAnalyticsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketAnalyticsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketAnalyticsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_analytics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the <code>cors</code> configuration for your bucket. If the configuration exists,
    #          Amazon S3 replaces it.</p>
    #          <p>To use this operation, you must be allowed to perform the <code>s3:PutBucketCORS</code>
    #          action. By default, the bucket owner has this permission and can grant it to others.</p>
    #          <p>You set this configuration on a bucket so that the bucket can service cross-origin
    #          requests. For example, you might want to enable a request whose origin is
    #             <code>http://www.example.com</code> to access your Amazon S3 bucket at
    #             <code>my.example.bucket.com</code> by using the browser's <code>XMLHttpRequest</code>
    #          capability.</p>
    #          <p>To enable cross-origin resource sharing (CORS) on a bucket, you add the
    #             <code>cors</code> subresource to the bucket. The <code>cors</code> subresource is an XML
    #          document in which you configure rules that identify origins and the HTTP methods that can
    #          be executed on your bucket. The document is limited to 64 KB in size. </p>
    #          <p>When Amazon S3 receives a cross-origin request (or a pre-flight OPTIONS request) against a
    #          bucket, it evaluates the <code>cors</code> configuration on the bucket and uses the first
    #             <code>CORSRule</code> rule that matches the incoming browser request to enable a
    #          cross-origin request. For a rule to match, the following conditions must be met:</p>
    #          <ul>
    #             <li>
    #                <p>The request's <code>Origin</code> header must match <code>AllowedOrigin</code>
    #                elements.</p>
    #             </li>
    #             <li>
    #                <p>The request method (for example, GET, PUT, HEAD, and so on) or the
    #                   <code>Access-Control-Request-Method</code> header in case of a pre-flight
    #                   <code>OPTIONS</code> request must be one of the <code>AllowedMethod</code>
    #                elements. </p>
    #             </li>
    #             <li>
    #                <p>Every header specified in the <code>Access-Control-Request-Headers</code> request
    #                header of a pre-flight request must match an <code>AllowedHeader</code> element.
    #             </p>
    #             </li>
    #          </ul>
    #          <p> For more information about CORS, go to <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling Cross-Origin Resource Sharing</a> in
    #          the <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketCors.html">GetBucketCors</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketCors.html">DeleteBucketCors</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTOPTIONSobject.html">RESTOPTIONSobject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketCorsInput}.
    #
    # @option params [String] :bucket
    #   <p>Specifies the bucket impacted by the <code>cors</code>configuration.</p>
    #
    # @option params [CORSConfiguration] :cors_configuration
    #   <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling
    #               Cross-Origin Resource Sharing</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketCorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_cors(
    #     bucket: 'Bucket', # required
    #     cors_configuration: {
    #       cors_rules: [
    #         {
    #           id: 'ID',
    #           allowed_headers: [
    #             'member'
    #           ],
    #           allowed_methods: [
    #             'member'
    #           ], # required
    #           allowed_origins: [
    #             'member'
    #           ], # required
    #           expose_headers: [
    #             'member'
    #           ],
    #           max_age_seconds: 1
    #         }
    #       ] # required
    #     }, # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketCorsOutput
    #
    def put_bucket_cors(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketCorsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketCorsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketCors
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketCors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketCors,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_cors,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action uses the <code>encryption</code> subresource to configure default encryption
    #          and Amazon S3 Bucket Keys for an existing bucket.</p>
    #          <p>By default, all buckets have a default encryption configuration that
    #          uses server-side encryption with Amazon S3 managed keys (SSE-S3).
    #          You can optionally configure default encryption for a bucket by using server-side
    #          encryption with an Amazon Web Services KMS key (SSE-KMS) or a customer-provided key (SSE-C). If you specify default encryption by using
    #          SSE-KMS, you can also configure Amazon S3 Bucket Keys. For information about bucket default encryption,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3
    #             bucket default encryption</a> in the <i>Amazon S3 User Guide</i>. For more
    #          information about S3 Bucket Keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <important>
    #             <p>This action requires Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">
    #                Authenticating Requests (Amazon Web Services Signature Version 4)</a>. </p>
    #          </important>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutEncryptionConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html">GetBucketEncryption</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html">DeleteBucketEncryption</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketEncryptionInput}.
    #
    # @option params [String] :bucket
    #   <p>Specifies default encryption for a bucket using server-side encryption with different
    #            key options. By default, all buckets have a default encryption configuration that
    #            uses server-side encryption with Amazon S3 managed keys (SSE-S3). You can optionally configure default encryption for a bucket by using server-side
    #            encryption with an Amazon Web Services KMS key (SSE-KMS) or a customer-provided key (SSE-C). For information about the bucket default
    #            encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket Default Encryption</a>
    #            in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the server-side encryption
    #            configuration.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketEncryptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     server_side_encryption_configuration: {
    #       rules: [
    #         {
    #           apply_server_side_encryption_by_default: {
    #             sse_algorithm: 'AES256', # required - accepts ["AES256", "aws:kms"]
    #             kms_master_key_id: 'KMSMasterKeyID'
    #           },
    #           bucket_key_enabled: false
    #         }
    #       ] # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketEncryptionOutput
    #
    def put_bucket_encryption(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketEncryptionInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketEncryptionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketEncryption
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketEncryption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketEncryption,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_encryption,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts a S3 Intelligent-Tiering configuration to the specified bucket. You can have up to
    #          1,000 S3 Intelligent-Tiering configurations per bucket.</p>
    #          <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically moving data to the most cost-effective storage access tier, without performance impact or operational overhead. S3 Intelligent-Tiering delivers automatic cost savings in three low latency and high throughput access tiers. To get the lowest storage cost on data that can be accessed in minutes to hours, you can choose to activate additional archiving capabilities.</p>
    #          <p>The S3 Intelligent-Tiering storage class is  the ideal storage class for data with unknown, changing, or unpredictable access patterns, independent of object size or retention period. If the size of an object is less than 128 KB, it is not monitored and not eligible for auto-tiering. Smaller objects can be stored, but they are always charged at the Frequent Access tier rates in the S3 Intelligent-Tiering storage class.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for automatically optimizing frequently and infrequently accessed objects</a>.</p>
    #          <p>Operations related to <code>PutBucketIntelligentTieringConfiguration</code> include: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketIntelligentTieringConfiguration.html">DeleteBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketIntelligentTieringConfiguration.html">GetBucketIntelligentTieringConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketIntelligentTieringConfigurations.html">ListBucketIntelligentTieringConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>You only need S3 Intelligent-Tiering enabled on a bucket if you want to automatically
    #             move objects stored in the S3 Intelligent-Tiering storage class to the Archive Access
    #             or Deep Archive Access tier.</p>
    #          </note>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 400 Bad Request Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> InvalidArgument</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> Invalid Argument</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 400 Bad Request Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> TooManyConfigurations</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> You are attempting to create a new configuration
    #                      but have already reached the 1,000-configuration limit. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 403 Forbidden Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> AccessDenied</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> You are not the owner of the specified bucket,
    #                      or you do not have the <code>s3:PutIntelligentTieringConfiguration</code>
    #                      bucket permission to set the configuration on the bucket. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketIntelligentTieringConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #
    # @option params [IntelligentTieringConfiguration] :intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #
    # @return [Types::PutBucketIntelligentTieringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     intelligent_tiering_configuration: {
    #       id: 'Id', # required
    #       filter: {
    #         prefix: 'Prefix',
    #         tag: {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         },
    #         and: {
    #           prefix: 'Prefix',
    #         }
    #       },
    #       status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #       tierings: [
    #         {
    #           days: 1, # required
    #           access_tier: 'ARCHIVE_ACCESS' # required - accepts ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketIntelligentTieringConfigurationOutput
    #
    def put_bucket_intelligent_tiering_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketIntelligentTieringConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketIntelligentTieringConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketIntelligentTieringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketIntelligentTieringConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_intelligent_tiering_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This implementation of the <code>PUT</code> action adds an inventory configuration
    #          (identified by the inventory ID) to the bucket. You can have up to 1,000 inventory
    #          configurations per bucket. </p>
    #          <p>Amazon S3 inventory generates inventories of the objects in the bucket on a daily or weekly
    #          basis, and the results are published to a flat file. The bucket that is inventoried is
    #          called the <i>source</i> bucket, and the bucket where the inventory flat file
    #          is stored is called the <i>destination</i> bucket. The
    #             <i>destination</i> bucket must be in the same Amazon Web Services Region as the
    #             <i>source</i> bucket. </p>
    #          <p>When you configure an inventory for a <i>source</i> bucket, you specify
    #          the <i>destination</i> bucket where you want the inventory to be stored, and
    #          whether to generate the inventory daily or weekly. You can also configure what object
    #          metadata to include and whether to inventory all object versions or only current versions.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html">Amazon S3 Inventory</a> in the
    #          Amazon S3 User Guide.</p>
    #          <important>
    #             <p>You must create a bucket policy on the <i>destination</i> bucket to
    #             grant permissions to Amazon S3 to write objects to the bucket in the defined location. For an
    #             example policy, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/example-bucket-policies.html#example-bucket-policies-use-case-9"> Granting Permissions for Amazon S3 Inventory and Storage Class Analysis</a>.</p>
    #          </important>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutInventoryConfiguration</code> action. The bucket owner has this permission
    #          by default and can grant this permission to others. </p>
    #          <p>The <code>s3:PutInventoryConfiguration</code> permission allows a user to create an
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html">S3
    #             Inventory</a> report that includes all object metadata fields available and to
    #          specify the destination bucket to store the inventory. A user with read access to objects
    #          in the destination bucket can also access all object metadata fields that are available in
    #          the inventory report. </p>
    #          <p>To restrict access to an inventory report, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-10">Restricting access to an Amazon S3 Inventory report</a> in the
    #             <i>Amazon S3 User Guide</i>. For more information about the metadata fields
    #          available in S3 Inventory, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html#storage-inventory-contents">Amazon S3
    #             Inventory lists</a> in the <i>Amazon S3 User Guide</i>. For more
    #          information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions related to bucket subresource operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Identity and
    #             access management in Amazon S3</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 400 Bad Request Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> InvalidArgument</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> Invalid Argument</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 400 Bad Request Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> TooManyConfigurations</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> You are attempting to create a new configuration
    #                      but have already reached the 1,000-configuration limit. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p class="title">
    #                   <b>HTTP 403 Forbidden Error</b>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code:</i> AccessDenied</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause:</i> You are not the owner of the specified bucket,
    #                      or you do not have the <code>s3:PutInventoryConfiguration</code> bucket
    #                      permission to set the configuration on the bucket. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketInventoryConfiguration.html">GetBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketInventoryConfiguration.html">DeleteBucketInventoryConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketInventoryConfigurations.html">ListBucketInventoryConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketInventoryConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket where the inventory configuration will be stored.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the inventory configuration.</p>
    #
    # @option params [InventoryConfiguration] :inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketInventoryConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_inventory_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     inventory_configuration: {
    #       destination: {
    #         s3_bucket_destination: {
    #           account_id: 'AccountId',
    #           bucket: 'Bucket', # required
    #           format: 'CSV', # required - accepts ["CSV", "ORC", "Parquet"]
    #           prefix: 'Prefix',
    #           encryption: {
    #             sses3: { },
    #             ssekms: {
    #               key_id: 'KeyId' # required
    #             }
    #           }
    #         } # required
    #       }, # required
    #       is_enabled: false, # required
    #       filter: {
    #         prefix: 'Prefix' # required
    #       },
    #       id: 'Id', # required
    #       included_object_versions: 'All', # required - accepts ["All", "Current"]
    #       optional_fields: [
    #         'Size' # accepts ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm"]
    #       ],
    #       schedule: {
    #         frequency: 'Daily' # required - accepts ["Daily", "Weekly"]
    #       } # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketInventoryConfigurationOutput
    #
    def put_bucket_inventory_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketInventoryConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketInventoryConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketInventoryConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketInventoryConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketInventoryConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_inventory_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle
    #          configuration. Keep in mind that this will overwrite an existing lifecycle configuration,
    #          so if you want to retain any configuration details, they must be included in the new
    #          lifecycle configuration. For information about lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing
    #             your storage lifecycle</a>.</p>
    #          <note>
    #             <p>Bucket lifecycle configuration now supports specifying a lifecycle rule using an
    #             object key name prefix, one or more object tags, or a combination of both. Accordingly,
    #             this section describes the latest API. The previous version of the API supported
    #             filtering based only on an object key name prefix, which is supported for backward
    #             compatibility. For the related API description, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html">PutBucketLifecycle</a>.</p>
    #          </note>
    #          <p>
    #             <b>Rules</b>
    #          </p>
    #          <p>You specify the lifecycle configuration in your request body. The lifecycle
    #          configuration is specified as XML consisting of one or more rules. An Amazon S3 Lifecycle
    #          configuration can have up to 1,000 rules. This limit is not adjustable. Each rule consists
    #          of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Filter identifying a subset of objects to which the rule applies. The filter can
    #                be based on a key name prefix, object tags, or a combination of both.</p>
    #             </li>
    #             <li>
    #                <p>Status whether the rule is in effect.</p>
    #             </li>
    #             <li>
    #                <p>One or more lifecycle transition and expiration actions that you want Amazon S3 to
    #                perform on the objects identified by the filter. If the state of your bucket is
    #                versioning-enabled or versioning-suspended, you can have many versions of the same
    #                object (one current version and zero or more noncurrent versions). Amazon S3 provides
    #                predefined actions that you can specify for current and noncurrent object
    #                versions.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle Management</a>
    #          and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html">Lifecycle Configuration Elements</a>.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>By default, all Amazon S3 resources are private, including buckets, objects, and related
    #          subresources (for example, lifecycle configuration and website configuration). Only the
    #          resource owner (that is, the Amazon Web Services account that created it) can access the resource. The
    #          resource owner can optionally grant access permissions to others by writing an access
    #          policy. For this operation, a user must get the <code>s3:PutLifecycleConfiguration</code>
    #          permission.</p>
    #          <p>You can also explicitly deny permissions. Explicit deny also supersedes any other
    #          permissions. If you want to block users or accounts from removing or deleting objects from
    #          your bucket, you must deny them permissions for the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>s3:DeleteObject</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:DeleteObjectVersion</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>s3:PutLifecycleConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing Access Permissions to
    #             Your Amazon S3 Resources</a>.</p>
    #          <p>The following are related to <code>PutBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-configuration-examples.html">Examples of
    #                   Lifecycle Configuration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html">DeleteBucketLifecycle</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketLifecycleConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [BucketLifecycleConfiguration] :lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_lifecycle_configuration(
    #     bucket: 'Bucket', # required
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     lifecycle_configuration: {
    #       rules: [
    #         {
    #           expiration: {
    #             date: Time.now,
    #             days: 1,
    #             expired_object_delete_marker: false
    #           },
    #           id: 'ID',
    #           prefix: 'Prefix',
    #           filter: {
    #             # One of:
    #             prefix: 'Prefix',
    #             tag: {
    #               key: 'Key', # required
    #               value: 'Value' # required
    #             },
    #             object_size_greater_than: 1,
    #             object_size_less_than: 1,
    #             and: {
    #               prefix: 'Prefix',
    #               object_size_greater_than: 1,
    #               object_size_less_than: 1
    #             }
    #           },
    #           status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           transitions: [
    #             {
    #               date: Time.now,
    #               days: 1,
    #               storage_class: 'GLACIER' # accepts ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #             }
    #           ],
    #           noncurrent_version_transitions: [
    #             {
    #               noncurrent_days: 1,
    #               storage_class: 'GLACIER', # accepts ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]
    #               newer_noncurrent_versions: 1
    #             }
    #           ],
    #           noncurrent_version_expiration: {
    #             noncurrent_days: 1,
    #             newer_noncurrent_versions: 1
    #           },
    #           abort_incomplete_multipart_upload: {
    #             days_after_initiation: 1
    #           }
    #         }
    #       ] # required
    #     },
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketLifecycleConfigurationOutput
    #
    def put_bucket_lifecycle_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketLifecycleConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketLifecycleConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketLifecycleConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketLifecycleConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_lifecycle_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set the logging parameters for a bucket and to specify permissions for who can view and
    #          modify the logging parameters. All logs are saved to buckets in the same Amazon Web Services Region as
    #          the source bucket. To set the logging status of a bucket, you must be the bucket
    #          owner.</p>
    #          <p>The bucket owner is automatically granted FULL_CONTROL to all logs. You use the
    #             <code>Grantee</code> request element to grant access to other people. The
    #             <code>Permissions</code> request element specifies the kind of access the grantee has to
    #          the logs.</p>
    #          <important>
    #             <p>If the target bucket for log delivery uses the bucket owner enforced setting for S3
    #             Object Ownership, you can't use the <code>Grantee</code> request element to grant access
    #             to others. Permissions can only be granted using policies. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions for server access log delivery</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </important>
    #          <p>
    #             <b>Grantee Values</b>
    #          </p>
    #          <p>You can specify the person (grantee) to whom you're assigning access rights (using
    #          request elements) in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>By the person's ID:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                   </Grantee></code>
    #                </p>
    #                <p>DisplayName is optional and ignored in the request.</p>
    #             </li>
    #             <li>
    #                <p>By Email address:</p>
    #                <p>
    #                   <code> <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress></Grantee></code>
    #                </p>
    #                <p>The grantee is resolved to the CanonicalUser and, in a response to a GET Object
    #                acl request, appears as the CanonicalUser.</p>
    #             </li>
    #             <li>
    #                <p>By URI:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>To enable logging, you use LoggingEnabled and its children request elements. To disable
    #          logging, you use an empty BucketLoggingStatus request element:</p>
    #          <p>
    #             <code><BucketLoggingStatus xmlns="http://doc.s3.amazonaws.com/2006-03-01"
    #             /></code>
    #          </p>
    #          <p>For more information about server access logging, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html">Server Access Logging</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p>For more information about creating a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>. For more
    #          information about returning the logging status of a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html">GetBucketLogging</a>.</p>
    #          <p>The following operations are related to <code>PutBucketLogging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLogging.html">GetBucketLogging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketLoggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to set the logging parameters.</p>
    #
    # @option params [BucketLoggingStatus] :bucket_logging_status
    #   <p>Container for logging status information.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash of the <code>PutBucketLogging</code> request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_logging(
    #     bucket: 'Bucket', # required
    #     bucket_logging_status: {
    #       logging_enabled: {
    #         target_bucket: 'TargetBucket', # required
    #         target_grants: [
    #           {
    #             grantee: {
    #               display_name: 'DisplayName',
    #               email_address: 'EmailAddress',
    #               id: 'ID',
    #               uri: 'URI',
    #               type: 'CanonicalUser' # required - accepts ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #             },
    #             permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "READ", "WRITE"]
    #           }
    #         ],
    #         target_prefix: 'TargetPrefix' # required
    #       }
    #     }, # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketLoggingOutput
    #
    def put_bucket_logging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketLoggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketLoggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketLogging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketLogging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_logging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.
    #          You can have up to 1,000 metrics configurations per bucket. If you're updating an existing
    #          metrics configuration, note that this is a full replacement of the existing metrics
    #          configuration. If you don't include the elements you want to keep, they are erased.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutMetricsConfiguration</code> action. The bucket owner has this permission by
    #          default. The bucket owner can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>For information about CloudWatch request metrics for Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html">Monitoring
    #             Metrics with Amazon CloudWatch</a>.</p>
    #          <p>The following operations are related to
    #          <code>PutBucketMetricsConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html">DeleteBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html">GetBucketMetricsConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBucketMetricsConfigurations.html">ListBucketMetricsConfigurations</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>GetBucketLifecycle</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>TooManyConfigurations</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: You are attempting to create a new configuration but have
    #                      already reached the 1,000-configuration limit.</p>
    #                   </li>
    #                   <li>
    #                      <p>HTTP Status Code: HTTP 400 Bad Request</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketMetricsConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket for which the metrics configuration is set.</p>
    #
    # @option params [String] :id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and
    #            can only contain letters, numbers, periods, dashes, and underscores.</p>
    #
    # @option params [MetricsConfiguration] :metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketMetricsConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     metrics_configuration: {
    #       id: 'Id', # required
    #       filter: {
    #         # One of:
    #         prefix: 'Prefix',
    #         tag: {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         },
    #         access_point_arn: 'AccessPointArn',
    #         and: {
    #           prefix: 'Prefix',
    #           access_point_arn: 'AccessPointArn'
    #         }
    #       }
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketMetricsConfigurationOutput
    #
    def put_bucket_metrics_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketMetricsConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketMetricsConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketMetricsConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketMetricsConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketMetricsConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_metrics_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables notifications of specified events for a bucket. For more information about event
    #          notifications, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event
    #          Notifications</a>.</p>
    #          <p>Using this API, you can replace an existing notification configuration. The
    #          configuration is an XML file that defines the event types that you want Amazon S3 to publish and
    #          the destination where you want Amazon S3 to publish an event notification when it detects an
    #          event of the specified type.</p>
    #          <p>By default, your bucket has no event notifications configured. That is, the notification
    #          configuration will be an empty <code>NotificationConfiguration</code>.</p>
    #          <p>
    #             <code><NotificationConfiguration></code>
    #          </p>
    #          <p>
    #             <code></NotificationConfiguration></code>
    #          </p>
    #          <p>This action replaces the existing notification configuration with the configuration you
    #          include in the request body.</p>
    #          <p>After Amazon S3 receives this request, it first verifies that any Amazon Simple Notification
    #          Service (Amazon SNS) or Amazon Simple Queue Service (Amazon SQS) destination exists, and
    #          that the bucket owner has permission to publish to it by sending a test notification. In
    #          the case of Lambda destinations, Amazon S3 verifies that the Lambda function permissions
    #          grant Amazon S3 permission to invoke the function from the Amazon S3 bucket. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Notifications for Amazon S3 Events</a>.</p>
    #          <p>You can disable notifications by adding the empty NotificationConfiguration
    #          element.</p>
    #          <p>For more information about the number of event notification configurations that you can
    #          create per bucket, see <a href="https://docs.aws.amazon.com/general/latest/gr/s3.html#limits_s3">Amazon S3 service quotas</a> in <i>Amazon Web Services
    #             General Reference</i>.</p>
    #          <p>By default, only the bucket owner can configure notifications on a bucket. However,
    #          bucket owners can use a bucket policy to grant permission to other users to set this
    #          configuration with <code>s3:PutBucketNotification</code> permission.</p>
    #          <note>
    #             <p>The PUT notification is an atomic operation. For example, suppose your notification
    #             configuration includes SNS topic, SQS queue, and Lambda function configurations. When
    #             you send a PUT request with this configuration, Amazon S3 sends test messages to your SNS
    #             topic. If the message fails, the entire PUT action will fail, and Amazon S3 will not add the
    #             configuration to your bucket.</p>
    #          </note>
    #          <p>
    #             <b>Responses</b>
    #          </p>
    #          <p>If the configuration in the request body includes only one
    #             <code>TopicConfiguration</code> specifying only the
    #             <code>s3:ReducedRedundancyLostObject</code> event type, the response will also include
    #          the <code>x-amz-sns-test-message-id</code> header containing the message ID of the test
    #          notification sent to the topic.</p>
    #          <p>The following action is related to
    #          <code>PutBucketNotificationConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html">GetBucketNotificationConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketNotificationConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket.</p>
    #
    # @option params [NotificationConfiguration] :notification_configuration
    #   <p>A container for specifying the notification configuration of the bucket. If this element
    #            is empty, notifications are turned off for the bucket.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [Boolean] :skip_destination_validation
    #   <p>Skips validation of Amazon SQS, Amazon SNS, and Lambda
    #            destinations. True or false value.</p>
    #
    # @return [Types::PutBucketNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_notification_configuration(
    #     bucket: 'Bucket', # required
    #     notification_configuration: {
    #       topic_configurations: [
    #         {
    #           id: 'Id',
    #           topic_arn: 'TopicArn', # required
    #           events: [
    #             's3:ReducedRedundancyLostObject' # accepts ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated", "s3:ObjectRestore:*", "s3:ObjectRestore:Post", "s3:ObjectRestore:Completed", "s3:Replication:*", "s3:Replication:OperationFailedReplication", "s3:Replication:OperationNotTracked", "s3:Replication:OperationMissedThreshold", "s3:Replication:OperationReplicatedAfterThreshold", "s3:ObjectRestore:Delete", "s3:LifecycleTransition", "s3:IntelligentTiering", "s3:ObjectAcl:Put", "s3:LifecycleExpiration:*", "s3:LifecycleExpiration:Delete", "s3:LifecycleExpiration:DeleteMarkerCreated", "s3:ObjectTagging:*", "s3:ObjectTagging:Put", "s3:ObjectTagging:Delete"]
    #           ], # required
    #           filter: {
    #             key: {
    #               filter_rules: [
    #                 {
    #                   name: 'prefix', # accepts ["prefix", "suffix"]
    #                   value: 'Value'
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ],
    #       queue_configurations: [
    #         {
    #           id: 'Id',
    #           queue_arn: 'QueueArn', # required
    #         }
    #       ],
    #       lambda_function_configurations: [
    #         {
    #           id: 'Id',
    #           lambda_function_arn: 'LambdaFunctionArn', # required
    #         }
    #       ],
    #       event_bridge_configuration: { }
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     skip_destination_validation: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketNotificationConfigurationOutput
    #
    def put_bucket_notification_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketNotificationConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketNotificationConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketNotificationConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketNotificationConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_notification_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or modifies <code>OwnershipControls</code> for an Amazon S3 bucket. To use this
    #          operation, you must have the <code>s3:PutBucketOwnershipControls</code> permission. For
    #          more information about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/user-guide/using-with-s3-actions.html">Specifying permissions in a
    #             policy</a>. </p>
    #          <p>For information about Amazon S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/user-guide/about-object-ownership.html">Using object
    #             ownership</a>. </p>
    #          <p>The following operations are related to <code>PutBucketOwnershipControls</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>GetBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteBucketOwnershipControls</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketOwnershipControlsInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to set.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash of the <code>OwnershipControls</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [OwnershipControls] :ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or
    #            ObjectWriter) that you want to apply to this Amazon S3 bucket.</p>
    #
    # @return [Types::PutBucketOwnershipControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_ownership_controls(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     ownership_controls: {
    #       rules: [
    #         {
    #           object_ownership: 'BucketOwnerPreferred' # required - accepts ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketOwnershipControlsOutput
    #
    def put_bucket_ownership_controls(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketOwnershipControlsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketOwnershipControlsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketOwnershipControls
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketOwnershipControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketOwnershipControls,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_ownership_controls,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are using an identity other than
    #          the root user of the Amazon Web Services account that owns the bucket, the calling identity must have the
    #             <code>PutBucketPolicy</code> permissions on the specified bucket and belong to the
    #          bucket owner's account in order to use this operation.</p>
    #          <p>If you don't have <code>PutBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error.</p>
    #          <important>
    #             <p> As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this operation, even if the policy explicitly denies the root user the
    #             ability to perform this action. </p>
    #          </important>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html">Bucket policy
    #             examples</a>.</p>
    #          <p>The following operations are related to <code>PutBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketPolicyInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash of the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [Boolean] :confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #
    # @option params [String] :policy
    #   <p>The bucket policy as a JSON document.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_policy(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     confirm_remove_self_bucket_access: false,
    #     policy: 'Policy', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketPolicyOutput
    #
    def put_bucket_policy(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketPolicyInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketPolicyInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketPolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketPolicy,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_policy,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a replication configuration or replaces an existing one. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <p>Specify the replication configuration in the request body. In the replication
    #          configuration, you provide the name of the destination bucket or buckets where you want
    #          Amazon S3 to replicate objects, the IAM role that Amazon S3 can assume to replicate objects on your
    #          behalf, and other relevant information.</p>
    #          <p>A replication configuration must include at least one rule, and can contain a maximum of
    #          1,000. Each rule identifies a subset of objects to replicate by filtering the objects in
    #          the source bucket. To choose additional subsets of objects to replicate, add a rule for
    #          each subset.</p>
    #          <p>To specify a subset of the objects in the source bucket to apply a replication rule to,
    #          add the Filter element as a child of the Rule element. You can filter objects based on an
    #          object key prefix, one or more object tags, or both. When you add the Filter element in the
    #          configuration, you must also add the following elements:
    #             <code>DeleteMarkerReplication</code>, <code>Status</code>, and
    #          <code>Priority</code>.</p>
    #          <note>
    #             <p>If you are using an earlier version of the replication configuration, Amazon S3 handles
    #             replication of delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #          </note>
    #          <p>For information about enabling versioning on a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html">Using Versioning</a>.</p>
    #          <p>
    #             <b>Handling Replication of Encrypted Objects</b>
    #          </p>
    #          <p>By default, Amazon S3 doesn't replicate objects that are stored at rest using server-side
    #          encryption with KMS keys. To replicate Amazon Web Services KMS-encrypted objects, add the following:
    #             <code>SourceSelectionCriteria</code>, <code>SseKmsEncryptedObjects</code>,
    #             <code>Status</code>, <code>EncryptionConfiguration</code>, and
    #             <code>ReplicaKmsKeyID</code>. For information about replication configuration, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html">Replicating Objects
    #             Created with SSE Using KMS keys</a>.</p>
    #          <p>For information on <code>PutBucketReplication</code> errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList">List of
    #             replication-related error codes</a>
    #          </p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>To create a <code>PutBucketReplication</code> request, you must have
    #             <code>s3:PutReplicationConfiguration</code> permissions for the bucket.
    #
    #       </p>
    #          <p>By default, a resource owner, in this case the Amazon Web Services account that created the bucket,
    #          can perform this operation. The resource owner can also grant others permissions to perform
    #          the operation. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing Access Permissions to
    #             Your Amazon S3 Resources</a>.</p>
    #          <note>
    #             <p>To perform this operation, the user or role performing the action must have the
    #                <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">iam:PassRole</a> permission.</p>
    #          </note>
    #          <p>The following operations are related to <code>PutBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html">GetBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html">DeleteBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketReplicationInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [ReplicationConfiguration] :replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a
    #            replication configuration is 2 MB.</p>
    #
    # @option params [String] :token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_replication(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     replication_configuration: {
    #       role: 'Role', # required
    #       rules: [
    #         {
    #           id: 'ID',
    #           priority: 1,
    #           prefix: 'Prefix',
    #           filter: {
    #             # One of:
    #             prefix: 'Prefix',
    #             tag: {
    #               key: 'Key', # required
    #               value: 'Value' # required
    #             },
    #             and: {
    #               prefix: 'Prefix',
    #             }
    #           },
    #           status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           source_selection_criteria: {
    #             sse_kms_encrypted_objects: {
    #               status: 'Enabled' # required - accepts ["Enabled", "Disabled"]
    #             },
    #             replica_modifications: {
    #               status: 'Enabled' # required - accepts ["Enabled", "Disabled"]
    #             }
    #           },
    #           existing_object_replication: {
    #             status: 'Enabled' # required - accepts ["Enabled", "Disabled"]
    #           },
    #           destination: {
    #             bucket: 'Bucket', # required
    #             account: 'Account',
    #             storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #             access_control_translation: {
    #               owner: 'Destination' # required - accepts ["Destination"]
    #             },
    #             encryption_configuration: {
    #               replica_kms_key_id: 'ReplicaKmsKeyID'
    #             },
    #             replication_time: {
    #               status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #               time: {
    #                 minutes: 1
    #               } # required
    #             },
    #             metrics: {
    #               status: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #             }
    #           }, # required
    #           delete_marker_replication: {
    #             status: 'Enabled' # accepts ["Enabled", "Disabled"]
    #           }
    #         }
    #       ] # required
    #     }, # required
    #     token: 'Token',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketReplicationOutput
    #
    def put_bucket_replication(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketReplicationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketReplicationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketReplication
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketReplication,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_replication,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the request payment configuration for a bucket. By default, the bucket owner pays
    #          for downloads from the bucket. This configuration parameter enables the bucket owner (only)
    #          to specify that the person requesting the download will be charged for the download. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html">Requester Pays
    #          Buckets</a>.</p>
    #          <p>The following operations are related to <code>PutBucketRequestPayment</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html">GetBucketRequestPayment</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketRequestPaymentInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [RequestPaymentConfiguration] :request_payment_configuration
    #   <p>Container for Payer.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketRequestPaymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_request_payment(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     request_payment_configuration: {
    #       payer: 'Requester' # required - accepts ["Requester", "BucketOwner"]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketRequestPaymentOutput
    #
    def put_bucket_request_payment(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketRequestPaymentInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketRequestPaymentInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketRequestPayment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketRequestPayment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketRequestPayment,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_request_payment,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the tags for a bucket.</p>
    #          <p>Use tags to organize your Amazon Web Services bill to reflect your own cost structure. To do this,
    #          sign up to get your Amazon Web Services account bill with tag key values included. Then, to see the cost
    #          of combined resources, organize your billing information according to resources with the
    #          same tag key values. For example, you can tag several resources with a specific application
    #          name, and then organize your billing information to see the total cost of that application
    #          across several services. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Cost Allocation and
    #             Tagging</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CostAllocTagging.html">Using Cost Allocation in Amazon S3 Bucket
    #             Tags</a>.</p>
    #          <note>
    #             <p> When this operation sets the tags for a bucket, it will overwrite any current tags
    #             the bucket already has. You cannot use this operation to add tags to an existing list of
    #             tags.</p>
    #          </note>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutBucketTagging</code> action. The bucket owner has this permission by default
    #          and can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>
    #             <code>PutBucketTagging</code> has the following special errors:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>InvalidTagError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The tag provided was not a valid tag. This error can occur if
    #                      the tag did not pass input validation. For information about tag restrictions,
    #                      see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> and <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html">Amazon Web Services-Generated Cost Allocation Tag Restrictions</a>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>MalformedXMLError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The XML provided does not match the schema.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>OperationAbortedError </code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: A conflicting conditional action is currently in progress
    #                      against this resource. Please try again.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>InternalError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The service was unable to apply the provided tag to the
    #                      bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to <code>PutBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [Tagging] :tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_tagging(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     tagging: {
    #       tag_set: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ] # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketTaggingOutput
    #
    def put_bucket_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the versioning state of an existing bucket.</p>
    #          <p>You can set the versioning state with one of the following values:</p>
    #          <p>
    #             <b>Enabled</b>—Enables versioning for the objects in the
    #          bucket. All objects added to the bucket receive a unique version ID.</p>
    #          <p>
    #             <b>Suspended</b>—Disables versioning for the objects in the
    #          bucket. All objects added to the bucket receive the version ID null.</p>
    #          <p>If the versioning state has never been set on a bucket, it has no versioning state; a
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a> request does not return a versioning state value.</p>
    #          <p>In order to enable MFA Delete, you must be the bucket owner. If you are the bucket owner
    #          and want to enable MFA Delete in the bucket versioning configuration, you must include the
    #             <code>x-amz-mfa request</code> header and the <code>Status</code> and the
    #             <code>MfaDelete</code> request elements in a request to set the versioning state of the
    #          bucket.</p>
    #          <important>
    #             <p>If you have an object expiration lifecycle policy in your non-versioned bucket and
    #             you want to maintain the same permanent delete behavior when you enable versioning, you
    #             must add a noncurrent expiration policy. The noncurrent expiration lifecycle policy will
    #             manage the deletes of the noncurrent object versions in the version-enabled bucket. (A
    #             version-enabled bucket maintains one current and zero or more noncurrent object
    #             versions.) For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config">Lifecycle and Versioning</a>.</p>
    #          </important>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutBucketVersioningInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #
    # @option params [String] :content_md5
    #   <p>>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a
    #            message integrity check to verify that the request body was not corrupted in transit. For
    #            more information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device.</p>
    #
    # @option params [VersioningConfiguration] :versioning_configuration
    #   <p>Container for setting the versioning state.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketVersioningOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_versioning(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     mfa: 'MFA',
    #     versioning_configuration: {
    #       mfa_delete: 'Enabled', # accepts ["Enabled", "Disabled"]
    #       status: 'Enabled' # accepts ["Enabled", "Suspended"]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketVersioningOutput
    #
    def put_bucket_versioning(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketVersioningInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketVersioningInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketVersioning
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketVersioning
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketVersioning,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_versioning,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the configuration of the website that is specified in the <code>website</code>
    #          subresource. To configure a bucket as a website, you can add this subresource on the bucket
    #          with website configuration information such as the file name of the index document and any
    #          redirect rules. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a>.</p>
    #          <p>This PUT action requires the <code>S3:PutBucketWebsite</code> permission. By default,
    #          only the bucket owner can configure the website attached to a bucket; however, bucket
    #          owners can allow other users to set the website configuration by writing a bucket policy
    #          that grants them the <code>S3:PutBucketWebsite</code> permission.</p>
    #          <p>To redirect all website requests sent to the bucket's website endpoint, you add a
    #          website configuration with the following elements. Because all requests are sent to another
    #          website, you don't need to provide index document name for the bucket.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>WebsiteConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RedirectAllRequestsTo</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HostName</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Protocol</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>If you want granular control over redirects, you can use the following elements to add
    #          routing rules that describe conditions for redirecting requests and information about the
    #          redirect destination. In this case, the website configuration must provide an index
    #          document for the bucket, because some requests might not be redirected. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>WebsiteConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IndexDocument</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Suffix</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ErrorDocument</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RoutingRules</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RoutingRule</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Condition</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HttpErrorCodeReturnedEquals</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>KeyPrefixEquals</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Redirect</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Protocol</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HostName</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ReplaceKeyPrefixWith</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ReplaceKeyWith</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>HttpRedirectCode</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Amazon S3 has a limitation of 50 routing rules per website configuration. If you require more
    #          than 50 routing rules, you can use object redirect. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html">Configuring an
    #             Object Redirect</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutBucketWebsiteInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [WebsiteConfiguration] :website_configuration
    #   <p>Container for the request.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutBucketWebsiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_website(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     website_configuration: {
    #       error_document: {
    #         key: 'Key' # required
    #       },
    #       index_document: {
    #         suffix: 'Suffix' # required
    #       },
    #       redirect_all_requests_to: {
    #         host_name: 'HostName', # required
    #         protocol: 'http' # accepts ["http", "https"]
    #       },
    #       routing_rules: [
    #         {
    #           condition: {
    #             http_error_code_returned_equals: 'HttpErrorCodeReturnedEquals',
    #             key_prefix_equals: 'KeyPrefixEquals'
    #           },
    #           redirect: {
    #             host_name: 'HostName',
    #             http_redirect_code: 'HttpRedirectCode',
    #             protocol: 'http', # accepts ["http", "https"]
    #             replace_key_prefix_with: 'ReplaceKeyPrefixWith',
    #             replace_key_with: 'ReplaceKeyWith'
    #           } # required
    #         }
    #       ]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBucketWebsiteOutput
    #
    def put_bucket_website(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBucketWebsiteInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBucketWebsiteInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBucketWebsite
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutBucketWebsite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutBucketWebsite,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_bucket_website,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an object to a bucket. You must have WRITE permissions on a bucket to add an object
    #          to it.</p>
    #          <note>
    #             <p>Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the
    #             entire object to the bucket. You cannot use <code>PutObject</code> to only update a
    #             single piece of metadata for an existing object. You must put the entire object with
    #             updated metadata if you want to update some values.</p>
    #          </note>
    #          <p>Amazon S3 is a distributed system. If it receives multiple write requests for the same object
    #          simultaneously, it overwrites all but the last object written. To prevent objects from
    #          being deleted or overwritten, you can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Amazon S3 Object
    #             Lock</a>.</p>
    #          <p>To ensure that data is not corrupted traversing the network, use the
    #             <code>Content-MD5</code> header. When you use this header, Amazon S3 checks the object
    #          against the provided MD5 value and, if they do not match, returns an error. Additionally,
    #          you can calculate the MD5 while putting an object to Amazon S3 and compare the returned ETag to
    #          the calculated MD5 value.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>To successfully complete the <code>PutObject</code> request, you must have the
    #                      <code>s3:PutObject</code> in your IAM permissions.</p>
    #                </li>
    #                <li>
    #                   <p>To successfully change the objects acl of your <code>PutObject</code> request,
    #                   you must have the <code>s3:PutObjectAcl</code> in your IAM permissions.</p>
    #                </li>
    #                <li>
    #                   <p>To successfully set the tag-set with your <code>PutObject</code> request, you
    #                   must have the <code>s3:PutObjectTagging</code> in your IAM permissions.</p>
    #                </li>
    #                <li>
    #                   <p> The <code>Content-MD5</code> header is required for any request to upload an
    #                   object with a retention period configured using Amazon S3 Object Lock. For more
    #                   information about Amazon S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html">Amazon S3 Object Lock
    #                      Overview</a> in the <i>Amazon S3 User Guide</i>. </p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>You have three mutually exclusive options to protect data using server-side encryption
    #          in Amazon S3, depending on how you choose to manage the encryption keys. Specifically, the
    #          encryption key options are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and
    #          customer-provided keys (SSE-C). Amazon S3 encrypts data with server-side encryption by using
    #          Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3 to encrypt data at by
    #          rest using server-side encryption with other key options. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using
    #             Server-Side Encryption</a>.</p>
    #          <p>When adding a new object, you can use headers to grant ACL-based permissions to
    #          individual Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are
    #          then added to the ACL on the object. By default, all objects are private. Only the owner
    #          has full access control. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL) Overview</a>
    #          and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing
    #             ACLs Using the REST API</a>. </p>
    #          <p>If the bucket that you're uploading objects to uses the bucket owner enforced setting
    #          for S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that
    #          use this setting only accept PUT requests that don't specify an ACL or PUT requests that
    #          specify bucket owner full control ACLs, such as the <code>bucket-owner-full-control</code>
    #          canned ACL or an equivalent form of this ACL expressed in the XML format. PUT requests that
    #          contain other ACLs (for example, custom grants to certain Amazon Web Services accounts) fail and return a
    #             <code>400</code> error with the error code <code>AccessControlListNotSupported</code>.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling ownership of
    #             objects and disabling ACLs</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>If your bucket uses the bucket owner enforced setting for Object Ownership, all
    #             objects written to the bucket by any account will be owned by the bucket owner.</p>
    #          </note>
    #          <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #          STANDARD storage class provides high durability and high availability. Depending on
    #          performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #          the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you enable versioning for a bucket, Amazon S3 automatically generates a unique version ID
    #          for the object being stored. Amazon S3 returns this ID in the response. When you enable
    #          versioning for a bucket, if Amazon S3 receives multiple write requests for the same object
    #          simultaneously, it stores all of the objects. For more information about versioning, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html">Adding Objects to
    #             Versioning Enabled Buckets</a>. For information about returning the versioning state
    #          of a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a>. </p>
    #          <p>For more information about related Amazon S3 APIs, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutObjectInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #               ACL</a>.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :body
    #   <p>Object data.</p>
    #
    # @option params [String] :bucket
    #   <p>The bucket name to which the PUT action was initiated. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :cache_control
    #   <p> Can be used to specify caching behavior along the request/reply chain. For more
    #            information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #
    # @option params [String] :content_disposition
    #   <p>Specifies presentational information for the object. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc6266#section-4">https://www.rfc-editor.org/rfc/rfc6266#section-4</a>.</p>
    #
    # @option params [String] :content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding">https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding</a>.</p>
    #
    # @option params [String] :content_language
    #   <p>The language the content is in.</p>
    #
    # @option params [Integer] :content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length</a>.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the message (without the headers) according to
    #            RFC 1864. This header can be used as a message integrity check to verify that the data is
    #            the same data that was originally sent. Although it is optional, we recommend using the
    #            Content-MD5 mechanism as an end-to-end integrity check. For more information about REST
    #            request authentication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the contents. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type</a>.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Time] :expires
    #   <p>The date and time at which the object is no longer cacheable. For more information, see
    #               <a href="https://www.rfc-editor.org/rfc/rfc7234#section-5.3">https://www.rfc-editor.org/rfc/rfc7234#section-5.3</a>.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the PUT action was initiated.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    # @option params [String] :server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3 (for example,
    #            AES256, <code>aws:kms</code>).</p>
    #
    # @option params [String] :storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The
    #            STANDARD storage class provides high durability and high availability. Depending on
    #            performance needs, you can specify a different Storage Class. Amazon S3 on Outposts only uses
    #            the OUTPOSTS Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another
    #            object in the same bucket or to an external URL. Amazon S3 stores the value of this header in
    #            the object metadata. For information about object metadata, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html">Object Key and Metadata</a>.</p>
    #            <p>In the following example, the request header sets the redirect to an object
    #            (anotherPage.html) in the same bucket:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: /anotherPage.html</code>
    #            </p>
    #            <p>In the following example, the request header sets the object redirect to another
    #            website:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: http://www.example.com/</code>
    #            </p>
    #            <p>For more information about website hosting in Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a> and
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html">How to
    #               Configure Website Page Redirects</a>. </p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :ssekms_key_id
    #   <p>If <code>x-amz-server-side-encryption</code> has a valid value of <code>aws:kms</code>,
    #            this header specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for the object. If you specify
    #               <code>x-amz-server-side-encryption:aws:kms</code>, but do not provide<code>
    #               x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the Amazon Web Services managed key to
    #            protect the data. If the KMS key does not exist in the same account issuing the command,
    #            you must use the full ARN and not just the ID. </p>
    #
    # @option params [String] :ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a base64-encoded UTF-8 string holding JSON with the encryption context
    #            key-value pairs. This value is stored as object metadata and automatically gets passed on to
    #            Amazon Web Services KMS for future <code>GetObject</code> or <code>CopyObject</code> operations on this
    #            object.</p>
    #
    # @option params [Boolean] :bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using AWS KMS (SSE-KMS). Setting this header to <code>true</code>
    #            causes Amazon S3 to use an S3 Bucket Key for object encryption with SSE-KMS.</p>
    #            <p>Specifying this header with a PUT action doesn’t affect bucket-level settings for S3
    #            Bucket Key.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For
    #            example, "Key1=Value1")</p>
    #
    # @option params [String] :object_lock_mode
    #   <p>The Object Lock mode that you want to apply to this object.</p>
    #
    # @option params [Time] :object_lock_retain_until_date
    #   <p>The date and time when you want this object's Object Lock to expire. Must be formatted
    #            as a timestamp parameter.</p>
    #
    # @option params [String] :object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold will be applied to this object. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #     body: 'Body',
    #     bucket: 'Bucket', # required
    #     cache_control: 'CacheControl',
    #     content_disposition: 'ContentDisposition',
    #     content_encoding: 'ContentEncoding',
    #     content_language: 'ContentLanguage',
    #     content_length: 1,
    #     content_md5: 'ContentMD5',
    #     content_type: 'ContentType',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     checksum_crc32: 'ChecksumCRC32',
    #     checksum_crc32_c: 'ChecksumCRC32C',
    #     checksum_sha1: 'ChecksumSHA1',
    #     checksum_sha256: 'ChecksumSHA256',
    #     expires: Time.now,
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write_acp: 'GrantWriteACP',
    #     key: 'Key', # required
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #     website_redirect_location: 'WebsiteRedirectLocation',
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     ssekms_key_id: 'SSEKMSKeyId',
    #     ssekms_encryption_context: 'SSEKMSEncryptionContext',
    #     bucket_key_enabled: false,
    #     request_payer: 'requester', # accepts ["requester"]
    #     tagging: 'Tagging',
    #     object_lock_mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #     object_lock_retain_until_date: Time.now,
    #     object_lock_legal_hold_status: 'ON', # accepts ["ON", "OFF"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectOutput
    #   resp.data.expiration #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.version_id #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def put_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObject
      )
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        streaming: true,
        request_checksum_required: false,
        signed_streaming: true,
        require_decoded_content_length: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uses the <code>acl</code> subresource to set the access control list (ACL) permissions
    #          for a new or existing object in an S3 bucket. You must have <code>WRITE_ACP</code>
    #          permission to set the ACL of an object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions">What
    #             permissions can I grant?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>Depending on your application needs, you can choose to set the ACL on an object using
    #          either the request body or the headers. For example, if you have an existing application
    #          that updates a bucket ACL using the request body, you can continue to use that approach.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL) Overview</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    #          <important>
    #             <p>If your bucket uses the bucket owner enforced setting for S3 Object Ownership, ACLs
    #             are disabled and no longer affect permissions. You must use policies to grant access to
    #             your bucket and the objects in it. Requests to set ACLs or update ACLs fail and return
    #             the <code>AccessControlListNotSupported</code> error code. Requests to read ACLs are
    #             still supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling object
    #                ownership</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </important>
    #          <p>
    #             <b>Access Permissions</b>
    #          </p>
    #          <p>You can set access permissions using one of the following methods:</p>
    #          <ul>
    #             <li>
    #                <p>Specify a canned ACL with the <code>x-amz-acl</code> request header. Amazon S3 supports
    #                a set of predefined ACLs, known as canned ACLs. Each canned ACL has a predefined set
    #                of grantees and permissions. Specify the canned ACL name as the value of
    #                   <code>x-amz-ac</code>l. If you use this header, you cannot use other access
    #                control-specific headers in your request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                   ACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Specify access permissions explicitly with the <code>x-amz-grant-read</code>,
    #                   <code>x-amz-grant-read-acp</code>, <code>x-amz-grant-write-acp</code>, and
    #                   <code>x-amz-grant-full-control</code> headers. When using these headers, you
    #                specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3 groups) who
    #                will receive the permission. If you use these ACL-specific headers, you cannot use
    #                   <code>x-amz-acl</code> header to set a canned ACL. These parameters map to the set
    #                of permissions that Amazon S3 supports in an ACL. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control
    #                   List (ACL) Overview</a>.</p>
    #                <p>You specify each grantee as a type=value pair, where the type is one of the
    #                following:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>id</code> – if the value specified is the canonical user ID of an
    #                      Amazon Web Services account</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>uri</code> – if you are granting permissions to a predefined
    #                      group</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>emailAddress</code> – if the value specified is the email address of
    #                      an Amazon Web Services account</p>
    #                      <note>
    #                         <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                         <ul>
    #                            <li>
    #                               <p>US East (N. Virginia)</p>
    #                            </li>
    #                            <li>
    #                               <p>US West (N. California)</p>
    #                            </li>
    #                            <li>
    #                               <p> US West (Oregon)</p>
    #                            </li>
    #                            <li>
    #                               <p> Asia Pacific (Singapore)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Sydney)</p>
    #                            </li>
    #                            <li>
    #                               <p>Asia Pacific (Tokyo)</p>
    #                            </li>
    #                            <li>
    #                               <p>Europe (Ireland)</p>
    #                            </li>
    #                            <li>
    #                               <p>South America (São Paulo)</p>
    #                            </li>
    #                         </ul>
    #                         <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                      </note>
    #                   </li>
    #                </ul>
    #                <p>For example, the following <code>x-amz-grant-read</code> header grants list
    #                objects permission to the two Amazon Web Services accounts identified by their email
    #                addresses.</p>
    #                <p>
    #                   <code>x-amz-grant-read: emailAddress="xyz@amazon.com",
    #                   emailAddress="abc@amazon.com" </code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>You can use either a canned ACL or specify access permissions explicitly. You cannot do
    #          both.</p>
    #          <p>
    #             <b>Grantee Values</b>
    #          </p>
    #          <p>You can specify the person (grantee) to whom you're assigning access rights (using
    #          request elements) in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>By the person's ID:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                   </Grantee></code>
    #                </p>
    #                <p>DisplayName is optional and ignored in the request.</p>
    #             </li>
    #             <li>
    #                <p>By URI:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>By Email address:</p>
    #                <p>
    #                   <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                   xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>lt;/Grantee></code>
    #                </p>
    #                <p>The grantee is resolved to the CanonicalUser and, in a response to a GET Object
    #                acl request, appears as the CanonicalUser.</p>
    #                <note>
    #                   <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                   <ul>
    #                      <li>
    #                         <p>US East (N. Virginia)</p>
    #                      </li>
    #                      <li>
    #                         <p>US West (N. California)</p>
    #                      </li>
    #                      <li>
    #                         <p> US West (Oregon)</p>
    #                      </li>
    #                      <li>
    #                         <p> Asia Pacific (Singapore)</p>
    #                      </li>
    #                      <li>
    #                         <p>Asia Pacific (Sydney)</p>
    #                      </li>
    #                      <li>
    #                         <p>Asia Pacific (Tokyo)</p>
    #                      </li>
    #                      <li>
    #                         <p>Europe (Ireland)</p>
    #                      </li>
    #                      <li>
    #                         <p>South America (São Paulo)</p>
    #                      </li>
    #                   </ul>
    #                   <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Versioning</b>
    #          </p>
    #          <p>The ACL of an object is set at the object version level. By default, PUT sets the ACL of
    #          the current version of an object. To set the ACL of a different version, use the
    #             <code>versionId</code> subresource.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutObjectAclInput}.
    #
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #               ACL</a>.</p>
    #
    # @option params [AccessControlPolicy] :access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #
    # @option params [String] :bucket
    #   <p>The bucket name that contains the object to which you want to attach the ACL. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the data. This header must be used as a message
    #            integrity check to verify that the request body was not corrupted in transit. For more
    #            information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC
    #            1864.></a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and
    #            overwrites of those objects.</p>
    #
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @option params [String] :key
    #   <p>Key for which the PUT action was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutObjectAclOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object_acl(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #     access_control_policy: {
    #       grants: [
    #         {
    #           grantee: {
    #             display_name: 'DisplayName',
    #             email_address: 'EmailAddress',
    #             id: 'ID',
    #             uri: 'URI',
    #             type: 'CanonicalUser' # required - accepts ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #           },
    #           permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #         }
    #       ],
    #       owner: {
    #         display_name: 'DisplayName',
    #         id: 'ID'
    #       }
    #     },
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write: 'GrantWrite',
    #     grant_write_acp: 'GrantWriteACP',
    #     key: 'Key', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     version_id: 'VersionId',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectAclOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def put_object_acl(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectAclInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectAclInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObjectAcl
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchKey]),
        data_parser: Parsers::PutObjectAcl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::NoSuchKey],
        stub_data_class: Stubs::PutObjectAcl,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object_acl,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a legal hold configuration to the specified object. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #             Objects</a>.</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @param [Hash] params
    #   See {Types::PutObjectLegalHoldInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object that you want to place a legal hold on. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key name for the object that you want to place a legal hold on.</p>
    #
    # @option params [ObjectLockLegalHold] :legal_hold
    #   <p>Container element for the legal hold configuration you want to apply to the specified
    #            object.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID of the object that you want to place a legal hold on.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutObjectLegalHoldOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object_legal_hold(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     legal_hold: {
    #       status: 'ON' # accepts ["ON", "OFF"]
    #     },
    #     request_payer: 'requester', # accepts ["requester"]
    #     version_id: 'VersionId',
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectLegalHoldOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def put_object_legal_hold(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectLegalHoldInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectLegalHoldInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObjectLegalHold
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutObjectLegalHold
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutObjectLegalHold,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object_legal_hold,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Places an Object Lock configuration on the specified bucket. The rule specified in the
    #          Object Lock configuration will be applied by default to every new object placed in the
    #          specified bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking Objects</a>. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> settings require both a mode and a
    #                   period.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> period can be either <code>Days</code> or
    #                      <code>Years</code> but you must select one. You cannot specify
    #                      <code>Days</code> and <code>Years</code> at the same time.</p>
    #                </li>
    #                <li>
    #                   <p>You can only enable Object Lock for new buckets. If you want to turn on Object
    #                   Lock for an existing bucket, contact Amazon Web Services Support.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutObjectLockConfigurationInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket whose Object Lock configuration you want to create or replace.</p>
    #
    # @option params [ObjectLockConfiguration] :object_lock_configuration
    #   <p>The Object Lock configuration that you want to apply to the specified bucket.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutObjectLockConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object_lock_configuration(
    #     bucket: 'Bucket', # required
    #     object_lock_configuration: {
    #       object_lock_enabled: 'Enabled', # accepts ["Enabled"]
    #       rule: {
    #         default_retention: {
    #           mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #           days: 1,
    #           years: 1
    #         }
    #       }
    #     },
    #     request_payer: 'requester', # accepts ["requester"]
    #     token: 'Token',
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectLockConfigurationOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def put_object_lock_configuration(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectLockConfigurationInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectLockConfigurationInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObjectLockConfiguration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutObjectLockConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutObjectLockConfiguration,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object_lock_configuration,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Places an Object Retention configuration on an object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking Objects</a>.
    #          Users or accounts require the <code>s3:PutObjectRetention</code> permission in order to
    #          place an Object Retention configuration on objects. Bypassing a Governance Retention
    #          configuration requires the <code>s3:BypassGovernanceRetention</code> permission. </p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #
    # @param [Hash] params
    #   See {Types::PutObjectRetentionInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name that contains the object you want to apply this Object Retention
    #            configuration to. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>The key name for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #
    # @option params [ObjectLockRetention] :retention
    #   <p>The container element for the Object Retention configuration.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID for the object that you want to apply this Object Retention configuration
    #            to.</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Indicates whether this action should bypass Governance-mode restrictions.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutObjectRetentionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object_retention(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     retention: {
    #       mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #       retain_until_date: Time.now
    #     },
    #     request_payer: 'requester', # accepts ["requester"]
    #     version_id: 'VersionId',
    #     bypass_governance_retention: false,
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectRetentionOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def put_object_retention(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectRetentionInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectRetentionInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObjectRetention
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutObjectRetention
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutObjectRetention,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object_retention,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the supplied tag-set to an object that already exists in a bucket.</p>
    #          <p>A tag is a key-value pair. You can associate tags with an object by sending a PUT
    #          request against the tagging subresource that is associated with the object. You can
    #          retrieve tags by sending a GET request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a>.</p>
    #          <p>For tagging-related restrictions related to characters and encodings, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">Tag
    #             Restrictions</a>. Note that Amazon S3 limits the maximum number of tags to 10 tags per
    #          object.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutObjectTagging</code> action. By default, the bucket owner has this
    #          permission and can grant this permission to others.</p>
    #          <p>To put tags of any other version, use the <code>versionId</code> query parameter. You
    #          also need permission for the <code>s3:PutObjectVersionTagging</code> action.</p>
    #          <p>For information about the Amazon S3 object tagging feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object Tagging</a>.</p>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: InvalidTagError </i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The tag provided was not a valid tag. This error can occur
    #                         if the tag did not pass input validation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html">Object
    #                            Tagging</a>.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: MalformedXMLError </i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The XML provided does not match the schema.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: OperationAbortedError </i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: A conflicting conditional action is currently in progress
    #                         against this resource. Please try again.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: InternalError</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The service was unable to apply the provided tag to the
    #                         object.</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html">DeleteObjectTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutObjectTaggingInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Name of the object key.</p>
    #
    # @option params [String] :version_id
    #   <p>The versionId of the object that the tag-set will be added to.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [Tagging] :tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @return [Types::PutObjectTaggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object_tagging(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     tagging: {
    #       tag_set: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ] # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester' # accepts ["requester"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutObjectTaggingOutput
    #   resp.data.version_id #=> String
    #
    def put_object_tagging(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutObjectTaggingInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutObjectTaggingInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutObjectTagging
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutObjectTagging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutObjectTagging,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_object_tagging,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or modifies the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket.
    #          To use this operation, you must have the <code>s3:PutBucketPublicAccessBlock</code>
    #          permission. For more information about Amazon S3 permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in a
    #             Policy</a>.</p>
    #          <important>
    #             <p>When Amazon S3 evaluates the <code>PublicAccessBlock</code> configuration for a bucket or
    #             an object, it checks the <code>PublicAccessBlock</code> configuration for both the
    #             bucket (or the bucket that contains the object) and the bucket owner's account. If the
    #                <code>PublicAccessBlock</code> configurations are different between the bucket and
    #             the account, Amazon S3 uses the most restrictive combination of the bucket-level and
    #             account-level settings.</p>
    #          </important>
    #          <p>For more information about when Amazon S3 considers a bucket or an object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a>.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicyStatus.html">GetBucketPolicyStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">Using Amazon S3 Block
    #                   Public Access</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutPublicAccessBlockInput}.
    #
    # @option params [String] :bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want
    #            to set.</p>
    #
    # @option params [String] :content_md5
    #   <p>The MD5 hash of the <code>PutPublicAccessBlock</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [PublicAccessBlockConfiguration] :public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #            bucket. You can enable the configuration options in any combination. For more information
    #            about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::PutPublicAccessBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_public_access_block(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPublicAccessBlockOutput
    #
    def put_public_access_block(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPublicAccessBlockInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPublicAccessBlockInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPublicAccessBlock
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::PutPublicAccessBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::PutPublicAccessBlock,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :put_public_access_block,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores an archived copy of an object back into Amazon S3</p>
    #          <p>This action is not supported by Amazon S3 on Outposts.</p>
    #          <p>This action performs the following types of requests: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>select</code> - Perform a select query on an archived object</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>restore an archive</code> - Restore an archived object</p>
    #             </li>
    #          </ul>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:RestoreObject</code> action. The bucket owner has this permission by default
    #          and can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>For more information about the <code>S3</code> structure in the request body, see the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Managing Access with ACLs</a> in the
    #                         <i>Amazon S3 User Guide</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting Data Using
    #                         Server-Side Encryption</a> in the
    #                      <i>Amazon S3 User Guide</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Define the SQL expression for the <code>SELECT</code> type of restoration for your
    #                query in the request body's <code>SelectParameters</code> structure. You can use
    #                expressions like the following examples.</p>
    #                <ul>
    #                   <li>
    #                      <p>The following expression returns all records from the specified
    #                      object.</p>
    #                      <p>
    #                         <code>SELECT * FROM Object</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Assuming that you are not using any headers for data stored in the object,
    #                      you can specify columns with positional headers.</p>
    #                      <p>
    #                         <code>SELECT s._1, s._2 FROM Object s WHERE s._3 > 100</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>If you have headers and you set the <code>fileHeaderInfo</code> in the
    #                         <code>CSV</code> structure in the request body to <code>USE</code>, you can
    #                      specify headers in the query. (If you set the <code>fileHeaderInfo</code> field
    #                      to <code>IGNORE</code>, the first row is skipped for the query.) You cannot mix
    #                      ordinal positions with header column names. </p>
    #                      <p>
    #                         <code>SELECT s.Id, s.FirstName, s.SSN FROM S3Object s</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>When making a select request, you can also do the following:</p>
    #          <ul>
    #             <li>
    #                <p>To expedite your queries, specify the <code>Expedited</code> tier. For more
    #                information about tiers, see "Restoring Archives," later in this topic.</p>
    #             </li>
    #             <li>
    #                <p>Specify details about the data serialization format of both the input object that
    #                is being queried and the serialization of the CSV-encoded query results.</p>
    #             </li>
    #          </ul>
    #          <p>The following are additional important facts about the select feature:</p>
    #          <ul>
    #             <li>
    #                <p>The output results are new Amazon S3 objects. Unlike archive retrievals, they are
    #                stored until explicitly deleted-manually or through a lifecycle policy.</p>
    #             </li>
    #             <li>
    #                <p>You can issue more than one select request on the same Amazon S3 object. Amazon S3 doesn't
    #                duplicate requests, so avoid issuing duplicate requests.</p>
    #             </li>
    #             <li>
    #                <p> Amazon S3 accepts a select request even if the object has already been restored. A
    #                select request doesn’t return error response <code>409</code>.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Restoring objects</b>
    #          </p>
    #          <p>Objects that you archive to the S3 Glacier Flexible Retrieval or
    #          S3 Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive or
    #          S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real time. For objects in the
    #          S3 Glacier Flexible Retrieval or S3 Glacier Deep Archive storage
    #          classes, you must first initiate a restore request, and then wait until a temporary copy of
    #          the object is available. If you want a permanent copy of the object, create a copy of it in
    #          the Amazon S3 Standard storage class in your S3 bucket. To access an archived object, you must
    #          restore the object for the duration (number of days) that you specify. For objects in the
    #          Archive Access or Deep Archive Access tiers of S3 Intelligent-Tiering, you must first
    #          initiate a restore request, and then wait until the object is moved into the Frequent
    #          Access tier.</p>
    #          <p>To restore a specific object version, you can provide a version ID. If you don't provide
    #          a version ID, Amazon S3 restores the current version.</p>
    #          <p>When restoring an archived object, you can specify one of the following data access tier
    #          options in the <code>Tier</code> element of the request body: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Expedited</code> - Expedited retrievals allow you to quickly access your
    #                data stored in the S3 Glacier Flexible Retrieval storage class or
    #                S3 Intelligent-Tiering Archive tier when occasional urgent requests for a subset of archives
    #                are required. For all but the largest archived objects (250 MB+), data accessed using
    #                Expedited retrievals is typically made available within 1–5 minutes. Provisioned
    #                capacity ensures that retrieval capacity for Expedited retrievals is available when
    #                you need it. Expedited retrievals and provisioned capacity are not available for
    #                objects stored in the S3 Glacier Deep Archive storage class or
    #                S3 Intelligent-Tiering Deep Archive tier.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Standard</code> - Standard retrievals allow you to access any of your
    #                archived objects within several hours. This is the default option for retrieval
    #                requests that do not specify the retrieval option. Standard retrievals typically
    #                finish within 3–5 hours for objects stored in the S3 Glacier Flexible
    #                Retrieval storage class or S3 Intelligent-Tiering Archive tier. They typically finish within
    #                12 hours for objects stored in the S3 Glacier Deep Archive storage class or
    #                S3 Intelligent-Tiering Deep Archive tier. Standard retrievals are free for objects stored in
    #                S3 Intelligent-Tiering.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Bulk</code> - Bulk retrievals free for objects stored in the S3 Glacier
    #                Flexible Retrieval and S3 Intelligent-Tiering storage classes, enabling you to
    #                retrieve large amounts, even petabytes, of data at no cost. Bulk retrievals typically
    #                finish within 5–12 hours for objects stored in the S3 Glacier
    #                Flexible Retrieval storage class or S3 Intelligent-Tiering Archive tier. Bulk retrievals are
    #                also the lowest-cost retrieval option when restoring objects from
    #                S3 Glacier Deep Archive. They typically finish within 48 hours for objects
    #                stored in the S3 Glacier Deep Archive storage class or S3 Intelligent-Tiering Deep Archive
    #                tier. </p>
    #             </li>
    #          </ul>
    #          <p>For more information about archive retrieval options and provisioned capacity for
    #             <code>Expedited</code> data access, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring Archived Objects</a> in
    #          the <i>Amazon S3 User Guide</i>. </p>
    #          <p>You can use Amazon S3 restore speed upgrade to change the restore speed to a faster speed
    #          while it is in progress. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html"> Upgrading the speed of an in-progress restore</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p>To get the status of object restoration, you can send a <code>HEAD</code> request.
    #          Operations return the <code>x-amz-restore</code> header, which provides information about
    #          the restoration status, in the response. You can use Amazon S3 event notifications to notify you
    #          when a restore is initiated or completed. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Amazon S3
    #             Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>After restoring an archived object, you can update the restoration period by reissuing
    #          the request with a new period. Amazon S3 updates the restoration period relative to the current
    #          time and charges only for the request-there are no data transfer charges. You cannot
    #          update the restoration period when Amazon S3 is actively processing your current restore request
    #          for the object.</p>
    #          <p>If your bucket has a lifecycle configuration with a rule that includes an expiration
    #          action, the object expiration overrides the life span that you specify in a restore
    #          request. For example, if you restore an object copy for 10 days, but the object is
    #          scheduled to expire in 3 days, Amazon S3 deletes the object in 3 days. For more information
    #          about lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle Management</a>
    #          in <i>Amazon S3 User Guide</i>.</p>
    #          <p>
    #             <b>Responses</b>
    #          </p>
    #          <p>A successful action returns either the <code>200 OK</code> or <code>202 Accepted</code>
    #          status code. </p>
    #          <ul>
    #             <li>
    #                <p>If the object is not previously restored, then Amazon S3 returns <code>202
    #                   Accepted</code> in the response. </p>
    #             </li>
    #             <li>
    #                <p>If the object is previously restored, Amazon S3 returns <code>200 OK</code> in the
    #                response. </p>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: RestoreAlreadyInProgress</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: Object restore is already in progress. (This error does not
    #                         apply to SELECT type requests.)</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Status Code: 409 Conflict</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>SOAP Fault Code Prefix: Client</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: GlacierExpeditedRetrievalNotAvailable</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: expedited retrievals are currently not available. Try again
    #                         later. (Returned if there is insufficient capacity to process the Expedited
    #                         request. This error applies only to Expedited retrievals and not to
    #                         S3 Standard or Bulk retrievals.)</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Status Code: 503</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>SOAP Fault Code Prefix: N/A</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html">GetBucketNotificationConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RestoreObjectInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name containing the object to restore. </p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the action was initiated.</p>
    #
    # @option params [String] :version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #
    # @option params [RestoreRequest] :restore_request
    #   <p>Container for restore job parameters.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::RestoreObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_object(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     restore_request: {
    #       days: 1,
    #       glacier_job_parameters: {
    #         tier: 'Standard' # required - accepts ["Standard", "Bulk", "Expedited"]
    #       },
    #       type: 'SELECT', # accepts ["SELECT"]
    #       tier: 'Standard', # accepts ["Standard", "Bulk", "Expedited"]
    #       description: 'Description',
    #       select_parameters: {
    #         input_serialization: {
    #           csv: {
    #             file_header_info: 'USE', # accepts ["USE", "IGNORE", "NONE"]
    #             comments: 'Comments',
    #             quote_escape_character: 'QuoteEscapeCharacter',
    #             record_delimiter: 'RecordDelimiter',
    #             field_delimiter: 'FieldDelimiter',
    #             quote_character: 'QuoteCharacter',
    #             allow_quoted_record_delimiter: false
    #           },
    #           compression_type: 'NONE', # accepts ["NONE", "GZIP", "BZIP2"]
    #           json: {
    #             type: 'DOCUMENT' # accepts ["DOCUMENT", "LINES"]
    #           },
    #           parquet: { }
    #         }, # required
    #         expression_type: 'SQL', # required - accepts ["SQL"]
    #         expression: 'Expression', # required
    #         output_serialization: {
    #           csv: {
    #             quote_fields: 'ALWAYS', # accepts ["ALWAYS", "ASNEEDED"]
    #             quote_escape_character: 'QuoteEscapeCharacter',
    #             record_delimiter: 'RecordDelimiter',
    #             field_delimiter: 'FieldDelimiter',
    #             quote_character: 'QuoteCharacter'
    #           },
    #           json: {
    #             record_delimiter: 'RecordDelimiter'
    #           }
    #         } # required
    #       },
    #       output_location: {
    #         s3: {
    #           bucket_name: 'BucketName', # required
    #           prefix: 'Prefix', # required
    #           encryption: {
    #             encryption_type: 'AES256', # required - accepts ["AES256", "aws:kms"]
    #             kms_key_id: 'KMSKeyId',
    #             kms_context: 'KMSContext'
    #           },
    #           canned_acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "aws-exec-read", "bucket-owner-read", "bucket-owner-full-control"]
    #           access_control_list: [
    #             {
    #               grantee: {
    #                 display_name: 'DisplayName',
    #                 email_address: 'EmailAddress',
    #                 id: 'ID',
    #                 uri: 'URI',
    #                 type: 'CanonicalUser' # required - accepts ["CanonicalUser", "AmazonCustomerByEmail", "Group"]
    #               },
    #               permission: 'FULL_CONTROL' # accepts ["FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"]
    #             }
    #           ],
    #           tagging: {
    #             tag_set: [
    #               {
    #                 key: 'Key', # required
    #                 value: 'Value' # required
    #               }
    #             ] # required
    #           },
    #           user_metadata: [
    #             {
    #               name: 'Name',
    #               value: 'Value'
    #             }
    #           ],
    #           storage_class: 'STANDARD' # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #         }
    #       }
    #     },
    #     request_payer: 'requester', # accepts ["requester"]
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreObjectOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.restore_output_path #=> String
    #
    def restore_object(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreObjectInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreObjectInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreObject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        request_checksum_required: false
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ObjectAlreadyInActiveTierError]),
        data_parser: Parsers::RestoreObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::ObjectAlreadyInActiveTierError],
        stub_data_class: Stubs::RestoreObject,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :restore_object,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads a part in a multipart upload.</p>
    #          <note>
    #             <p>In this operation, you provide part data in your request. However, you have an option
    #             to specify your existing Amazon S3 object as a data source for the part you are uploading. To
    #             upload a part from an existing object, you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a> operation.
    #          </p>
    #          </note>
    #          <p>You must initiate a multipart upload (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>)
    #          before you can upload any part. In response to your initiate request, Amazon S3 returns an
    #          upload ID, a unique identifier, that you must include in your upload part request.</p>
    #          <p>Part numbers can be any number from 1 to 10,000, inclusive. A part number uniquely
    #          identifies a part and also defines its position within the object being created. If you
    #          upload a new part using the same part number that was used with a previous part, the
    #          previously uploaded part is overwritten.</p>
    #          <p>For information about maximum and minimum part sizes and other multipart upload
    #          specifications, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html">Multipart upload limits</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To ensure that data is not corrupted when traversing the network, specify the
    #             <code>Content-MD5</code> header in the upload part request. Amazon S3 checks the part data
    #          against the provided MD5 value. If they do not match, Amazon S3 returns an error. </p>
    #          <p>If the upload request is signed with Signature Version 4, then Amazon Web Services S3 uses the
    #             <code>x-amz-content-sha256</code> header as a checksum instead of
    #             <code>Content-MD5</code>. For more information see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html">Authenticating
    #             Requests: Using the Authorization Header (Amazon Web Services Signature Version 4)</a>. </p>
    #          <p>
    #             <b>Note:</b> After you initiate multipart upload and upload
    #          one or more parts, you must either complete or abort multipart upload in order to stop
    #          getting charged for storage of the uploaded parts. Only after you either complete or abort
    #          multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts
    #          storage.</p>
    #          <p>For more information on multipart uploads, go to <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a> in the
    #             <i>Amazon S3 User Guide </i>.</p>
    #          <p>For information on the permissions required to use the multipart upload API, go to
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
    #             Upload and Permissions</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it
    #          writes it to disks in its data centers and decrypts it when you access it. You have three
    #          mutually exclusive options to protect data using server-side encryption in Amazon S3, depending
    #          on how you choose to manage the encryption keys. Specifically, the encryption key options
    #          are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and Customer-Provided Keys
    #          (SSE-C). Amazon S3 encrypts data with server-side encryption using Amazon S3 managed keys (SSE-S3) by
    #          default. You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption
    #          with other key options. The option you use depends on whether you want to use KMS keys
    #          (SSE-KMS) or provide your own encryption key (SSE-C). If you choose to provide your own
    #          encryption key, the request headers you provide in the request must match the headers you
    #          used in the request to initiate the upload by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>.
    #          For more information, go to <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using Server-Side
    #             Encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>Server-side encryption is supported by the S3 Multipart Upload actions. Unless you are
    #          using a customer-provided encryption key (SSE-C), you don't need to specify the encryption
    #          parameters in each UploadPart request. Instead, you only need to specify the server-side
    #          encryption parameters in the initial Initiate Multipart request. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>.</p>
    #          <p>If you requested server-side encryption using a customer-provided encryption key (SSE-C)
    #          in your initiate multipart upload request, you must provide identical encryption
    #          information in each part upload using the following headers.</p>
    #          <ul>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-algorithm</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key</p>
    #             </li>
    #             <li>
    #                <p>x-amz-server-side-encryption-customer-key-MD5</p>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: NoSuchUpload</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The specified multipart upload does not exist. The upload
    #                         ID might be invalid, or the multipart upload might have been aborted or
    #                         completed.</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i> HTTP Status Code: 404 Not Found </i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>SOAP Fault Code Prefix: Client</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UploadPartInput}.
    #
    # @option params [String] :body
    #   <p>Object data.</p>
    #
    # @option params [String] :bucket
    #   <p>The name of the bucket to which the multipart upload was initiated.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [Integer] :content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be
    #            determined automatically.</p>
    #
    # @option params [String] :content_md5
    #   <p>The base64-encoded 128-bit MD5 digest of the part data. This parameter is auto-populated
    #            when using the command from the CLI. This parameter is required if object lock parameters
    #            are specified.</p>
    #
    # @option params [String] :checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any
    #       additional functionality if not using the SDK. When sending this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided
    #               <code>ChecksumAlgorithm</code> parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value
    #            supplied in the <code>CreateMultipartUpload</code> request.</p>
    #
    # @option params [String] :checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 32-bit CRC32C checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 160-bit SHA-1 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the base64-encoded, 256-bit SHA-256 digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    # @option params [Integer] :part_number
    #   <p>Part number of part being uploaded. This is a positive integer between 1 and
    #            10,000.</p>
    #
    # @option params [String] :upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being uploaded.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm header</code>. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::UploadPartOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_part(
    #     body: 'Body',
    #     bucket: 'Bucket', # required
    #     content_length: 1,
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     checksum_crc32: 'ChecksumCRC32',
    #     checksum_crc32_c: 'ChecksumCRC32C',
    #     checksum_sha1: 'ChecksumSHA1',
    #     checksum_sha256: 'ChecksumSHA256',
    #     key: 'Key', # required
    #     part_number: 1, # required
    #     upload_id: 'UploadId', # required
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadPartOutput
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.e_tag #=> String
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def upload_part(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadPartInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadPartInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadPart
      )
      stack.use(AWS::SDK::Core::Middleware::Checksum,
        request_algorithm_member: :checksum_algorithm,
        streaming: true,
        request_checksum_required: false,
        signed_streaming: true,
        require_decoded_content_length: true
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::UploadPart
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::UploadPart,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :upload_part,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads a part by copying data from an existing object as data source. You specify the
    #          data source by adding the request header <code>x-amz-copy-source</code> in your request and
    #          a byte range by adding the request header <code>x-amz-copy-source-range</code> in your
    #          request. </p>
    #          <p>For information about maximum and minimum part sizes and other multipart upload
    #          specifications, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html">Multipart upload limits</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <note>
    #             <p>Instead of using an existing object as part data, you might use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #             action and provide data in your request.</p>
    #          </note>
    #          <p>You must initiate a multipart upload before you can upload any part. In response to your
    #          initiate request. Amazon S3 returns a unique identifier, the upload ID, that you must include in
    #          your upload part request.</p>
    #          <p>For more information about using the <code>UploadPartCopy</code> operation, see the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>For conceptual information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
    #                   Objects Using Multipart Upload</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>For information about permissions required to use the multipart upload API, see
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload and Permissions</a> in the
    #                   <i>Amazon S3 User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>For information about copying objects using a single atomic action vs. a multipart
    #                upload, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html">Operations on Objects</a> in
    #                the <i>Amazon S3 User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>For information about using server-side encryption with customer-provided
    #                encryption keys with the <code>UploadPartCopy</code> operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>.</p>
    #             </li>
    #          </ul>
    #          <p>Note the following additional considerations about the request headers
    #             <code>x-amz-copy-source-if-match</code>, <code>x-amz-copy-source-if-none-match</code>,
    #             <code>x-amz-copy-source-if-unmodified-since</code>, and
    #             <code>x-amz-copy-source-if-modified-since</code>:</p>
    #          <p> </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Consideration 1</b> - If both of the
    #                   <code>x-amz-copy-source-if-match</code> and
    #                   <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the
    #                request as follows:</p>
    #                <p>
    #                   <code>x-amz-copy-source-if-match</code> condition evaluates to <code>true</code>,
    #                and;</p>
    #                <p>
    #                   <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to
    #                   <code>false</code>;</p>
    #                <p>Amazon S3 returns <code>200 OK</code> and copies the data.
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Consideration 2</b> - If both of the
    #                   <code>x-amz-copy-source-if-none-match</code> and
    #                   <code>x-amz-copy-source-if-modified-since</code> headers are present in the
    #                request as follows:</p>
    #                <p>
    #                   <code>x-amz-copy-source-if-none-match</code> condition evaluates to
    #                   <code>false</code>, and;</p>
    #                <p>
    #                   <code>x-amz-copy-source-if-modified-since</code> condition evaluates to
    #                   <code>true</code>;</p>
    #                <p>Amazon S3 returns <code>412 Precondition Failed</code> response code.
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Versioning</b>
    #          </p>
    #          <p>If your bucket has versioning enabled, you could have multiple versions of the same
    #          object. By default, <code>x-amz-copy-source</code> identifies the current version of the
    #          object to copy. If the current version is a delete marker and you don't specify a versionId
    #          in the <code>x-amz-copy-source</code>, Amazon S3 returns a 404 error, because the object does
    #          not exist. If you specify versionId in the <code>x-amz-copy-source</code> and the versionId
    #          is a delete marker, Amazon S3 returns an HTTP 400 error, because you are not allowed to specify
    #          a delete marker as a version for the <code>x-amz-copy-source</code>. </p>
    #          <p>You can optionally specify a specific version of the source object to copy by adding the
    #             <code>versionId</code> subresource as shown in the following example:</p>
    #          <p>
    #             <code>x-amz-copy-source: /bucket/object?versionId=version id</code>
    #          </p>
    #          <p class="title">
    #             <b>Special Errors</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: NoSuchUpload</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The specified multipart upload does not exist. The upload
    #                         ID might be invalid, or the multipart upload might have been aborted or
    #                         completed.</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Status Code: 404 Not Found</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <i>Code: InvalidRequest</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>Cause: The specified copy source is not supported as a byte-range
    #                         copy source.</i>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <i>HTTP Status Code: 400 Bad Request</i>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html">CompleteMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html">AbortMultipartUpload</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListMultipartUploads.html">ListMultipartUploads</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UploadPartCopyInput}.
    #
    # @option params [String] :bucket
    #   <p>The bucket name.</p>
    #            <p>When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you use this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts access point ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :copy_source
    #   <p>Specifies the source object for the copy operation. You specify the value in one of two
    #            formats, depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket
    #                  and key of the source object, separated by a slash (/). For example, to copy the
    #                  object <code>reports/january.pdf</code> from the bucket
    #                  <code>awsexamplebucket</code>, use <code>awsexamplebucket/reports/january.pdf</code>.
    #                  The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <p>Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>To copy a specific version of an object, append <code>?versionId=<version-id></code>
    #            to the value (for example,
    #               <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>).
    #            If you don't specify a version ID, Amazon S3 copies the latest version of the source
    #            object.</p>
    #
    # @option params [String] :copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #
    # @option params [Time] :copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #
    # @option params [String] :copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #
    # @option params [Time] :copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #
    # @option params [String] :copy_source_range
    #   <p>The range of bytes to copy from the source object. The range value must use the form
    #            bytes=first-last, where the first and last are the zero-based byte offsets to copy. For
    #            example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You
    #            can copy a range only if the source object is greater than 5 MB.</p>
    #
    # @option params [String] :key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #
    # @option params [Integer] :part_number
    #   <p>Part number of part being copied. This is a positive integer between 1 and
    #            10,000.</p>
    #
    # @option params [String] :upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being copied.</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Specifies the algorithm to use to when encrypting the object (for example,
    #            AES256).</p>
    #
    # @option params [String] :sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This
    #            value is used to store the object and then it is discarded; Amazon S3 does not store the
    #            encryption key. The key must be appropriate for use with the algorithm specified in the
    #               <code>x-amz-server-side-encryption-customer-algorithm</code> header. This must be the
    #            same encryption key specified in the initiate multipart upload request.</p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #            AES256).</p>
    #
    # @option params [String] :copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source
    #            object. The encryption key provided in this header must be one that was used when the
    #            source object was created.</p>
    #
    # @option params [String] :copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses
    #            this header for a message integrity check to ensure that the encryption key was transmitted
    #            without error.</p>
    #
    # @option params [String] :request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket
    #            owners need not specify this parameter in their requests. For information about downloading
    #            objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in
    #               Requester Pays Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @option params [String] :expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @option params [String] :expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #
    # @return [Types::UploadPartCopyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_part_copy(
    #     bucket: 'Bucket', # required
    #     copy_source: 'CopySource', # required
    #     copy_source_if_match: 'CopySourceIfMatch',
    #     copy_source_if_modified_since: Time.now,
    #     copy_source_if_none_match: 'CopySourceIfNoneMatch',
    #     copy_source_if_unmodified_since: Time.now,
    #     copy_source_range: 'CopySourceRange',
    #     key: 'Key', # required
    #     part_number: 1, # required
    #     upload_id: 'UploadId', # required
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     sse_customer_key: 'SSECustomerKey',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     copy_source_sse_customer_algorithm: 'CopySourceSSECustomerAlgorithm',
    #     copy_source_sse_customer_key: 'CopySourceSSECustomerKey',
    #     copy_source_sse_customer_key_md5: 'CopySourceSSECustomerKeyMD5',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     expected_source_bucket_owner: 'ExpectedSourceBucketOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadPartCopyOutput
    #   resp.data.copy_source_version_id #=> String
    #   resp.data.copy_part_result #=> Types::CopyPartResult
    #   resp.data.copy_part_result.e_tag #=> String
    #   resp.data.copy_part_result.last_modified #=> Time
    #   resp.data.copy_part_result.checksum_crc32 #=> String
    #   resp.data.copy_part_result.checksum_crc32_c #=> String
    #   resp.data.copy_part_result.checksum_sha1 #=> String
    #   resp.data.copy_part_result.checksum_sha256 #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #
    def upload_part_copy(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadPartCopyInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadPartCopyInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadPartCopy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::UploadPartCopy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::UploadPartCopy,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :upload_part_copy,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Passes transformed objects to a <code>GetObject</code> operation when using Object Lambda access points. For
    #          information about Object Lambda access points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html">Transforming objects with
    #             Object Lambda access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This operation supports metadata that can be returned by <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>, in addition to
    #             <code>RequestRoute</code>, <code>RequestToken</code>, <code>StatusCode</code>,
    #             <code>ErrorCode</code>, and <code>ErrorMessage</code>. The <code>GetObject</code>
    #          response metadata is supported so that the <code>WriteGetObjectResponse</code> caller,
    #          typically an Lambda function, can provide the same metadata when it internally invokes
    #             <code>GetObject</code>. When <code>WriteGetObjectResponse</code> is called by a
    #          customer-owned Lambda function, the metadata returned to the end user
    #             <code>GetObject</code> call might differ from what Amazon S3 would normally return.</p>
    #          <p>You can include any number of metadata headers. When including a metadata header, it
    #          should be prefaced with <code>x-amz-meta</code>. For example,
    #             <code>x-amz-meta-my-custom-header: MyCustomValue</code>. The primary use case for this
    #          is to forward <code>GetObject</code> metadata.</p>
    #          <p>Amazon Web Services provides some prebuilt Lambda functions that you can use with S3 Object Lambda to
    #          detect and redact personally identifiable information (PII) and decompress S3 objects.
    #          These Lambda functions are available in the Amazon Web Services Serverless Application Repository, and
    #          can be selected through the Amazon Web Services Management Console when you create your Object Lambda access point.</p>
    #          <p>Example 1: PII Access Control - This Lambda function uses Amazon Comprehend, a
    #          natural language processing (NLP) service using machine learning to find insights and
    #          relationships in text. It automatically detects personally identifiable information (PII)
    #          such as names, addresses, dates, credit card numbers, and social security numbers from
    #          documents in your Amazon S3 bucket. </p>
    #          <p>Example 2: PII Redaction - This Lambda function uses Amazon Comprehend, a natural
    #          language processing (NLP) service using machine learning to find insights and relationships
    #          in text. It automatically redacts personally identifiable information (PII) such as names,
    #          addresses, dates, credit card numbers, and social security numbers from documents in your
    #          Amazon S3 bucket. </p>
    #          <p>Example 3: Decompression - The Lambda function S3ObjectLambdaDecompression, is
    #          equipped to decompress objects stored in S3 in one of six compressed file formats including
    #          bzip2, gzip, snappy, zlib, zstandard and ZIP. </p>
    #          <p>For information on how to view and use these functions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-examples.html">Using Amazon Web Services built Lambda
    #             functions</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::WriteGetObjectResponseInput}.
    #
    # @option params [String] :request_route
    #   <p>Route prefix to the HTTP URL generated.</p>
    #
    # @option params [String] :request_token
    #   <p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end
    #            user <code>GetObject</code> request.</p>
    #
    # @option params [String] :body
    #   <p>The object data.</p>
    #
    # @option params [Integer] :status_code
    #   <p>The integer status code for an HTTP response of a corresponding <code>GetObject</code>
    #            request.</p>
    #            <p class="title">
    #               <b>Status Codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>200 - OK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>206 - Partial Content</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>304 - Not Modified</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>400 - Bad Request</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>401 - Unauthorized</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>403 - Forbidden</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>404 - Not Found</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>405 - Method Not Allowed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>409 - Conflict</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>411 - Length Required</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>412 - Precondition Failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>416 - Range Not Satisfiable</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>500 - Internal Server Error</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>503 - Service Unavailable</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :error_code
    #   <p>A string that uniquely identifies an error condition. Returned in the <Code> tag
    #            of the error XML response for a corresponding <code>GetObject</code> call. Cannot be used
    #            with a successful <code>StatusCode</code> header or when the transformed object is provided
    #            in the body. All error codes from S3 are sentence-cased. The regular expression (regex)
    #            value is <code>"^[A-Z][a-zA-Z]+$"</code>.</p>
    #
    # @option params [String] :error_message
    #   <p>Contains a generic description of the error condition. Returned in the <Message>
    #            tag of the error XML response for a corresponding <code>GetObject</code> call. Cannot be
    #            used with a successful <code>StatusCode</code> header or when the transformed object is
    #            provided in body.</p>
    #
    # @option params [String] :accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #
    # @option params [String] :cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #
    # @option params [String] :content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #
    # @option params [String] :content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding
    #            mechanisms must be applied to obtain the media-type referenced by the Content-Type header
    #            field.</p>
    #
    # @option params [String] :content_language
    #   <p>The language the content is in.</p>
    #
    # @option params [Integer] :content_length
    #   <p>The size of the content body in bytes.</p>
    #
    # @option params [String] :content_range
    #   <p>The portion of the object returned in the response.</p>
    #
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #
    # @option params [String] :checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32
    #            checksum of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #            <p></p>
    #
    # @option params [String] :checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 32-bit CRC32C
    #            checksum of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    # @option params [String] :checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 160-bit SHA-1
    #            digest of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    # @option params [String] :checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is
    #            the same data that was originally sent. This specifies the base64-encoded, 256-bit SHA-256
    #            digest of the object returned by the Object Lambda function. This may not match the
    #            checksum for the object stored in Amazon S3. Amazon S3 will perform validation of the checksum values
    #            only when the original <code>GetObject</code> request required checksum validation. For
    #            more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #               integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum
    #            headers, this request will fail.</p>
    #
    # @option params [Boolean] :delete_marker
    #   <p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not
    #               (<code>false</code>) a delete marker. </p>
    #
    # @option params [String] :e_tag
    #   <p>An opaque identifier assigned by a web server to a specific version of a resource found
    #            at a URL. </p>
    #
    # @option params [Time] :expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #
    # @option params [String] :expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes
    #            this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value
    #            pairs that provide the object expiration information. The value of the <code>rule-id</code>
    #            is URL-encoded. </p>
    #
    # @option params [Time] :last_modified
    #   <p>The date and time that the object was last modified.</p>
    #
    # @option params [Integer] :missing_meta
    #   <p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers.
    #            This can happen if you create metadata using an API like SOAP that supports more flexible
    #            metadata than the REST API. For example, using SOAP, you can create metadata whose values
    #            are not legal HTTP headers.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #
    # @option params [String] :object_lock_mode
    #   <p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more information
    #            about S3 Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object Lock</a>.</p>
    #
    # @option params [String] :object_lock_legal_hold_status
    #   <p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>
    #
    # @option params [Time] :object_lock_retain_until_date
    #   <p>The date and time when Object Lock is configured to expire.</p>
    #
    # @option params [Integer] :parts_count
    #   <p>The count of parts this object has.</p>
    #
    # @option params [String] :replication_status
    #   <p>Indicates if request involves bucket that is either a source or destination in a
    #            Replication rule. For more information about S3 Replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p>
    #
    # @option params [String] :request_charged
    #   <p>If present, indicates that the requester was successfully charged for the
    #            request.</p>
    #
    # @option params [String] :restore
    #   <p>Provides information about object restoration operation and expiration time of the
    #            restored object copy.</p>
    #
    # @option params [String] :server_side_encryption
    #   <p> The server-side encryption algorithm used when storing requested object in Amazon S3 (for
    #            example, AES256, <code>aws:kms</code>).</p>
    #
    # @option params [String] :sse_customer_algorithm
    #   <p>Encryption algorithm used if server-side encryption with a customer-provided encryption
    #            key was specified for object stored in Amazon S3.</p>
    #
    # @option params [String] :ssekms_key_id
    #   <p> If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric
    #            encryption customer managed key that was used for stored in Amazon S3 object. </p>
    #
    # @option params [String] :sse_customer_key_md5
    #   <p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data
    #            stored in S3. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting data
    #               using server-side encryption with customer-provided encryption keys
    #            (SSE-C)</a>.</p>
    #
    # @option params [String] :storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all
    #            objects except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #
    # @option params [Integer] :tag_count
    #   <p>The number of tags, if any, on the object.</p>
    #
    # @option params [String] :version_id
    #   <p>An ID used to reference a specific version of the object.</p>
    #
    # @option params [Boolean] :bucket_key_enabled
    #   <p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side
    #            encryption with Amazon Web Services KMS (SSE-KMS).</p>
    #
    # @return [Types::WriteGetObjectResponseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.write_get_object_response(
    #     request_route: 'RequestRoute', # required
    #     request_token: 'RequestToken', # required
    #     body: 'Body',
    #     status_code: 1,
    #     error_code: 'ErrorCode',
    #     error_message: 'ErrorMessage',
    #     accept_ranges: 'AcceptRanges',
    #     cache_control: 'CacheControl',
    #     content_disposition: 'ContentDisposition',
    #     content_encoding: 'ContentEncoding',
    #     content_language: 'ContentLanguage',
    #     content_length: 1,
    #     content_range: 'ContentRange',
    #     content_type: 'ContentType',
    #     checksum_crc32: 'ChecksumCRC32',
    #     checksum_crc32_c: 'ChecksumCRC32C',
    #     checksum_sha1: 'ChecksumSHA1',
    #     checksum_sha256: 'ChecksumSHA256',
    #     delete_marker: false,
    #     e_tag: 'ETag',
    #     expires: Time.now,
    #     expiration: 'Expiration',
    #     last_modified: Time.now,
    #     missing_meta: 1,
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     object_lock_mode: 'GOVERNANCE', # accepts ["GOVERNANCE", "COMPLIANCE"]
    #     object_lock_legal_hold_status: 'ON', # accepts ["ON", "OFF"]
    #     object_lock_retain_until_date: Time.now,
    #     parts_count: 1,
    #     replication_status: 'COMPLETE', # accepts ["COMPLETE", "PENDING", "FAILED", "REPLICA"]
    #     request_charged: 'requester', # accepts ["requester"]
    #     restore: 'Restore',
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms"]
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     ssekms_key_id: 'SSEKMSKeyId',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #     tag_count: 1,
    #     version_id: 'VersionId',
    #     bucket_key_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::WriteGetObjectResponseOutput
    #
    def write_get_object_response(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::WriteGetObjectResponseInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::WriteGetObjectResponseInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "{request_route}.",
        disable_host_prefix: config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::WriteGetObjectResponse
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::WriteGetObjectResponse
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [],
        stub_data_class: Stubs::WriteGetObjectResponse,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :write_get_object_response,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def initialize_config(config)
      config = config.dup
      client_interceptors = config.interceptors
      config.interceptors = Hearth::InterceptorList.new
      Client.plugins.apply(config)
      Hearth::PluginList.new(config.plugins).apply(config)
      config.interceptors << client_interceptors
      config.freeze
    end

    def operation_config(options)
      return @config unless options[:plugins] || options[:interceptors]

      config = @config.dup
      Hearth::PluginList.new(options[:plugins]).apply(config) if options[:plugins]
      config.interceptors << options[:interceptors] if options[:interceptors]
      config.freeze
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      ::StringIO.new
    end
  end
end
