# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ElasticTranscoder
  # An API client for EtsCustomerService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Elastic Transcoder Service</fullname>
  #         <p>The AWS Elastic Transcoder Service.</p>
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
    def initialize(config = AWS::SDK::ElasticTranscoder::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>The CancelJob operation cancels an unfinished job.</p>
    #         <note>
    #             <p>You can only cancel a job that has a status of <code>Submitted</code>. To prevent a
    #             pipeline from starting to process a job while you're getting the job identifier, use
    #                 <a>UpdatePipelineStatus</a> to temporarily pause the pipeline.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the job that you want to cancel.</p>
    #           <p>To get a list of the jobs (including their <code>jobId</code>) that have a status of
    #                   <code>Submitted</code>, use the <a>ListJobsByStatus</a> API action.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     id: 'Id' # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceInUseException, Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
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

    # <p>When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified
    #             plus information about the job that is created.</p>
    #         <p>If you have specified more than one output for your jobs (for example, one output for the
    #             Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to
    #             list the jobs (as opposed to the AWS Console).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The <code>Id</code> of the pipeline that you want Elastic Transcoder to use for
    #               transcoding. The pipeline determines several settings, including the Amazon S3 bucket
    #               from which Elastic Transcoder gets the files to transcode and the bucket into which
    #               Elastic Transcoder puts the transcoded files.</p>
    #
    # @option params [JobInput] :input
    #   <p>A section of the request body that provides information about the file that is being
    #                transcoded.</p>
    #
    # @option params [Array<JobInput>] :inputs
    #   <p>A section of the request body that provides information about the files that are being
    #               transcoded.</p>
    #
    # @option params [CreateJobOutput] :output
    #   <p> A section of the request body that provides information about the transcoded (target)
    #               file. We strongly recommend that you use the <code>Outputs</code> syntax instead of the
    #               <code>Output</code> syntax. </p>
    #
    # @option params [Array<CreateJobOutput>] :outputs
    #   <p> A section of the request body that provides information about the transcoded (target)
    #               files. We recommend that you use the <code>Outputs</code> syntax instead of the
    #                   <code>Output</code> syntax. </p>
    #
    # @option params [String] :output_key_prefix
    #   <p>The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this
    #               job creates, including output files, thumbnails, and playlists.</p>
    #
    # @option params [Array<CreateJobPlaylist>] :playlists
    #   <p>If you specify a preset in <code>PresetId</code> for which the value of
    #                   <code>Container</code> is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains
    #                   information about the master playlists that you want Elastic Transcoder to create.</p>
    #           <p>The maximum number of master playlists in a job is 30.</p>
    #
    # @option params [Hash<String, String>] :user_metadata
    #   <p>User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in
    #               <code>key/value</code> pairs, and you can add up to 10 <code>key/value</code> pairs per job.
    #               Elastic Transcoder does not guarantee that <code>key/value</code> pairs are returned in the same
    #               order in which you specify them.</p>
    #
    # @return [Types::CreateJobOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     pipeline_id: 'PipelineId', # required
    #     input: {
    #       key: 'Key',
    #       frame_rate: 'FrameRate',
    #       resolution: 'Resolution',
    #       aspect_ratio: 'AspectRatio',
    #       interlaced: 'Interlaced',
    #       container: 'Container',
    #       encryption: {
    #         mode: 'Mode',
    #         key: 'Key',
    #         key_md5: 'KeyMd5',
    #         initialization_vector: 'InitializationVector'
    #       },
    #       time_span: {
    #         start_time: 'StartTime',
    #         duration: 'Duration'
    #       },
    #       input_captions: {
    #         merge_policy: 'MergePolicy',
    #         caption_sources: [
    #           {
    #             key: 'Key',
    #             language: 'Language',
    #             time_offset: 'TimeOffset',
    #             label: 'Label',
    #           }
    #         ]
    #       },
    #       detected_properties: {
    #         width: 1,
    #         height: 1,
    #         frame_rate: 'FrameRate',
    #         file_size: 1,
    #         duration_millis: 1
    #       }
    #     },
    #     output: {
    #       key: 'Key',
    #       thumbnail_pattern: 'ThumbnailPattern',
    #       rotate: 'Rotate',
    #       preset_id: 'PresetId',
    #       segment_duration: 'SegmentDuration',
    #       watermarks: [
    #         {
    #           preset_watermark_id: 'PresetWatermarkId',
    #           input_key: 'InputKey',
    #         }
    #       ],
    #       album_art: {
    #         merge_policy: 'MergePolicy',
    #         artwork: [
    #           {
    #             input_key: 'InputKey',
    #             max_width: 'MaxWidth',
    #             max_height: 'MaxHeight',
    #             sizing_policy: 'SizingPolicy',
    #             padding_policy: 'PaddingPolicy',
    #             album_art_format: 'AlbumArtFormat',
    #           }
    #         ]
    #       },
    #       composition: [
    #         {
    #         }
    #       ],
    #       captions: {
    #         merge_policy: 'MergePolicy',
    #         caption_formats: [
    #           {
    #             format: 'Format',
    #             pattern: 'Pattern',
    #           }
    #         ]
    #       },
    #     },
    #     output_key_prefix: 'OutputKeyPrefix',
    #     playlists: [
    #       {
    #         name: 'Name',
    #         format: 'Format',
    #         output_keys: [
    #           'member'
    #         ],
    #         hls_content_protection: {
    #           member_method: 'Method',
    #           key: 'Key',
    #           key_md5: 'KeyMd5',
    #           initialization_vector: 'InitializationVector',
    #           license_acquisition_url: 'LicenseAcquisitionUrl',
    #           key_storage_policy: 'KeyStoragePolicy'
    #         },
    #         play_ready_drm: {
    #           format: 'Format',
    #           key: 'Key',
    #           key_md5: 'KeyMd5',
    #           key_id: 'KeyId',
    #           initialization_vector: 'InitializationVector',
    #           license_acquisition_url: 'LicenseAcquisitionUrl'
    #         }
    #       }
    #     ],
    #     user_metadata: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOperationOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.pipeline_id #=> String
    #   resp.data.job.input #=> Types::JobInput
    #   resp.data.job.input.key #=> String
    #   resp.data.job.input.frame_rate #=> String
    #   resp.data.job.input.resolution #=> String
    #   resp.data.job.input.aspect_ratio #=> String
    #   resp.data.job.input.interlaced #=> String
    #   resp.data.job.input.container #=> String
    #   resp.data.job.input.encryption #=> Types::Encryption
    #   resp.data.job.input.encryption.mode #=> String
    #   resp.data.job.input.encryption.key #=> String
    #   resp.data.job.input.encryption.key_md5 #=> String
    #   resp.data.job.input.encryption.initialization_vector #=> String
    #   resp.data.job.input.time_span #=> Types::TimeSpan
    #   resp.data.job.input.time_span.start_time #=> String
    #   resp.data.job.input.time_span.duration #=> String
    #   resp.data.job.input.input_captions #=> Types::InputCaptions
    #   resp.data.job.input.input_captions.merge_policy #=> String
    #   resp.data.job.input.input_captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.job.input.input_captions.caption_sources[0] #=> Types::CaptionSource
    #   resp.data.job.input.input_captions.caption_sources[0].key #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].language #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].label #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].encryption #=> Types::Encryption
    #   resp.data.job.input.detected_properties #=> Types::DetectedProperties
    #   resp.data.job.input.detected_properties.width #=> Integer
    #   resp.data.job.input.detected_properties.height #=> Integer
    #   resp.data.job.input.detected_properties.frame_rate #=> String
    #   resp.data.job.input.detected_properties.file_size #=> Integer
    #   resp.data.job.input.detected_properties.duration_millis #=> Integer
    #   resp.data.job.inputs #=> Array<JobInput>
    #   resp.data.job.output #=> Types::JobOutput
    #   resp.data.job.output.id #=> String
    #   resp.data.job.output.key #=> String
    #   resp.data.job.output.thumbnail_pattern #=> String
    #   resp.data.job.output.thumbnail_encryption #=> Types::Encryption
    #   resp.data.job.output.rotate #=> String
    #   resp.data.job.output.preset_id #=> String
    #   resp.data.job.output.segment_duration #=> String
    #   resp.data.job.output.status #=> String
    #   resp.data.job.output.status_detail #=> String
    #   resp.data.job.output.duration #=> Integer
    #   resp.data.job.output.width #=> Integer
    #   resp.data.job.output.height #=> Integer
    #   resp.data.job.output.frame_rate #=> String
    #   resp.data.job.output.file_size #=> Integer
    #   resp.data.job.output.duration_millis #=> Integer
    #   resp.data.job.output.watermarks #=> Array<JobWatermark>
    #   resp.data.job.output.watermarks[0] #=> Types::JobWatermark
    #   resp.data.job.output.watermarks[0].preset_watermark_id #=> String
    #   resp.data.job.output.watermarks[0].input_key #=> String
    #   resp.data.job.output.watermarks[0].encryption #=> Types::Encryption
    #   resp.data.job.output.album_art #=> Types::JobAlbumArt
    #   resp.data.job.output.album_art.merge_policy #=> String
    #   resp.data.job.output.album_art.artwork #=> Array<Artwork>
    #   resp.data.job.output.album_art.artwork[0] #=> Types::Artwork
    #   resp.data.job.output.album_art.artwork[0].input_key #=> String
    #   resp.data.job.output.album_art.artwork[0].max_width #=> String
    #   resp.data.job.output.album_art.artwork[0].max_height #=> String
    #   resp.data.job.output.album_art.artwork[0].sizing_policy #=> String
    #   resp.data.job.output.album_art.artwork[0].padding_policy #=> String
    #   resp.data.job.output.album_art.artwork[0].album_art_format #=> String
    #   resp.data.job.output.album_art.artwork[0].encryption #=> Types::Encryption
    #   resp.data.job.output.composition #=> Array<Clip>
    #   resp.data.job.output.composition[0] #=> Types::Clip
    #   resp.data.job.output.composition[0].time_span #=> Types::TimeSpan
    #   resp.data.job.output.captions #=> Types::Captions
    #   resp.data.job.output.captions.merge_policy #=> String
    #   resp.data.job.output.captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.job.output.captions.caption_formats #=> Array<CaptionFormat>
    #   resp.data.job.output.captions.caption_formats[0] #=> Types::CaptionFormat
    #   resp.data.job.output.captions.caption_formats[0].format #=> String
    #   resp.data.job.output.captions.caption_formats[0].pattern #=> String
    #   resp.data.job.output.captions.caption_formats[0].encryption #=> Types::Encryption
    #   resp.data.job.output.encryption #=> Types::Encryption
    #   resp.data.job.output.applied_color_space_conversion #=> String
    #   resp.data.job.outputs #=> Array<JobOutput>
    #   resp.data.job.output_key_prefix #=> String
    #   resp.data.job.playlists #=> Array<Playlist>
    #   resp.data.job.playlists[0] #=> Types::Playlist
    #   resp.data.job.playlists[0].name #=> String
    #   resp.data.job.playlists[0].format #=> String
    #   resp.data.job.playlists[0].output_keys #=> Array<String>
    #   resp.data.job.playlists[0].output_keys[0] #=> String
    #   resp.data.job.playlists[0].hls_content_protection #=> Types::HlsContentProtection
    #   resp.data.job.playlists[0].hls_content_protection.member_method #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key_md5 #=> String
    #   resp.data.job.playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.data.job.playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.data.job.playlists[0].play_ready_drm #=> Types::PlayReadyDrm
    #   resp.data.job.playlists[0].play_ready_drm.format #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key_md5 #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key_id #=> String
    #   resp.data.job.playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.data.job.playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.data.job.playlists[0].status #=> String
    #   resp.data.job.playlists[0].status_detail #=> String
    #   resp.data.job.status #=> String
    #   resp.data.job.user_metadata #=> Hash<String, String>
    #   resp.data.job.user_metadata['key'] #=> String
    #   resp.data.job.timing #=> Types::Timing
    #   resp.data.job.timing.submit_time_millis #=> Integer
    #   resp.data.job.timing.start_time_millis #=> Integer
    #   resp.data.job.timing.finish_time_millis #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOperationOutput
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

    # <p>The CreatePipeline operation creates a pipeline with settings that you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePipelineInput}.
    #
    # @option params [String] :name
    #   <p>The name of the pipeline. We recommend that the name be unique within the AWS account,
    #               but uniqueness is not enforced.</p>
    #           <p>Constraints: Maximum 40 characters.</p>
    #
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket in which you saved the media files that you want to transcode.</p>
    #
    # @option params [String] :output_bucket
    #   <p>The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. (Use
    #   		  this, or use ContentConfig:Bucket plus ThumbnailConfig:Bucket.)</p>
    #           <p>Specify this value when all of the following are true:</p>
    #   		       <ul>
    #               <li>
    #                  <p>You want to save transcoded files, thumbnails (if any), and playlists (if any)
    #                       together in one bucket.</p>
    #               </li>
    #               <li>
    #                  <p>You do not want to specify the users or groups who have access to the transcoded
    #                       files, thumbnails, and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>You do not want to specify the permissions that Elastic Transcoder grants to the
    #   				
    #                       files. </p>
    #   				           <important>
    #                     <p>When Elastic Transcoder saves files in
    #                               <code>OutputBucket</code>, it grants full control over the files only to
    #                           the AWS account that owns the role that is specified by
    #                           <code>Role</code>.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>You want to associate the transcoded files and thumbnails with the Amazon S3
    #                       Standard storage class.</p>
    #               </li>
    #            </ul>
    #
    #           <p>If you want to save transcoded files and playlists in one bucket and thumbnails in
    #               another bucket, specify which users can access the transcoded files or the permissions
    #               the users have, or change the Amazon S3 storage class, omit <code>OutputBucket</code>
    #               and specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>
    #               instead.</p>
    #
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to create the pipeline.</p>
    #
    # @option params [String] :aws_kms_key_arn
    #   <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p>
    #           <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your
    #               <code>Encryption:Mode</code>, you don't need to provide a key with
    #               your job because a default key, known as an AWS-KMS key, is created for you automatically.
    #               You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are
    #               using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>,
    #               or <code>aes-gcm</code>.</p>
    #
    # @option params [Notifications] :notifications
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #            </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process a job in this pipeline. This is the ARN that
    #                   Amazon SNS returned when you created the topic. For more information, see Create a
    #                   Topic in the Amazon Simple Notification Service Developer Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job in this pipeline. This is the ARN that Amazon SNS
    #                   returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition while processing a job in this pipeline. This is the
    #                   ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition while processing a job in this pipeline. This is the
    #                   ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineOutputConfig] :content_config
    #   <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3
    #               bucket in which you want Elastic Transcoder to save transcoded files and playlists:
    #               which bucket to use, which users you want to have access to the files, the type of
    #               access you want users to have, and the storage class that you want to assign to the
    #               files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code>.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   transcoded files and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The Permissions object specifies which users you want
    #                   to have access to transcoded files and the type of access you want them to have. You
    #                   can grant permissions to a maximum of 30 users and/or predefined Amazon S3
    #                   groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee Type</b>: Specify the type of value that appears in the
    #                       <code>Grantee</code> object: </p>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution. For more information about canonical user
    #                           IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage
    #                           Service Developer Guide. For more information about using CloudFront origin
    #                           access identities to require that users use CloudFront URLs instead of
    #                           Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to
    #                           Your Amazon S3 Content.</p>
    #   						               <important>
    #                           <p>A canonical user ID is not the same as an
    #                               AWS account number.</p>
    #                        </important>
    #                       </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to transcoded
    #                   files and playlists. To identify the user or group, you can specify the canonical
    #                   user ID for an AWS account, an origin access identity for a CloudFront distribution,
    #                   the registered email address of an AWS account, or a predefined Amazon S3 group </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the files that Elastic
    #                   Transcoder adds to the bucket, including playlists and video files. Valid values
    #                   include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the objects and metadata for objects
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the video files and playlists that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineOutputConfig] :thumbnail_config
    #   <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3
    #               bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have
    #               access to the files, the type of access you want users to have, and the storage class
    #               that you want to assign to the files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   thumbnail files.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which
    #                   users and/or predefined Amazon S3 groups you want to have access to thumbnail files,
    #                   and the type of access you want them to have. You can grant permissions to a maximum
    #                   of 30 users and/or predefined Amazon S3 groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>GranteeType</b>: Specify the type of value that appears in the Grantee object: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution.</p>
    #                        <important>
    #                           <p>A canonical user ID is not the
    #                               same as an AWS account number.</p>
    #                        </important>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail
    #                   files. To identify the user or group, you can specify the canonical user ID for an
    #                   AWS account, an origin access identity for a CloudFront distribution, the registered
    #                   email address of an AWS account, or a predefined Amazon S3 group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the thumbnail files
    #                   that Elastic Transcoder adds to the bucket. Valid values include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the thumbnails and metadata for
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the thumbnails that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline(
    #     name: 'Name', # required
    #     input_bucket: 'InputBucket', # required
    #     output_bucket: 'OutputBucket',
    #     role: 'Role', # required
    #     aws_kms_key_arn: 'AwsKmsKeyArn',
    #     notifications: {
    #       progressing: 'Progressing',
    #       completed: 'Completed',
    #       warning: 'Warning',
    #       error: 'Error'
    #     },
    #     content_config: {
    #       bucket: 'Bucket',
    #       storage_class: 'StorageClass',
    #       permissions: [
    #         {
    #           grantee_type: 'GranteeType',
    #           grantee: 'Grantee',
    #           access: [
    #             'member'
    #           ]
    #         }
    #       ]
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePipelineOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.id #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.status #=> String
    #   resp.data.pipeline.input_bucket #=> String
    #   resp.data.pipeline.output_bucket #=> String
    #   resp.data.pipeline.role #=> String
    #   resp.data.pipeline.aws_kms_key_arn #=> String
    #   resp.data.pipeline.notifications #=> Types::Notifications
    #   resp.data.pipeline.notifications.progressing #=> String
    #   resp.data.pipeline.notifications.completed #=> String
    #   resp.data.pipeline.notifications.warning #=> String
    #   resp.data.pipeline.notifications.error #=> String
    #   resp.data.pipeline.content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipeline.content_config.bucket #=> String
    #   resp.data.pipeline.content_config.storage_class #=> String
    #   resp.data.pipeline.content_config.permissions #=> Array<Permission>
    #   resp.data.pipeline.content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.data.pipeline.content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.data.pipeline.thumbnail_config #=> Types::PipelineOutputConfig
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].code #=> String
    #   resp.data.warnings[0].message #=> String
    #
    def create_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::CreatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePipeline,
        stubs: @stubs,
        params_class: Params::CreatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The CreatePreset operation creates a preset with settings that you specify.</p>
    #         <important>
    #             <p>Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements
    #             and to determine whether they comply with H.264 standards. If your settings are not
    #             valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (<code>ValidationException</code>) and
    #             does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly
    #             compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message
    #             in the response. This helps you determine whether your settings comply with the H.264
    #             standard while giving you greater flexibility with respect to the video that Elastic Transcoder
    #             produces.</p>
    #          </important>
    #         <p>Elastic Transcoder uses the H.264 video-compression format. For more information, see the International
    #             Telecommunication Union publication <i>Recommendation ITU-T H.264: Advanced video coding
    #                 for generic audiovisual services</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePresetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the preset. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p>
    #
    # @option params [String] :description
    #   <p>A description of the preset.</p>
    #
    # @option params [String] :container
    #   <p>The container type for the output file. Valid values include <code>flac</code>,
    #               <code>flv</code>, <code>fmp4</code>,
    #               <code>gif</code>, <code>mp3</code>,
    #               <code>mp4</code>, <code>mpg</code>, <code>mxf</code>, <code>oga</code>,
    #               <code>ogg</code>, <code>ts</code>, and <code>webm</code>.</p>
    #
    # @option params [VideoParameters] :video
    #   <p>A section of the request body that specifies the video parameters.</p>
    #
    # @option params [AudioParameters] :audio
    #   <p>A section of the request body that specifies the audio parameters.</p>
    #
    # @option params [Thumbnails] :thumbnails
    #   <p>A section of the request body that specifies the thumbnail parameters, if any.</p>
    #
    # @return [Types::CreatePresetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_preset(
    #     name: 'Name', # required
    #     description: 'Description',
    #     container: 'Container', # required
    #     video: {
    #       codec: 'Codec',
    #       codec_options: {
    #         'key' => 'value'
    #       },
    #       keyframes_max_dist: 'KeyframesMaxDist',
    #       fixed_gop: 'FixedGOP',
    #       bit_rate: 'BitRate',
    #       frame_rate: 'FrameRate',
    #       max_frame_rate: 'MaxFrameRate',
    #       resolution: 'Resolution',
    #       aspect_ratio: 'AspectRatio',
    #       max_width: 'MaxWidth',
    #       max_height: 'MaxHeight',
    #       display_aspect_ratio: 'DisplayAspectRatio',
    #       sizing_policy: 'SizingPolicy',
    #       padding_policy: 'PaddingPolicy',
    #       watermarks: [
    #         {
    #           id: 'Id',
    #           max_width: 'MaxWidth',
    #           max_height: 'MaxHeight',
    #           sizing_policy: 'SizingPolicy',
    #           horizontal_align: 'HorizontalAlign',
    #           horizontal_offset: 'HorizontalOffset',
    #           vertical_align: 'VerticalAlign',
    #           vertical_offset: 'VerticalOffset',
    #           opacity: 'Opacity',
    #           target: 'Target'
    #         }
    #       ]
    #     },
    #     audio: {
    #       codec: 'Codec',
    #       sample_rate: 'SampleRate',
    #       bit_rate: 'BitRate',
    #       channels: 'Channels',
    #       audio_packing_mode: 'AudioPackingMode',
    #       codec_options: {
    #         profile: 'Profile',
    #         bit_depth: 'BitDepth',
    #         bit_order: 'BitOrder',
    #         signed: 'Signed'
    #       }
    #     },
    #     thumbnails: {
    #       format: 'Format',
    #       interval: 'Interval',
    #       resolution: 'Resolution',
    #       aspect_ratio: 'AspectRatio',
    #       max_width: 'MaxWidth',
    #       max_height: 'MaxHeight',
    #       sizing_policy: 'SizingPolicy',
    #       padding_policy: 'PaddingPolicy'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePresetOutput
    #   resp.data.preset #=> Types::Preset
    #   resp.data.preset.id #=> String
    #   resp.data.preset.arn #=> String
    #   resp.data.preset.name #=> String
    #   resp.data.preset.description #=> String
    #   resp.data.preset.container #=> String
    #   resp.data.preset.audio #=> Types::AudioParameters
    #   resp.data.preset.audio.codec #=> String
    #   resp.data.preset.audio.sample_rate #=> String
    #   resp.data.preset.audio.bit_rate #=> String
    #   resp.data.preset.audio.channels #=> String
    #   resp.data.preset.audio.audio_packing_mode #=> String
    #   resp.data.preset.audio.codec_options #=> Types::AudioCodecOptions
    #   resp.data.preset.audio.codec_options.profile #=> String
    #   resp.data.preset.audio.codec_options.bit_depth #=> String
    #   resp.data.preset.audio.codec_options.bit_order #=> String
    #   resp.data.preset.audio.codec_options.signed #=> String
    #   resp.data.preset.video #=> Types::VideoParameters
    #   resp.data.preset.video.codec #=> String
    #   resp.data.preset.video.codec_options #=> Hash<String, String>
    #   resp.data.preset.video.codec_options['key'] #=> String
    #   resp.data.preset.video.keyframes_max_dist #=> String
    #   resp.data.preset.video.fixed_gop #=> String
    #   resp.data.preset.video.bit_rate #=> String
    #   resp.data.preset.video.frame_rate #=> String
    #   resp.data.preset.video.max_frame_rate #=> String
    #   resp.data.preset.video.resolution #=> String
    #   resp.data.preset.video.aspect_ratio #=> String
    #   resp.data.preset.video.max_width #=> String
    #   resp.data.preset.video.max_height #=> String
    #   resp.data.preset.video.display_aspect_ratio #=> String
    #   resp.data.preset.video.sizing_policy #=> String
    #   resp.data.preset.video.padding_policy #=> String
    #   resp.data.preset.video.watermarks #=> Array<PresetWatermark>
    #   resp.data.preset.video.watermarks[0] #=> Types::PresetWatermark
    #   resp.data.preset.video.watermarks[0].id #=> String
    #   resp.data.preset.video.watermarks[0].max_width #=> String
    #   resp.data.preset.video.watermarks[0].max_height #=> String
    #   resp.data.preset.video.watermarks[0].sizing_policy #=> String
    #   resp.data.preset.video.watermarks[0].horizontal_align #=> String
    #   resp.data.preset.video.watermarks[0].horizontal_offset #=> String
    #   resp.data.preset.video.watermarks[0].vertical_align #=> String
    #   resp.data.preset.video.watermarks[0].vertical_offset #=> String
    #   resp.data.preset.video.watermarks[0].opacity #=> String
    #   resp.data.preset.video.watermarks[0].target #=> String
    #   resp.data.preset.thumbnails #=> Types::Thumbnails
    #   resp.data.preset.thumbnails.format #=> String
    #   resp.data.preset.thumbnails.interval #=> String
    #   resp.data.preset.thumbnails.resolution #=> String
    #   resp.data.preset.thumbnails.aspect_ratio #=> String
    #   resp.data.preset.thumbnails.max_width #=> String
    #   resp.data.preset.thumbnails.max_height #=> String
    #   resp.data.preset.thumbnails.sizing_policy #=> String
    #   resp.data.preset.thumbnails.padding_policy #=> String
    #   resp.data.preset.type #=> String
    #   resp.data.warning #=> String
    #
    def create_preset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePresetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePresetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePreset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::CreatePreset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePreset,
        stubs: @stubs,
        params_class: Params::CreatePresetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_preset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The DeletePipeline operation removes a pipeline.</p>
    #         <p> You can only delete a pipeline that has never been used or that is not currently in use
    #             (doesn't contain any active jobs). If the pipeline is currently in use,
    #                 <code>DeletePipeline</code> returns an error. </p>
    #
    # @param [Hash] params
    #   See {Types::DeletePipelineInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the pipeline that you want to delete.</p>
    #
    # @return [Types::DeletePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePipelineOutput
    #
    def delete_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceInUseException, Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::DeletePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePipeline,
        stubs: @stubs,
        params_class: Params::DeletePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The DeletePreset operation removes a preset that you've added in an AWS region.</p>
    #         <note>
    #             <p>You can't delete the default presets that are included with Elastic Transcoder.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeletePresetInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the preset for which you want to get detailed information.</p>
    #
    # @return [Types::DeletePresetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_preset(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePresetOutput
    #
    def delete_preset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePresetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePresetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePreset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::DeletePreset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePreset,
        stubs: @stubs,
        params_class: Params::DeletePresetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_preset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.</p>
    #         <p>Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains
    #             one element for each job that satisfies the search criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsByPipelineInput}.
    #
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline for which you want to get job information.</p>
    #
    # @option params [String] :ascending
    #   <p> To list jobs in chronological order by the date and time that they were submitted, enter
    #                   <code>true</code>. To list jobs in reverse chronological order, enter
    #                   <code>false</code>. </p>
    #
    # @option params [String] :page_token
    #   <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    #
    # @return [Types::ListJobsByPipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs_by_pipeline(
    #     pipeline_id: 'PipelineId', # required
    #     ascending: 'Ascending',
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsByPipelineOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].id #=> String
    #   resp.data.jobs[0].arn #=> String
    #   resp.data.jobs[0].pipeline_id #=> String
    #   resp.data.jobs[0].input #=> Types::JobInput
    #   resp.data.jobs[0].input.key #=> String
    #   resp.data.jobs[0].input.frame_rate #=> String
    #   resp.data.jobs[0].input.resolution #=> String
    #   resp.data.jobs[0].input.aspect_ratio #=> String
    #   resp.data.jobs[0].input.interlaced #=> String
    #   resp.data.jobs[0].input.container #=> String
    #   resp.data.jobs[0].input.encryption #=> Types::Encryption
    #   resp.data.jobs[0].input.encryption.mode #=> String
    #   resp.data.jobs[0].input.encryption.key #=> String
    #   resp.data.jobs[0].input.encryption.key_md5 #=> String
    #   resp.data.jobs[0].input.encryption.initialization_vector #=> String
    #   resp.data.jobs[0].input.time_span #=> Types::TimeSpan
    #   resp.data.jobs[0].input.time_span.start_time #=> String
    #   resp.data.jobs[0].input.time_span.duration #=> String
    #   resp.data.jobs[0].input.input_captions #=> Types::InputCaptions
    #   resp.data.jobs[0].input.input_captions.merge_policy #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.jobs[0].input.input_captions.caption_sources[0] #=> Types::CaptionSource
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].key #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].language #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].label #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].input.detected_properties #=> Types::DetectedProperties
    #   resp.data.jobs[0].input.detected_properties.width #=> Integer
    #   resp.data.jobs[0].input.detected_properties.height #=> Integer
    #   resp.data.jobs[0].input.detected_properties.frame_rate #=> String
    #   resp.data.jobs[0].input.detected_properties.file_size #=> Integer
    #   resp.data.jobs[0].input.detected_properties.duration_millis #=> Integer
    #   resp.data.jobs[0].inputs #=> Array<JobInput>
    #   resp.data.jobs[0].output #=> Types::JobOutput
    #   resp.data.jobs[0].output.id #=> String
    #   resp.data.jobs[0].output.key #=> String
    #   resp.data.jobs[0].output.thumbnail_pattern #=> String
    #   resp.data.jobs[0].output.thumbnail_encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.rotate #=> String
    #   resp.data.jobs[0].output.preset_id #=> String
    #   resp.data.jobs[0].output.segment_duration #=> String
    #   resp.data.jobs[0].output.status #=> String
    #   resp.data.jobs[0].output.status_detail #=> String
    #   resp.data.jobs[0].output.duration #=> Integer
    #   resp.data.jobs[0].output.width #=> Integer
    #   resp.data.jobs[0].output.height #=> Integer
    #   resp.data.jobs[0].output.frame_rate #=> String
    #   resp.data.jobs[0].output.file_size #=> Integer
    #   resp.data.jobs[0].output.duration_millis #=> Integer
    #   resp.data.jobs[0].output.watermarks #=> Array<JobWatermark>
    #   resp.data.jobs[0].output.watermarks[0] #=> Types::JobWatermark
    #   resp.data.jobs[0].output.watermarks[0].preset_watermark_id #=> String
    #   resp.data.jobs[0].output.watermarks[0].input_key #=> String
    #   resp.data.jobs[0].output.watermarks[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.album_art #=> Types::JobAlbumArt
    #   resp.data.jobs[0].output.album_art.merge_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork #=> Array<Artwork>
    #   resp.data.jobs[0].output.album_art.artwork[0] #=> Types::Artwork
    #   resp.data.jobs[0].output.album_art.artwork[0].input_key #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].max_width #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].max_height #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].sizing_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].padding_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].album_art_format #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.composition #=> Array<Clip>
    #   resp.data.jobs[0].output.composition[0] #=> Types::Clip
    #   resp.data.jobs[0].output.composition[0].time_span #=> Types::TimeSpan
    #   resp.data.jobs[0].output.captions #=> Types::Captions
    #   resp.data.jobs[0].output.captions.merge_policy #=> String
    #   resp.data.jobs[0].output.captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.jobs[0].output.captions.caption_formats #=> Array<CaptionFormat>
    #   resp.data.jobs[0].output.captions.caption_formats[0] #=> Types::CaptionFormat
    #   resp.data.jobs[0].output.captions.caption_formats[0].format #=> String
    #   resp.data.jobs[0].output.captions.caption_formats[0].pattern #=> String
    #   resp.data.jobs[0].output.captions.caption_formats[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.applied_color_space_conversion #=> String
    #   resp.data.jobs[0].outputs #=> Array<JobOutput>
    #   resp.data.jobs[0].output_key_prefix #=> String
    #   resp.data.jobs[0].playlists #=> Array<Playlist>
    #   resp.data.jobs[0].playlists[0] #=> Types::Playlist
    #   resp.data.jobs[0].playlists[0].name #=> String
    #   resp.data.jobs[0].playlists[0].format #=> String
    #   resp.data.jobs[0].playlists[0].output_keys #=> Array<String>
    #   resp.data.jobs[0].playlists[0].output_keys[0] #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection #=> Types::HlsContentProtection
    #   resp.data.jobs[0].playlists[0].hls_content_protection.member_method #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key_md5 #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm #=> Types::PlayReadyDrm
    #   resp.data.jobs[0].playlists[0].play_ready_drm.format #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key_md5 #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key_id #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.data.jobs[0].playlists[0].status #=> String
    #   resp.data.jobs[0].playlists[0].status_detail #=> String
    #   resp.data.jobs[0].status #=> String
    #   resp.data.jobs[0].user_metadata #=> Hash<String, String>
    #   resp.data.jobs[0].user_metadata['key'] #=> String
    #   resp.data.jobs[0].timing #=> Types::Timing
    #   resp.data.jobs[0].timing.submit_time_millis #=> Integer
    #   resp.data.jobs[0].timing.start_time_millis #=> Integer
    #   resp.data.jobs[0].timing.finish_time_millis #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def list_jobs_by_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsByPipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsByPipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobsByPipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ListJobsByPipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobsByPipeline,
        stubs: @stubs,
        params_class: Params::ListJobsByPipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs_by_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ListJobsByStatus operation gets a list of jobs that have a specified status. The response
    #             body contains one element for each job that satisfies the search criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsByStatusInput}.
    #
    # @option params [String] :status
    #   <p>To get information about all of the jobs associated with the current AWS account that
    #               have a given status, specify the following status: <code>Submitted</code>,
    #                   <code>Progressing</code>, <code>Complete</code>, <code>Canceled</code>, or
    #                   <code>Error</code>.</p>
    #
    # @option params [String] :ascending
    #   <p> To list jobs in chronological order by the date and time that they were submitted, enter
    #                   <code>true</code>. To list jobs in reverse chronological order, enter
    #                   <code>false</code>. </p>
    #
    # @option params [String] :page_token
    #   <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    #
    # @return [Types::ListJobsByStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs_by_status(
    #     status: 'Status', # required
    #     ascending: 'Ascending',
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsByStatusOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].id #=> String
    #   resp.data.jobs[0].arn #=> String
    #   resp.data.jobs[0].pipeline_id #=> String
    #   resp.data.jobs[0].input #=> Types::JobInput
    #   resp.data.jobs[0].input.key #=> String
    #   resp.data.jobs[0].input.frame_rate #=> String
    #   resp.data.jobs[0].input.resolution #=> String
    #   resp.data.jobs[0].input.aspect_ratio #=> String
    #   resp.data.jobs[0].input.interlaced #=> String
    #   resp.data.jobs[0].input.container #=> String
    #   resp.data.jobs[0].input.encryption #=> Types::Encryption
    #   resp.data.jobs[0].input.encryption.mode #=> String
    #   resp.data.jobs[0].input.encryption.key #=> String
    #   resp.data.jobs[0].input.encryption.key_md5 #=> String
    #   resp.data.jobs[0].input.encryption.initialization_vector #=> String
    #   resp.data.jobs[0].input.time_span #=> Types::TimeSpan
    #   resp.data.jobs[0].input.time_span.start_time #=> String
    #   resp.data.jobs[0].input.time_span.duration #=> String
    #   resp.data.jobs[0].input.input_captions #=> Types::InputCaptions
    #   resp.data.jobs[0].input.input_captions.merge_policy #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.jobs[0].input.input_captions.caption_sources[0] #=> Types::CaptionSource
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].key #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].language #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].label #=> String
    #   resp.data.jobs[0].input.input_captions.caption_sources[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].input.detected_properties #=> Types::DetectedProperties
    #   resp.data.jobs[0].input.detected_properties.width #=> Integer
    #   resp.data.jobs[0].input.detected_properties.height #=> Integer
    #   resp.data.jobs[0].input.detected_properties.frame_rate #=> String
    #   resp.data.jobs[0].input.detected_properties.file_size #=> Integer
    #   resp.data.jobs[0].input.detected_properties.duration_millis #=> Integer
    #   resp.data.jobs[0].inputs #=> Array<JobInput>
    #   resp.data.jobs[0].output #=> Types::JobOutput
    #   resp.data.jobs[0].output.id #=> String
    #   resp.data.jobs[0].output.key #=> String
    #   resp.data.jobs[0].output.thumbnail_pattern #=> String
    #   resp.data.jobs[0].output.thumbnail_encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.rotate #=> String
    #   resp.data.jobs[0].output.preset_id #=> String
    #   resp.data.jobs[0].output.segment_duration #=> String
    #   resp.data.jobs[0].output.status #=> String
    #   resp.data.jobs[0].output.status_detail #=> String
    #   resp.data.jobs[0].output.duration #=> Integer
    #   resp.data.jobs[0].output.width #=> Integer
    #   resp.data.jobs[0].output.height #=> Integer
    #   resp.data.jobs[0].output.frame_rate #=> String
    #   resp.data.jobs[0].output.file_size #=> Integer
    #   resp.data.jobs[0].output.duration_millis #=> Integer
    #   resp.data.jobs[0].output.watermarks #=> Array<JobWatermark>
    #   resp.data.jobs[0].output.watermarks[0] #=> Types::JobWatermark
    #   resp.data.jobs[0].output.watermarks[0].preset_watermark_id #=> String
    #   resp.data.jobs[0].output.watermarks[0].input_key #=> String
    #   resp.data.jobs[0].output.watermarks[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.album_art #=> Types::JobAlbumArt
    #   resp.data.jobs[0].output.album_art.merge_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork #=> Array<Artwork>
    #   resp.data.jobs[0].output.album_art.artwork[0] #=> Types::Artwork
    #   resp.data.jobs[0].output.album_art.artwork[0].input_key #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].max_width #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].max_height #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].sizing_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].padding_policy #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].album_art_format #=> String
    #   resp.data.jobs[0].output.album_art.artwork[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.composition #=> Array<Clip>
    #   resp.data.jobs[0].output.composition[0] #=> Types::Clip
    #   resp.data.jobs[0].output.composition[0].time_span #=> Types::TimeSpan
    #   resp.data.jobs[0].output.captions #=> Types::Captions
    #   resp.data.jobs[0].output.captions.merge_policy #=> String
    #   resp.data.jobs[0].output.captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.jobs[0].output.captions.caption_formats #=> Array<CaptionFormat>
    #   resp.data.jobs[0].output.captions.caption_formats[0] #=> Types::CaptionFormat
    #   resp.data.jobs[0].output.captions.caption_formats[0].format #=> String
    #   resp.data.jobs[0].output.captions.caption_formats[0].pattern #=> String
    #   resp.data.jobs[0].output.captions.caption_formats[0].encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.encryption #=> Types::Encryption
    #   resp.data.jobs[0].output.applied_color_space_conversion #=> String
    #   resp.data.jobs[0].outputs #=> Array<JobOutput>
    #   resp.data.jobs[0].output_key_prefix #=> String
    #   resp.data.jobs[0].playlists #=> Array<Playlist>
    #   resp.data.jobs[0].playlists[0] #=> Types::Playlist
    #   resp.data.jobs[0].playlists[0].name #=> String
    #   resp.data.jobs[0].playlists[0].format #=> String
    #   resp.data.jobs[0].playlists[0].output_keys #=> Array<String>
    #   resp.data.jobs[0].playlists[0].output_keys[0] #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection #=> Types::HlsContentProtection
    #   resp.data.jobs[0].playlists[0].hls_content_protection.member_method #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key_md5 #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.data.jobs[0].playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm #=> Types::PlayReadyDrm
    #   resp.data.jobs[0].playlists[0].play_ready_drm.format #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key_md5 #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.key_id #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.data.jobs[0].playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.data.jobs[0].playlists[0].status #=> String
    #   resp.data.jobs[0].playlists[0].status_detail #=> String
    #   resp.data.jobs[0].status #=> String
    #   resp.data.jobs[0].user_metadata #=> Hash<String, String>
    #   resp.data.jobs[0].user_metadata['key'] #=> String
    #   resp.data.jobs[0].timing #=> Types::Timing
    #   resp.data.jobs[0].timing.submit_time_millis #=> Integer
    #   resp.data.jobs[0].timing.start_time_millis #=> Integer
    #   resp.data.jobs[0].timing.finish_time_millis #=> Integer
    #   resp.data.next_page_token #=> String
    #
    def list_jobs_by_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsByStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsByStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobsByStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ListJobsByStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobsByStatus,
        stubs: @stubs,
        params_class: Params::ListJobsByStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs_by_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ListPipelines operation gets a list of the pipelines associated with the current AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPipelinesInput}.
    #
    # @option params [String] :ascending
    #   <p>To list pipelines in chronological order by the date and time that they were created, enter
    #               <code>true</code>. To list pipelines in reverse chronological order, enter
    #               <code>false</code>.</p>
    #
    # @option params [String] :page_token
    #   <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    #
    # @return [Types::ListPipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines(
    #     ascending: 'Ascending',
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPipelinesOutput
    #   resp.data.pipelines #=> Array<Pipeline>
    #   resp.data.pipelines[0] #=> Types::Pipeline
    #   resp.data.pipelines[0].id #=> String
    #   resp.data.pipelines[0].arn #=> String
    #   resp.data.pipelines[0].name #=> String
    #   resp.data.pipelines[0].status #=> String
    #   resp.data.pipelines[0].input_bucket #=> String
    #   resp.data.pipelines[0].output_bucket #=> String
    #   resp.data.pipelines[0].role #=> String
    #   resp.data.pipelines[0].aws_kms_key_arn #=> String
    #   resp.data.pipelines[0].notifications #=> Types::Notifications
    #   resp.data.pipelines[0].notifications.progressing #=> String
    #   resp.data.pipelines[0].notifications.completed #=> String
    #   resp.data.pipelines[0].notifications.warning #=> String
    #   resp.data.pipelines[0].notifications.error #=> String
    #   resp.data.pipelines[0].content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipelines[0].content_config.bucket #=> String
    #   resp.data.pipelines[0].content_config.storage_class #=> String
    #   resp.data.pipelines[0].content_config.permissions #=> Array<Permission>
    #   resp.data.pipelines[0].content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipelines[0].content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipelines[0].content_config.permissions[0].grantee #=> String
    #   resp.data.pipelines[0].content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipelines[0].content_config.permissions[0].access[0] #=> String
    #   resp.data.pipelines[0].thumbnail_config #=> Types::PipelineOutputConfig
    #   resp.data.next_page_token #=> String
    #
    def list_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPipelinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPipelines
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ListPipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPipelines,
        stubs: @stubs,
        params_class: Params::ListPipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that
    #             you've added in an AWS region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPresetsInput}.
    #
    # @option params [String] :ascending
    #   <p>To list presets in chronological order by the date and time that they were created, enter
    #               <code>true</code>. To list presets in reverse chronological order, enter
    #               <code>false</code>.</p>
    #
    # @option params [String] :page_token
    #   <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    #
    # @return [Types::ListPresetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_presets(
    #     ascending: 'Ascending',
    #     page_token: 'PageToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPresetsOutput
    #   resp.data.presets #=> Array<Preset>
    #   resp.data.presets[0] #=> Types::Preset
    #   resp.data.presets[0].id #=> String
    #   resp.data.presets[0].arn #=> String
    #   resp.data.presets[0].name #=> String
    #   resp.data.presets[0].description #=> String
    #   resp.data.presets[0].container #=> String
    #   resp.data.presets[0].audio #=> Types::AudioParameters
    #   resp.data.presets[0].audio.codec #=> String
    #   resp.data.presets[0].audio.sample_rate #=> String
    #   resp.data.presets[0].audio.bit_rate #=> String
    #   resp.data.presets[0].audio.channels #=> String
    #   resp.data.presets[0].audio.audio_packing_mode #=> String
    #   resp.data.presets[0].audio.codec_options #=> Types::AudioCodecOptions
    #   resp.data.presets[0].audio.codec_options.profile #=> String
    #   resp.data.presets[0].audio.codec_options.bit_depth #=> String
    #   resp.data.presets[0].audio.codec_options.bit_order #=> String
    #   resp.data.presets[0].audio.codec_options.signed #=> String
    #   resp.data.presets[0].video #=> Types::VideoParameters
    #   resp.data.presets[0].video.codec #=> String
    #   resp.data.presets[0].video.codec_options #=> Hash<String, String>
    #   resp.data.presets[0].video.codec_options['key'] #=> String
    #   resp.data.presets[0].video.keyframes_max_dist #=> String
    #   resp.data.presets[0].video.fixed_gop #=> String
    #   resp.data.presets[0].video.bit_rate #=> String
    #   resp.data.presets[0].video.frame_rate #=> String
    #   resp.data.presets[0].video.max_frame_rate #=> String
    #   resp.data.presets[0].video.resolution #=> String
    #   resp.data.presets[0].video.aspect_ratio #=> String
    #   resp.data.presets[0].video.max_width #=> String
    #   resp.data.presets[0].video.max_height #=> String
    #   resp.data.presets[0].video.display_aspect_ratio #=> String
    #   resp.data.presets[0].video.sizing_policy #=> String
    #   resp.data.presets[0].video.padding_policy #=> String
    #   resp.data.presets[0].video.watermarks #=> Array<PresetWatermark>
    #   resp.data.presets[0].video.watermarks[0] #=> Types::PresetWatermark
    #   resp.data.presets[0].video.watermarks[0].id #=> String
    #   resp.data.presets[0].video.watermarks[0].max_width #=> String
    #   resp.data.presets[0].video.watermarks[0].max_height #=> String
    #   resp.data.presets[0].video.watermarks[0].sizing_policy #=> String
    #   resp.data.presets[0].video.watermarks[0].horizontal_align #=> String
    #   resp.data.presets[0].video.watermarks[0].horizontal_offset #=> String
    #   resp.data.presets[0].video.watermarks[0].vertical_align #=> String
    #   resp.data.presets[0].video.watermarks[0].vertical_offset #=> String
    #   resp.data.presets[0].video.watermarks[0].opacity #=> String
    #   resp.data.presets[0].video.watermarks[0].target #=> String
    #   resp.data.presets[0].thumbnails #=> Types::Thumbnails
    #   resp.data.presets[0].thumbnails.format #=> String
    #   resp.data.presets[0].thumbnails.interval #=> String
    #   resp.data.presets[0].thumbnails.resolution #=> String
    #   resp.data.presets[0].thumbnails.aspect_ratio #=> String
    #   resp.data.presets[0].thumbnails.max_width #=> String
    #   resp.data.presets[0].thumbnails.max_height #=> String
    #   resp.data.presets[0].thumbnails.sizing_policy #=> String
    #   resp.data.presets[0].thumbnails.padding_policy #=> String
    #   resp.data.presets[0].type #=> String
    #   resp.data.next_page_token #=> String
    #
    def list_presets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPresetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPresetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPresets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ListPresets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPresets,
        stubs: @stubs,
        params_class: Params::ListPresetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_presets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ReadJob operation returns detailed information about a job.</p>
    #
    # @param [Hash] params
    #   See {Types::ReadJobInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the job for which you want to get detailed information.</p>
    #
    # @return [Types::ReadJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_job(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReadJobOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.pipeline_id #=> String
    #   resp.data.job.input #=> Types::JobInput
    #   resp.data.job.input.key #=> String
    #   resp.data.job.input.frame_rate #=> String
    #   resp.data.job.input.resolution #=> String
    #   resp.data.job.input.aspect_ratio #=> String
    #   resp.data.job.input.interlaced #=> String
    #   resp.data.job.input.container #=> String
    #   resp.data.job.input.encryption #=> Types::Encryption
    #   resp.data.job.input.encryption.mode #=> String
    #   resp.data.job.input.encryption.key #=> String
    #   resp.data.job.input.encryption.key_md5 #=> String
    #   resp.data.job.input.encryption.initialization_vector #=> String
    #   resp.data.job.input.time_span #=> Types::TimeSpan
    #   resp.data.job.input.time_span.start_time #=> String
    #   resp.data.job.input.time_span.duration #=> String
    #   resp.data.job.input.input_captions #=> Types::InputCaptions
    #   resp.data.job.input.input_captions.merge_policy #=> String
    #   resp.data.job.input.input_captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.job.input.input_captions.caption_sources[0] #=> Types::CaptionSource
    #   resp.data.job.input.input_captions.caption_sources[0].key #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].language #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].label #=> String
    #   resp.data.job.input.input_captions.caption_sources[0].encryption #=> Types::Encryption
    #   resp.data.job.input.detected_properties #=> Types::DetectedProperties
    #   resp.data.job.input.detected_properties.width #=> Integer
    #   resp.data.job.input.detected_properties.height #=> Integer
    #   resp.data.job.input.detected_properties.frame_rate #=> String
    #   resp.data.job.input.detected_properties.file_size #=> Integer
    #   resp.data.job.input.detected_properties.duration_millis #=> Integer
    #   resp.data.job.inputs #=> Array<JobInput>
    #   resp.data.job.output #=> Types::JobOutput
    #   resp.data.job.output.id #=> String
    #   resp.data.job.output.key #=> String
    #   resp.data.job.output.thumbnail_pattern #=> String
    #   resp.data.job.output.thumbnail_encryption #=> Types::Encryption
    #   resp.data.job.output.rotate #=> String
    #   resp.data.job.output.preset_id #=> String
    #   resp.data.job.output.segment_duration #=> String
    #   resp.data.job.output.status #=> String
    #   resp.data.job.output.status_detail #=> String
    #   resp.data.job.output.duration #=> Integer
    #   resp.data.job.output.width #=> Integer
    #   resp.data.job.output.height #=> Integer
    #   resp.data.job.output.frame_rate #=> String
    #   resp.data.job.output.file_size #=> Integer
    #   resp.data.job.output.duration_millis #=> Integer
    #   resp.data.job.output.watermarks #=> Array<JobWatermark>
    #   resp.data.job.output.watermarks[0] #=> Types::JobWatermark
    #   resp.data.job.output.watermarks[0].preset_watermark_id #=> String
    #   resp.data.job.output.watermarks[0].input_key #=> String
    #   resp.data.job.output.watermarks[0].encryption #=> Types::Encryption
    #   resp.data.job.output.album_art #=> Types::JobAlbumArt
    #   resp.data.job.output.album_art.merge_policy #=> String
    #   resp.data.job.output.album_art.artwork #=> Array<Artwork>
    #   resp.data.job.output.album_art.artwork[0] #=> Types::Artwork
    #   resp.data.job.output.album_art.artwork[0].input_key #=> String
    #   resp.data.job.output.album_art.artwork[0].max_width #=> String
    #   resp.data.job.output.album_art.artwork[0].max_height #=> String
    #   resp.data.job.output.album_art.artwork[0].sizing_policy #=> String
    #   resp.data.job.output.album_art.artwork[0].padding_policy #=> String
    #   resp.data.job.output.album_art.artwork[0].album_art_format #=> String
    #   resp.data.job.output.album_art.artwork[0].encryption #=> Types::Encryption
    #   resp.data.job.output.composition #=> Array<Clip>
    #   resp.data.job.output.composition[0] #=> Types::Clip
    #   resp.data.job.output.composition[0].time_span #=> Types::TimeSpan
    #   resp.data.job.output.captions #=> Types::Captions
    #   resp.data.job.output.captions.merge_policy #=> String
    #   resp.data.job.output.captions.caption_sources #=> Array<CaptionSource>
    #   resp.data.job.output.captions.caption_formats #=> Array<CaptionFormat>
    #   resp.data.job.output.captions.caption_formats[0] #=> Types::CaptionFormat
    #   resp.data.job.output.captions.caption_formats[0].format #=> String
    #   resp.data.job.output.captions.caption_formats[0].pattern #=> String
    #   resp.data.job.output.captions.caption_formats[0].encryption #=> Types::Encryption
    #   resp.data.job.output.encryption #=> Types::Encryption
    #   resp.data.job.output.applied_color_space_conversion #=> String
    #   resp.data.job.outputs #=> Array<JobOutput>
    #   resp.data.job.output_key_prefix #=> String
    #   resp.data.job.playlists #=> Array<Playlist>
    #   resp.data.job.playlists[0] #=> Types::Playlist
    #   resp.data.job.playlists[0].name #=> String
    #   resp.data.job.playlists[0].format #=> String
    #   resp.data.job.playlists[0].output_keys #=> Array<String>
    #   resp.data.job.playlists[0].output_keys[0] #=> String
    #   resp.data.job.playlists[0].hls_content_protection #=> Types::HlsContentProtection
    #   resp.data.job.playlists[0].hls_content_protection.member_method #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key_md5 #=> String
    #   resp.data.job.playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.data.job.playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.data.job.playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.data.job.playlists[0].play_ready_drm #=> Types::PlayReadyDrm
    #   resp.data.job.playlists[0].play_ready_drm.format #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key_md5 #=> String
    #   resp.data.job.playlists[0].play_ready_drm.key_id #=> String
    #   resp.data.job.playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.data.job.playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.data.job.playlists[0].status #=> String
    #   resp.data.job.playlists[0].status_detail #=> String
    #   resp.data.job.status #=> String
    #   resp.data.job.user_metadata #=> Hash<String, String>
    #   resp.data.job.user_metadata['key'] #=> String
    #   resp.data.job.timing #=> Types::Timing
    #   resp.data.job.timing.submit_time_millis #=> Integer
    #   resp.data.job.timing.start_time_millis #=> Integer
    #   resp.data.job.timing.finish_time_millis #=> Integer
    #
    def read_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReadJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReadJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReadJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ReadJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReadJob,
        stubs: @stubs,
        params_class: Params::ReadJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :read_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ReadPipeline operation gets detailed information about a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::ReadPipelineInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the pipeline to read.</p>
    #
    # @return [Types::ReadPipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_pipeline(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReadPipelineOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.id #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.status #=> String
    #   resp.data.pipeline.input_bucket #=> String
    #   resp.data.pipeline.output_bucket #=> String
    #   resp.data.pipeline.role #=> String
    #   resp.data.pipeline.aws_kms_key_arn #=> String
    #   resp.data.pipeline.notifications #=> Types::Notifications
    #   resp.data.pipeline.notifications.progressing #=> String
    #   resp.data.pipeline.notifications.completed #=> String
    #   resp.data.pipeline.notifications.warning #=> String
    #   resp.data.pipeline.notifications.error #=> String
    #   resp.data.pipeline.content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipeline.content_config.bucket #=> String
    #   resp.data.pipeline.content_config.storage_class #=> String
    #   resp.data.pipeline.content_config.permissions #=> Array<Permission>
    #   resp.data.pipeline.content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.data.pipeline.content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.data.pipeline.thumbnail_config #=> Types::PipelineOutputConfig
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].code #=> String
    #   resp.data.warnings[0].message #=> String
    #
    def read_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReadPipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReadPipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReadPipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ReadPipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReadPipeline,
        stubs: @stubs,
        params_class: Params::ReadPipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :read_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The ReadPreset operation gets detailed information about a preset.</p>
    #
    # @param [Hash] params
    #   See {Types::ReadPresetInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the preset for which you want to get detailed information.</p>
    #
    # @return [Types::ReadPresetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_preset(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReadPresetOutput
    #   resp.data.preset #=> Types::Preset
    #   resp.data.preset.id #=> String
    #   resp.data.preset.arn #=> String
    #   resp.data.preset.name #=> String
    #   resp.data.preset.description #=> String
    #   resp.data.preset.container #=> String
    #   resp.data.preset.audio #=> Types::AudioParameters
    #   resp.data.preset.audio.codec #=> String
    #   resp.data.preset.audio.sample_rate #=> String
    #   resp.data.preset.audio.bit_rate #=> String
    #   resp.data.preset.audio.channels #=> String
    #   resp.data.preset.audio.audio_packing_mode #=> String
    #   resp.data.preset.audio.codec_options #=> Types::AudioCodecOptions
    #   resp.data.preset.audio.codec_options.profile #=> String
    #   resp.data.preset.audio.codec_options.bit_depth #=> String
    #   resp.data.preset.audio.codec_options.bit_order #=> String
    #   resp.data.preset.audio.codec_options.signed #=> String
    #   resp.data.preset.video #=> Types::VideoParameters
    #   resp.data.preset.video.codec #=> String
    #   resp.data.preset.video.codec_options #=> Hash<String, String>
    #   resp.data.preset.video.codec_options['key'] #=> String
    #   resp.data.preset.video.keyframes_max_dist #=> String
    #   resp.data.preset.video.fixed_gop #=> String
    #   resp.data.preset.video.bit_rate #=> String
    #   resp.data.preset.video.frame_rate #=> String
    #   resp.data.preset.video.max_frame_rate #=> String
    #   resp.data.preset.video.resolution #=> String
    #   resp.data.preset.video.aspect_ratio #=> String
    #   resp.data.preset.video.max_width #=> String
    #   resp.data.preset.video.max_height #=> String
    #   resp.data.preset.video.display_aspect_ratio #=> String
    #   resp.data.preset.video.sizing_policy #=> String
    #   resp.data.preset.video.padding_policy #=> String
    #   resp.data.preset.video.watermarks #=> Array<PresetWatermark>
    #   resp.data.preset.video.watermarks[0] #=> Types::PresetWatermark
    #   resp.data.preset.video.watermarks[0].id #=> String
    #   resp.data.preset.video.watermarks[0].max_width #=> String
    #   resp.data.preset.video.watermarks[0].max_height #=> String
    #   resp.data.preset.video.watermarks[0].sizing_policy #=> String
    #   resp.data.preset.video.watermarks[0].horizontal_align #=> String
    #   resp.data.preset.video.watermarks[0].horizontal_offset #=> String
    #   resp.data.preset.video.watermarks[0].vertical_align #=> String
    #   resp.data.preset.video.watermarks[0].vertical_offset #=> String
    #   resp.data.preset.video.watermarks[0].opacity #=> String
    #   resp.data.preset.video.watermarks[0].target #=> String
    #   resp.data.preset.thumbnails #=> Types::Thumbnails
    #   resp.data.preset.thumbnails.format #=> String
    #   resp.data.preset.thumbnails.interval #=> String
    #   resp.data.preset.thumbnails.resolution #=> String
    #   resp.data.preset.thumbnails.aspect_ratio #=> String
    #   resp.data.preset.thumbnails.max_width #=> String
    #   resp.data.preset.thumbnails.max_height #=> String
    #   resp.data.preset.thumbnails.sizing_policy #=> String
    #   resp.data.preset.thumbnails.padding_policy #=> String
    #   resp.data.preset.type #=> String
    #
    def read_preset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReadPresetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReadPresetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReadPreset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::ReadPreset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReadPreset,
        stubs: @stubs,
        params_class: Params::ReadPresetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :read_preset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The TestRole operation tests the IAM role used to create the pipeline.</p>
    #         <p>The <code>TestRole</code> action lets you determine whether the IAM role you are using
    #             has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding
    #             process. The action attempts to assume the specified IAM role, checks read access to the
    #             input and output buckets, and tries to send a test notification to Amazon SNS topics
    #             that you specify.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::TestRoleInput}.
    #
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to test.</p>
    #
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket that contains media files to be transcoded. The action attempts to read from this bucket.</p>
    #
    # @option params [String] :output_bucket
    #   <p>The Amazon S3 bucket that Elastic Transcoder writes transcoded media files to. The action attempts to read from this bucket.</p>
    #
    # @option params [Array<String>] :topics
    #   <p>The ARNs of one or more Amazon Simple Notification Service (Amazon SNS) topics that you want the action to send a test notification to.</p>
    #
    # @return [Types::TestRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_role(
    #     role: 'Role', # required
    #     input_bucket: 'InputBucket', # required
    #     output_bucket: 'OutputBucket', # required
    #     topics: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestRoleOutput
    #   resp.data.success #=> String
    #   resp.data.messages #=> Array<String>
    #   resp.data.messages[0] #=> String
    #
    def test_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::TestRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestRole,
        stubs: @stubs,
        params_class: Params::TestRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Use the <code>UpdatePipeline</code> operation to update settings for a pipeline.</p>
    #         <important>
    #             <p>When you change pipeline settings, your changes take effect immediately.
    #             Jobs that you have already submitted and that Elastic Transcoder has not started to process are
    #             affected in addition to jobs that you submit after you change settings. </p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdatePipelineInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the pipeline that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the pipeline. We recommend that the name be unique within the AWS account, but
    #               uniqueness is not enforced.</p>
    #           <p>Constraints: Maximum 40 characters</p>
    #
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics
    #               that you want to use as watermarks.</p>
    #
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for
    #               this pipeline.</p>
    #
    # @option params [String] :aws_kms_key_arn
    #   <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p>
    #           <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your <code>Encryption:Mode</code>,
    #           you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is
    #           created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default
    #           AWS-KMS key, or if you are using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>,
    #               or <code>aes-gcm</code>.</p>
    #
    # @option params [Notifications] :notifications
    #   <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #           </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This
    #                   is the ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when
    #                   you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineOutputConfig] :content_config
    #   <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3
    #               bucket in which you want Elastic Transcoder to save transcoded files and playlists:
    #               which bucket to use, which users you want to have access to the files, the type of
    #               access you want users to have, and the storage class that you want to assign to the
    #               files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code>.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   transcoded files and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The Permissions object specifies which users you want
    #                   to have access to transcoded files and the type of access you want them to have. You
    #                   can grant permissions to a maximum of 30 users and/or predefined Amazon S3
    #                   groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee Type</b>: Specify the type of value that appears in the
    #                       <code>Grantee</code> object:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution. For more information about canonical user
    #                           IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage
    #                           Service Developer Guide. For more information about using CloudFront origin
    #                           access identities to require that users use CloudFront URLs instead of
    #                           Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to
    #                           Your Amazon S3 Content.</p>
    #                        <important>
    #                           <p>A canonical user ID is not the same as an
    #                               AWS account number.</p>
    #                        </important>
    #                       </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to transcoded
    #                   files and playlists. To identify the user or group, you can specify the canonical
    #                   user ID for an AWS account, an origin access identity for a CloudFront distribution,
    #                   the registered email address of an AWS account, or a predefined Amazon S3 group </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the files that Elastic
    #                   Transcoder adds to the bucket, including playlists and video files. Valid values
    #                   include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the objects and metadata for objects
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the video files and playlists that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineOutputConfig] :thumbnail_config
    #   <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3
    #               bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have
    #               access to the files, the type of access you want users to have, and the storage class
    #               that you want to assign to the files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   thumbnail files.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which
    #                   users and/or predefined Amazon S3 groups you want to have access to thumbnail files,
    #                   and the type of access you want them to have. You can grant permissions to a maximum
    #                   of 30 users and/or predefined Amazon S3 groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>GranteeType</b>: Specify the type of value that appears in the Grantee object:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution.</p>
    #                        <important>
    #                           <p>A canonical user ID is not the
    #                               same as an AWS account number.</p>
    #                        </important>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail
    #                   files. To identify the user or group, you can specify the canonical user ID for an
    #                   AWS account, an origin access identity for a CloudFront distribution, the registered
    #                   email address of an AWS account, or a predefined Amazon S3 group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the thumbnail files
    #                   that Elastic Transcoder adds to the bucket. Valid values include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the thumbnails and metadata for
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           thumbnails that Elastic Transcoder adds to the Amazon S3 bucket. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the thumbnails that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline(
    #     id: 'Id', # required
    #     name: 'Name',
    #     input_bucket: 'InputBucket',
    #     role: 'Role',
    #     aws_kms_key_arn: 'AwsKmsKeyArn',
    #     notifications: {
    #       progressing: 'Progressing',
    #       completed: 'Completed',
    #       warning: 'Warning',
    #       error: 'Error'
    #     },
    #     content_config: {
    #       bucket: 'Bucket',
    #       storage_class: 'StorageClass',
    #       permissions: [
    #         {
    #           grantee_type: 'GranteeType',
    #           grantee: 'Grantee',
    #           access: [
    #             'member'
    #           ]
    #         }
    #       ]
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePipelineOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.id #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.status #=> String
    #   resp.data.pipeline.input_bucket #=> String
    #   resp.data.pipeline.output_bucket #=> String
    #   resp.data.pipeline.role #=> String
    #   resp.data.pipeline.aws_kms_key_arn #=> String
    #   resp.data.pipeline.notifications #=> Types::Notifications
    #   resp.data.pipeline.notifications.progressing #=> String
    #   resp.data.pipeline.notifications.completed #=> String
    #   resp.data.pipeline.notifications.warning #=> String
    #   resp.data.pipeline.notifications.error #=> String
    #   resp.data.pipeline.content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipeline.content_config.bucket #=> String
    #   resp.data.pipeline.content_config.storage_class #=> String
    #   resp.data.pipeline.content_config.permissions #=> Array<Permission>
    #   resp.data.pipeline.content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.data.pipeline.content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.data.pipeline.thumbnail_config #=> Types::PipelineOutputConfig
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].code #=> String
    #   resp.data.warnings[0].message #=> String
    #
    def update_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::UpdatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePipeline,
        stubs: @stubs,
        params_class: Params::UpdatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline.</p>
    #         <p>When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePipelineNotificationsInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the pipeline for which you want to change notification settings.</p>
    #
    # @option params [Notifications] :notifications
    #   <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #            </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This
    #                   is the ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when
    #                   you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdatePipelineNotificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline_notifications(
    #     id: 'Id', # required
    #     notifications: {
    #       progressing: 'Progressing',
    #       completed: 'Completed',
    #       warning: 'Warning',
    #       error: 'Error'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePipelineNotificationsOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.id #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.status #=> String
    #   resp.data.pipeline.input_bucket #=> String
    #   resp.data.pipeline.output_bucket #=> String
    #   resp.data.pipeline.role #=> String
    #   resp.data.pipeline.aws_kms_key_arn #=> String
    #   resp.data.pipeline.notifications #=> Types::Notifications
    #   resp.data.pipeline.notifications.progressing #=> String
    #   resp.data.pipeline.notifications.completed #=> String
    #   resp.data.pipeline.notifications.warning #=> String
    #   resp.data.pipeline.notifications.error #=> String
    #   resp.data.pipeline.content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipeline.content_config.bucket #=> String
    #   resp.data.pipeline.content_config.storage_class #=> String
    #   resp.data.pipeline.content_config.permissions #=> Array<Permission>
    #   resp.data.pipeline.content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.data.pipeline.content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.data.pipeline.thumbnail_config #=> Types::PipelineOutputConfig
    #
    def update_pipeline_notifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePipelineNotificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePipelineNotificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePipelineNotifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::UpdatePipelineNotifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePipelineNotifications,
        stubs: @stubs,
        params_class: Params::UpdatePipelineNotificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pipeline_notifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline
    #             stops or restarts the processing of jobs.</p>
    #         <p>Changing the pipeline status is useful if you want to cancel one or more jobs. You can't
    #             cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which
    #             you submitted the jobs, you have more time to get the job IDs for the jobs that you want
    #             to cancel, and to send a <a>CancelJob</a> request. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePipelineStatusInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the pipeline to update.</p>
    #
    # @option params [String] :status
    #   <p>The desired status of the pipeline:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code>: The pipeline is processing jobs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Paused</code>: The pipeline is not currently processing jobs.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdatePipelineStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline_status(
    #     id: 'Id', # required
    #     status: 'Status' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePipelineStatusOutput
    #   resp.data.pipeline #=> Types::Pipeline
    #   resp.data.pipeline.id #=> String
    #   resp.data.pipeline.arn #=> String
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.status #=> String
    #   resp.data.pipeline.input_bucket #=> String
    #   resp.data.pipeline.output_bucket #=> String
    #   resp.data.pipeline.role #=> String
    #   resp.data.pipeline.aws_kms_key_arn #=> String
    #   resp.data.pipeline.notifications #=> Types::Notifications
    #   resp.data.pipeline.notifications.progressing #=> String
    #   resp.data.pipeline.notifications.completed #=> String
    #   resp.data.pipeline.notifications.warning #=> String
    #   resp.data.pipeline.notifications.error #=> String
    #   resp.data.pipeline.content_config #=> Types::PipelineOutputConfig
    #   resp.data.pipeline.content_config.bucket #=> String
    #   resp.data.pipeline.content_config.storage_class #=> String
    #   resp.data.pipeline.content_config.permissions #=> Array<Permission>
    #   resp.data.pipeline.content_config.permissions[0] #=> Types::Permission
    #   resp.data.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.data.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.data.pipeline.content_config.permissions[0].access #=> Array<String>
    #   resp.data.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.data.pipeline.thumbnail_config #=> Types::PipelineOutputConfig
    #
    def update_pipeline_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePipelineStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePipelineStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePipelineStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::IncompatibleVersionException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServiceException]),
        data_parser: Parsers::UpdatePipelineStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePipelineStatus,
        stubs: @stubs,
        params_class: Params::UpdatePipelineStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pipeline_status
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
