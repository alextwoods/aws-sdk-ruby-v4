# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::S3
  # <p></p>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>This operation aborts a multipart upload. After a multipart upload is aborted, no
    #          additional parts can be uploaded using that upload ID. The storage consumed by any
    #          previously uploaded parts will be freed. However, if any part uploads are currently in
    #          progress, those part uploads might or might not succeed. As a result, it might be necessary
    #          to abort a given multipart upload multiple times in order to completely free all storage
    #          consumed by all parts. </p>
    #          <p>To verify that all parts have been removed and prevent getting charged for the part
    #          storage, you should call the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html">ListParts</a> API operation and ensure that
    #          the parts list is empty.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information about permissions required to use the multipart upload, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #                         and Permissions</a> in the <i>Amazon S3
    #                            User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::AbortMultipartUploadInput] params
    #   Request parameters for this operation.
    #   See {Types::AbortMultipartUploadInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.abort_multipart_upload(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     upload_id: 'UploadId', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::AbortMultipartUploadOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To abort a multipart upload
    #   # The following example aborts a multipart upload.
    #   resp = client.abort_multipart_upload({
    #     bucket: "examplebucket",
    #     key: "bigobject",
    #     upload_id: "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def abort_multipart_upload(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::AbortMultipartUploadInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::AbortMultipartUpload.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :abort_multipart_upload,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'AbortMultipartUpload',
        'code.function' => 'abort_multipart_upload',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.AbortMultipartUpload', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#abort_multipart_upload] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#abort_multipart_upload] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#abort_multipart_upload] #{output.data}")
        output
      end
    end

    # <p>Completes a multipart upload by assembling previously uploaded parts.</p>
    #          <p>You first initiate the multipart upload and then upload all parts using the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #          operation or the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>
    #          operation. After successfully uploading all relevant parts of an upload, you call this
    #          <code>CompleteMultipartUpload</code> operation to complete the upload. Upon receiving this request, Amazon S3 concatenates all the parts
    #          in ascending order by part number to create a new object. In the CompleteMultipartUpload
    #          request, you must provide the parts list and ensure that the parts list is complete.
    #          The CompleteMultipartUpload API operation concatenates the parts that you provide in the list. For each part in the list,
    #          you must provide the <code>PartNumber</code> value and the <code>ETag</code> value that are returned after that part
    #          was uploaded.</p>
    #          <p>The processing of a CompleteMultipartUpload request could take several minutes to
    #          finalize. After Amazon S3 begins processing the request, it sends an HTTP response header that
    #          specifies a <code>200 OK</code> response. While processing is in progress, Amazon S3 periodically sends white
    #          space characters to keep the connection from timing out. A request could fail after the
    #          initial <code>200 OK</code> response has been sent. This means that a <code>200 OK</code> response can
    #          contain either a success or an error. The error response might be embedded in the <code>200 OK</code> response.
    #          If you call this API operation directly, make sure to design
    #          your application to parse the contents of the response and handle it appropriately. If you
    #          use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the embedded error and apply
    #          error handling per your configuration settings (including automatically retrying the
    #          request as appropriate). If the condition persists, the SDKs throw an exception (or, for
    #          the SDKs that don't use exceptions, they return an error). </p>
    #          <p>Note that if <code>CompleteMultipartUpload</code> fails, applications should be prepared
    #          to retry the failed requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ErrorBestPractices.html">Amazon S3 Error Best
    #          Practices</a>.</p>
    #          <important>
    #             <p>You can't use <code>Content-Type: application/x-www-form-urlencoded</code> for the
    #             CompleteMultipartUpload requests. Also, if you don't provide a
    #                <code>Content-Type</code> header, <code>CompleteMultipartUpload</code> can still return a <code>200
    #             OK</code> response.</p>
    #          </important>
    #          <p>For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #          Upload</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information about permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #                         and Permissions</a> in the <i>Amazon S3
    #                            User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Special errors</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>Error Code: <code>EntityTooSmall</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: Your proposed upload is smaller than the minimum allowed object
    #                            size. Each part must be at least 5 MB in size, except the last part.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 400 Bad Request</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>Error Code: <code>InvalidPart</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: One or more of the specified parts could not be found. The part
    #                            might not have been uploaded, or the specified ETag might not have
    #                            matched the uploaded part's ETag.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 400 Bad Request</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>Error Code: <code>InvalidPartOrder</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: The list of parts was not in ascending order. The parts list
    #                            must be specified in order by part number.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 400 Bad Request</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>Error Code: <code>NoSuchUpload</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: The specified multipart upload does not exist. The upload ID
    #                            might be invalid, or the multipart upload might have been aborted or
    #                            completed.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 404 Not Found</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::CompleteMultipartUploadInput] params
    #   Request parameters for this operation.
    #   See {Types::CompleteMultipartUploadInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.version_id #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    def complete_multipart_upload(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::CompleteMultipartUploadInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::CompleteMultipartUpload.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :complete_multipart_upload,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'CompleteMultipartUpload',
        'code.function' => 'complete_multipart_upload',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.CompleteMultipartUpload', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#complete_multipart_upload] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#complete_multipart_upload] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#complete_multipart_upload] #{output.data}")
        output
      end
    end

    # <p>Creates a copy of an object that is already stored in Amazon S3.</p>
    #          <note>
    #             <p>You can store individual objects of up to 5 TB in Amazon S3. You create a copy of your
    #             object up to 5 GB in size in a single atomic action using this API. However, to copy an
    #             object greater than 5 GB, you must use the multipart upload Upload Part - Copy
    #             (UploadPartCopy) API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjctsUsingRESTMPUapi.html">Copy Object Using the
    #                REST Multipart Upload API</a>.</p>
    #          </note>
    #          <p>You can copy individual objects between general purpose buckets, between directory buckets, and
    #          between general purpose buckets and directory buckets.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p>Both the
    #       Region that you want to copy the object from and the Region that you want to copy the
    #       object to must be enabled for your account.</p>
    #          <important>
    #             <p>Amazon S3 transfer acceleration does not support cross-Region copies. If you request a
    #             cross-Region copy using a transfer acceleration endpoint, you get a <code>400 Bad
    #                Request</code> error. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Transfer
    #                   Acceleration</a>.</p>
    #          </important>
    #          <dl>
    #             <dt>Authentication and authorization</dt>
    #             <dd>
    #                <p>All <code>CopyObject</code> requests must be authenticated and signed by using IAM credentials (access key ID and secret access key for the IAM identities). All headers with the <code>x-amz-</code> prefix, including
    #                         <code>x-amz-copy-source</code>, must be signed. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #                <p>
    #                   <b>Directory buckets</b> - You must use the IAM credentials to authenticate and authorize your access to the <code>CopyObject</code> API operation, instead of using the
    #                   temporary security credentials through the <code>CreateSession</code> API operation.</p>
    #                <p>Amazon Web Services CLI or SDKs handles authentication and authorization on your behalf.</p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have
    #                   <i>read</i> access to the source object and <i>write</i>
    #                   access to the destination bucket.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> -
    #                         You must have permissions in an IAM policy based on the source and destination
    #                         bucket types in a <code>CopyObject</code> operation.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If the source object is in a general purpose bucket, you must have
    #                                  <b>
    #                                  <code>s3:GetObject</code>
    #                               </b>
    #                               permission to read the source object that is being copied. </p>
    #                         </li>
    #                         <li>
    #                            <p>If the destination bucket is a general purpose bucket, you must have
    #                                  <b>
    #                                  <code>s3:PubObject</code>
    #                               </b>
    #                               permission to write the object copy to the destination bucket. </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> -
    #                         You must have permissions in a bucket policy or an IAM identity-based policy based on the source and destination
    #                         bucket types in a <code>CopyObject</code> operation.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If the source object that you want to copy is in a
    #                               directory bucket, you must have the <b>
    #                                  <code>s3express:CreateSession</code>
    #                               </b> permission in
    #                               the <code>Action</code> element of a policy to read the object. By default, the session is in the <code>ReadWrite</code> mode. If you want to restrict the access, you can explicitly set the <code>s3express:SessionMode</code> condition key to <code>ReadOnly</code> on the copy source bucket.</p>
    #                         </li>
    #                         <li>
    #                            <p>If the copy destination is a directory bucket, you must have the <b>
    #                                  <code>s3express:CreateSession</code>
    #                               </b> permission in the
    #                                  <code>Action</code> element of a policy to write the object
    #                               to the destination. The <code>s3express:SessionMode</code> condition
    #                               key can't be set to <code>ReadOnly</code> on the copy destination bucket. </p>
    #                         </li>
    #                      </ul>
    #                      <p>For example policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html">Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone</a> in the
    #                            <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Response and special errors</dt>
    #             <dd>
    #                <p>When the request is an HTTP 1.1 request, the response is chunk encoded.
    #                   When the request is not an HTTP 1.1 request, the response would not contain the <code>Content-Length</code>.
    #                   You always need to read the entire response body to check if the copy succeeds.
    #                   to keep the connection alive while we copy the data. </p>
    #                <ul>
    #                   <li>
    #                      <p>If the copy is successful, you receive a response with information about the copied
    #                      object.</p>
    #                   </li>
    #                   <li>
    #                      <p>A copy request might return an error when Amazon S3 receives the copy request or while Amazon S3
    #                         is copying the files. A <code>200 OK</code> response can contain either a success or an error.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If the error occurs before the copy action starts, you receive a
    #                            standard Amazon S3 error.</p>
    #                         </li>
    #                         <li>
    #                            <p>If the error occurs during the copy operation, the error response is
    #                            embedded in the <code>200 OK</code> response. For example, in a cross-region copy, you
    #                            may encounter throttling and receive a <code>200 OK</code> response.
    #                            For more information, see <a href="repost.aws/knowledge-center/s3-resolve-200-internalerror">Resolve
    #                            the Error 200 response when copying objects to Amazon S3</a>.
    #                            The <code>200 OK</code> status code means the copy was accepted, but
    #                            it doesn't mean the copy is complete. Another example is
    #                            when you disconnect from Amazon S3 before the copy is complete, Amazon S3 might cancel the copy and you may receive a <code>200 OK</code> response.
    #                            You must stay connected to Amazon S3 until the entire response is successfully received and processed.</p>
    #                            <p>If you call this API operation directly, make
    #                               sure to design your application to parse the content of the response and handle it
    #                               appropriately. If you use Amazon Web Services SDKs, SDKs handle this condition. The SDKs detect the
    #                               embedded error and apply error handling per your configuration settings (including
    #                               automatically retrying the request as appropriate). If the condition persists, the SDKs
    #                               throw an exception (or, for the SDKs that don't use exceptions, they return an
    #                               error).</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Charge</dt>
    #             <dd>
    #                <p>The copy request charge is based on the storage class and Region that you specify for
    #                   the destination object. The request can also result in a data retrieval charge for the
    #                   source if the source storage class bills for data retrieval. For pricing information, see
    #                   <a href="http://aws.amazon.com/s3/pricing/">Amazon S3 pricing</a>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::CopyObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::CopyObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms", "aws:kms:dsse"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    # @example Response structure
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
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To copy an object
    #   # The following example copies an object from one bucket to another.
    #   resp = client.copy_object({
    #     bucket: "destinationbucket",
    #     copy_source: "/sourcebucket/HappyFacejpg",
    #     key: "HappyFaceCopyjpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     copy_object_result: {
    #       last_modified: Time.parse('2016-12-15T17:38:53.000Z'),
    #       e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #     }
    #   }
    def copy_object(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::CopyObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::CopyObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :copy_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'CopyObject',
        'code.function' => 'copy_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.CopyObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#copy_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#copy_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#copy_object] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This action creates an Amazon S3 bucket. To create an Amazon S3 on Outposts bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">
    #                   <code>CreateBucket</code>
    #                </a>.</p>
    #          </note>
    #          <p>Creates a new S3 bucket. To create a bucket, you must set up Amazon S3 and have a
    #          valid Amazon Web Services Access Key ID to authenticate requests. Anonymous requests are never allowed to
    #          create buckets. By creating the bucket, you become the bucket owner.</p>
    #          <p>There are two types of buckets: general purpose buckets and directory buckets. For more
    #          information about these bucket types, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating, configuring, and
    #             working with Amazon S3 buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>General purpose buckets</b> - If you send your <code>CreateBucket</code> request to the <code>s3.amazonaws.com</code> global endpoint,
    #                   the request goes to the <code>us-east-1</code> Region. So the signature
    #                   calculations in Signature Version 4 must use <code>us-east-1</code> as the Region, even
    #                   if the location constraint in the request specifies another Region where the bucket is
    #                   to be created. If you create a bucket in a Region other than US East (N. Virginia), your
    #                   application must be able to handle 307 redirect. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html">Virtual hosting of
    #                      buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                      </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - In addition to the <code>s3:CreateBucket</code> permission, the following permissions are
    #                      required in a policy when your <code>CreateBucket</code> request includes specific
    #                      headers: </p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <b>Access control lists (ACLs)</b> - In your <code>CreateBucket</code> request, if you specify an access control list (ACL)
    #                               and set it to <code>public-read</code>, <code>public-read-write</code>,
    #                               <code>authenticated-read</code>, or if you explicitly specify any other custom ACLs, both <code>s3:CreateBucket</code> and
    #                               <code>s3:PutBucketAcl</code> permissions are required. In your <code>CreateBucket</code> request, if you set the ACL to <code>private</code>,
    #                               or if you don't specify any ACLs, only the <code>s3:CreateBucket</code> permission is required.
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>Object Lock</b> - In your
    #                               <code>CreateBucket</code> request, if you set
    #                               <code>x-amz-bucket-object-lock-enabled</code> to true, the
    #                               <code>s3:PutBucketObjectLockConfiguration</code> and
    #                               <code>s3:PutBucketVersioning</code> permissions are required.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>S3 Object Ownership</b> - If your
    #                               <code>CreateBucket</code> request includes the
    #                               <code>x-amz-object-ownership</code> header, then the
    #                               <code>s3:PutBucketOwnershipControls</code> permission is required.</p>
    #                            <important>
    #                               <p>If your <code>CreateBucket</code> request sets <code>BucketOwnerEnforced</code> for
    #                                  Amazon S3 Object Ownership and specifies a bucket ACL that provides access to an external
    #                                  Amazon Web Services account, your request fails with a <code>400</code> error and returns the
    #                                  <code>InvalidBucketAcLWithObjectOwnership</code> error code. For more information,
    #                                  see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-ownership-existing-bucket.html">Setting Object
    #                                     Ownership on an existing bucket </a> in the <i>Amazon S3 User Guide</i>.
    #                               </p>
    #                            </important>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>S3 Block Public Access</b> - If your
    #                               specific use case requires granting public access to your S3 resources, you
    #                               can disable Block Public Access. Specifically, you can create a new bucket with Block
    #                               Public Access enabled, then separately call the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeletePublicAccessBlock.html">
    #                                  <code>DeletePublicAccessBlock</code>
    #                               </a> API. To use this operation, you must have the
    #                               <code>s3:PutBucketPublicAccessBlock</code> permission. For more information about S3 Block Public
    #                               Access, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html">Blocking
    #                                  public access to your Amazon S3 storage </a> in the
    #                               <i>Amazon S3 User Guide</i>. </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - You must have the <code>s3express:CreateBucket</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                      <important>
    #                         <p>The permissions for ACLs, Object Lock, S3 Object Ownership, and S3 Block Public Access are not supported for directory buckets.
    #                         For directory buckets, all Block Public Access settings are enabled at the bucket level and S3
    #                         Object Ownership is set to Bucket owner enforced (ACLs disabled). These settings can't be modified.
    #                      </p>
    #                         <p>For more information about permissions for creating and working with
    #                            directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a> in the <i>Amazon S3 User Guide</i>.
    #                            For more information about supported S3 features for directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-one-zone.html#s3-express-features">Features of S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                      </important>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::CreateBucketInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateBucketInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_bucket(
    #     acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read"]
    #     bucket: 'Bucket', # required
    #     create_bucket_configuration: {
    #       location_constraint: 'af-south-1', # accepts ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    #       location: {
    #         type: 'AvailabilityZone', # accepts ["AvailabilityZone"]
    #         name: 'Name'
    #       },
    #       bucket: {
    #         data_redundancy: 'SingleAvailabilityZone', # accepts ["SingleAvailabilityZone"]
    #         type: 'Directory' # accepts ["Directory"]
    #       }
    #     },
    #     grant_full_control: 'GrantFullControl',
    #     grant_read: 'GrantRead',
    #     grant_read_acp: 'GrantReadACP',
    #     grant_write: 'GrantWrite',
    #     grant_write_acp: 'GrantWriteACP',
    #     object_lock_enabled_for_bucket: false,
    #     object_ownership: 'BucketOwnerPreferred' # accepts ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateBucketOutput
    #   resp.data.location #=> String
    # @example To create a bucket
    #   # The following example creates a bucket.
    #   resp = client.create_bucket({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     location: "/examplebucket"
    #   }
    # @example To create a bucket in a specific region
    #   # The following example creates a bucket. The request specifies an AWS region where to create the bucket.
    #   resp = client.create_bucket({
    #     bucket: "examplebucket",
    #     create_bucket_configuration: {
    #       location_constraint: "eu-west-1"
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     location: "http://examplebucket.<Region>.s3.amazonaws.com/"
    #   }
    def create_bucket(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::CreateBucketInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::CreateBucket.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_bucket,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'CreateBucket',
        'code.function' => 'create_bucket',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.CreateBucket', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_bucket] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_bucket] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_bucket] #{output.data}")
        output
      end
    end

    # <p>This action initiates a multipart upload and returns an upload ID. This upload ID is
    #          used to associate all of the parts in the specific multipart upload. You specify this
    #          upload ID in each of your subsequent upload part requests (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>). You also include this
    #          upload ID in the final request to either complete or abort the multipart upload
    #          request. For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>After you initiate a multipart upload and upload one or more parts, to stop being
    #             charged for storing the uploaded parts, you must either complete or abort the multipart
    #             upload. Amazon S3 frees up the space used to store the parts and stops charging you for
    #             storing them only after you either complete or abort a multipart upload. </p>
    #          </note>
    #          <p>If you have configured a lifecycle rule to abort incomplete multipart uploads, the created multipart
    #          upload must be completed within the number of days specified in the bucket lifecycle
    #          configuration. Otherwise, the incomplete multipart upload becomes eligible for an abort
    #          action and Amazon S3 aborts the multipart upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle
    #             Configuration</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets </b> - S3 Lifecycle is not supported by directory buckets.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                      </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Request signing</dt>
    #             <dd>
    #                <p>For request signing, multipart upload is just a series of regular requests. You initiate
    #                a multipart upload, send one or more requests to upload parts, and then complete the
    #                multipart upload process. You sign each request individually. There is nothing special
    #                about signing multipart upload requests. For more information about signing, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information about the permissions required to use the multipart upload API, see
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
    #                            upload and permissions</a> in the <i>Amazon S3 User Guide</i>. </p>
    #                      <p>To perform a multipart upload with encryption by using an Amazon Web Services KMS key, the requester
    #                         must have permission to the <code>kms:Decrypt</code> and <code>kms:GenerateDataKey*</code>
    #                         actions on the key. These permissions are required because Amazon S3 must decrypt and read data
    #                         from the encrypted file parts before it completes the multipart upload. For more
    #                         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions">Multipart upload API
    #                            and permissions</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">Protecting data using
    #                               server-side encryption with Amazon Web Services KMS</a> in the
    #                         <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose buckets</b> - Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it
    #                         writes it to disks in its data centers and decrypts it when you access it. Amazon S3
    #                         automatically encrypts all new objects that are uploaded to an S3 bucket. When doing a
    #                         multipart upload, if you don't specify encryption information in your request, the
    #                         encryption setting of the uploaded parts is set to the default encryption configuration of
    #                         the destination bucket. By default, all buckets have a base level of encryption
    #                         configuration that uses server-side encryption with Amazon S3 managed keys (SSE-S3). If the
    #                         destination bucket has a default encryption configuration that uses server-side encryption
    #                         with an Key Management Service (KMS) key (SSE-KMS), or a customer-provided encryption key (SSE-C),
    #                         Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the uploaded
    #                         parts. When you perform a CreateMultipartUpload operation, if you want to use a different
    #                         type of encryption setting for the uploaded parts, you can request that Amazon S3 encrypts the
    #                         object with a different encryption key (such as an Amazon S3 managed key, a KMS key, or a customer-provided key). When the encryption
    #                         setting in your request is different from the default encryption configuration of the
    #                         destination bucket, the encryption setting in your request takes precedence. If you choose
    #                         to provide your own encryption key, the request headers you provide in <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #                         and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a> requests must match the headers you used in the <code>CreateMultipartUpload</code> request.</p>
    #                      <ul>
    #                         <li>
    #                            <p>Use KMS keys (SSE-KMS) that include the Amazon Web Services managed key
    #                               (<code>aws/s3</code>) and KMS customer managed keys stored in Key Management Service (KMS) –
    #                               If you want Amazon Web Services to manage the keys used to encrypt data, specify the
    #                               following headers in the request.</p>
    #                            <ul>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption</code>
    #                                  </p>
    #                               </li>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption-aws-kms-key-id</code>
    #                                  </p>
    #                               </li>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption-context</code>
    #                                  </p>
    #                               </li>
    #                            </ul>
    #                            <note>
    #                               <ul>
    #                                  <li>
    #                                     <p>If you specify <code>x-amz-server-side-encryption:aws:kms</code>, but
    #                                     don't provide <code>x-amz-server-side-encryption-aws-kms-key-id</code>,
    #                                     Amazon S3 uses the Amazon Web Services managed key (<code>aws/s3</code> key) in KMS to
    #                                     protect the data.</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>To perform a multipart upload with encryption by using an Amazon Web Services KMS key, the requester
    #                                     must have permission to the <code>kms:Decrypt</code> and <code>kms:GenerateDataKey*</code>
    #                                     actions on the key. These permissions are required because Amazon S3 must decrypt and read data
    #                                     from the encrypted file parts before it completes the multipart upload. For more
    #                                     information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html#mpuAndPermissions">Multipart upload API
    #                                        and permissions</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">Protecting data using
    #                                           server-side encryption with Amazon Web Services KMS</a> in the
    #                                     <i>Amazon S3 User Guide</i>.</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>If your Identity and Access Management (IAM) user or role is in the same Amazon Web Services account as the KMS key,
    #                                     then you must have these permissions on the key policy. If your IAM user or role is in a different account from the key, then you must have the permissions on both the key
    #                                     policy and your IAM user or role.</p>
    #                                  </li>
    #                                  <li>
    #                                     <p>All <code>GET</code> and <code>PUT</code> requests for an object
    #                                        protected by KMS fail if you don't make them by using Secure Sockets
    #                                        Layer (SSL), Transport Layer Security (TLS), or Signature Version
    #                                        4. For information about configuring any of the officially supported Amazon Web Services
    #                                        SDKs and Amazon Web Services CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version">Specifying the Signature Version in Request Authentication</a>
    #                                        in the <i>Amazon S3 User Guide</i>.</p>
    #                                  </li>
    #                               </ul>
    #                            </note>
    #                            <p>For more information about server-side encryption with KMS keys
    #                               (SSE-KMS), see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">Protecting Data
    #                                  Using Server-Side Encryption with KMS keys</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                         </li>
    #                         <li>
    #                            <p>Use customer-provided encryption keys (SSE-C) – If you want to manage
    #                               your own encryption keys, provide all the following headers in the
    #                               request.</p>
    #                            <ul>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                                  </p>
    #                               </li>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption-customer-key</code>
    #                                  </p>
    #                               </li>
    #                               <li>
    #                                  <p>
    #                                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                                  </p>
    #                               </li>
    #                            </ul>
    #                            <p>For more information about server-side encryption with customer-provided
    #                               encryption keys (SSE-C), see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">
    #                                  Protecting data using server-side encryption with customer-provided
    #                                  encryption keys (SSE-C)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory buckets</b> -For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
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
    # @param [Hash | Types::CreateMultipartUploadInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateMultipartUploadInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms", "aws:kms:dsse"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    # @example Response structure
    #   resp.data #=> Types::CreateMultipartUploadOutput
    #   resp.data.abort_date #=> Time
    #   resp.data.abort_rule_id #=> String
    #   resp.data.bucket #=> String
    #   resp.data.key #=> String
    #   resp.data.upload_id #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    # @example To initiate a multipart upload
    #   # The following example initiates a multipart upload.
    #   resp = client.create_multipart_upload({
    #     bucket: "examplebucket",
    #     key: "largeobject"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     bucket: "examplebucket",
    #     upload_id: "ibZBv_75gd9r8lH_gqXatLdxMVpAlj6ZQjEs.OwyF3953YdwbcQnMA2BLGn8Lx12fQNICtMw5KyteFeHw.Sjng--",
    #     key: "largeobject"
    #   }
    def create_multipart_upload(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::CreateMultipartUploadInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::CreateMultipartUpload.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_multipart_upload,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'CreateMultipartUpload',
        'code.function' => 'create_multipart_upload',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.CreateMultipartUpload', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_multipart_upload] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_multipart_upload] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_multipart_upload] #{output.data}")
        output
      end
    end

    # <p>Creates a session that establishes temporary security credentials to support fast authentication and authorization for the Zonal endpoint APIs on directory buckets.
    #          For more information about Zonal endpoint APIs that include the Availability Zone in the request endpoint, see
    #          <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-APIs.html">S3 Express One Zone  APIs</a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    #          <p>To make Zonal endpoint API requests on a directory bucket, use the <code>CreateSession</code>
    #          API operation. Specifically, you grant <code>s3express:CreateSession</code> permission to a
    #          bucket in a bucket policy or an IAM identity-based policy. Then, you use IAM credentials to make the
    #             <code>CreateSession</code> API request on the bucket, which returns temporary security
    #          credentials that include the access key ID, secret access key, session token, and
    #          expiration. These credentials have associated permissions to access the Zonal endpoint APIs. After
    #          the session is created, you don’t need to use other policies to grant permissions to each
    #          Zonal endpoint API individually. Instead, in your Zonal endpoint API requests, you sign your requests by
    #          applying the temporary security credentials of the session to the request headers and
    #          following the SigV4 protocol for authentication. You also apply the session token to the
    #             <code>x-amz-s3session-token</code> request header for authorization. Temporary security
    #          credentials are scoped to the bucket and expire after 5 minutes. After the expiration time,
    #          any calls that you make with those credentials will fail. You must use IAM credentials
    #          again to make a <code>CreateSession</code> API request that generates a new set of
    #          temporary credentials for use. Temporary credentials cannot be extended or refreshed beyond
    #          the original specified interval.</p>
    #          <p>If you use Amazon Web Services SDKs, SDKs handle the session token refreshes automatically to avoid
    #          service interruptions when a session expires. We recommend that you use the Amazon Web Services SDKs to
    #          initiate and manage requests to the CreateSession API. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-optimizing-performance-guidelines-design-patterns.html#s3-express-optimizing-performance-session-authentication">Performance guidelines and design patterns</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>
    #                         <code>CopyObject</code> API operation</b> - Unlike other Zonal endpoint APIs, the <code>CopyObject</code> API operation doesn't use the temporary security credentials returned from the <code>CreateSession</code> API operation for authentication and authorization. For information about authentication and authorization of the <code>CopyObject</code> API operation on directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>
    #                         <code>HeadBucket</code> API operation</b> - Unlike other Zonal endpoint APIs, the <code>HeadBucket</code> API operation doesn't use the temporary security credentials returned from the <code>CreateSession</code> API operation for authentication and authorization. For information about authentication and authorization of the <code>HeadBucket</code> API operation on directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html">HeadBucket</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To obtain temporary security credentials, you must create a bucket policy or an IAM identity-based policy that
    #                   grants <code>s3express:CreateSession</code> permission to the bucket. In a
    #                   policy, you can have the <code>s3express:SessionMode</code> condition key to
    #                   control who can create a <code>ReadWrite</code> or <code>ReadOnly</code> session.
    #                   For more information about <code>ReadWrite</code> or <code>ReadOnly</code>
    #                   sessions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html#API_CreateSession_RequestParameters">
    #                      <code>x-amz-create-session-mode</code>
    #                   </a>. For example policies, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html">Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone</a> in the
    #                      <i>Amazon S3 User Guide</i>. </p>
    #                <p>To grant cross-account access to Zonal endpoint APIs, the bucket policy should also grant both accounts the <code>s3express:CreateSession</code> permission.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    # @param [Hash | Types::CreateSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_session(
    #     session_mode: 'ReadOnly', # accepts ["ReadOnly", "ReadWrite"]
    #     bucket: 'Bucket' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateSessionOutput
    #   resp.data.credentials #=> Types::SessionCredentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    def create_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::CreateSessionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::CreateSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_session,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'CreateSession',
        'code.function' => 'create_session',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.CreateSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_session] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_session] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_session] #{output.data}")
        output
      end
    end

    # <p>Deletes the S3 bucket. All objects (including all object versions and delete markers) in
    #          the bucket must be deleted before the bucket itself can be deleted.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - If multipart uploads in a directory bucket are in progress, you can't delete the bucket until all the in-progress multipart uploads are aborted or completed.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                      </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - You must have the <code>s3:DeleteBucket</code> permission on the specified bucket in a policy.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - You must have the <code>s3express:DeleteBucket</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>DeleteBucket</code>:</p>
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
    # @param [Hash | Types::DeleteBucketInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketOutput
    # @example To delete a bucket
    #   # The following example deletes the specified bucket.
    #   resp = client.delete_bucket({
    #     bucket: "forrandall2"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucket.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucket',
        'code.function' => 'delete_bucket',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucket', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes an analytics configuration for the bucket (specified by the analytics
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
    # @param [Hash | Types::DeleteBucketAnalyticsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketAnalyticsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketAnalyticsConfigurationOutput
    def delete_bucket_analytics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketAnalyticsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketAnalyticsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_analytics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketAnalyticsConfiguration',
        'code.function' => 'delete_bucket_analytics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketAnalyticsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_analytics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_analytics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_analytics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the <code>cors</code> configuration information set for the bucket.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutBucketCORS</code> action. The bucket owner has this permission by default
    #          and can grant this permission to others. </p>
    #          <p>For information about <code>cors</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling Cross-Origin Resource Sharing</a> in
    #          the <i>Amazon S3 User Guide</i>.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
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
    # @param [Hash | Types::DeleteBucketCorsInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketCorsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_cors(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketCorsOutput
    # @example To delete cors configuration on a bucket.
    #   # The following example deletes CORS configuration on a bucket.
    #   resp = client.delete_bucket_cors({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_cors(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketCorsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketCors.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_cors,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketCors',
        'code.function' => 'delete_bucket_cors',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketCors', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_cors] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_cors] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_cors] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This implementation of the DELETE action resets the default encryption for the bucket as
    #          server-side encryption with Amazon S3 managed keys (SSE-S3). For information about the bucket
    #          default encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket Default Encryption</a>
    #          in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:PutEncryptionConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following operations are related to <code>DeleteBucketEncryption</code>:</p>
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
    # @param [Hash | Types::DeleteBucketEncryptionInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketEncryptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketEncryptionOutput
    def delete_bucket_encryption(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketEncryptionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketEncryption.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_encryption,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketEncryption',
        'code.function' => 'delete_bucket_encryption',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketEncryption', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_encryption] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_encryption] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_encryption] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the S3 Intelligent-Tiering configuration from the specified bucket.</p>
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
    # @param [Hash | Types::DeleteBucketIntelligentTieringConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketIntelligentTieringConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketIntelligentTieringConfigurationOutput
    def delete_bucket_intelligent_tiering_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketIntelligentTieringConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_intelligent_tiering_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketIntelligentTieringConfiguration',
        'code.function' => 'delete_bucket_intelligent_tiering_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketIntelligentTieringConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_intelligent_tiering_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_intelligent_tiering_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_intelligent_tiering_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes an inventory configuration (identified by the inventory ID) from the
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
    # @param [Hash | Types::DeleteBucketInventoryConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketInventoryConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_inventory_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketInventoryConfigurationOutput
    def delete_bucket_inventory_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketInventoryConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketInventoryConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_inventory_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketInventoryConfiguration',
        'code.function' => 'delete_bucket_inventory_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketInventoryConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_inventory_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_inventory_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_inventory_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the lifecycle configuration from the specified bucket. Amazon S3 removes all the
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
    # @param [Hash | Types::DeleteBucketLifecycleInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketLifecycleInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_lifecycle(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketLifecycleOutput
    # @example To delete lifecycle configuration on a bucket.
    #   # The following example deletes lifecycle configuration on a bucket.
    #   resp = client.delete_bucket_lifecycle({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_lifecycle(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketLifecycleInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketLifecycle.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_lifecycle,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketLifecycle',
        'code.function' => 'delete_bucket_lifecycle',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketLifecycle', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_lifecycle] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_lifecycle] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_lifecycle] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes a metrics configuration for the Amazon CloudWatch request metrics (specified by the
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
    # @param [Hash | Types::DeleteBucketMetricsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketMetricsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketMetricsConfigurationOutput
    def delete_bucket_metrics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketMetricsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketMetricsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_metrics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketMetricsConfiguration',
        'code.function' => 'delete_bucket_metrics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketMetricsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_metrics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_metrics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_metrics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Removes <code>OwnershipControls</code> for an Amazon S3 bucket. To use this operation, you
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
    # @param [Hash | Types::DeleteBucketOwnershipControlsInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketOwnershipControlsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_ownership_controls(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketOwnershipControlsOutput
    def delete_bucket_ownership_controls(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketOwnershipControlsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketOwnershipControls.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_ownership_controls,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketOwnershipControls',
        'code.function' => 'delete_bucket_ownership_controls',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketOwnershipControls', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_ownership_controls] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_ownership_controls] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_ownership_controls] #{output.data}")
        output
      end
    end

    # <p>Deletes the
    #          policy of a specified bucket.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>If you are using an identity other than the
    #                   root user of the Amazon Web Services account that owns the bucket, the calling identity must both have the
    #                   <code>DeleteBucketPolicy</code> permissions on the specified bucket and belong to the
    #                   bucket owner's account in order to use this operation.</p>
    #                <p>If you don't have <code>DeleteBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #                   Access Denied</code> error. If you have the correct permissions, but you're not using an
    #                   identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #                      Allowed</code> error.</p>
    #                <important>
    #                   <p>To ensure that bucket owners don't inadvertently lock themselves out of their own
    #                      buckets, the root principal in a bucket owner's Amazon Web Services account can perform the
    #                      <code>GetBucketPolicy</code>, <code>PutBucketPolicy</code>, and
    #                      <code>DeleteBucketPolicy</code> API actions, even if their bucket policy explicitly
    #                      denies the root principal's access. Bucket owner root principals can only be blocked
    #                      from performing these API actions by VPC endpoint policies and Amazon Web Services Organizations
    #                      policies.</p>
    #                </important>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The <code>s3:DeleteBucketPolicy</code> permission is required in a policy.
    #                         For more information about general purpose buckets bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #                            Policies</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation, you must have the <code>s3express:DeleteBucketPolicy</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::DeleteBucketPolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketPolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_policy(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketPolicyOutput
    # @example To delete bucket policy
    #   # The following example deletes bucket policy on the specified bucket.
    #   resp = client.delete_bucket_policy({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_policy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketPolicyInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketPolicy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_policy,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketPolicy',
        'code.function' => 'delete_bucket_policy',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_policy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_policy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_policy] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p> Deletes the replication configuration from the bucket.</p>
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
    # @param [Hash | Types::DeleteBucketReplicationInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketReplicationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_replication(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketReplicationOutput
    # @example To delete bucket replication configuration
    #   # The following example deletes replication configuration set on bucket.
    #   resp = client.delete_bucket_replication({
    #     bucket: "example"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_replication(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketReplicationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketReplication.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_replication,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketReplication',
        'code.function' => 'delete_bucket_replication',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketReplication', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_replication] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_replication] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_replication] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the tags from the bucket.</p>
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
    # @param [Hash | Types::DeleteBucketTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_tagging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketTaggingOutput
    # @example To delete bucket tags
    #   # The following example deletes bucket tags.
    #   resp = client.delete_bucket_tagging({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketTagging',
        'code.function' => 'delete_bucket_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_tagging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This action removes the website configuration for a bucket. Amazon S3 returns a <code>200
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
    # @param [Hash | Types::DeleteBucketWebsiteInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteBucketWebsiteInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_bucket_website(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteBucketWebsiteOutput
    # @example To delete bucket website configuration
    #   # The following example deletes bucket website configuration.
    #   resp = client.delete_bucket_website({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def delete_bucket_website(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteBucketWebsiteInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteBucketWebsite.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_bucket_website,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteBucketWebsite',
        'code.function' => 'delete_bucket_website',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteBucketWebsite', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_website] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_bucket_website] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_bucket_website] #{output.data}")
        output
      end
    end

    # <p>Removes an object from a bucket. The behavior depends on the bucket's versioning state: </p>
    #          <ul>
    #             <li>
    #                <p>If versioning is enabled, the operation removes the null version (if there is one) of an object and inserts a delete marker,
    #             which becomes the latest version of the object. If there isn't a null version, Amazon S3 does
    #             not remove any objects but will still respond that the command was successful.</p>
    #             </li>
    #             <li>
    #                <p>If versioning is suspended or not enabled, the operation permanently deletes the object.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code>
    #                to the <code>versionId</code> query parameter in the request.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                      </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To remove a specific version, you must use the <code>versionId</code> query parameter. Using this
    #          query parameter permanently deletes the version. If the object deleted is a delete marker, Amazon S3
    #          sets the response header <code>x-amz-delete-marker</code> to true. </p>
    #          <p>If the object you want to delete is in a bucket where the bucket versioning
    #          configuration is MFA Delete enabled, you must include the <code>x-amz-mfa</code> request
    #          header in the DELETE <code>versionId</code> request. Requests that include
    #          <code>x-amz-mfa</code> must use HTTPS. For more information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html">Using MFA Delete</a> in the <i>Amazon S3
    #                User Guide</i>. To see sample
    #          requests that use versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete">Sample
    #             Request</a>. </p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - MFA delete is not supported by directory buckets.</p>
    #          </note>
    #          <p>You can delete objects by explicitly calling DELETE Object or calling
    #          (<a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html">PutBucketLifecycle</a>) to enable Amazon S3 to remove them for you. If you want to block
    #          users or accounts from removing or deleting objects from your bucket, you must deny them
    #          the <code>s3:DeleteObject</code>, <code>s3:DeleteObjectVersion</code>, and
    #          <code>s3:PutLifeCycleConfiguration</code> actions. </p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - S3 Lifecycle is not supported by directory buckets.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The following permissions are required in your policies when your
    #                         <code>DeleteObjects</code> request includes specific headers.</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:DeleteObject</code>
    #                               </b> - To delete an object from a bucket, you must always have the <code>s3:DeleteObject</code> permission.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:DeleteObjectVersion</code>
    #                               </b> - To delete a specific version of an object from a versiong-enabled bucket, you must have the <code>s3:DeleteObjectVersion</code> permission.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following action is related to <code>DeleteObject</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::DeleteObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_object(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     mfa: 'MFA',
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     bypass_governance_retention: false,
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteObjectOutput
    #   resp.data.delete_marker #=> Boolean
    #   resp.data.version_id #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To delete an object (from a non-versioned bucket)
    #   # The following example deletes an object from a non-versioned bucket.
    #   resp = client.delete_object({
    #     bucket: "ExampleBucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    # @example To delete an object
    #   # The following example deletes an object from an S3 bucket.
    #   resp = client.delete_object({
    #     bucket: "examplebucket",
    #     key: "objectkey.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def delete_object(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteObject',
        'code.function' => 'delete_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_object] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Removes the entire tag set from the specified object. For more information about
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
    # @param [Hash | Types::DeleteObjectTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteObjectTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_object_tagging(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteObjectTaggingOutput
    #   resp.data.version_id #=> String
    # @example To remove tag set from an object version
    #   # The following example removes tag set associated with the specified object version. The request specifies both the object key and object version.
    #   resp = client.delete_object_tagging({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg",
    #     version_id: "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
    #   }
    # @example To remove tag set from an object
    #   # The following example removes tag set associated with the specified object. If the bucket is versioning enabled, the operation removes tag set from the latest object version.
    #   resp = client.delete_object_tagging({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "null"
    #   }
    def delete_object_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteObjectTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteObjectTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_object_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteObjectTagging',
        'code.function' => 'delete_object_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteObjectTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_object_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_object_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_object_tagging] #{output.data}")
        output
      end
    end

    # <p>This operation enables you to delete multiple objects from a bucket using a single HTTP
    #          request. If you know the object keys that you want to delete, then this operation provides a
    #          suitable alternative to sending individual delete requests, reducing per-request
    #          overhead.</p>
    #          <p>The request can contain a list of up to 1000 keys that you want to delete. In the XML, you
    #          provide the object key names, and optionally, version IDs if you want to delete a specific
    #          version of the object from a versioning-enabled bucket. For each key, Amazon S3 performs a
    #          delete operation and returns the result of that delete, success or failure, in the response.
    #          Note that if the object specified in the request is not found, Amazon S3 returns the result as
    #          deleted.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                      </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>The operation supports two modes for the response: verbose and quiet. By default, the
    #          operation uses verbose mode in which the response includes the result of deletion of each key
    #          in your request. In quiet mode the response includes only keys where the delete operation
    #          encountered an error. For a successful deletion in a quiet mode, the operation does not return any information
    #          about the delete in the response body.</p>
    #          <p>When performing this action on an MFA Delete enabled bucket, that attempts to delete any
    #          versioned objects, you must include an MFA token. If you do not provide one, the entire
    #          request will fail, even if there are non-versioned objects you are trying to delete. If you
    #          provide an invalid token, whether there are versioned keys in the request or not, the
    #          entire Multi-Object Delete request will fail. For information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete">MFA
    #             Delete</a> in the <i>Amazon S3
    #                User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - MFA delete is not supported by directory buckets.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The following permissions are required in your policies when your
    #                         <code>DeleteObjects</code> request includes specific headers.</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:DeleteObject</code>
    #                               </b> - To delete an object from a bucket, you must always specify the <code>s3:DeleteObject</code> permission.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:DeleteObjectVersion</code>
    #                               </b> - To delete a specific version of an object from a versiong-enabled bucket, you must specify the <code>s3:DeleteObjectVersion</code> permission.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Content-MD5 request header</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket</b> - The Content-MD5 request header is required for all Multi-Object Delete requests. Amazon S3
    #                      uses the header value to ensure that your request body has not been altered in
    #                      transit.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket</b> - The Content-MD5 request header or a additional checksum request header
    #                      (including <code>x-amz-checksum-crc32</code>, <code>x-amz-checksum-crc32c</code>, <code>x-amz-checksum-sha1</code>, or
    #                      <code>x-amz-checksum-sha256</code>) is required for all Multi-Object Delete requests.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::DeleteObjectsInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteObjectsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    # @example To delete multiple object versions from a versioned bucket
    #   # The following example deletes objects from a bucket. The request specifies object versions. S3 deletes specific object versions and returns the key and versions of deleted objects in the response.
    #   resp = client.delete_objects({
    #     bucket: "examplebucket",
    #     delete: {
    #       objects: [
    #         {
    #           key: "HappyFace.jpg",
    #           version_id: "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b"
    #         },
    #         {
    #           key: "HappyFace.jpg",
    #           version_id: "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd"
    #         }
    #       ],
    #       quiet: false
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     deleted: [
    #       {
    #         version_id: "yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd",
    #         key: "HappyFace.jpg"
    #       },
    #       {
    #         version_id: "2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b",
    #         key: "HappyFace.jpg"
    #       }
    #     ]
    #   }
    def delete_objects(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeleteObjectsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeleteObjects.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_objects,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeleteObjects',
        'code.function' => 'delete_objects',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeleteObjects', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_objects] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_objects] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_objects] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Removes the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket. To use this
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
    # @param [Hash | Types::DeletePublicAccessBlockInput] params
    #   Request parameters for this operation.
    #   See {Types::DeletePublicAccessBlockInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_public_access_block(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeletePublicAccessBlockOutput
    def delete_public_access_block(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::DeletePublicAccessBlockInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::DeletePublicAccessBlock.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_public_access_block,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'DeletePublicAccessBlock',
        'code.function' => 'delete_public_access_block',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.DeletePublicAccessBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_public_access_block] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_public_access_block] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_public_access_block] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This implementation of the GET action uses the <code>accelerate</code> subresource to
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
    #          <p>The following operations are related to
    #          <code>GetBucketAccelerateConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAccelerateConfiguration.html">PutBucketAccelerateConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetBucketAccelerateConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketAccelerateConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_accelerate_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester' # accepts ["requester"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketAccelerateConfigurationOutput
    #   resp.data.status #=> String, one of ["Enabled", "Suspended"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    def get_bucket_accelerate_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketAccelerateConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketAccelerateConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_accelerate_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketAccelerateConfiguration',
        'code.function' => 'get_bucket_accelerate_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketAccelerateConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_accelerate_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_accelerate_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_accelerate_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This implementation of the <code>GET</code> action uses the <code>acl</code> subresource
    #          to return the access control list (ACL) of a bucket. To use <code>GET</code> to return the
    #          ACL of the bucket, you must have the <code>READ_ACP</code> access to the bucket. If
    #             <code>READ_ACP</code> permission is granted to the anonymous user, you can return the
    #          ACL of the bucket without using an authorization header.</p>
    #          <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    # If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    # For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #             Error Codes</a>.</p>
    #          <note>
    #             <p>If your bucket uses the bucket owner enforced setting for S3 Object Ownership,
    #             requests to read ACLs are still supported and return the
    #                <code>bucket-owner-full-control</code> ACL with the owner being the account that
    #             created the bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling object
    #                ownership and disabling ACLs</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p>The following operations are related to <code>GetBucketAcl</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetBucketAclInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketAclInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_acl(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    def get_bucket_acl(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketAclInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketAcl.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_acl,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketAcl',
        'code.function' => 'get_bucket_acl',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_acl] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_acl] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_acl] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This implementation of the GET action returns an analytics configuration (identified by
    #          the analytics configuration ID) from the bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3:GetAnalyticsConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources"> Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p>For information about Amazon S3 analytics feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html">Amazon S3 Analytics – Storage Class
    #             Analysis</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following operations are related to
    #          <code>GetBucketAnalyticsConfiguration</code>:</p>
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
    # @param [Hash | Types::GetBucketAnalyticsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketAnalyticsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketAnalyticsConfigurationOutput
    #   resp.data.analytics_configuration #=> Types::AnalyticsConfiguration
    #   resp.data.analytics_configuration.id #=> String
    #   resp.data.analytics_configuration.member_filter #=> Types::AnalyticsFilter, one of [Prefix, Tag, And]
    #   resp.data.analytics_configuration.member_filter.prefix #=> String
    #   resp.data.analytics_configuration.member_filter.tag #=> Types::Tag
    #   resp.data.analytics_configuration.member_filter.tag.key #=> String
    #   resp.data.analytics_configuration.member_filter.tag.value #=> String
    #   resp.data.analytics_configuration.member_filter.and #=> Types::AnalyticsAndOperator
    #   resp.data.analytics_configuration.member_filter.and.prefix #=> String
    #   resp.data.analytics_configuration.member_filter.and.tags #=> Array<Tag>
    #   resp.data.analytics_configuration.storage_class_analysis #=> Types::StorageClassAnalysis
    #   resp.data.analytics_configuration.storage_class_analysis.data_export #=> Types::StorageClassAnalysisDataExport
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.output_schema_version #=> String, one of ["V_1"]
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination #=> Types::AnalyticsExportDestination
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination #=> Types::AnalyticsS3BucketDestination
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.format #=> String, one of ["CSV"]
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.bucket_account_id #=> String
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.bucket #=> String
    #   resp.data.analytics_configuration.storage_class_analysis.data_export.destination.s3_bucket_destination.prefix #=> String
    def get_bucket_analytics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketAnalyticsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketAnalyticsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_analytics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketAnalyticsConfiguration',
        'code.function' => 'get_bucket_analytics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketAnalyticsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_analytics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_analytics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_analytics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the Cross-Origin Resource Sharing (CORS) configuration information set for the
    #          bucket.</p>
    #          <p> To use this operation, you must have permission to perform the
    #             <code>s3:GetBucketCORS</code> action. By default, the bucket owner has this permission
    #          and can grant it to others.</p>
    #          <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    # If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    # For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #             Error Codes</a>.</p>
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
    # @param [Hash | Types::GetBucketCorsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketCorsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_cors(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    # @example To get cors configuration set on a bucket
    #   # The following example returns cross-origin resource sharing (CORS) configuration set on a bucket.
    #   resp = client.get_bucket_cors({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     cors_rules: [
    #       {
    #         allowed_headers: [
    #           "Authorization"
    #         ],
    #         max_age_seconds: 3000,
    #         allowed_methods: [
    #           "GET"
    #         ],
    #         allowed_origins: [
    #           "*"
    #         ]
    #       }
    #     ]
    #   }
    def get_bucket_cors(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketCorsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketCors.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_cors,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketCors',
        'code.function' => 'get_bucket_cors',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketCors', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_cors] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_cors] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_cors] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the default encryption configuration for an Amazon S3 bucket. By default, all buckets
    #          have a default encryption configuration that uses server-side encryption with Amazon S3 managed
    #          keys (SSE-S3). For information about the bucket default encryption feature, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">Amazon S3 Bucket
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
    # @param [Hash | Types::GetBucketEncryptionInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketEncryptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketEncryptionOutput
    #   resp.data.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.server_side_encryption_configuration.rules #=> Array<ServerSideEncryptionRule>
    #   resp.data.server_side_encryption_configuration.rules[0] #=> Types::ServerSideEncryptionRule
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default #=> Types::ServerSideEncryptionByDefault
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.sse_algorithm #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.server_side_encryption_configuration.rules[0].apply_server_side_encryption_by_default.kms_master_key_id #=> String
    #   resp.data.server_side_encryption_configuration.rules[0].bucket_key_enabled #=> Boolean
    def get_bucket_encryption(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketEncryptionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketEncryption.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_encryption,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketEncryption',
        'code.function' => 'get_bucket_encryption',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketEncryption', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_encryption] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_encryption] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_encryption] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets the S3 Intelligent-Tiering configuration from the specified bucket.</p>
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
    # @param [Hash | Types::GetBucketIntelligentTieringConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketIntelligentTieringConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketIntelligentTieringConfigurationOutput
    #   resp.data.intelligent_tiering_configuration #=> Types::IntelligentTieringConfiguration
    #   resp.data.intelligent_tiering_configuration.id #=> String
    #   resp.data.intelligent_tiering_configuration.member_filter #=> Types::IntelligentTieringFilter
    #   resp.data.intelligent_tiering_configuration.member_filter.prefix #=> String
    #   resp.data.intelligent_tiering_configuration.member_filter.tag #=> Types::Tag
    #   resp.data.intelligent_tiering_configuration.member_filter.tag.key #=> String
    #   resp.data.intelligent_tiering_configuration.member_filter.tag.value #=> String
    #   resp.data.intelligent_tiering_configuration.member_filter.and #=> Types::IntelligentTieringAndOperator
    #   resp.data.intelligent_tiering_configuration.member_filter.and.prefix #=> String
    #   resp.data.intelligent_tiering_configuration.member_filter.and.tags #=> Array<Tag>
    #   resp.data.intelligent_tiering_configuration.status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.intelligent_tiering_configuration.tierings #=> Array<Tiering>
    #   resp.data.intelligent_tiering_configuration.tierings[0] #=> Types::Tiering
    #   resp.data.intelligent_tiering_configuration.tierings[0].days #=> Integer
    #   resp.data.intelligent_tiering_configuration.tierings[0].access_tier #=> String, one of ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    def get_bucket_intelligent_tiering_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketIntelligentTieringConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_intelligent_tiering_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketIntelligentTieringConfiguration',
        'code.function' => 'get_bucket_intelligent_tiering_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketIntelligentTieringConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_intelligent_tiering_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_intelligent_tiering_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_intelligent_tiering_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns an inventory configuration (identified by the inventory configuration ID) from
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
    # @param [Hash | Types::GetBucketInventoryConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketInventoryConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_inventory_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    #   resp.data.inventory_configuration.member_filter #=> Types::InventoryFilter
    #   resp.data.inventory_configuration.member_filter.prefix #=> String
    #   resp.data.inventory_configuration.id #=> String
    #   resp.data.inventory_configuration.included_object_versions #=> String, one of ["All", "Current"]
    #   resp.data.inventory_configuration.optional_fields #=> Array<String>
    #   resp.data.inventory_configuration.optional_fields[0] #=> String, one of ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm", "ObjectAccessControlList", "ObjectOwner"]
    #   resp.data.inventory_configuration.schedule #=> Types::InventorySchedule
    #   resp.data.inventory_configuration.schedule.frequency #=> String, one of ["Daily", "Weekly"]
    def get_bucket_inventory_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketInventoryConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketInventoryConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_inventory_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketInventoryConfiguration',
        'code.function' => 'get_bucket_inventory_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketInventoryConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_inventory_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_inventory_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_inventory_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <note>
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
    # @param [Hash | Types::GetBucketLifecycleConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketLifecycleConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_lifecycle_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketLifecycleConfigurationOutput
    #   resp.data.rules #=> Array<LifecycleRule>
    #   resp.data.rules[0] #=> Types::LifecycleRule
    #   resp.data.rules[0].expiration #=> Types::LifecycleExpiration
    #   resp.data.rules[0].expiration.date #=> Time
    #   resp.data.rules[0].expiration.days #=> Integer
    #   resp.data.rules[0].expiration.expired_object_delete_marker #=> Boolean
    #   resp.data.rules[0].id #=> String
    #   resp.data.rules[0].prefix #=> String
    #   resp.data.rules[0].member_filter #=> Types::LifecycleRuleFilter, one of [Prefix, Tag, ObjectSizeGreaterThan, ObjectSizeLessThan, And]
    #   resp.data.rules[0].member_filter.prefix #=> String
    #   resp.data.rules[0].member_filter.tag #=> Types::Tag
    #   resp.data.rules[0].member_filter.tag.key #=> String
    #   resp.data.rules[0].member_filter.tag.value #=> String
    #   resp.data.rules[0].member_filter.object_size_greater_than #=> Integer
    #   resp.data.rules[0].member_filter.object_size_less_than #=> Integer
    #   resp.data.rules[0].member_filter.and #=> Types::LifecycleRuleAndOperator
    #   resp.data.rules[0].member_filter.and.prefix #=> String
    #   resp.data.rules[0].member_filter.and.tags #=> Array<Tag>
    #   resp.data.rules[0].member_filter.and.object_size_greater_than #=> Integer
    #   resp.data.rules[0].member_filter.and.object_size_less_than #=> Integer
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
    # @example To get lifecycle configuration on a bucket
    #   # The following example retrieves lifecycle configuration on set on a bucket.
    #   resp = client.get_bucket_lifecycle_configuration({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         prefix: "TaxDocs",
    #         status: "Enabled",
    #         transitions: [
    #           {
    #             days: 365,
    #             storage_class: "STANDARD_IA"
    #           }
    #         ],
    #         id: "Rule for TaxDocs/"
    #       }
    #     ]
    #   }
    def get_bucket_lifecycle_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketLifecycleConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketLifecycleConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_lifecycle_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketLifecycleConfiguration',
        'code.function' => 'get_bucket_lifecycle_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketLifecycleConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_lifecycle_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_lifecycle_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_lifecycle_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the Region the bucket resides in. You set the bucket's Region using the
    #             <code>LocationConstraint</code> request parameter in a <code>CreateBucket</code>
    #          request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">CreateBucket</a>.</p>
    #          <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    # If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    # For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #             Error Codes</a>.</p>
    #          <note>
    #             <p>We recommend that you use <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadBucket.html">HeadBucket</a> to return the Region
    #             that a bucket resides in. For backward compatibility, Amazon S3 continues to support
    #             GetBucketLocation.</p>
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
    # @param [Hash | Types::GetBucketLocationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketLocationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_location(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketLocationOutput
    #   resp.data.location_constraint #=> String, one of ["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ca-central-1", "cn-north-1", "cn-northwest-1", "EU", "eu-central-1", "eu-north-1", "eu-south-1", "eu-south-2", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-2", "us-gov-east-1", "us-gov-west-1", "us-west-1", "us-west-2"]
    # @example To get bucket location
    #   # The following example returns bucket location.
    #   resp = client.get_bucket_location({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     location_constraint: "us-west-2"
    #   }
    def get_bucket_location(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketLocationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketLocation.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_location,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketLocation',
        'code.function' => 'get_bucket_location',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketLocation', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_location] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_location] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_location] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the logging status of a bucket and the permissions users have to view and modify
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
    # @param [Hash | Types::GetBucketLoggingInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketLoggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_logging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    #   resp.data.logging_enabled.target_object_key_format #=> Types::TargetObjectKeyFormat
    #   resp.data.logging_enabled.target_object_key_format.simple_prefix #=> Types::SimplePrefix
    #   resp.data.logging_enabled.target_object_key_format.partitioned_prefix #=> Types::PartitionedPrefix
    #   resp.data.logging_enabled.target_object_key_format.partitioned_prefix.partition_date_source #=> String, one of ["EventTime", "DeliveryTime"]
    def get_bucket_logging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketLoggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketLogging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_logging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketLogging',
        'code.function' => 'get_bucket_logging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketLogging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_logging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_logging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_logging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets a metrics configuration (specified by the metrics configuration ID) from the
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
    # @param [Hash | Types::GetBucketMetricsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketMetricsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketMetricsConfigurationOutput
    #   resp.data.metrics_configuration #=> Types::MetricsConfiguration
    #   resp.data.metrics_configuration.id #=> String
    #   resp.data.metrics_configuration.member_filter #=> Types::MetricsFilter, one of [Prefix, Tag, AccessPointArn, And]
    #   resp.data.metrics_configuration.member_filter.prefix #=> String
    #   resp.data.metrics_configuration.member_filter.tag #=> Types::Tag
    #   resp.data.metrics_configuration.member_filter.tag.key #=> String
    #   resp.data.metrics_configuration.member_filter.tag.value #=> String
    #   resp.data.metrics_configuration.member_filter.access_point_arn #=> String
    #   resp.data.metrics_configuration.member_filter.and #=> Types::MetricsAndOperator
    #   resp.data.metrics_configuration.member_filter.and.prefix #=> String
    #   resp.data.metrics_configuration.member_filter.and.tags #=> Array<Tag>
    #   resp.data.metrics_configuration.member_filter.and.access_point_arn #=> String
    def get_bucket_metrics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketMetricsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketMetricsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_metrics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketMetricsConfiguration',
        'code.function' => 'get_bucket_metrics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketMetricsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_metrics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_metrics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_metrics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the notification configuration of a bucket.</p>
    #          <p>If notifications are not enabled on the bucket, the action returns an empty
    #             <code>NotificationConfiguration</code> element.</p>
    #          <p>By default, you must be the bucket owner to read the notification configuration of a
    #          bucket. However, the bucket owner can use a bucket policy to grant permission to other
    #          users to read this configuration with the <code>s3:GetBucketNotification</code>
    #          permission.</p>
    #          <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #          <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    # If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    # For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #             Error Codes</a>.</p>
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
    # @param [Hash | Types::GetBucketNotificationConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketNotificationConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_notification_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketNotificationConfigurationOutput
    #   resp.data.topic_configurations #=> Array<TopicConfiguration>
    #   resp.data.topic_configurations[0] #=> Types::TopicConfiguration
    #   resp.data.topic_configurations[0].id #=> String
    #   resp.data.topic_configurations[0].topic_arn #=> String
    #   resp.data.topic_configurations[0].events #=> Array<String>
    #   resp.data.topic_configurations[0].events[0] #=> String, one of ["s3:ReducedRedundancyLostObject", "s3:ObjectCreated:*", "s3:ObjectCreated:Put", "s3:ObjectCreated:Post", "s3:ObjectCreated:Copy", "s3:ObjectCreated:CompleteMultipartUpload", "s3:ObjectRemoved:*", "s3:ObjectRemoved:Delete", "s3:ObjectRemoved:DeleteMarkerCreated", "s3:ObjectRestore:*", "s3:ObjectRestore:Post", "s3:ObjectRestore:Completed", "s3:Replication:*", "s3:Replication:OperationFailedReplication", "s3:Replication:OperationNotTracked", "s3:Replication:OperationMissedThreshold", "s3:Replication:OperationReplicatedAfterThreshold", "s3:ObjectRestore:Delete", "s3:LifecycleTransition", "s3:IntelligentTiering", "s3:ObjectAcl:Put", "s3:LifecycleExpiration:*", "s3:LifecycleExpiration:Delete", "s3:LifecycleExpiration:DeleteMarkerCreated", "s3:ObjectTagging:*", "s3:ObjectTagging:Put", "s3:ObjectTagging:Delete"]
    #   resp.data.topic_configurations[0].member_filter #=> Types::NotificationConfigurationFilter
    #   resp.data.topic_configurations[0].member_filter.key #=> Types::S3KeyFilter
    #   resp.data.topic_configurations[0].member_filter.key.filter_rules #=> Array<FilterRule>
    #   resp.data.topic_configurations[0].member_filter.key.filter_rules[0] #=> Types::FilterRule
    #   resp.data.topic_configurations[0].member_filter.key.filter_rules[0].name #=> String, one of ["prefix", "suffix"]
    #   resp.data.topic_configurations[0].member_filter.key.filter_rules[0].value #=> String
    #   resp.data.queue_configurations #=> Array<QueueConfiguration>
    #   resp.data.queue_configurations[0] #=> Types::QueueConfiguration
    #   resp.data.queue_configurations[0].id #=> String
    #   resp.data.queue_configurations[0].queue_arn #=> String
    #   resp.data.queue_configurations[0].events #=> Array<String>
    #   resp.data.queue_configurations[0].member_filter #=> Types::NotificationConfigurationFilter
    #   resp.data.lambda_function_configurations #=> Array<LambdaFunctionConfiguration>
    #   resp.data.lambda_function_configurations[0] #=> Types::LambdaFunctionConfiguration
    #   resp.data.lambda_function_configurations[0].id #=> String
    #   resp.data.lambda_function_configurations[0].lambda_function_arn #=> String
    #   resp.data.lambda_function_configurations[0].events #=> Array<String>
    #   resp.data.lambda_function_configurations[0].member_filter #=> Types::NotificationConfigurationFilter
    #   resp.data.event_bridge_configuration #=> Types::EventBridgeConfiguration
    def get_bucket_notification_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketNotificationConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketNotificationConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_notification_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketNotificationConfiguration',
        'code.function' => 'get_bucket_notification_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketNotificationConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_notification_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_notification_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_notification_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves <code>OwnershipControls</code> for an Amazon S3 bucket. To use this operation, you
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
    # @param [Hash | Types::GetBucketOwnershipControlsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketOwnershipControlsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_ownership_controls(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketOwnershipControlsOutput
    #   resp.data.ownership_controls #=> Types::OwnershipControls
    #   resp.data.ownership_controls.rules #=> Array<OwnershipControlsRule>
    #   resp.data.ownership_controls.rules[0] #=> Types::OwnershipControlsRule
    #   resp.data.ownership_controls.rules[0].object_ownership #=> String, one of ["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"]
    def get_bucket_ownership_controls(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketOwnershipControlsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketOwnershipControls.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_ownership_controls,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketOwnershipControls',
        'code.function' => 'get_bucket_ownership_controls',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketOwnershipControls', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_ownership_controls] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_ownership_controls] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_ownership_controls] #{output.data}")
        output
      end
    end

    # <p>Returns the policy of a specified bucket.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>If you are using an identity other than the
    #                   root user of the Amazon Web Services account that owns the bucket, the calling identity must both have the
    #                   <code>GetBucketPolicy</code> permissions on the specified bucket and belong to the
    #                   bucket owner's account in order to use this operation.</p>
    #                <p>If you don't have <code>GetBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #                   Access Denied</code> error. If you have the correct permissions, but you're not using an
    #                   identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #                      Allowed</code> error.</p>
    #                <important>
    #                   <p>To ensure that bucket owners don't inadvertently lock themselves out of their own
    #                      buckets, the root principal in a bucket owner's Amazon Web Services account can perform the
    #                      <code>GetBucketPolicy</code>, <code>PutBucketPolicy</code>, and
    #                      <code>DeleteBucketPolicy</code> API actions, even if their bucket policy explicitly
    #                      denies the root principal's access. Bucket owner root principals can only be blocked
    #                      from performing these API actions by VPC endpoint policies and Amazon Web Services Organizations
    #                      policies.</p>
    #                </important>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The <code>s3:GetBucketPolicy</code> permission is required in a policy.
    #                         For more information about general purpose buckets bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #                         Policies</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation, you must have the <code>s3express:GetBucketPolicy</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Example bucket policies</dt>
    #             <dd>
    #                <p>
    #                   <b>General purpose buckets example bucket policies</b> - See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html">Bucket policy examples</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                <p>
    #                   <b>Directory bucket example bucket policies</b> - See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following action is related to <code>GetBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetBucketPolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketPolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_policy(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketPolicyOutput
    #   resp.data.policy #=> String
    # @example To get bucket policy
    #   # The following example returns bucket policy associated with a bucket.
    #   resp = client.get_bucket_policy({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\":\"2008-10-17\",\"Id\":\"LogPolicy\",\"Statement\":[{\"Sid\":\"Enables the log delivery group to publish logs to your bucket \",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"111122223333\"},\"Action\":[\"s3:GetBucketAcl\",\"s3:GetObjectAcl\",\"s3:PutObject\"],\"Resource\":[\"arn:aws:s3:::policytest1/*\",\"arn:aws:s3:::policytest1\"]}]}"
    #   }
    def get_bucket_policy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketPolicyInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketPolicy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_policy,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketPolicy',
        'code.function' => 'get_bucket_policy',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_policy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_policy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_policy] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public.
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
    # @param [Hash | Types::GetBucketPolicyStatusInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketPolicyStatusInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_policy_status(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketPolicyStatusOutput
    #   resp.data.policy_status #=> Types::PolicyStatus
    #   resp.data.policy_status.is_public #=> Boolean
    def get_bucket_policy_status(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketPolicyStatusInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketPolicyStatus.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_policy_status,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketPolicyStatus',
        'code.function' => 'get_bucket_policy_status',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketPolicyStatus', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_policy_status] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_policy_status] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_policy_status] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the replication configuration of a bucket.</p>
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
    # @param [Hash | Types::GetBucketReplicationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketReplicationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_replication(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketReplicationOutput
    #   resp.data.replication_configuration #=> Types::ReplicationConfiguration
    #   resp.data.replication_configuration.role #=> String
    #   resp.data.replication_configuration.rules #=> Array<ReplicationRule>
    #   resp.data.replication_configuration.rules[0] #=> Types::ReplicationRule
    #   resp.data.replication_configuration.rules[0].id #=> String
    #   resp.data.replication_configuration.rules[0].priority #=> Integer
    #   resp.data.replication_configuration.rules[0].prefix #=> String
    #   resp.data.replication_configuration.rules[0].member_filter #=> Types::ReplicationRuleFilter, one of [Prefix, Tag, And]
    #   resp.data.replication_configuration.rules[0].member_filter.prefix #=> String
    #   resp.data.replication_configuration.rules[0].member_filter.tag #=> Types::Tag
    #   resp.data.replication_configuration.rules[0].member_filter.tag.key #=> String
    #   resp.data.replication_configuration.rules[0].member_filter.tag.value #=> String
    #   resp.data.replication_configuration.rules[0].member_filter.and #=> Types::ReplicationRuleAndOperator
    #   resp.data.replication_configuration.rules[0].member_filter.and.prefix #=> String
    #   resp.data.replication_configuration.rules[0].member_filter.and.tags #=> Array<Tag>
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
    #   resp.data.replication_configuration.rules[0].destination.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    # @example To get replication configuration set on a bucket
    #   # The following example returns replication configuration set on a bucket.
    #   resp = client.get_bucket_replication({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     replication_configuration: {
    #       rules: [
    #         {
    #           status: "Enabled",
    #           prefix: "Tax",
    #           destination: {
    #             bucket: "arn:aws:s3:::destination-bucket"
    #           },
    #           id: "MWIwNTkwZmItMTE3MS00ZTc3LWJkZDEtNzRmODQwYzc1OTQy"
    #         }
    #       ],
    #       role: "arn:aws:iam::acct-id:role/example-role"
    #     }
    #   }
    def get_bucket_replication(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketReplicationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketReplication.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_replication,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketReplication',
        'code.function' => 'get_bucket_replication',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketReplication', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_replication] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_replication] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_replication] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the request payment configuration of a bucket. To use this version of the
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
    # @param [Hash | Types::GetBucketRequestPaymentInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketRequestPaymentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_request_payment(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketRequestPaymentOutput
    #   resp.data.payer #=> String, one of ["Requester", "BucketOwner"]
    # @example To get bucket versioning configuration
    #   # The following example retrieves bucket versioning configuration.
    #   resp = client.get_bucket_request_payment({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     payer: "BucketOwner"
    #   }
    def get_bucket_request_payment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketRequestPaymentInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketRequestPayment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_request_payment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketRequestPayment',
        'code.function' => 'get_bucket_request_payment',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketRequestPayment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_request_payment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_request_payment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_request_payment] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the tag set associated with the bucket.</p>
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
    # @param [Hash | Types::GetBucketTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_tagging(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketTaggingOutput
    #   resp.data.tag_set #=> Array<Tag>
    #   resp.data.tag_set[0] #=> Types::Tag
    #   resp.data.tag_set[0].key #=> String
    #   resp.data.tag_set[0].value #=> String
    # @example To get tag set associated with a bucket
    #   # The following example returns tag set associated with a bucket
    #   resp = client.get_bucket_tagging({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     tag_set: [
    #       {
    #         value: "value1",
    #         key: "key1"
    #       },
    #       {
    #         value: "value2",
    #         key: "key2"
    #       }
    #     ]
    #   }
    def get_bucket_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketTagging',
        'code.function' => 'get_bucket_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_tagging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the versioning state of a bucket.</p>
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
    # @param [Hash | Types::GetBucketVersioningInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketVersioningInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_versioning(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetBucketVersioningOutput
    #   resp.data.status #=> String, one of ["Enabled", "Suspended"]
    #   resp.data.mfa_delete #=> String, one of ["Enabled", "Disabled"]
    # @example To get bucket versioning configuration
    #   # The following example retrieves bucket versioning configuration.
    #   resp = client.get_bucket_versioning({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     status: "Enabled",
    #     mfa_delete: "Disabled"
    #   }
    def get_bucket_versioning(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketVersioningInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketVersioning.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_versioning,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketVersioning',
        'code.function' => 'get_bucket_versioning',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketVersioning', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_versioning] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_versioning] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_versioning] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the website configuration for a bucket. To host website on Amazon S3, you can
    #          configure a bucket as website by adding a website configuration. For more information about
    #          hosting websites, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a>. </p>
    #          <p>This GET action requires the <code>S3:GetBucketWebsite</code> permission. By default,
    #          only the bucket owner can read the bucket website configuration. However, bucket owners can
    #          allow other users to read the website configuration by writing a bucket policy granting
    #          them the <code>S3:GetBucketWebsite</code> permission.</p>
    #          <p>The following operations are related to <code>GetBucketWebsite</code>:</p>
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
    # @param [Hash | Types::GetBucketWebsiteInput] params
    #   Request parameters for this operation.
    #   See {Types::GetBucketWebsiteInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_bucket_website(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    # @example To get bucket website configuration
    #   # The following example retrieves website configuration of a bucket.
    #   resp = client.get_bucket_website({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     index_document: {
    #       suffix: "index.html"
    #     },
    #     error_document: {
    #       key: "error.html"
    #     }
    #   }
    def get_bucket_website(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetBucketWebsiteInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetBucketWebsite.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_bucket_website,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetBucketWebsite',
        'code.function' => 'get_bucket_website',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetBucketWebsite', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_website] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_bucket_website] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_bucket_website] #{output.data}")
        output
      end
    end

    # <p>Retrieves an object from Amazon S3.</p>
    #          <p>In the <code>GetObject</code> request, specify the full key name for the object.</p>
    #          <p>
    #             <b>General purpose buckets</b> - Both the virtual-hosted-style requests and the path-style requests are supported. For a virtual hosted-style request example, if you have
    #          the object <code>photos/2006/February/sample.jpg</code>, specify the object key name as
    #             <code>/photos/2006/February/sample.jpg</code>. For a path-style request example, if you
    #          have the object <code>photos/2006/February/sample.jpg</code> in the bucket named
    #             <code>examplebucket</code>, specify the object key name as
    #             <code>/examplebucket/photos/2006/February/sample.jpg</code>. For more information about
    #          request types, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/VirtualHosting.html#VirtualHostingSpecifyBucket">HTTP Host
    #             Header Bucket Specification</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>
    #             <b>Directory buckets</b> - Only virtual-hosted-style requests are supported. For a virtual hosted-style request example, if you have the object <code>photos/2006/February/sample.jpg</code> in the bucket named <code>examplebucket--use1-az5--x-s3</code>, specify the object key name as <code>/photos/2006/February/sample.jpg</code>. Also, when you make requests to this API operation, your requests are sent to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #             </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - You must have the required permissions in a policy. To use <code>GetObject</code>, you must have the <code>READ</code>
    #                         access to the object (or version). If you grant <code>READ</code> access to the anonymous user, the <code>GetObject</code> operation
    #                         returns the object without using an authorization header. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying permissions in
    #                            a policy</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                      <p>If you include a <code>versionId</code> in your request header, you must have the
    #                         <code>s3:GetObjectVersion</code> permission to access a specific
    #                         version of an object. The <code>s3:GetObject</code> permission is not required in this scenario.</p>
    #                      <p>If you request the
    #                         current version of an object without a specific <code>versionId</code> in the request header, only
    #                         the <code>s3:GetObject</code> permission is required. The <code>s3:GetObjectVersion</code> permission is not required in this scenario.
    #                      </p>
    #                      <p>If the object that you request doesn’t exist, the error that
    #                         Amazon S3 returns depends on whether you also have the <code>s3:ListBucket</code>
    #                         permission.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3
    #                               returns an HTTP status code <code>404 Not Found</code> error.</p>
    #                         </li>
    #                         <li>
    #                            <p>If you don’t have the <code>s3:ListBucket</code> permission, Amazon S3 returns an
    #                               HTTP status code <code>403 Access Denied</code> error.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Storage classes</dt>
    #             <dd>
    #                <p>If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the
    #                   S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the
    #                   S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a
    #                   copy using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>. Otherwise, this operation returns an
    #                   <code>InvalidObjectState</code> error. For information about restoring archived objects,
    #                   see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring
    #                      Archived Objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                <p>
    #                   <b>Directory buckets </b> - For directory buckets, only the S3 Express One Zone storage class is supported to store newly created objects.
    # Unsupported storage class values won't write a destination object and will respond with the HTTP status code <code>400 Bad Request</code>.</p>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <p>Encryption request headers, like <code>x-amz-server-side-encryption</code>, should not
    #                   be sent for the <code>GetObject</code> requests, if your object uses server-side encryption with Amazon S3 managed encryption keys (SSE-S3), server-side encryption with Key Management Service (KMS)
    #                   keys (SSE-KMS), or dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS). If you include the header in your <code>GetObject</code> requests for the object that uses
    #                   these types of keys, you’ll get an HTTP <code>400 Bad Request</code> error.</p>
    #             </dd>
    #             <dt>Overriding response header values through the request</dt>
    #             <dd>
    #                <p>There are times when you want to override certain response header values of a
    #                      <code>GetObject</code> response. For example, you might override the
    #                      <code>Content-Disposition</code> response header value through your <code>GetObject</code>
    #                   request.</p>
    #                <p>You can override values for a set of response headers. These modified response header values are included only in a successful response, that is, when the HTTP status code <code>200 OK</code> is returned.
    #                   The headers you can override using the following query parameters in the request are a subset of the headers that Amazon S3 accepts when you create an object.
    #                </p>
    #                <p>The response headers that you can override for the
    #                   <code>GetObject</code> response are <code>Cache-Control</code>, <code>Content-Disposition</code>,
    #                   <code>Content-Encoding</code>, <code>Content-Language</code>, <code>Content-Type</code>, and <code>Expires</code>.</p>
    #                <p>To override values for a set of response headers in the
    #                   <code>GetObject</code> response, you can use the following query
    #                   parameters in the request.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>response-cache-control</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>response-content-disposition</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>response-content-encoding</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>response-content-language</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>response-content-type</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>response-expires</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <note>
    #                   <p>When you use these parameters, you must sign the request by using either an Authorization header or a
    #                      presigned URL. These parameters cannot be used with an
    #                      unsigned (anonymous) request.</p>
    #                </note>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::GetObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.metadata #=> Hash<String, String>
    #   resp.data.metadata['key'] #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.replication_status #=> String, one of ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #   resp.data.parts_count #=> Integer
    #   resp.data.tag_count #=> Integer
    #   resp.data.object_lock_mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_retain_until_date #=> Time
    #   resp.data.object_lock_legal_hold_status #=> String, one of ["ON", "OFF"]
    def get_object(params = {}, options = {}, &block)
      response_body = output_stream(options, &block)
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObject',
        'code.function' => 'get_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the access control list (ACL) of an object. To use this operation, you must have
    #             <code>s3:GetObjectAcl</code> permissions or <code>READ_ACP</code> access to the object.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#acl-access-policy-permission-mapping">Mapping of ACL permissions and access policy permissions</a> in the <i>Amazon S3
    #             User Guide</i>
    #          </p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
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
    # @param [Hash | Types::GetObjectAclInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectAclInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_acl(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    # @example To retrieve object ACL
    #   # The following example retrieves access control list (ACL) of an object.
    #   resp = client.get_object_acl({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     owner: {
    #       display_name: "owner-display-name",
    #       id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #     },
    #     grants: [
    #       {
    #         grantee: {
    #           type: "CanonicalUser",
    #           display_name: "owner-display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         permission: "WRITE"
    #       },
    #       {
    #         grantee: {
    #           type: "CanonicalUser",
    #           display_name: "owner-display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         permission: "WRITE_ACP"
    #       },
    #       {
    #         grantee: {
    #           type: "CanonicalUser",
    #           display_name: "owner-display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         permission: "READ"
    #       },
    #       {
    #         grantee: {
    #           type: "CanonicalUser",
    #           display_name: "owner-display-name",
    #           id: "852b113eexamplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         permission: "READ_ACP"
    #       }
    #     ]
    #   }
    def get_object_acl(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectAclInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectAcl.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_acl,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectAcl',
        'code.function' => 'get_object_acl',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_acl] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_acl] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_acl] #{output.data}")
        output
      end
    end

    # <p>Retrieves all the metadata from an object without returning the object itself. This
    #          operation is useful if you're interested only in an object's metadata. </p>
    #          <p>
    #             <code>GetObjectAttributes</code> combines the functionality of <code>HeadObject</code>
    #          and <code>ListParts</code>. All of the data returned with each of those individual calls
    #          can be returned with a single call to <code>GetObjectAttributes</code>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - To use
    #                         <code>GetObjectAttributes</code>, you must have READ access to the object. The permissions that you need to use this operation with depend on whether the
    #                         bucket is versioned. If the bucket is versioned, you need both the
    #                         <code>s3:GetObjectVersion</code> and <code>s3:GetObjectVersionAttributes</code>
    #                         permissions for this operation. If the bucket is not versioned, you need the
    #                         <code>s3:GetObject</code> and <code>s3:GetObjectAttributes</code> permissions.
    #                         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in
    #                            a Policy</a> in the <i>Amazon S3 User Guide</i>. If the object
    #                         that you request does not exist, the error Amazon S3 returns depends on whether you
    #                         also have the <code>s3:ListBucket</code> permission.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3
    #                               returns an HTTP status code <code>404 Not Found</code> ("no such key")
    #                               error.</p>
    #                         </li>
    #                         <li>
    #                            <p>If you don't have the <code>s3:ListBucket</code> permission, Amazon S3 returns
    #                               an HTTP status code <code>403 Forbidden</code> ("access denied")
    #                               error.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <note>
    #                   <p>Encryption request headers, like <code>x-amz-server-side-encryption</code>,
    #                   should not be sent for <code>HEAD</code> requests if your object uses server-side
    #                   encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side
    #                   encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with Amazon S3
    #                   managed encryption keys (SSE-S3). The <code>x-amz-server-side-encryption</code> header is used when you <code>PUT</code> an object to S3 and want to specify the encryption method.
    #                   If you include this header in a <code>GET</code> request for an object that uses these types of keys,
    #                   you’ll get an HTTP <code>400 Bad Request</code> error. It's because the encryption method can't be changed when you retrieve the object.</p>
    #                </note>
    #                <p>If you encrypt an object by using server-side encryption with customer-provided
    #                   encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the
    #                   metadata from the object, you must use the following headers to provide the encryption key for the server to be able to retrieve the object's metadata. The headers are: </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-key</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #                   (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon S3
    #                      User Guide</i>.</p>
    #                <note>
    #                   <p>
    #                      <b>Directory bucket permissions</b> - For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #                </note>
    #             </dd>
    #             <dt>Versioning</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code>
    #                         to the <code>versionId</code> query parameter in the request.</p>
    #             </dd>
    #             <dt>Conditional request headers</dt>
    #             <dd>
    #                <p>Consider the following when using request headers:</p>
    #                <ul>
    #                   <li>
    #                      <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers
    #                         are present in the request as follows, then Amazon S3 returns the HTTP status code
    #                         <code>200 OK</code> and the data requested:</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>If-Match</code> condition evaluates to <code>true</code>.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>If-Unmodified-Since</code> condition evaluates to
    #                               <code>false</code>.</p>
    #                         </li>
    #                      </ul>
    #                      <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code>
    #                         headers are present in the request as follows, then Amazon S3 returns the HTTP status code
    #                         <code>304 Not Modified</code>:</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>If-None-Match</code> condition evaluates to <code>false</code>.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>If-Modified-Since</code> condition evaluates to
    #                               <code>true</code>.</p>
    #                         </li>
    #                      </ul>
    #                      <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::GetObjectAttributesInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectAttributesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.object_parts.parts[0].member_size #=> Integer
    #   resp.data.object_parts.parts[0].checksum_crc32 #=> String
    #   resp.data.object_parts.parts[0].checksum_crc32_c #=> String
    #   resp.data.object_parts.parts[0].checksum_sha1 #=> String
    #   resp.data.object_parts.parts[0].checksum_sha256 #=> String
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.object_size #=> Integer
    def get_object_attributes(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectAttributesInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectAttributes.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_attributes,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectAttributes',
        'code.function' => 'get_object_attributes',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectAttributes', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_attributes] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_attributes] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_attributes] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets an object's current legal hold status. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #          Objects</a>.</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectLegalHold</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetObjectLegalHoldInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectLegalHoldInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_legal_hold(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetObjectLegalHoldOutput
    #   resp.data.legal_hold #=> Types::ObjectLockLegalHold
    #   resp.data.legal_hold.status #=> String, one of ["ON", "OFF"]
    def get_object_legal_hold(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectLegalHoldInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectLegalHold.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_legal_hold,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectLegalHold',
        'code.function' => 'get_object_legal_hold',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectLegalHold', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_legal_hold] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_legal_hold] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_legal_hold] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets the Object Lock configuration for a bucket. The rule specified in the Object Lock
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
    # @param [Hash | Types::GetObjectLockConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectLockConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_lock_configuration(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetObjectLockConfigurationOutput
    #   resp.data.object_lock_configuration #=> Types::ObjectLockConfiguration
    #   resp.data.object_lock_configuration.object_lock_enabled #=> String, one of ["Enabled"]
    #   resp.data.object_lock_configuration.rule #=> Types::ObjectLockRule
    #   resp.data.object_lock_configuration.rule.default_retention #=> Types::DefaultRetention
    #   resp.data.object_lock_configuration.rule.default_retention.mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_configuration.rule.default_retention.days #=> Integer
    #   resp.data.object_lock_configuration.rule.default_retention.years #=> Integer
    def get_object_lock_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectLockConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectLockConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_lock_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectLockConfiguration',
        'code.function' => 'get_object_lock_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectLockConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_lock_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_lock_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_lock_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves an object's retention settings. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #          Objects</a>.</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectRetention</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAttributes.html">GetObjectAttributes</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetObjectRetentionInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectRetentionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_retention(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetObjectRetentionOutput
    #   resp.data.retention #=> Types::ObjectLockRetention
    #   resp.data.retention.mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.retention.retain_until_date #=> Time
    def get_object_retention(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectRetentionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectRetention.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_retention,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectRetention',
        'code.function' => 'get_object_retention',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectRetention', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_retention] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_retention] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_retention] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the tag-set of an object. You send the GET request against the tagging
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
    # @param [Hash | Types::GetObjectTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_tagging(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     version_id: 'VersionId',
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester' # accepts ["requester"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetObjectTaggingOutput
    #   resp.data.version_id #=> String
    #   resp.data.tag_set #=> Array<Tag>
    #   resp.data.tag_set[0] #=> Types::Tag
    #   resp.data.tag_set[0].key #=> String
    #   resp.data.tag_set[0].value #=> String
    # @example To retrieve tag set of an object
    #   # The following example retrieves tag set of an object.
    #   resp = client.get_object_tagging({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "null",
    #     tag_set: [
    #       {
    #         value: "Value4",
    #         key: "Key4"
    #       },
    #       {
    #         value: "Value3",
    #         key: "Key3"
    #       }
    #     ]
    #   }
    # @example To retrieve tag set of a specific object version
    #   # The following example retrieves tag set of an object. The request specifies object version.
    #   resp = client.get_object_tagging({
    #     bucket: "examplebucket",
    #     key: "exampleobject",
    #     version_id: "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "ydlaNkwWm0SfKJR.T1b1fIdPRbldTYRI",
    #     tag_set: [
    #       {
    #         value: "Value1",
    #         key: "Key1"
    #       }
    #     ]
    #   }
    def get_object_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectTagging',
        'code.function' => 'get_object_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_tagging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns torrent files from a bucket. BitTorrent can save you bandwidth when you're
    #          distributing large files.</p>
    #          <note>
    #             <p>You can get torrent only for objects that are less than 5 GB in size, and that are
    #             not encrypted using server-side encryption with a customer-provided encryption
    #             key.</p>
    #          </note>
    #          <p>To use GET, you must have READ access to the object.</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #          <p>The following action is related to <code>GetObjectTorrent</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::GetObjectTorrentInput] params
    #   Request parameters for this operation.
    #   See {Types::GetObjectTorrentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_object_torrent(
    #     bucket: 'Bucket', # required
    #     key: 'Key', # required
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetObjectTorrentOutput
    #   resp.data.body #=> String
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To retrieve torrent files for an object
    #   # The following example retrieves torrent files of an object.
    #   resp = client.get_object_torrent({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def get_object_torrent(params = {}, options = {}, &block)
      response_body = output_stream(options, &block)
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetObjectTorrentInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetObjectTorrent.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_object_torrent,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetObjectTorrent',
        'code.function' => 'get_object_torrent',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetObjectTorrent', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_torrent] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_object_torrent] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_object_torrent] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket. To use
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
    # @param [Hash | Types::GetPublicAccessBlockInput] params
    #   Request parameters for this operation.
    #   See {Types::GetPublicAccessBlockInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_public_access_block(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetPublicAccessBlockOutput
    #   resp.data.public_access_block_configuration #=> Types::PublicAccessBlockConfiguration
    #   resp.data.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.data.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.data.public_access_block_configuration.restrict_public_buckets #=> Boolean
    def get_public_access_block(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::GetPublicAccessBlockInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::GetPublicAccessBlock.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_public_access_block,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'GetPublicAccessBlock',
        'code.function' => 'get_public_access_block',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.GetPublicAccessBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_public_access_block] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_public_access_block] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_public_access_block] #{output.data}")
        output
      end
    end

    # <p>You can use this operation to determine if a bucket exists and if you have permission to access it. The action returns a <code>200 OK</code> if the bucket exists and you have permission
    #          to access it.</p>
    #          <p>If the bucket does not exist or you do not have permission to access it, the
    #             <code>HEAD</code> request returns a generic <code>400 Bad Request</code>, <code>403
    #             Forbidden</code> or <code>404 Not Found</code> code. A message body is not included, so
    #          you cannot determine the exception beyond these error codes.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - You must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Authentication and authorization</dt>
    #             <dd>
    #                <p>All <code>HeadBucket</code> requests must be authenticated and signed by using IAM credentials (access key ID and secret access key for the IAM identities). All headers with the <code>x-amz-</code> prefix, including
    #                         <code>x-amz-copy-source</code>, must be signed. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #                <p>
    #                   <b>Directory bucket</b> - You must use IAM credentials to authenticate and authorize your access to the <code>HeadBucket</code> API operation, instead of using the
    #                   temporary security credentials through the <code>CreateSession</code> API operation.</p>
    #                <p>Amazon Web Services CLI or SDKs handles authentication and authorization on your behalf.</p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p></p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - To use this operation, you must have permissions to perform the
    #                         <code>s3:ListBucket</code> action. The bucket owner has this permission by default and
    #                         can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #                            access permissions to your Amazon S3 resources</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> -
    #                         You must have the <b>
    #                            <code>s3express:CreateSession</code>
    #                         </b> permission in the
    #                            <code>Action</code> element of a policy. By default, the session is in the <code>ReadWrite</code> mode. If you want to restrict the access, you can explicitly set the <code>s3express:SessionMode</code> condition key to <code>ReadOnly</code> on the bucket.</p>
    #                      <p>For more information about example bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html">Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    # @param [Hash | Types::HeadBucketInput] params
    #   Request parameters for this operation.
    #   See {Types::HeadBucketInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.head_bucket(
    #     bucket: 'Bucket', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::HeadBucketOutput
    #   resp.data.bucket_location_type #=> String, one of ["AvailabilityZone"]
    #   resp.data.bucket_location_name #=> String
    #   resp.data.bucket_region #=> String
    #   resp.data.access_point_alias #=> Boolean
    # @example To determine if bucket exists
    #   # This operation checks to see if a bucket exists.
    #   resp = client.head_bucket({
    #     bucket: "acl1"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def head_bucket(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::HeadBucketInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::HeadBucket.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :head_bucket,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'HeadBucket',
        'code.function' => 'head_bucket',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.HeadBucket', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#head_bucket] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#head_bucket] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#head_bucket] #{output.data}")
        output
      end
    end

    # <p>The <code>HEAD</code> operation retrieves metadata from an object without returning the
    #          object itself. This operation is useful if you're interested only in an object's metadata.</p>
    #          <p>A <code>HEAD</code> request has the same options as a <code>GET</code> operation on an
    #          object. The response is identical to the <code>GET</code> response except that there is no
    #          response body. Because of this, if the <code>HEAD</code> request generates an error, it
    #          returns a generic code, such as <code>400 Bad Request</code>, <code>403 Forbidden</code>, <code>404 Not
    #             Found</code>, <code>405 Method Not Allowed</code>, <code>412 Precondition Failed</code>, or <code>304 Not Modified</code>.
    #          It's not possible to retrieve the exact exception of these error codes.</p>
    #          <p>Request headers are limited to 8 KB in size. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonRequestHeaders.html">Common
    #          Request Headers</a>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p></p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - To
    #                         use <code>HEAD</code>, you must have the <code>s3:GetObject</code> permission. You need the relevant read object (or version) permission for this operation.
    #                         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html">Actions, resources, and condition
    #                            keys for Amazon S3</a> in the <i>Amazon S3
    #                               User Guide</i>.</p>
    #                      <p>If the object you request doesn't exist, the error that
    #                         Amazon S3 returns depends on whether you also have the <code>s3:ListBucket</code> permission.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If you have the <code>s3:ListBucket</code> permission on the bucket, Amazon S3
    #                               returns an HTTP status code <code>404 Not Found</code> error.</p>
    #                         </li>
    #                         <li>
    #                            <p>If you don’t have the <code>s3:ListBucket</code> permission, Amazon S3 returns
    #                               an HTTP status code <code>403 Forbidden</code> error.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <note>
    #                   <p>Encryption request headers, like <code>x-amz-server-side-encryption</code>,
    #                   should not be sent for <code>HEAD</code> requests if your object uses server-side
    #                   encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side
    #                   encryption with Amazon Web Services KMS keys (DSSE-KMS), or server-side encryption with Amazon S3
    #                   managed encryption keys (SSE-S3). The <code>x-amz-server-side-encryption</code> header is used when you <code>PUT</code> an object to S3 and want to specify the encryption method.
    #                   If you include this header in a <code>HEAD</code> request for an object that uses these types of keys,
    #                   you’ll get an HTTP <code>400 Bad Request</code> error. It's because the encryption method can't be changed when you retrieve the object.</p>
    #                </note>
    #                <p>If you encrypt an object by using server-side encryption with customer-provided
    #                encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the
    #                metadata from the object, you must use the following headers to provide the encryption key for the server to be able to retrieve the object's metadata. The headers are: </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-key</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption
    #                (Using Customer-Provided Encryption Keys)</a> in the <i>Amazon S3
    #                   User Guide</i>.</p>
    #                <note>
    #                   <p>
    #                      <b>Directory bucket permissions</b> - For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #                </note>
    #             </dd>
    #             <dt>Versioning</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>If the current version of the object is a delete marker, Amazon S3 behaves as if the object was deleted and includes <code>x-amz-delete-marker: true</code> in the response.</p>
    #                   </li>
    #                   <li>
    #                      <p>If the specified version is a delete marker, the response returns a <code>405 Method Not Allowed</code> error and the <code>Last-Modified: timestamp</code> response header.</p>
    #                   </li>
    #                </ul>
    #                <note>
    #                   <ul>
    #                      <li>
    #                         <p>
    #                            <b>Directory buckets</b> - Delete marker is not supported by directory buckets.</p>
    #                      </li>
    #                      <li>
    #                         <p>
    #                            <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code>
    #                         to the <code>versionId</code> query parameter in the request.</p>
    #                      </li>
    #                   </ul>
    #                </note>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::HeadObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::HeadObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.metadata #=> Hash<String, String>
    #   resp.data.metadata['key'] #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.replication_status #=> String, one of ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #   resp.data.parts_count #=> Integer
    #   resp.data.object_lock_mode #=> String, one of ["GOVERNANCE", "COMPLIANCE"]
    #   resp.data.object_lock_retain_until_date #=> Time
    #   resp.data.object_lock_legal_hold_status #=> String, one of ["ON", "OFF"]
    def head_object(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::HeadObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::HeadObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :head_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'HeadObject',
        'code.function' => 'head_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.HeadObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#head_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#head_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#head_object] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Lists the analytics configurations for the bucket. You can have up to 1,000 analytics
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
    # @param [Hash | Types::ListBucketAnalyticsConfigurationsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListBucketAnalyticsConfigurationsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_bucket_analytics_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListBucketAnalyticsConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.analytics_configuration_list #=> Array<AnalyticsConfiguration>
    #   resp.data.analytics_configuration_list[0] #=> Types::AnalyticsConfiguration
    #   resp.data.analytics_configuration_list[0].id #=> String
    #   resp.data.analytics_configuration_list[0].member_filter #=> Types::AnalyticsFilter, one of [Prefix, Tag, And]
    #   resp.data.analytics_configuration_list[0].member_filter.prefix #=> String
    #   resp.data.analytics_configuration_list[0].member_filter.tag #=> Types::Tag
    #   resp.data.analytics_configuration_list[0].member_filter.tag.key #=> String
    #   resp.data.analytics_configuration_list[0].member_filter.tag.value #=> String
    #   resp.data.analytics_configuration_list[0].member_filter.and #=> Types::AnalyticsAndOperator
    #   resp.data.analytics_configuration_list[0].member_filter.and.prefix #=> String
    #   resp.data.analytics_configuration_list[0].member_filter.and.tags #=> Array<Tag>
    #   resp.data.analytics_configuration_list[0].storage_class_analysis #=> Types::StorageClassAnalysis
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export #=> Types::StorageClassAnalysisDataExport
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.output_schema_version #=> String, one of ["V_1"]
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination #=> Types::AnalyticsExportDestination
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination #=> Types::AnalyticsS3BucketDestination
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.format #=> String, one of ["CSV"]
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.bucket_account_id #=> String
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.bucket #=> String
    #   resp.data.analytics_configuration_list[0].storage_class_analysis.data_export.destination.s3_bucket_destination.prefix #=> String
    def list_bucket_analytics_configurations(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListBucketAnalyticsConfigurationsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListBucketAnalyticsConfigurations.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_bucket_analytics_configurations,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListBucketAnalyticsConfigurations',
        'code.function' => 'list_bucket_analytics_configurations',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListBucketAnalyticsConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_analytics_configurations] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_bucket_analytics_configurations] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_analytics_configurations] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Lists the S3 Intelligent-Tiering configuration from the specified bucket.</p>
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
    # @param [Hash | Types::ListBucketIntelligentTieringConfigurationsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListBucketIntelligentTieringConfigurationsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_bucket_intelligent_tiering_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListBucketIntelligentTieringConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.intelligent_tiering_configuration_list #=> Array<IntelligentTieringConfiguration>
    #   resp.data.intelligent_tiering_configuration_list[0] #=> Types::IntelligentTieringConfiguration
    #   resp.data.intelligent_tiering_configuration_list[0].id #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter #=> Types::IntelligentTieringFilter
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.prefix #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.tag #=> Types::Tag
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.tag.key #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.tag.value #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.and #=> Types::IntelligentTieringAndOperator
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.and.prefix #=> String
    #   resp.data.intelligent_tiering_configuration_list[0].member_filter.and.tags #=> Array<Tag>
    #   resp.data.intelligent_tiering_configuration_list[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.intelligent_tiering_configuration_list[0].tierings #=> Array<Tiering>
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0] #=> Types::Tiering
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0].days #=> Integer
    #   resp.data.intelligent_tiering_configuration_list[0].tierings[0].access_tier #=> String, one of ["ARCHIVE_ACCESS", "DEEP_ARCHIVE_ACCESS"]
    def list_bucket_intelligent_tiering_configurations(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListBucketIntelligentTieringConfigurationsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListBucketIntelligentTieringConfigurations.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_bucket_intelligent_tiering_configurations,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListBucketIntelligentTieringConfigurations',
        'code.function' => 'list_bucket_intelligent_tiering_configurations',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListBucketIntelligentTieringConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_intelligent_tiering_configurations] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_bucket_intelligent_tiering_configurations] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_intelligent_tiering_configurations] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns a list of inventory configurations for the bucket. You can have up to 1,000
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
    # @param [Hash | Types::ListBucketInventoryConfigurationsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListBucketInventoryConfigurationsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_bucket_inventory_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
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
    #   resp.data.inventory_configuration_list[0].member_filter #=> Types::InventoryFilter
    #   resp.data.inventory_configuration_list[0].member_filter.prefix #=> String
    #   resp.data.inventory_configuration_list[0].id #=> String
    #   resp.data.inventory_configuration_list[0].included_object_versions #=> String, one of ["All", "Current"]
    #   resp.data.inventory_configuration_list[0].optional_fields #=> Array<String>
    #   resp.data.inventory_configuration_list[0].optional_fields[0] #=> String, one of ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm", "ObjectAccessControlList", "ObjectOwner"]
    #   resp.data.inventory_configuration_list[0].schedule #=> Types::InventorySchedule
    #   resp.data.inventory_configuration_list[0].schedule.frequency #=> String, one of ["Daily", "Weekly"]
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.next_continuation_token #=> String
    def list_bucket_inventory_configurations(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListBucketInventoryConfigurationsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListBucketInventoryConfigurations.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_bucket_inventory_configurations,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListBucketInventoryConfigurations',
        'code.function' => 'list_bucket_inventory_configurations',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListBucketInventoryConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_inventory_configurations] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_bucket_inventory_configurations] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_inventory_configurations] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Lists the metrics configurations for the bucket. The metrics configurations are only for
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
    # @param [Hash | Types::ListBucketMetricsConfigurationsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListBucketMetricsConfigurationsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_bucket_metrics_configurations(
    #     bucket: 'Bucket', # required
    #     continuation_token: 'ContinuationToken',
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListBucketMetricsConfigurationsOutput
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.continuation_token #=> String
    #   resp.data.next_continuation_token #=> String
    #   resp.data.metrics_configuration_list #=> Array<MetricsConfiguration>
    #   resp.data.metrics_configuration_list[0] #=> Types::MetricsConfiguration
    #   resp.data.metrics_configuration_list[0].id #=> String
    #   resp.data.metrics_configuration_list[0].member_filter #=> Types::MetricsFilter, one of [Prefix, Tag, AccessPointArn, And]
    #   resp.data.metrics_configuration_list[0].member_filter.prefix #=> String
    #   resp.data.metrics_configuration_list[0].member_filter.tag #=> Types::Tag
    #   resp.data.metrics_configuration_list[0].member_filter.tag.key #=> String
    #   resp.data.metrics_configuration_list[0].member_filter.tag.value #=> String
    #   resp.data.metrics_configuration_list[0].member_filter.access_point_arn #=> String
    #   resp.data.metrics_configuration_list[0].member_filter.and #=> Types::MetricsAndOperator
    #   resp.data.metrics_configuration_list[0].member_filter.and.prefix #=> String
    #   resp.data.metrics_configuration_list[0].member_filter.and.tags #=> Array<Tag>
    #   resp.data.metrics_configuration_list[0].member_filter.and.access_point_arn #=> String
    def list_bucket_metrics_configurations(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListBucketMetricsConfigurationsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListBucketMetricsConfigurations.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_bucket_metrics_configurations,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListBucketMetricsConfigurations',
        'code.function' => 'list_bucket_metrics_configurations',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListBucketMetricsConfigurations', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_metrics_configurations] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_bucket_metrics_configurations] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_bucket_metrics_configurations] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns a list of all buckets owned by the authenticated sender of the request. To use
    #          this operation, you must have the <code>s3:ListAllMyBuckets</code> permission. </p>
    #          <p>For information about Amazon S3 buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating, configuring, and
    #             working with Amazon S3 buckets</a>.</p>
    # @param [Hash | Types::ListBucketsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListBucketsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_buckets()
    # @example Response structure
    #   resp.data #=> Types::ListBucketsOutput
    #   resp.data.buckets #=> Array<Bucket>
    #   resp.data.buckets[0] #=> Types::Bucket
    #   resp.data.buckets[0].name #=> String
    #   resp.data.buckets[0].creation_date #=> Time
    #   resp.data.owner #=> Types::Owner
    #   resp.data.owner.display_name #=> String
    #   resp.data.owner.id #=> String
    # @example To list all buckets
    #   resp = client.list_buckets()
    #
    #   # resp.to_h outputs the following:
    #   {
    #     owner: {
    #       display_name: "own-display-name",
    #       id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31"
    #     },
    #     buckets: [
    #       {
    #         creation_date: Time.parse('2012-02-15T21:03:02.000Z'),
    #         name: "examplebucket"
    #       },
    #       {
    #         creation_date: Time.parse('2011-07-24T19:33:50.000Z'),
    #         name: "examplebucket2"
    #       },
    #       {
    #         creation_date: Time.parse('2010-12-17T00:56:49.000Z'),
    #         name: "examplebucket3"
    #       }
    #     ]
    #   }
    def list_buckets(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListBucketsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListBuckets.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_buckets,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListBuckets',
        'code.function' => 'list_buckets',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListBuckets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_buckets] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_buckets] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_buckets] #{output.data}")
        output
      end
    end

    # <p>Returns a list of all Amazon S3 directory buckets owned by the authenticated sender of the request. For more information about directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3express:ListAllMyDirectoryBuckets</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    # @param [Hash | Types::ListDirectoryBucketsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListDirectoryBucketsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_directory_buckets(
    #     continuation_token: 'ContinuationToken',
    #     max_directory_buckets: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListDirectoryBucketsOutput
    #   resp.data.buckets #=> Array<Bucket>
    #   resp.data.buckets[0] #=> Types::Bucket
    #   resp.data.buckets[0].name #=> String
    #   resp.data.buckets[0].creation_date #=> Time
    #   resp.data.continuation_token #=> String
    def list_directory_buckets(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListDirectoryBucketsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListDirectoryBuckets.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_directory_buckets,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListDirectoryBuckets',
        'code.function' => 'list_directory_buckets',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListDirectoryBuckets', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_directory_buckets] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_directory_buckets] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_directory_buckets] #{output.data}")
        output
      end
    end

    # <p>This operation lists in-progress multipart uploads in a bucket. An in-progress multipart upload is a
    #          multipart upload that has been initiated by the <code>CreateMultipartUpload</code> request, but
    #          has not yet been completed or aborted.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -
    #             If multipart uploads in a directory bucket are in progress, you can't delete the bucket until all the in-progress multipart uploads are aborted or completed.
    #             </p>
    #          </note>
    #          <p>The <code>ListMultipartUploads</code> operation returns a maximum of 1,000 multipart uploads in the response. The limit of 1,000 multipart
    #          uploads is also the default
    #          value. You can further limit the number of uploads in a response by specifying the
    #          <code>max-uploads</code> request parameter. If there are more than 1,000 multipart uploads that
    #          satisfy your <code>ListMultipartUploads</code> request, the response returns an <code>IsTruncated</code> element
    #          with the value of <code>true</code>, a <code>NextKeyMarker</code> element, and a <code>NextUploadIdMarker</code> element.
    #          To list the remaining multipart uploads, you need to make subsequent <code>ListMultipartUploads</code> requests.
    #          In these requests, include two query parameters: <code>key-marker</code> and <code>upload-id-marker</code>.
    #          Set the value of <code>key-marker</code> to the <code>NextKeyMarker</code> value from the previous response.
    #          Similarly, set the value of <code>upload-id-marker</code> to the <code>NextUploadIdMarker</code> value from the previous response.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - The <code>upload-id-marker</code> element and
    #          the <code>NextUploadIdMarker</code> element aren't supported by directory buckets.
    #          To list the additional multipart uploads, you only need to set the value of <code>key-marker</code> to the <code>NextKeyMarker</code> value from the previous response. </p>
    #          </note>
    #          <p>For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #          Upload</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information about permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #                         and Permissions</a> in the <i>Amazon S3
    #                            User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Sorting of multipart uploads in response</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket</b> - In the <code>ListMultipartUploads</code> response, the multipart uploads are sorted based on two criteria:</p>
    #                      <ul>
    #                         <li>
    #                            <p>Key-based sorting - Multipart uploads are initially sorted in ascending order based on their object keys.</p>
    #                         </li>
    #                         <li>
    #                            <p>Time-based sorting - For uploads that share the same object key,
    #                               they are further sorted in ascending order based on the upload initiation time. Among uploads with the same key, the one that was initiated first will appear before the ones that were initiated later.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket</b> - In the <code>ListMultipartUploads</code> response, the multipart uploads aren't sorted lexicographically based on the object keys.
    #
    #                         </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::ListMultipartUploadsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListMultipartUploadsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_multipart_uploads(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     key_marker: 'KeyMarker',
    #     max_uploads: 1,
    #     prefix: 'Prefix',
    #     upload_id_marker: 'UploadIdMarker',
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester' # accepts ["requester"]
    #   )
    # @example Response structure
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
    #   resp.data.uploads[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To list in-progress multipart uploads on a bucket
    #   # The following example lists in-progress multipart uploads on a specific bucket.
    #   resp = client.list_multipart_uploads({
    #     bucket: "examplebucket"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     uploads: [
    #       {
    #         initiator: {
    #           display_name: "display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         initiated: Time.parse('2014-05-01T05:40:58.000Z'),
    #         upload_id: "examplelUa.CInXklLQtSMJITdUnoZ1Y5GACB5UckOtspm5zbDMCkPF_qkfZzMiFZ6dksmcnqxJyIBvQMG9X9Q--",
    #         storage_class: "STANDARD",
    #         key: "JavaFile",
    #         owner: {
    #           display_name: "display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         }
    #       },
    #       {
    #         initiator: {
    #           display_name: "display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         initiated: Time.parse('2014-05-01T05:41:27.000Z'),
    #         upload_id: "examplelo91lv1iwvWpvCiJWugw2xXLPAD7Z8cJyX9.WiIRgNrdG6Ldsn.9FtS63TCl1Uf5faTB.1U5Ckcbmdw--",
    #         storage_class: "STANDARD",
    #         key: "JavaFile",
    #         owner: {
    #           display_name: "display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         }
    #       }
    #     ]
    #   }
    def list_multipart_uploads(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListMultipartUploadsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListMultipartUploads.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_multipart_uploads,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListMultipartUploads',
        'code.function' => 'list_multipart_uploads',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListMultipartUploads', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_multipart_uploads] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_multipart_uploads] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_multipart_uploads] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns metadata about all versions of the objects in a bucket. You can also use request
    #          parameters as selection criteria to return metadata about a subset of all the object
    #          versions.</p>
    #          <important>
    #             <p> To use this operation, you must have permission to perform the
    #                <code>s3:ListBucketVersions</code> action. Be aware of the name difference. </p>
    #          </important>
    #          <note>
    #             <p> A <code>200 OK</code> response can contain valid or invalid XML. Make sure to design
    #             your application to parse the contents of the response and handle it
    #             appropriately.</p>
    #          </note>
    #          <p>To use this operation, you must have READ access to the bucket.</p>
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
    # @param [Hash | Types::ListObjectVersionsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListObjectVersionsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_object_versions(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     key_marker: 'KeyMarker',
    #     max_keys: 1,
    #     prefix: 'Prefix',
    #     version_id_marker: 'VersionIdMarker',
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     request_payer: 'requester', # accepts ["requester"]
    #     optional_object_attributes: [
    #       'RestoreStatus' # accepts ["RestoreStatus"]
    #     ]
    #   )
    # @example Response structure
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
    #   resp.data.versions[0].member_size #=> Integer
    #   resp.data.versions[0].storage_class #=> String, one of ["STANDARD"]
    #   resp.data.versions[0].key #=> String
    #   resp.data.versions[0].version_id #=> String
    #   resp.data.versions[0].is_latest #=> Boolean
    #   resp.data.versions[0].last_modified #=> Time
    #   resp.data.versions[0].owner #=> Types::Owner
    #   resp.data.versions[0].owner.display_name #=> String
    #   resp.data.versions[0].owner.id #=> String
    #   resp.data.versions[0].restore_status #=> Types::RestoreStatus
    #   resp.data.versions[0].restore_status.is_restore_in_progress #=> Boolean
    #   resp.data.versions[0].restore_status.restore_expiry_date #=> Time
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
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To list object versions
    #   # The following example return versions of an object with specific key name prefix. The request limits the number of items returned to two. If there are are more than two object version, S3 returns NextToken in the response. You can specify this token value in your next request to fetch next set of object versions.
    #   resp = client.list_object_versions({
    #     bucket: "examplebucket",
    #     prefix: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     versions: [
    #       {
    #         last_modified: Time.parse('2016-12-15T01:19:41.000Z'),
    #         version_id: "null",
    #         e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\"",
    #         storage_class: "STANDARD",
    #         key: "HappyFace.jpg",
    #         owner: {
    #           display_name: "owner-display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         is_latest: true,
    #         member_size: 3191
    #       },
    #       {
    #         last_modified: Time.parse('2016-12-13T00:58:26.000Z'),
    #         version_id: "PHtexPGjH2y.zBgT8LmB7wwLI2mpbz.k",
    #         e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\"",
    #         storage_class: "STANDARD",
    #         key: "HappyFace.jpg",
    #         owner: {
    #           display_name: "owner-display-name",
    #           id: "examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484be31bebcc"
    #         },
    #         is_latest: false,
    #         member_size: 3191
    #       }
    #     ]
    #   }
    def list_object_versions(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListObjectVersionsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListObjectVersions.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_object_versions,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListObjectVersions',
        'code.function' => 'list_object_versions',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListObjectVersions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_object_versions] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_object_versions] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_object_versions] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns some or all (up to 1,000) of the objects in a bucket. You can use the request
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
    # @param [Hash | Types::ListObjectsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListObjectsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_objects(
    #     bucket: 'Bucket', # required
    #     delimiter: 'Delimiter',
    #     encoding_type: 'url', # accepts ["url"]
    #     marker: 'Marker',
    #     max_keys: 1,
    #     prefix: 'Prefix',
    #     request_payer: 'requester', # accepts ["requester"]
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     optional_object_attributes: [
    #       'RestoreStatus' # accepts ["RestoreStatus"]
    #     ]
    #   )
    # @example Response structure
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
    #   resp.data.contents[0].member_size #=> Integer
    #   resp.data.contents[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.contents[0].owner #=> Types::Owner
    #   resp.data.contents[0].owner.display_name #=> String
    #   resp.data.contents[0].owner.id #=> String
    #   resp.data.contents[0].restore_status #=> Types::RestoreStatus
    #   resp.data.contents[0].restore_status.is_restore_in_progress #=> Boolean
    #   resp.data.contents[0].restore_status.restore_expiry_date #=> Time
    #   resp.data.name #=> String
    #   resp.data.prefix #=> String
    #   resp.data.delimiter #=> String
    #   resp.data.max_keys #=> Integer
    #   resp.data.common_prefixes #=> Array<CommonPrefix>
    #   resp.data.common_prefixes[0] #=> Types::CommonPrefix
    #   resp.data.common_prefixes[0].prefix #=> String
    #   resp.data.encoding_type #=> String, one of ["url"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    def list_objects(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListObjectsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListObjects.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_objects,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListObjects',
        'code.function' => 'list_objects',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListObjects', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_objects] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_objects] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_objects] #{output.data}")
        output
      end
    end

    # <p>Returns some or all (up to 1,000) of the objects in a bucket with each request. You can
    #          use the request parameters as selection criteria to return a subset of the objects in a
    #          bucket. A <code>200 OK</code> response can contain valid or invalid XML. Make sure to
    #          design your application to parse the contents of the response and handle it appropriately.
    #
    #          For more information about listing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html">Listing object keys
    #             programmatically</a> in the <i>Amazon S3 User Guide</i>. To get a list of your buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html">ListBuckets</a>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - To use this operation, you must have READ access to the bucket. You must have permission to perform
    #                         the <code>s3:ListBucket</code> action. The bucket owner has this permission by default and
    #                         can grant this permission to others. For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #                               Access Permissions to Your Amazon S3 Resources</a> in the
    #                         <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Sorting order of returned objects</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket</b> - For general purpose buckets, <code>ListObjectsV2</code> returns objects in lexicographical order based on their key names.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket</b> - For directory buckets, <code>ListObjectsV2</code> does not return objects in lexicographical order.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>This section describes the latest revision of this action. We recommend that you use
    #             this revised API operation for application development. For backward compatibility, Amazon S3
    #             continues to support the prior version of this API operation, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a>.</p>
    #          </important>
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
    # @param [Hash | Types::ListObjectsV2Input] params
    #   Request parameters for this operation.
    #   See {Types::ListObjectsV2Input#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     optional_object_attributes: [
    #       'RestoreStatus' # accepts ["RestoreStatus"]
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListObjectsV2Output
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.contents #=> Array<Object>
    #   resp.data.contents[0] #=> Types::Object
    #   resp.data.contents[0].key #=> String
    #   resp.data.contents[0].last_modified #=> Time
    #   resp.data.contents[0].e_tag #=> String
    #   resp.data.contents[0].checksum_algorithm #=> Array<String>
    #   resp.data.contents[0].checksum_algorithm[0] #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   resp.data.contents[0].member_size #=> Integer
    #   resp.data.contents[0].storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.contents[0].owner #=> Types::Owner
    #   resp.data.contents[0].owner.display_name #=> String
    #   resp.data.contents[0].owner.id #=> String
    #   resp.data.contents[0].restore_status #=> Types::RestoreStatus
    #   resp.data.contents[0].restore_status.is_restore_in_progress #=> Boolean
    #   resp.data.contents[0].restore_status.restore_expiry_date #=> Time
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
    #   resp.data.request_charged #=> String, one of ["requester"]
    def list_objects_v2(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListObjectsV2Input.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListObjectsV2.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_objects_v2,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListObjectsV2',
        'code.function' => 'list_objects_v2',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListObjectsV2', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_objects_v2] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_objects_v2] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_objects_v2] #{output.data}")
        output
      end
    end

    # <p>Lists the parts that have been uploaded for a specific multipart upload.</p>
    #          <p>To use this operation, you must provide the <code>upload ID</code> in the request. You obtain this uploadID by sending the initiate multipart upload
    #          request through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>.</p>
    #          <p>The <code>ListParts</code> request returns a maximum of 1,000 uploaded parts. The limit of 1,000 parts is also the default value. You can restrict the number of parts in a response by specifying the
    #             <code>max-parts</code> request parameter. If your multipart upload consists of more than
    #          1,000 parts, the response returns an <code>IsTruncated</code> field with the value of <code>true</code>,
    #          and a <code>NextPartNumberMarker</code> element. To list remaining uploaded parts, in subsequent <code>ListParts</code>
    #          requests, include the <code>part-number-marker</code> query string parameter and set its value to
    #          the <code>NextPartNumberMarker</code> field value from the previous response.</p>
    #          <p>For more information on multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading Objects Using Multipart
    #          Upload</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information about permissions required to use the multipart upload API, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload
    #                         and Permissions</a> in the <i>Amazon S3
    #                            User Guide</i>.</p>
    #                      <p>If the upload was created using server-side encryption with Key Management Service (KMS) keys
    #                         (SSE-KMS) or dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS), you must have permission
    #                         to the <code>kms:Decrypt</code> action for the <code>ListParts</code> request to succeed.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::ListPartsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListPartsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.parts[0].member_size #=> Integer
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
    #   resp.data.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.checksum_algorithm #=> String, one of ["CRC32", "CRC32C", "SHA1", "SHA256"]
    def list_parts(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::ListPartsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::ListParts.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_parts,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'ListParts',
        'code.function' => 'list_parts',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.ListParts', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_parts] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_parts] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_parts] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the accelerate configuration of an existing bucket. Amazon S3 Transfer Acceleration is a
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
    # @param [Hash | Types::PutBucketAccelerateConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketAccelerateConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_accelerate_configuration(
    #     bucket: 'Bucket', # required
    #     accelerate_configuration: {
    #       status: 'Enabled' # accepts ["Enabled", "Suspended"]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner',
    #     checksum_algorithm: 'CRC32' # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketAccelerateConfigurationOutput
    def put_bucket_accelerate_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketAccelerateConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketAccelerateConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_accelerate_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketAccelerateConfiguration',
        'code.function' => 'put_bucket_accelerate_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketAccelerateConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_accelerate_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_accelerate_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_accelerate_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the permissions on an existing bucket using access control lists (ACL). For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>. To set the ACL of a
    #          bucket, you must have the <code>WRITE_ACP</code> permission.</p>
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
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You can set access permissions by using one of the following methods:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify a canned ACL with the <code>x-amz-acl</code> request header. Amazon S3
    #                         supports a set of predefined ACLs, known as <i>canned
    #                         ACLs</i>. Each canned ACL has a predefined set of grantees and
    #                         permissions. Specify the canned ACL name as the value of
    #                            <code>x-amz-acl</code>. If you use this header, you cannot use other
    #                         access control-specific headers in your request. For more information, see
    #                            <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                         ACL</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Specify access permissions explicitly with the
    #                            <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
    #                            <code>x-amz-grant-write-acp</code>, and
    #                            <code>x-amz-grant-full-control</code> headers. When using these headers,
    #                         you specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3
    #                         groups) who will receive the permission. If you use these ACL-specific
    #                         headers, you cannot use the <code>x-amz-acl</code> header to set a canned
    #                         ACL. These parameters map to the set of permissions that Amazon S3 supports in an
    #                         ACL. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #                            Overview</a>.</p>
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
    #                      <p>For example, the following <code>x-amz-grant-write</code> header grants
    #                         create, overwrite, and delete objects permission to LogDelivery group
    #                         predefined by Amazon S3 and two Amazon Web Services accounts identified by their email
    #                         addresses.</p>
    #                      <p>
    #                         <code>x-amz-grant-write:
    #                            uri="http://acs.amazonaws.com/groups/s3/LogDelivery", id="111122223333",
    #                            id="555566667777" </code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>You can use either a canned ACL or specify access permissions explicitly. You
    #                   cannot do both.</p>
    #             </dd>
    #             <dt>Grantee Values</dt>
    #             <dd>
    #                <p>You can specify the person (grantee) to whom you're assigning access rights
    #                   (using request elements) in the following ways:</p>
    #                <ul>
    #                   <li>
    #                      <p>By the person's ID:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                            </Grantee></code>
    #                      </p>
    #                      <p>DisplayName is optional and ignored in the request</p>
    #                   </li>
    #                   <li>
    #                      <p>By URI:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>By Email address:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>&</Grantee></code>
    #                      </p>
    #                      <p>The grantee is resolved to the CanonicalUser and, in a response to a GET
    #                         Object acl request, appears as the CanonicalUser. </p>
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
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>PutBucketAcl</code>:</p>
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
    # @param [Hash | Types::PutBucketAclInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketAclInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketAclOutput
    # @example Put bucket acl
    #   # The following example replaces existing ACL on a bucket. The ACL grants the bucket owner (specified using the owner ID) and write permission to the LogDelivery group. Because this is a replace operation, you must specify all the grants in your request. To incrementally add or remove ACL grants, you might use the console.
    #   resp = client.put_bucket_acl({
    #     bucket: "examplebucket",
    #     grant_full_control: "id=examplee7a2f25102679df27bb0ae12b3f85be6f290b936c4393484",
    #     grant_write: "uri=http://acs.amazonaws.com/groups/s3/LogDelivery"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_acl(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketAclInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketAcl.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_acl,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketAcl',
        'code.function' => 'put_bucket_acl',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_acl] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_acl] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_acl] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets an analytics configuration for the bucket (specified by the analytics configuration
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
    #          <p>
    #             <code>PutBucketAnalyticsConfiguration</code> has the following special errors:</p>
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
    #          <p>The following operations are related to
    #          <code>PutBucketAnalyticsConfiguration</code>:</p>
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
    # @param [Hash | Types::PutBucketAnalyticsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketAnalyticsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_analytics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     analytics_configuration: {
    #       id: 'Id', # required
    #       member_filter: {
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketAnalyticsConfigurationOutput
    def put_bucket_analytics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketAnalyticsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketAnalyticsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_analytics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketAnalyticsConfiguration',
        'code.function' => 'put_bucket_analytics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketAnalyticsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_analytics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_analytics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_analytics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the <code>cors</code> configuration for your bucket. If the configuration exists,
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
    #          <p>The following operations are related to <code>PutBucketCors</code>:</p>
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
    # @param [Hash | Types::PutBucketCorsInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketCorsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketCorsOutput
    # @example To set cors configuration on a bucket.
    #   # The following example enables PUT, POST, and DELETE requests from www.example.com, and enables GET requests from any domain.
    #   resp = client.put_bucket_cors({
    #     bucket: "",
    #     cors_configuration: {
    #       cors_rules: [
    #         {
    #           allowed_origins: [
    #             "http://www.example.com"
    #           ],
    #           allowed_headers: [
    #             "*"
    #           ],
    #           allowed_methods: [
    #             "PUT",
    #             "POST",
    #             "DELETE"
    #           ],
    #           max_age_seconds: 3000,
    #           expose_headers: [
    #             "x-amz-server-side-encryption"
    #           ]
    #         },
    #         {
    #           allowed_origins: [
    #             "*"
    #           ],
    #           allowed_headers: [
    #             "Authorization"
    #           ],
    #           allowed_methods: [
    #             "GET"
    #           ],
    #           max_age_seconds: 3000
    #         }
    #       ]
    #     },
    #     content_md5: ""
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_cors(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketCorsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketCors.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_cors,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketCors',
        'code.function' => 'put_bucket_cors',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketCors', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_cors] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_cors] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_cors] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This action uses the <code>encryption</code> subresource to configure default encryption
    #          and Amazon S3 Bucket Keys for an existing bucket.</p>
    #          <p>By default, all buckets have a default encryption configuration that uses server-side
    #          encryption with Amazon S3 managed keys (SSE-S3). You can optionally configure default encryption
    #          for a bucket by using server-side encryption with Key Management Service (KMS) keys (SSE-KMS) or
    #          dual-layer server-side encryption with Amazon Web Services KMS keys (DSSE-KMS). If you specify default encryption by using
    #          SSE-KMS, you can also configure <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket
    #             Keys</a>. If you use PutBucketEncryption to set your <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html">default bucket encryption</a> to SSE-KMS, you should verify that your KMS key ID is correct. Amazon S3 does not validate the KMS key ID provided in PutBucketEncryption requests.</p>
    #          <important>
    #             <p>This action requires Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">
    #                Authenticating Requests (Amazon Web Services Signature Version 4)</a>. </p>
    #          </important>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutEncryptionConfiguration</code> action. The bucket owner has this permission
    #          by default. The bucket owner can grant this permission to others. For more information
    #          about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a> in the
    #             <i>Amazon S3 User Guide</i>. </p>
    #          <p>The following operations are related to <code>PutBucketEncryption</code>:</p>
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
    # @param [Hash | Types::PutBucketEncryptionInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketEncryptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_encryption(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     server_side_encryption_configuration: {
    #       rules: [
    #         {
    #           apply_server_side_encryption_by_default: {
    #             sse_algorithm: 'AES256', # required - accepts ["AES256", "aws:kms", "aws:kms:dsse"]
    #             kms_master_key_id: 'KMSMasterKeyID'
    #           },
    #           bucket_key_enabled: false
    #         }
    #       ] # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketEncryptionOutput
    def put_bucket_encryption(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketEncryptionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketEncryption.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_encryption,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketEncryption',
        'code.function' => 'put_bucket_encryption',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketEncryption', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_encryption] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_encryption] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_encryption] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Puts a S3 Intelligent-Tiering configuration to the specified bucket. You can have up to
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
    #          <p>
    #             <code>PutBucketIntelligentTieringConfiguration</code> has the following special
    #          errors:</p>
    #          <dl>
    #             <dt>HTTP 400 Bad Request Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Code:</i> InvalidArgument</p>
    #                <p>
    #                   <i>Cause:</i> Invalid Argument</p>
    #             </dd>
    #             <dt>HTTP 400 Bad Request Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Code:</i> TooManyConfigurations</p>
    #                <p>
    #                   <i>Cause:</i> You are attempting to create a new configuration
    #                   but have already reached the 1,000-configuration limit. </p>
    #             </dd>
    #             <dt>HTTP 403 Forbidden Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Cause:</i> You are not the owner of the specified bucket, or
    #                   you do not have the <code>s3:PutIntelligentTieringConfiguration</code> bucket
    #                   permission to set the configuration on the bucket. </p>
    #             </dd>
    #          </dl>
    # @param [Hash | Types::PutBucketIntelligentTieringConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketIntelligentTieringConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_intelligent_tiering_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     intelligent_tiering_configuration: {
    #       id: 'Id', # required
    #       member_filter: {
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketIntelligentTieringConfigurationOutput
    def put_bucket_intelligent_tiering_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketIntelligentTieringConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketIntelligentTieringConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_intelligent_tiering_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketIntelligentTieringConfiguration',
        'code.function' => 'put_bucket_intelligent_tiering_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketIntelligentTieringConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_intelligent_tiering_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_intelligent_tiering_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_intelligent_tiering_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>This implementation of the <code>PUT</code> action adds an inventory configuration
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
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use this operation, you must have permission to perform the
    #                      <code>s3:PutInventoryConfiguration</code> action. The bucket owner has this
    #                   permission by default and can grant this permission to others. </p>
    #                <p>The <code>s3:PutInventoryConfiguration</code> permission allows a user to
    #                   create an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html">S3 Inventory</a>
    #                   report that includes all object metadata fields available and to specify the
    #                   destination bucket to store the inventory. A user with read access to objects in
    #                   the destination bucket can also access all object metadata fields that are
    #                   available in the inventory report. </p>
    #                <p>To restrict access to an inventory report, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html#example-bucket-policies-use-case-10">Restricting access to an Amazon S3 Inventory report</a> in the
    #                      <i>Amazon S3 User Guide</i>. For more information about the metadata
    #                   fields available in S3 Inventory, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html#storage-inventory-contents">Amazon S3 Inventory lists</a> in the <i>Amazon S3 User Guide</i>. For
    #                   more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions related to bucket subresource operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Identity and access management in Amazon S3</a> in the
    #                      <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #          </dl>
    #          <p>
    #             <code>PutBucketInventoryConfiguration</code> has the following special errors:</p>
    #          <dl>
    #             <dt>HTTP 400 Bad Request Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Code:</i> InvalidArgument</p>
    #                <p>
    #                   <i>Cause:</i> Invalid Argument</p>
    #             </dd>
    #             <dt>HTTP 400 Bad Request Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Code:</i> TooManyConfigurations</p>
    #                <p>
    #                   <i>Cause:</i> You are attempting to create a new configuration
    #                   but have already reached the 1,000-configuration limit. </p>
    #             </dd>
    #             <dt>HTTP 403 Forbidden Error</dt>
    #             <dd>
    #                <p>
    #                   <i>Cause:</i> You are not the owner of the specified bucket, or
    #                   you do not have the <code>s3:PutInventoryConfiguration</code> bucket permission to
    #                   set the configuration on the bucket. </p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to
    #          <code>PutBucketInventoryConfiguration</code>:</p>
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
    # @param [Hash | Types::PutBucketInventoryConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketInventoryConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #       member_filter: {
    #         prefix: 'Prefix' # required
    #       },
    #       id: 'Id', # required
    #       included_object_versions: 'All', # required - accepts ["All", "Current"]
    #       optional_fields: [
    #         'Size' # accepts ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus", "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier", "BucketKeyStatus", "ChecksumAlgorithm", "ObjectAccessControlList", "ObjectOwner"]
    #       ],
    #       schedule: {
    #         frequency: 'Daily' # required - accepts ["Daily", "Weekly"]
    #       } # required
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketInventoryConfigurationOutput
    def put_bucket_inventory_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketInventoryConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketInventoryConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_inventory_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketInventoryConfiguration',
        'code.function' => 'put_bucket_inventory_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketInventoryConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_inventory_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_inventory_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_inventory_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle
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
    #          <dl>
    #             <dt>Rules</dt>
    #             <dd>
    #                <p>You specify the lifecycle configuration in your request body. The lifecycle
    #                   configuration is specified as XML consisting of one or more rules. An Amazon S3
    #                   Lifecycle configuration can have up to 1,000 rules. This limit is not adjustable.
    #                   Each rule consists of the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>A filter identifying a subset of objects to which the rule applies. The
    #                         filter can be based on a key name prefix, object tags, or a combination of
    #                         both.</p>
    #                   </li>
    #                   <li>
    #                      <p>A status indicating whether the rule is in effect.</p>
    #                   </li>
    #                   <li>
    #                      <p>One or more lifecycle transition and expiration actions that you want
    #                         Amazon S3 to perform on the objects identified by the filter. If the state of
    #                         your bucket is versioning-enabled or versioning-suspended, you can have many
    #                         versions of the same object (one current version and zero or more noncurrent
    #                         versions). Amazon S3 provides predefined actions that you can specify for current
    #                         and noncurrent object versions.</p>
    #                   </li>
    #                </ul>
    #                <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle
    #                      Management</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html">Lifecycle Configuration
    #                      Elements</a>.</p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>By default, all Amazon S3 resources are private, including buckets, objects, and
    #                   related subresources (for example, lifecycle configuration and website
    #                   configuration). Only the resource owner (that is, the Amazon Web Services account that created
    #                   it) can access the resource. The resource owner can optionally grant access
    #                   permissions to others by writing an access policy. For this operation, a user must
    #                   get the <code>s3:PutLifecycleConfiguration</code> permission.</p>
    #                <p>You can also explicitly deny permissions. An explicit deny also supersedes any
    #                   other permissions. If you want to block users or accounts from removing or
    #                   deleting objects from your bucket, you must deny them permissions for the
    #                   following actions:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>s3:DeleteObject</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>s3:DeleteObjectVersion</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>s3:PutLifecycleConfiguration</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>For more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing Access
    #                      Permissions to Your Amazon S3 Resources</a>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to
    #          <code>PutBucketLifecycleConfiguration</code>:</p>
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
    # @param [Hash | Types::PutBucketLifecycleConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketLifecycleConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #           member_filter: {
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketLifecycleConfigurationOutput
    # @example Put bucket lifecycle
    #   # The following example replaces existing lifecycle configuration, if any, on the specified bucket.
    #   resp = client.put_bucket_lifecycle_configuration({
    #     bucket: "examplebucket",
    #     lifecycle_configuration: {
    #       rules: [
    #         {
    #           member_filter: {
    #             prefix: "documents/"
    #           },
    #           status: "Enabled",
    #           transitions: [
    #             {
    #               days: 365,
    #               storage_class: "GLACIER"
    #             }
    #           ],
    #           expiration: {
    #             days: 3650
    #           },
    #           id: "TestOnly"
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_lifecycle_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketLifecycleConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketLifecycleConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_lifecycle_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketLifecycleConfiguration',
        'code.function' => 'put_bucket_lifecycle_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketLifecycleConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_lifecycle_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_lifecycle_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_lifecycle_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Set the logging parameters for a bucket and to specify permissions for who can view and
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
    #          <dl>
    #             <dt>Grantee Values</dt>
    #             <dd>
    #                <p>You can specify the person (grantee) to whom you're assigning access rights (by
    #                   using request elements) in the following ways:</p>
    #                <ul>
    #                   <li>
    #                      <p>By the person's ID:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                            </Grantee></code>
    #                      </p>
    #                      <p>
    #                         <code>DisplayName</code> is optional and ignored in the request.</p>
    #                   </li>
    #                   <li>
    #                      <p>By Email address:</p>
    #                      <p>
    #                         <code> <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress></Grantee></code>
    #                      </p>
    #                      <p>The grantee is resolved to the <code>CanonicalUser</code> and, in a
    #                         response to a <code>GETObjectAcl</code> request, appears as the
    #                         CanonicalUser.</p>
    #                   </li>
    #                   <li>
    #                      <p>By URI:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </dd>
    #          </dl>
    #          <p>To enable logging, you use <code>LoggingEnabled</code> and its children request
    #          elements. To disable logging, you use an empty <code>BucketLoggingStatus</code> request
    #          element:</p>
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
    # @param [Hash | Types::PutBucketLoggingInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketLoggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #         target_prefix: 'TargetPrefix', # required
    #         target_object_key_format: {
    #           simple_prefix: { },
    #           partitioned_prefix: {
    #             partition_date_source: 'EventTime' # accepts ["EventTime", "DeliveryTime"]
    #           }
    #         }
    #       }
    #     }, # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketLoggingOutput
    # @example Set logging configuration for a bucket
    #   # The following example sets logging policy on a bucket. For the Log Delivery group to deliver logs to the destination bucket, it needs permission for the READ_ACP action which the policy grants.
    #   resp = client.put_bucket_logging({
    #     bucket: "sourcebucket",
    #     bucket_logging_status: {
    #       logging_enabled: {
    #         target_bucket: "targetbucket",
    #         target_prefix: "MyBucketLogs/",
    #         target_grants: [
    #           {
    #             grantee: {
    #               type: "Group",
    #               uri: "http://acs.amazonaws.com/groups/global/AllUsers"
    #             },
    #             permission: "READ"
    #           }
    #         ]
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_logging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketLoggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketLogging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_logging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketLogging',
        'code.function' => 'put_bucket_logging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketLogging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_logging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_logging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_logging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.
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
    #             <code>PutBucketMetricsConfiguration</code> has the following special error:</p>
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
    # @param [Hash | Types::PutBucketMetricsConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketMetricsConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_metrics_configuration(
    #     bucket: 'Bucket', # required
    #     id: 'Id', # required
    #     metrics_configuration: {
    #       id: 'Id', # required
    #       member_filter: {
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketMetricsConfigurationOutput
    def put_bucket_metrics_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketMetricsConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketMetricsConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_metrics_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketMetricsConfiguration',
        'code.function' => 'put_bucket_metrics_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketMetricsConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_metrics_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_metrics_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_metrics_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Enables notifications of specified events for a bucket. For more information about event
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
    #          configuration with the required <code>s3:PutBucketNotification</code> permission.</p>
    #          <note>
    #             <p>The PUT notification is an atomic operation. For example, suppose your notification
    #             configuration includes SNS topic, SQS queue, and Lambda function configurations. When
    #             you send a PUT request with this configuration, Amazon S3 sends test messages to your SNS
    #             topic. If the message fails, the entire PUT action will fail, and Amazon S3 will not add the
    #             configuration to your bucket.</p>
    #          </note>
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
    # @param [Hash | Types::PutBucketNotificationConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketNotificationConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #           member_filter: {
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketNotificationConfigurationOutput
    # @example Set notification configuration for a bucket
    #   # The following example sets notification configuration on a bucket to publish the object created events to an SNS topic.
    #   resp = client.put_bucket_notification_configuration({
    #     bucket: "examplebucket",
    #     notification_configuration: {
    #       topic_configurations: [
    #         {
    #           topic_arn: "arn:aws:sns:us-west-2:123456789012:s3-notification-topic",
    #           events: [
    #             "s3:ObjectCreated:*"
    #           ]
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_notification_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketNotificationConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketNotificationConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_notification_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketNotificationConfiguration',
        'code.function' => 'put_bucket_notification_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketNotificationConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_notification_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_notification_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_notification_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates or modifies <code>OwnershipControls</code> for an Amazon S3 bucket. To use this
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
    # @param [Hash | Types::PutBucketOwnershipControlsInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketOwnershipControlsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketOwnershipControlsOutput
    def put_bucket_ownership_controls(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketOwnershipControlsInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketOwnershipControls.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_ownership_controls,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketOwnershipControls',
        'code.function' => 'put_bucket_ownership_controls',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketOwnershipControls', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_ownership_controls] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_ownership_controls] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_ownership_controls] #{output.data}")
        output
      end
    end

    # <p>Applies an Amazon S3 bucket policy to an Amazon S3 bucket.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets </b> - For directory buckets, you must make requests for this API operation to the Regional endpoint. These endpoints support path-style requests in the format <code>https://s3express-control.<i>region_code</i>.amazonaws.com/<i>bucket-name</i>
    #                </code>. Virtual-hosted-style requests aren't supported.
    # For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>If you are using an identity other than the
    #                   root user of the Amazon Web Services account that owns the bucket, the calling identity must both have the
    #                   <code>PutBucketPolicy</code> permissions on the specified bucket and belong to the
    #                   bucket owner's account in order to use this operation.</p>
    #                <p>If you don't have <code>PutBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #                   Access Denied</code> error. If you have the correct permissions, but you're not using an
    #                   identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #                      Allowed</code> error.</p>
    #                <important>
    #                   <p>To ensure that bucket owners don't inadvertently lock themselves out of their own
    #                      buckets, the root principal in a bucket owner's Amazon Web Services account can perform the
    #                      <code>GetBucketPolicy</code>, <code>PutBucketPolicy</code>, and
    #                      <code>DeleteBucketPolicy</code> API actions, even if their bucket policy explicitly
    #                      denies the root principal's access. Bucket owner root principals can only be blocked
    #                      from performing these API actions by VPC endpoint policies and Amazon Web Services Organizations
    #                      policies.</p>
    #                </important>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The <code>s3:PutBucketPolicy</code> permission is required in a policy.
    #                         For more information about general purpose buckets bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #                            Policies</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation, you must have the <code>s3express:PutBucketPolicy</code> permission in an IAM identity-based policy instead of a bucket policy. Cross-account access to this API operation isn't supported. This operation can only be performed by the Amazon Web Services account that owns the resource. For more information about directory bucket policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam.html">Amazon Web Services Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Example bucket policies</dt>
    #             <dd>
    #                <p>
    #                   <b>General purpose buckets example bucket policies</b> - See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html">Bucket policy examples</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                <p>
    #                   <b>Directory bucket example bucket policies</b> - See <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::PutBucketPolicyInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketPolicyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_policy(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     confirm_remove_self_bucket_access: false,
    #     policy: 'Policy', # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketPolicyOutput
    # @example Set bucket policy
    #   # The following example sets a permission policy on a bucket.
    #   resp = client.put_bucket_policy({
    #     bucket: "examplebucket",
    #     policy: "{\"Version\": \"2012-10-17\", \"Statement\": [{ \"Sid\": \"id-1\",\"Effect\": \"Allow\",\"Principal\": {\"AWS\": \"arn:aws:iam::123456789012:root\"}, \"Action\": [ \"s3:PutObject\",\"s3:PutObjectAcl\"], \"Resource\": [\"arn:aws:s3:::acl3/*\" ] } ]}"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_policy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketPolicyInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketPolicy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_policy,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketPolicy',
        'code.function' => 'put_bucket_policy',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketPolicy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_policy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_policy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_policy] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p> Creates a replication configuration or replaces an existing one. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <p>Specify the replication configuration in the request body. In the replication
    #          configuration, you provide the name of the destination bucket or buckets where you want
    #          Amazon S3 to replicate objects, the IAM role that Amazon S3 can assume to replicate objects on your
    #          behalf, and other relevant information. You can invoke this request for a specific
    #          Amazon Web Services Region by using the
    #          <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requestedregion">
    #                <code>aws:RequestedRegion</code>
    #             </a> condition key.</p>
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
    #          <dl>
    #             <dt>Handling Replication of Encrypted Objects</dt>
    #             <dd>
    #                <p>By default, Amazon S3 doesn't replicate objects that are stored at rest using
    #                   server-side encryption with KMS keys. To replicate Amazon Web Services KMS-encrypted objects,
    #                   add the following: <code>SourceSelectionCriteria</code>,
    #                      <code>SseKmsEncryptedObjects</code>, <code>Status</code>,
    #                      <code>EncryptionConfiguration</code>, and <code>ReplicaKmsKeyID</code>. For
    #                   information about replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-config-for-kms-objects.html">Replicating
    #                      Objects Created with SSE Using KMS keys</a>.</p>
    #                <p>For information on <code>PutBucketReplication</code> errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList">List of
    #                      replication-related error codes</a>
    #                </p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To create a <code>PutBucketReplication</code> request, you must have
    #                      <code>s3:PutReplicationConfiguration</code> permissions for the bucket.
    #
    #                </p>
    #                <p>By default, a resource owner, in this case the Amazon Web Services account that created the
    #                   bucket, can perform this operation. The resource owner can also grant others
    #                   permissions to perform the operation. For more information about permissions, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html">Specifying Permissions in
    #                      a Policy</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing Access
    #                      Permissions to Your Amazon S3 Resources</a>.</p>
    #                <note>
    #                   <p>To perform this operation, the user or role performing the action must have
    #                      the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">iam:PassRole</a>
    #                      permission.</p>
    #                </note>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::PutBucketReplicationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketReplicationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #           member_filter: {
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
    #             storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketReplicationOutput
    # @example Set replication configuration on a bucket
    #   # The following example sets replication configuration on a bucket.
    #   resp = client.put_bucket_replication({
    #     bucket: "examplebucket",
    #     replication_configuration: {
    #       role: "arn:aws:iam::123456789012:role/examplerole",
    #       rules: [
    #         {
    #           prefix: "",
    #           status: "Enabled",
    #           destination: {
    #             bucket: "arn:aws:s3:::destinationbucket",
    #             storage_class: "STANDARD"
    #           }
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_replication(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketReplicationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketReplication.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_replication,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketReplication',
        'code.function' => 'put_bucket_replication',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketReplication', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_replication] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_replication] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_replication] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the request payment configuration for a bucket. By default, the bucket owner pays
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
    # @param [Hash | Types::PutBucketRequestPaymentInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketRequestPaymentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.put_bucket_request_payment(
    #     bucket: 'Bucket', # required
    #     content_md5: 'ContentMD5',
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     request_payment_configuration: {
    #       payer: 'Requester' # required - accepts ["Requester", "BucketOwner"]
    #     }, # required
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutBucketRequestPaymentOutput
    # @example Set request payment configuration on a bucket.
    #   # The following example sets request payment configuration on a bucket so that person requesting the download is charged.
    #   resp = client.put_bucket_request_payment({
    #     bucket: "examplebucket",
    #     request_payment_configuration: {
    #       payer: "Requester"
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_request_payment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketRequestPaymentInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketRequestPayment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_request_payment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketRequestPayment',
        'code.function' => 'put_bucket_request_payment',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketRequestPayment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_request_payment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_request_payment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_request_payment] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the tags for a bucket.</p>
    #          <p>Use tags to organize your Amazon Web Services bill to reflect your own cost structure. To do this,
    #          sign up to get your Amazon Web Services account bill with tag key values included. Then, to see the cost
    #          of combined resources, organize your billing information according to resources with the
    #          same tag key values. For example, you can tag several resources with a specific application
    #          name, and then organize your billing information to see the total cost of that application
    #          across several services. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Cost Allocation and
    #             Tagging</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html">Using Cost Allocation in Amazon S3
    #             Bucket Tags</a>.</p>
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
    #             <code>PutBucketTagging</code> has the following special errors. For more Amazon S3 errors
    #          see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #             Responses</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>InvalidTag</code> - The tag provided was not a valid tag. This error
    #                can occur if the tag did not pass input validation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html">Using
    #                   Cost Allocation in Amazon S3 Bucket Tags</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MalformedXML</code> - The XML provided does not match the
    #                schema.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OperationAborted</code> - A conflicting conditional action is
    #                currently in progress against this resource. Please try again.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>InternalError</code> - The service was unable to apply the provided
    #                tag to the bucket.</p>
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
    # @param [Hash | Types::PutBucketTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketTaggingOutput
    # @example Set tags on a bucket
    #   # The following example sets tags on a bucket. Any existing tags are replaced.
    #   resp = client.put_bucket_tagging({
    #     bucket: "examplebucket",
    #     tagging: {
    #       tag_set: [
    #         {
    #           key: "Key1",
    #           value: "Value1"
    #         },
    #         {
    #           key: "Key2",
    #           value: "Value2"
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketTagging',
        'code.function' => 'put_bucket_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_tagging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the versioning state of an existing bucket.</p>
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
    #             <p>If you have an object expiration lifecycle configuration in your non-versioned bucket
    #             and you want to maintain the same permanent delete behavior when you enable versioning,
    #             you must add a noncurrent expiration policy. The noncurrent expiration lifecycle
    #             configuration will manage the deletes of the noncurrent object versions in the
    #             version-enabled bucket. (A version-enabled bucket maintains one current and zero or more
    #             noncurrent object versions.) For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-and-other-bucket-config">Lifecycle and Versioning</a>.</p>
    #          </important>
    #          <p>The following operations are related to <code>PutBucketVersioning</code>:</p>
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
    # @param [Hash | Types::PutBucketVersioningInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketVersioningInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketVersioningOutput
    # @example Set versioning configuration on a bucket
    #   # The following example sets versioning configuration on bucket. The configuration enables versioning on the bucket.
    #   resp = client.put_bucket_versioning({
    #     bucket: "examplebucket",
    #     versioning_configuration: {
    #       mfa_delete: "Disabled",
    #       status: "Enabled"
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_versioning(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketVersioningInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketVersioning.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_versioning,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketVersioning',
        'code.function' => 'put_bucket_versioning',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketVersioning', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_versioning] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_versioning] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_versioning] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the configuration of the website that is specified in the <code>website</code>
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
    #          <p>The maximum request length is limited to 128 KB.</p>
    # @param [Hash | Types::PutBucketWebsiteInput] params
    #   Request parameters for this operation.
    #   See {Types::PutBucketWebsiteInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutBucketWebsiteOutput
    # @example Set website configuration on a bucket
    #   # The following example adds website configuration to a bucket.
    #   resp = client.put_bucket_website({
    #     bucket: "examplebucket",
    #     content_md5: "",
    #     website_configuration: {
    #       index_document: {
    #         suffix: "index.html"
    #       },
    #       error_document: {
    #         key: "error.html"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   nil
    def put_bucket_website(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutBucketWebsiteInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutBucketWebsite.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_bucket_website,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutBucketWebsite',
        'code.function' => 'put_bucket_website',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutBucketWebsite', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_website] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_bucket_website] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_bucket_website] #{output.data}")
        output
      end
    end

    # <p>Adds an object to a bucket.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Amazon S3 never adds partial objects; if you receive a success response, Amazon S3 added the
    #                entire object to the bucket. You cannot use <code>PutObject</code> to only update a
    #                single piece of metadata for an existing object. You must put the entire object with
    #                updated metadata if you want to update some values.</p>
    #                </li>
    #                <li>
    #                   <p>If your bucket uses the bucket owner enforced setting for Object Ownership, ACLs are disabled and no longer affect permissions. All
    #                   objects written to the bucket by any account will be owned by the bucket owner.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                      </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>Amazon S3 is a distributed system. If it receives multiple write requests for the same object
    #          simultaneously, it overwrites all but the last object written. However, Amazon S3 provides features that can modify this behavior:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>S3 Object Lock</b> - To prevent objects from
    #             being deleted or overwritten, you can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Amazon S3 Object
    #                Lock</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                <note>
    #                   <p>This functionality is not supported for directory buckets.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>S3 Versioning</b> - When you enable
    #             versioning for a bucket, if Amazon S3 receives multiple write requests for the same object
    #             simultaneously, it stores all versions of the objects. For each write request that is made to the same object, Amazon S3 automatically generates a unique version ID
    #             of that object being stored in Amazon S3.
    #            You can retrieve, replace, or delete any version of the object. For more information about versioning, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html">Adding Objects to
    #                Versioning-Enabled Buckets</a> in the <i>Amazon S3
    #                   User Guide</i>. For information about returning the versioning state
    #             of a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a>. </p>
    #                <note>
    #                   <p>This functionality is not supported for directory buckets.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - The following permissions are required in your policies when your
    #                         <code>PutObject</code> request includes specific headers.</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:PutObject</code>
    #                               </b> - To successfully complete the <code>PutObject</code> request, you must always have the <code>s3:PutObject</code> permission on a bucket to add an object
    #                                  to it.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:PutObjectAcl</code>
    #                               </b> - To successfully change the objects ACL of your <code>PutObject</code> request, you must have the <code>s3:PutObjectAcl</code>.</p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <b>
    #                                  <code>s3:PutObjectTagging</code>
    #                               </b> - To successfully set the tag-set with your <code>PutObject</code> request, you
    #                                  must have the <code>s3:PutObjectTagging</code>.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Data integrity with Content-MD5</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket</b> - To ensure that data is not corrupted traversing the network, use the
    #                     <code>Content-MD5</code> header. When you use this header, Amazon S3 checks the object
    #                     against the provided MD5 value and, if they do not match, Amazon S3 returns an error. Alternatively, when the object's ETag is its MD5 digest,
    #                     you can calculate the MD5 while putting the object to Amazon S3 and compare the returned ETag to
    #                     the calculated MD5 value.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket</b> - This functionality is not supported for directory buckets.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
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
    # @param [Hash | Types::PutObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms", "aws:kms:dsse"]
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectOutput
    #   resp.data.expiration #=> String
    #   resp.data.e_tag #=> String
    #   resp.data.checksum_crc32 #=> String
    #   resp.data.checksum_crc32_c #=> String
    #   resp.data.checksum_sha1 #=> String
    #   resp.data.checksum_sha256 #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.version_id #=> String
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.ssekms_encryption_context #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To upload an object and specify server-side encryption and object tags
    #   # The following example uploads an object. The request specifies the optional server-side encryption option. The request also specifies optional object tags. If the bucket is versioning enabled, S3 returns version ID in response.
    #   resp = client.put_object({
    #     body: 'filetoupload',
    #     bucket: "examplebucket",
    #     key: "exampleobject",
    #     server_side_encryption: "AES256",
    #     tagging: "key1=value1&key2=value2"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "Ri.vC6qVlA4dEnjgRV4ZHsHoFIjqEMNt",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\"",
    #     server_side_encryption: "AES256"
    #   }
    # @example To create an object.
    #   # The following example creates an object. If the bucket is versioning enabled, S3 returns version ID in response.
    #   resp = client.put_object({
    #     body: 'filetoupload',
    #     bucket: "examplebucket",
    #     key: "objectkey"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "Bvq0EDKxOcXLJXNo_Lkz37eM3R4pfzyQ",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #   }
    # @example To upload an object (specify optional headers)
    #   # The following example uploads an object. The request specifies optional request headers to directs S3 to use specific storage class and use server-side encryption.
    #   resp = client.put_object({
    #     body: 'HappyFace.jpg',
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg",
    #     server_side_encryption: "AES256",
    #     storage_class: "STANDARD_IA"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "CG612hodqujkf8FaaNfp8U..FIhLROcp",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\"",
    #     server_side_encryption: "AES256"
    #   }
    # @example To upload an object and specify optional tags
    #   # The following example uploads an object. The request specifies optional object tags. The bucket is versioned, therefore S3 returns version ID of the newly created object.
    #   resp = client.put_object({
    #     body: 'c:\HappyFace.jpg',
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg",
    #     tagging: "key1=value1&key2=value2"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "psM2sYY4.o1501dSx8wMvnkOzSBB.V4a",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #   }
    # @example To upload object and specify user-defined metadata
    #   # The following example creates an object. The request also specifies optional metadata. If the bucket is versioning enabled, S3 returns version ID in response.
    #   resp = client.put_object({
    #     body: 'filetoupload',
    #     bucket: "examplebucket",
    #     key: "exampleobject",
    #     metadata: {
    #       'metadata1' => "value1",
    #       'metadata2' => "value2"
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "pSKidl4pHBiNwukdbcPXAIs.sshFFOc0",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #   }
    # @example To upload an object and specify canned ACL.
    #   # The following example uploads and object. The request specifies optional canned ACL (access control list) to all READ access to authenticated users. If the bucket is versioning enabled, S3 returns version ID in response.
    #   resp = client.put_object({
    #     acl: "authenticated-read",
    #     body: 'filetoupload',
    #     bucket: "examplebucket",
    #     key: "exampleobject"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "Kirh.unyZwjQ69YxcQLA8z4F5j3kJJKr",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #   }
    # @example To upload an object
    #   # The following example uploads an object to a versioning-enabled bucket. The source file is specified using Windows file syntax. S3 returns VersionId of the newly created object.
    #   resp = client.put_object({
    #     body: 'HappyFace.jpg',
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "tpf3zF08nBplQK1XLOefGskR7mGDwcDk",
    #     e_tag: "\"6805f2cfc46c0f04559748bb039d69ae\""
    #   }
    def put_object(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObject',
        'code.function' => 'put_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Uses the <code>acl</code> subresource to set the access control list (ACL) permissions
    #          for a new or existing object in an S3 bucket. You must have the <code>WRITE_ACP</code>
    #          permission to set the ACL of an object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#permissions">What
    #             permissions can I grant?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
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
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You can set access permissions using one of the following methods:</p>
    #                <ul>
    #                   <li>
    #                      <p>Specify a canned ACL with the <code>x-amz-acl</code> request header. Amazon S3
    #                         supports a set of predefined ACLs, known as canned ACLs. Each canned ACL has
    #                         a predefined set of grantees and permissions. Specify the canned ACL name as
    #                         the value of <code>x-amz-ac</code>l. If you use this header, you cannot use
    #                         other access control-specific headers in your request. For more information,
    #                         see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned
    #                         ACL</a>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Specify access permissions explicitly with the
    #                            <code>x-amz-grant-read</code>, <code>x-amz-grant-read-acp</code>,
    #                            <code>x-amz-grant-write-acp</code>, and
    #                            <code>x-amz-grant-full-control</code> headers. When using these headers,
    #                         you specify explicit access permissions and grantees (Amazon Web Services accounts or Amazon S3
    #                         groups) who will receive the permission. If you use these ACL-specific
    #                         headers, you cannot use <code>x-amz-acl</code> header to set a canned ACL.
    #                         These parameters map to the set of permissions that Amazon S3 supports in an ACL.
    #                         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #                            Overview</a>.</p>
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
    #                      <p>For example, the following <code>x-amz-grant-read</code> header grants
    #                         list objects permission to the two Amazon Web Services accounts identified by their email
    #                         addresses.</p>
    #                      <p>
    #                         <code>x-amz-grant-read: emailAddress="xyz@amazon.com",
    #                            emailAddress="abc@amazon.com" </code>
    #                      </p>
    #                   </li>
    #                </ul>
    #                <p>You can use either a canned ACL or specify access permissions explicitly. You
    #                   cannot do both.</p>
    #             </dd>
    #             <dt>Grantee Values</dt>
    #             <dd>
    #                <p>You can specify the person (grantee) to whom you're assigning access rights
    #                   (using request elements) in the following ways:</p>
    #                <ul>
    #                   <li>
    #                      <p>By the person's ID:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="CanonicalUser"><ID><>ID<></ID><DisplayName><>GranteesEmail<></DisplayName>
    #                            </Grantee></code>
    #                      </p>
    #                      <p>DisplayName is optional and ignored in the request.</p>
    #                   </li>
    #                   <li>
    #                      <p>By URI:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="Group"><URI><>http://acs.amazonaws.com/groups/global/AuthenticatedUsers<></URI></Grantee></code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>By Email address:</p>
    #                      <p>
    #                         <code><Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    #                            xsi:type="AmazonCustomerByEmail"><EmailAddress><>Grantees@email.com<></EmailAddress>lt;/Grantee></code>
    #                      </p>
    #                      <p>The grantee is resolved to the CanonicalUser and, in a response to a GET
    #                         Object acl request, appears as the CanonicalUser.</p>
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
    #             </dd>
    #             <dt>Versioning</dt>
    #             <dd>
    #                <p>The ACL of an object is set at the object version level. By default, PUT sets
    #                   the ACL of the current version of an object. To set the ACL of a different
    #                   version, use the <code>versionId</code> subresource.</p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>PutObjectAcl</code>:</p>
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
    # @param [Hash | Types::PutObjectAclInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectAclInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectAclOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    # @example To grant permissions using object ACL
    #   # The following example adds grants to an object ACL. The first permission grants user1 and user2 FULL_CONTROL and the AllUsers group READ permission.
    #   resp = client.put_object_acl({
    #     access_control_policy: {},
    #     bucket: "examplebucket",
    #     grant_full_control: "emailaddress=user1@example.com,emailaddress=user2@example.com",
    #     grant_read: "uri=http://acs.amazonaws.com/groups/global/AllUsers",
    #     key: "HappyFace.jpg"
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def put_object_acl(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectAclInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObjectAcl.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object_acl,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObjectAcl',
        'code.function' => 'put_object_acl',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObjectAcl', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_acl] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object_acl] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_acl] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Applies a legal hold configuration to the specified object. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking
    #             Objects</a>.</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    # @param [Hash | Types::PutObjectLegalHoldInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectLegalHoldInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectLegalHoldOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    def put_object_legal_hold(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectLegalHoldInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObjectLegalHold.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object_legal_hold,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObjectLegalHold',
        'code.function' => 'put_object_legal_hold',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObjectLegalHold', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_legal_hold] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object_legal_hold] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_legal_hold] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Places an Object Lock configuration on the specified bucket. The rule specified in the
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
    #                   <p>You can enable Object Lock for new or existing buckets. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-configure.html">Configuring Object
    #                      Lock</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash | Types::PutObjectLockConfigurationInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectLockConfigurationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectLockConfigurationOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    def put_object_lock_configuration(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectLockConfigurationInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObjectLockConfiguration.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object_lock_configuration,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObjectLockConfiguration',
        'code.function' => 'put_object_lock_configuration',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObjectLockConfiguration', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_lock_configuration] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object_lock_configuration] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_lock_configuration] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Places an Object Retention configuration on an object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Locking Objects</a>.
    #          Users or accounts require the <code>s3:PutObjectRetention</code> permission in order to
    #          place an Object Retention configuration on objects. Bypassing a Governance Retention
    #          configuration requires the <code>s3:BypassGovernanceRetention</code> permission. </p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    # @param [Hash | Types::PutObjectRetentionInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectRetentionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectRetentionOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    def put_object_retention(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectRetentionInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObjectRetention.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object_retention,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObjectRetention',
        'code.function' => 'put_object_retention',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObjectRetention', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_retention] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object_retention] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_retention] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Sets the supplied tag-set to an object that already exists in a bucket. A tag is a
    #          key-value pair. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html">Object Tagging</a>.</p>
    #          <p>You can associate tags with an object by sending a PUT request against the tagging
    #          subresource that is associated with the object. You can retrieve tags by sending a GET
    #          request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a>.</p>
    #          <p>For tagging-related restrictions related to characters and encodings, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">Tag
    #             Restrictions</a>. Note that Amazon S3 limits the maximum number of tags to 10 tags per
    #          object.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3:PutObjectTagging</code> action. By default, the bucket owner has this
    #          permission and can grant this permission to others.</p>
    #          <p>To put tags of any other version, use the <code>versionId</code> query parameter. You
    #          also need permission for the <code>s3:PutObjectVersionTagging</code> action.</p>
    #          <p>
    #             <code>PutObjectTagging</code> has the following special errors. For more Amazon S3 errors
    #          see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error
    #             Responses</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>InvalidTag</code> - The tag provided was not a valid tag. This error
    #                can occur if the tag did not pass input validation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html">Object
    #                   Tagging</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MalformedXML</code> - The XML provided does not match the
    #                schema.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OperationAborted</code> - A conflicting conditional action is
    #                currently in progress against this resource. Please try again.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>InternalError</code> - The service was unable to apply the provided
    #                tag to the object.</p>
    #             </li>
    #          </ul>
    #          <p>The following operations are related to <code>PutObjectTagging</code>:</p>
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
    # @param [Hash | Types::PutObjectTaggingInput] params
    #   Request parameters for this operation.
    #   See {Types::PutObjectTaggingInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutObjectTaggingOutput
    #   resp.data.version_id #=> String
    # @example To add tags to an existing object
    #   # The following example adds tags to an existing object.
    #   resp = client.put_object_tagging({
    #     bucket: "examplebucket",
    #     key: "HappyFace.jpg",
    #     tagging: {
    #       tag_set: [
    #         {
    #           key: "Key3",
    #           value: "Value3"
    #         },
    #         {
    #           key: "Key4",
    #           value: "Value4"
    #         }
    #       ]
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {
    #     version_id: "null"
    #   }
    def put_object_tagging(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutObjectTaggingInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutObjectTagging.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_object_tagging,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutObjectTagging',
        'code.function' => 'put_object_tagging',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutObjectTagging', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_tagging] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_object_tagging] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_object_tagging] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates or modifies the <code>PublicAccessBlock</code> configuration for an Amazon S3 bucket.
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
    #          <p>The following operations are related to <code>PutPublicAccessBlock</code>:</p>
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
    # @param [Hash | Types::PutPublicAccessBlockInput] params
    #   Request parameters for this operation.
    #   See {Types::PutPublicAccessBlockInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::PutPublicAccessBlockOutput
    def put_public_access_block(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::PutPublicAccessBlockInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::PutPublicAccessBlock.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_public_access_block,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'PutPublicAccessBlock',
        'code.function' => 'put_public_access_block',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.PutPublicAccessBlock', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_public_access_block] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_public_access_block] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_public_access_block] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Restores an archived copy of an object back into Amazon S3</p>
    #          <p>This functionality is not supported for Amazon S3 on Outposts.</p>
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
    #          <p>For more information about the <code>S3</code> structure in the request body, see the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Managing Access with ACLs</a> in the
    #                <i>Amazon S3 User Guide</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Protecting Data Using Server-Side Encryption</a> in the
    #                   <i>Amazon S3 User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Define the SQL expression for the <code>SELECT</code> type of restoration for your query
    #          in the request body's <code>SelectParameters</code> structure. You can use expressions like
    #          the following examples.</p>
    #          <ul>
    #             <li>
    #                <p>The following expression returns all records from the specified object.</p>
    #                <p>
    #                   <code>SELECT * FROM Object</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Assuming that you are not using any headers for data stored in the object, you can
    #                specify columns with positional headers.</p>
    #                <p>
    #                   <code>SELECT s._1, s._2 FROM Object s WHERE s._3 > 100</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>If you have headers and you set the <code>fileHeaderInfo</code> in the
    #                   <code>CSV</code> structure in the request body to <code>USE</code>, you can
    #                specify headers in the query. (If you set the <code>fileHeaderInfo</code> field to
    #                   <code>IGNORE</code>, the first row is skipped for the query.) You cannot mix
    #                ordinal positions with header column names. </p>
    #                <p>
    #                   <code>SELECT s.Id, s.FirstName, s.SSN FROM S3Object s</code>
    #                </p>
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
    #                stored until explicitly deleted-manually or through a lifecycle configuration.</p>
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
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use this operation, you must have permissions to perform the
    #                      <code>s3:RestoreObject</code> action. The bucket owner has this permission by
    #                   default and can grant this permission to others. For more information about
    #                   permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing Access Permissions to Your Amazon S3 Resources</a> in the
    #                      <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>Restoring objects</dt>
    #             <dd>
    #                <p>Objects that you archive to the S3 Glacier Flexible Retrieval Flexible Retrieval
    #                   or S3 Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive or
    #                   S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real time. For objects in the
    #                   S3 Glacier Flexible Retrieval Flexible Retrieval or S3 Glacier Deep Archive
    #                   storage classes, you must first initiate a restore request, and then wait until a
    #                   temporary copy of the object is available. If you want a permanent copy of the
    #                   object, create a copy of it in the Amazon S3 Standard storage class in your S3 bucket.
    #                   To access an archived object, you must restore the object for the duration (number
    #                   of days) that you specify. For objects in the Archive Access or Deep Archive
    #                   Access tiers of S3 Intelligent-Tiering, you must first initiate a restore request,
    #                   and then wait until the object is moved into the Frequent Access tier.</p>
    #                <p>To restore a specific object version, you can provide a version ID. If you
    #                   don't provide a version ID, Amazon S3 restores the current version.</p>
    #                <p>When restoring an archived object, you can specify one of the following data
    #                   access tier options in the <code>Tier</code> element of the request body: </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Expedited</code> - Expedited retrievals allow you to quickly access
    #                         your data stored in the S3 Glacier Flexible Retrieval Flexible Retrieval
    #                         storage class or S3 Intelligent-Tiering Archive tier when occasional urgent requests
    #                         for restoring archives are required. For all but the largest archived
    #                         objects (250 MB+), data accessed using Expedited retrievals is typically
    #                         made available within 1–5 minutes. Provisioned capacity ensures that
    #                         retrieval capacity for Expedited retrievals is available when you need it.
    #                         Expedited retrievals and provisioned capacity are not available for objects
    #                         stored in the S3 Glacier Deep Archive storage class or
    #                         S3 Intelligent-Tiering Deep Archive tier.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Standard</code> - Standard retrievals allow you to access any of
    #                         your archived objects within several hours. This is the default option for
    #                         retrieval requests that do not specify the retrieval option. Standard
    #                         retrievals typically finish within 3–5 hours for objects stored in the
    #                         S3 Glacier Flexible Retrieval Flexible Retrieval storage class or
    #                         S3 Intelligent-Tiering Archive tier. They typically finish within 12 hours for
    #                         objects stored in the S3 Glacier Deep Archive storage class or
    #                         S3 Intelligent-Tiering Deep Archive tier. Standard retrievals are free for objects stored
    #                         in S3 Intelligent-Tiering.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Bulk</code> - Bulk retrievals free for objects stored in the
    #                         S3 Glacier Flexible Retrieval and S3 Intelligent-Tiering storage classes,
    #                         enabling you to retrieve large amounts, even petabytes, of data at no cost.
    #                         Bulk retrievals typically finish within 5–12 hours for objects stored in the
    #                         S3 Glacier Flexible Retrieval Flexible Retrieval storage class or
    #                         S3 Intelligent-Tiering Archive tier. Bulk retrievals are also the lowest-cost
    #                         retrieval option when restoring objects from
    #                         S3 Glacier Deep Archive. They typically finish within 48 hours for
    #                         objects stored in the S3 Glacier Deep Archive storage class or
    #                         S3 Intelligent-Tiering Deep Archive tier. </p>
    #                   </li>
    #                </ul>
    #                <p>For more information about archive retrieval options and provisioned capacity
    #                   for <code>Expedited</code> data access, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring Archived
    #                      Objects</a> in the <i>Amazon S3 User Guide</i>. </p>
    #                <p>You can use Amazon S3 restore speed upgrade to change the restore speed to a faster
    #                   speed while it is in progress. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html#restoring-objects-upgrade-tier.title.html"> Upgrading the speed of an in-progress restore</a> in the
    #                      <i>Amazon S3 User Guide</i>. </p>
    #                <p>To get the status of object restoration, you can send a <code>HEAD</code>
    #                   request. Operations return the <code>x-amz-restore</code> header, which provides
    #                   information about the restoration status, in the response. You can use Amazon S3 event
    #                   notifications to notify you when a restore is initiated or completed. For more
    #                   information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Amazon S3 Event
    #                      Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                <p>After restoring an archived object, you can update the restoration period by
    #                   reissuing the request with a new period. Amazon S3 updates the restoration period
    #                   relative to the current time and charges only for the request-there are no
    #                   data transfer charges. You cannot update the restoration period when Amazon S3 is
    #                   actively processing your current restore request for the object.</p>
    #                <p>If your bucket has a lifecycle configuration with a rule that includes an
    #                   expiration action, the object expiration overrides the life span that you specify
    #                   in a restore request. For example, if you restore an object copy for 10 days, but
    #                   the object is scheduled to expire in 3 days, Amazon S3 deletes the object in 3 days.
    #                   For more information about lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle
    #                      Management</a> in <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>Responses</dt>
    #             <dd>
    #                <p>A successful action returns either the <code>200 OK</code> or <code>202
    #                      Accepted</code> status code. </p>
    #                <ul>
    #                   <li>
    #                      <p>If the object is not previously restored, then Amazon S3 returns <code>202
    #                            Accepted</code> in the response. </p>
    #                   </li>
    #                   <li>
    #                      <p>If the object is previously restored, Amazon S3 returns <code>200 OK</code> in
    #                         the response. </p>
    #                   </li>
    #                </ul>
    #                <ul>
    #                   <li>
    #                      <p>Special errors:</p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <i>Code: RestoreAlreadyInProgress</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>Cause: Object restore is already in progress. (This error
    #                                  does not apply to SELECT type requests.)</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>HTTP Status Code: 409 Conflict</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>SOAP Fault Code Prefix: Client</i>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <i>Code: GlacierExpeditedRetrievalNotAvailable</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>Cause: expedited retrievals are currently not available.
    #                                  Try again later. (Returned if there is insufficient capacity to
    #                                  process the Expedited request. This error applies only to Expedited
    #                                  retrievals and not to S3 Standard or Bulk retrievals.)</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>HTTP Status Code: 503</i>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <i>SOAP Fault Code Prefix: N/A</i>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>RestoreObject</code>:</p>
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
    # @param [Hash | Types::RestoreObjectInput] params
    #   Request parameters for this operation.
    #   See {Types::RestoreObjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #             encryption_type: 'AES256', # required - accepts ["AES256", "aws:kms", "aws:kms:dsse"]
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
    #           storage_class: 'STANDARD' # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #         }
    #       }
    #     },
    #     request_payer: 'requester', # accepts ["requester"]
    #     checksum_algorithm: 'CRC32', # accepts ["CRC32", "CRC32C", "SHA1", "SHA256"]
    #     expected_bucket_owner: 'ExpectedBucketOwner'
    #   )
    # @example Response structure
    #   resp.data #=> Types::RestoreObjectOutput
    #   resp.data.request_charged #=> String, one of ["requester"]
    #   resp.data.restore_output_path #=> String
    # @example To restore an archived object
    #   # The following example restores for one day an archived copy of an object back into Amazon S3 bucket.
    #   resp = client.restore_object({
    #     bucket: "examplebucket",
    #     key: "archivedobjectkey",
    #     restore_request: {
    #       days: 1,
    #       glacier_job_parameters: {
    #         tier: "Expedited"
    #       }
    #     }
    #   })
    #
    #   # resp.to_h outputs the following:
    #   {}
    def restore_object(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::RestoreObjectInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::RestoreObject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :restore_object,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'RestoreObject',
        'code.function' => 'restore_object',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.RestoreObject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#restore_object] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#restore_object] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#restore_object] #{output.data}")
        output
      end
    end

    # <p>Uploads a part in a multipart upload.</p>
    #          <note>
    #             <p>In this operation, you provide new data as a part of an object in your request. However, you have an option
    #             to specify your existing Amazon S3 object as a data source for the part you are uploading. To
    #             upload a part from an existing object, you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a> operation.
    #          </p>
    #          </note>
    #          <p>You must initiate a multipart upload (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>)
    #          before you can upload any part. In response to your initiate request, Amazon S3 returns an
    #          upload ID, a unique identifier that you must include in your upload part request.</p>
    #          <p>Part numbers can be any number from 1 to 10,000, inclusive. A part number uniquely
    #          identifies a part and also defines its position within the object being created. If you
    #          upload a new part using the same part number that was used with a previous part, the
    #          previously uploaded part is overwritten.</p>
    #          <p>For information about maximum and minimum part sizes and other multipart upload
    #          specifications, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html">Multipart upload limits</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>After you initiate multipart upload and upload
    #          one or more parts, you must either complete or abort multipart upload in order to stop
    #          getting charged for storage of the uploaded parts. Only after you either complete or abort
    #          multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts
    #          storage.</p>
    #          </note>
    #          <p>For more information on multipart uploads, go to <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload Overview</a> in the
    #          <i>Amazon S3 User Guide </i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - For information on the permissions required to use the multipart upload API, see
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart
    #                            Upload and Permissions</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> - To grant access to this API operation on a directory bucket, we recommend that you use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a> API operation for session-based authorization. Specifically, you grant the <code>s3express:CreateSession</code> permission to the directory bucket in a bucket policy or an IAM identity-based policy. Then, you make the <code>CreateSession</code> API call on the bucket to obtain a session token. With the session token in your request header, you can make API requests to this operation. After the session token expires, you make another <code>CreateSession</code> API call to generate a new session token for use.
    # Amazon Web Services CLI or SDKs create session and refresh the session token automatically to avoid service interruptions when a session expires. For more information about authorization, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateSession.html">
    #                            <code>CreateSession</code>
    #                         </a>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Data integrity</dt>
    #             <dd>
    #                <p>
    #                   <b>General purpose bucket</b> - To ensure that data is not corrupted traversing the network, specify the
    #                      <code>Content-MD5</code> header in the upload part request. Amazon S3 checks the part data against the provided MD5 value. If they do not match, Amazon S3 returns an error. If the upload request is signed with Signature Version 4, then Amazon Web Services S3 uses the
    #                         <code>x-amz-content-sha256</code> header as a checksum instead of
    #                         <code>Content-MD5</code>. For more information see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html">Authenticating
    #                            Requests: Using the Authorization Header (Amazon Web Services Signature Version 4)</a>. </p>
    #                <note>
    #                   <p>
    #                      <b>Directory buckets</b> - MD5 is not supported by directory buckets. You can use checksum algorithms to check object integrity.</p>
    #                </note>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket</b> - Server-side encryption is for data encryption at rest. Amazon S3 encrypts your data as it
    #                         writes it to disks in its data centers and decrypts it when you access it. You have
    #                         mutually exclusive options to protect data using server-side encryption in Amazon S3, depending
    #                         on how you choose to manage the encryption keys. Specifically, the encryption key options
    #                         are Amazon S3 managed keys (SSE-S3), Amazon Web Services KMS keys (SSE-KMS), and Customer-Provided Keys
    #                         (SSE-C). Amazon S3 encrypts data with server-side encryption using Amazon S3 managed keys (SSE-S3) by
    #                         default. You can optionally tell Amazon S3 to encrypt data at rest using server-side encryption
    #                         with other key options. The option you use depends on whether you want to use KMS keys
    #                         (SSE-KMS) or provide your own encryption key (SSE-C).</p>
    #                      <p>Server-side encryption is supported by the S3 Multipart Upload operations. Unless you are
    #                         using a customer-provided encryption key (SSE-C), you don't need to specify the encryption
    #                         parameters in each UploadPart request. Instead, you only need to specify the server-side
    #                         encryption parameters in the initial Initiate Multipart request. For more information, see
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html">CreateMultipartUpload</a>.</p>
    #                      <p>If you request server-side encryption using a customer-provided encryption key (SSE-C)
    #                         in your initiate multipart upload request, you must provide identical encryption
    #                         information in each part upload using the following request headers.</p>
    #                      <ul>
    #                         <li>
    #                            <p>x-amz-server-side-encryption-customer-algorithm</p>
    #                         </li>
    #                         <li>
    #                            <p>x-amz-server-side-encryption-customer-key</p>
    #                         </li>
    #                         <li>
    #                            <p>x-amz-server-side-encryption-customer-key-MD5</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket</b> - For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported. </p>
    #                   </li>
    #                </ul>
    #                <p>
    #                   For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using Server-Side
    #                      Encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>Special errors</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>Error Code: <code>NoSuchUpload</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: The specified multipart upload does not exist. The upload ID might be invalid, or the multipart upload might have been aborted or completed.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 404 Not Found </p>
    #                         </li>
    #                         <li>
    #                            <p>SOAP Fault Code Prefix: Client</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>UploadPart</code>:</p>
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
    # @param [Hash | Types::UploadPartInput] params
    #   Request parameters for this operation.
    #   See {Types::UploadPartInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::UploadPartOutput
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
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
    def upload_part(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::UploadPartInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::UploadPart.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :upload_part,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'UploadPart',
        'code.function' => 'upload_part',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.UploadPart', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#upload_part] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#upload_part] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#upload_part] #{output.data}")
        output
      end
    end

    # <p>Uploads a part by copying data from an existing object as data source. To specify the
    #          data source, you add the request header <code>x-amz-copy-source</code> in your request. To specify
    #          a byte range, you add the request header <code>x-amz-copy-source-range</code> in your
    #          request. </p>
    #          <p>For information about maximum and minimum part sizes and other multipart upload
    #          specifications, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html">Multipart upload limits</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <note>
    #             <p>Instead of copying data from an existing object as part data, you might use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>
    #             action to upload new data as a part of an object in your request.</p>
    #          </note>
    #          <p>You must initiate a multipart upload before you can upload any part. In response to your
    #          initiate request, Amazon S3 returns the upload ID, a unique identifier that you must include in
    #          your upload part request.</p>
    #          <p>For conceptual information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/uploadobjusingmpu.html">Uploading
    #          Objects Using Multipart Upload</a> in the
    #          <i>Amazon S3 User Guide</i>. For information about copying objects using a single atomic action vs. a multipart
    #          upload, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectOperations.html">Operations on Objects</a> in
    #          the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> -  For directory buckets, you must make requests for this API operation to the Zonal endpoint. These endpoints support virtual-hosted-style requests in the format <code>https://<i>bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com/<i>key-name</i>
    #                </code>. Path-style requests are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-Regions-and-Zones.html">Regional and Zonal endpoints</a> in the
    #     <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <dl>
    #             <dt>Authentication and authorization</dt>
    #             <dd>
    #                <p>All <code>UploadPartCopy</code> requests must be authenticated and signed by using IAM credentials (access key ID and secret access key for the IAM identities). All headers with the <code>x-amz-</code> prefix, including
    #                         <code>x-amz-copy-source</code>, must be signed. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a>.</p>
    #                <p>
    #                   <b>Directory buckets</b> - You must use IAM credentials to authenticate and authorize your access to the <code>UploadPartCopy</code> API operation, instead of using the
    #                   temporary security credentials through the <code>CreateSession</code> API operation.</p>
    #                <p>Amazon Web Services CLI or SDKs handles authentication and authorization on your behalf.</p>
    #             </dd>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have <code>READ</code> access to the source object and <code>WRITE</code>
    #                   access to the destination bucket.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose bucket permissions</b> - You must have the permissions in a policy based on the bucket types of your source bucket and destination bucket in an <code>UploadPartCopy</code> operation.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If the source object is in a general purpose bucket, you must have the <b>
    #                                  <code>s3:GetObject</code>
    #                               </b> permission to read the source object that is being copied. </p>
    #                         </li>
    #                         <li>
    #                            <p>If the destination bucket is a general purpose bucket, you must have the <b>
    #                                  <code>s3:PubObject</code>
    #                               </b> permission to write the object copy to the destination bucket.
    #                            </p>
    #                         </li>
    #                      </ul>
    #                      <p>For information about permissions required to use the multipart upload API, see
    #                         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuAndPermissions.html">Multipart Upload and Permissions</a> in the
    #                         <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory bucket permissions</b> -
    #                         You must have permissions in a bucket policy or an IAM identity-based policy based on the source and destination
    #                         bucket types in an <code>UploadPartCopy</code> operation.</p>
    #                      <ul>
    #                         <li>
    #                            <p>If the source object that you want to copy is in a
    #                               directory bucket, you must have the <b>
    #                                  <code>s3express:CreateSession</code>
    #                               </b> permission in
    #                               the <code>Action</code> element of a policy to read the object
    #                               .
    #                               By default, the session is in the <code>ReadWrite</code> mode. If you want to restrict the access, you can explicitly set the <code>s3express:SessionMode</code> condition key to <code>ReadOnly</code> on the copy source bucket.</p>
    #                         </li>
    #                         <li>
    #                            <p>If the copy destination is a directory bucket, you must have the
    #                               <b>
    #                                  <code>s3express:CreateSession</code>
    #                               </b> permission in the
    #                               <code>Action</code> element of a policy to write the object
    #                               to the destination. The <code>s3express:SessionMode</code> condition
    #                               key cannot be set to <code>ReadOnly</code> on the copy destination. </p>
    #                         </li>
    #                      </ul>
    #                      <p>For example policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-example-bucket-policies.html">Example bucket policies for S3 Express One Zone</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-security-iam-identity-policies.html">Amazon Web Services Identity and Access Management (IAM) identity-based policies for S3 Express One Zone</a> in the
    #                         <i>Amazon S3 User Guide</i>.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Encryption</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>General purpose buckets </b> -
    #
    #                      For information about using server-side encryption with customer-provided
    #                            encryption keys with the <code>UploadPartCopy</code> operation, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html">UploadPart</a>.
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Directory buckets </b> - For directory buckets, only server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) is supported.</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>Special errors</dt>
    #             <dd>
    #                <ul>
    #                   <li>
    #                      <p>Error Code: <code>NoSuchUpload</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: The specified multipart upload does not exist. The
    #                                  upload ID might be invalid, or the multipart upload might have been
    #                                  aborted or completed.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 404 Not Found</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                   <li>
    #                      <p>Error Code: <code>InvalidRequest</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>Description: The specified copy source is not supported as a
    #                                     byte-range copy source.</p>
    #                         </li>
    #                         <li>
    #                            <p>HTTP Status Code: 400 Bad Request</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>
    #                      <i>Bucket_name</i>.s3express-<i>az_id</i>.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>The following operations are related to <code>UploadPartCopy</code>:</p>
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
    # @param [Hash | Types::UploadPartCopyInput] params
    #   Request parameters for this operation.
    #   See {Types::UploadPartCopyInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
    #   resp.data #=> Types::UploadPartCopyOutput
    #   resp.data.copy_source_version_id #=> String
    #   resp.data.copy_part_result #=> Types::CopyPartResult
    #   resp.data.copy_part_result.e_tag #=> String
    #   resp.data.copy_part_result.last_modified #=> Time
    #   resp.data.copy_part_result.checksum_crc32 #=> String
    #   resp.data.copy_part_result.checksum_crc32_c #=> String
    #   resp.data.copy_part_result.checksum_sha1 #=> String
    #   resp.data.copy_part_result.checksum_sha256 #=> String
    #   resp.data.server_side_encryption #=> String, one of ["AES256", "aws:kms", "aws:kms:dsse"]
    #   resp.data.sse_customer_algorithm #=> String
    #   resp.data.sse_customer_key_md5 #=> String
    #   resp.data.ssekms_key_id #=> String
    #   resp.data.bucket_key_enabled #=> Boolean
    #   resp.data.request_charged #=> String, one of ["requester"]
    def upload_part_copy(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::UploadPartCopyInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::UploadPartCopy.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :upload_part_copy,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'UploadPartCopy',
        'code.function' => 'upload_part_copy',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.UploadPartCopy', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#upload_part_copy] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#upload_part_copy] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#upload_part_copy] #{output.data}")
        output
      end
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Passes transformed objects to a <code>GetObject</code> operation when using Object Lambda access points. For
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
    # @param [Hash | Types::WriteGetObjectResponseInput] params
    #   Request parameters for this operation.
    #   See {Types::WriteGetObjectResponseInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #     replication_status: 'COMPLETE', # accepts ["COMPLETE", "PENDING", "FAILED", "REPLICA", "COMPLETED"]
    #     request_charged: 'requester', # accepts ["requester"]
    #     restore: 'Restore',
    #     server_side_encryption: 'AES256', # accepts ["AES256", "aws:kms", "aws:kms:dsse"]
    #     sse_customer_algorithm: 'SSECustomerAlgorithm',
    #     ssekms_key_id: 'SSEKMSKeyId',
    #     sse_customer_key_md5: 'SSECustomerKeyMD5',
    #     storage_class: 'STANDARD', # accepts ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR", "SNOW", "EXPRESS_ONEZONE"]
    #     tag_count: 1,
    #     version_id: 'VersionId',
    #     bucket_key_enabled: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::WriteGetObjectResponseOutput
    def write_get_object_response(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::s3.client')
      input = Params::WriteGetObjectResponseInput.build(params, context: 'params')
      stack = AWS::SDK::S3::Middleware::WriteGetObjectResponse.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :write_get_object_response,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'AmazonS3',
        'rpc.method' => 'WriteGetObjectResponse',
        'code.function' => 'write_get_object_response',
        'code.namespace' => 'AWS::SDK::S3::Client'
      }
      tracer.in_span('AmazonS3.WriteGetObjectResponse', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#write_get_object_response] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#write_get_object_response] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#write_get_object_response] #{output.data}")
        output
      end
    end
  end
end
