# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Rekognition
  # An API client for RekognitionService
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the API Reference for <a href="https://docs.aws.amazon.com/rekognition/latest/dg/images.html">Amazon Rekognition Image</a>,
  #       <a href="https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/what-is.html">Amazon Rekognition Custom Labels</a>,
  #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/video.html">Amazon Rekognition Stored Video</a>,
  #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/streaming-video.html">Amazon Rekognition Streaming Video</a>.
  #       It provides descriptions of actions, data types, common parameters,
  #       and common errors.</p>
  #
  #          <p>
  #             <b>Amazon Rekognition Image</b>
  #          </p>
  #
  #
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CompareFaces.html">CompareFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateCollection.html">CreateCollection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteCollection.html">DeleteCollection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteFaces.html">DeleteFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeCollection.html">DescribeCollection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectFaces.html">DetectFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectLabels.html">DetectLabels</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectModerationLabels.html">DetectModerationLabels</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectProtectiveEquipment.html">DetectProtectiveEquipment</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectText.html">DetectText</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetCelebrityInfo.html">GetCelebrityInfo</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_IndexFaces.html">IndexFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListCollections.html">ListCollections</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListFaces.html">ListFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_RecognizeCelebrities.html">RecognizeCelebrities</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchFaces.html">SearchFaces</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_SearchFacesByImage.html">SearchFacesByImage</a>
  #                </p>
  #             </li>
  #          </ul>
  #
  #
  #          <p>
  #             <b>Amazon Rekognition Custom Labels</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateDataset.html">CreateDataset</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateProject.html">CreateProject</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateProjectVersion.html">CreateProjectVersion</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteDataset.html">DeleteDataset</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteProject.html">DeleteProject</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteProjectVersion.html">DeleteProjectVersion</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeDataset.html">DescribeDataset</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeProjects.html">DescribeProjects</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeProjectVersions.html">DescribeProjectVersions</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DetectCustomLabels.html">DetectCustomLabels</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DistributeDatasetEntries.html">DistributeDatasetEntries</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListDatasetEntries.html">ListDatasetEntries</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListDatasetLabels.html">ListDatasetLabels</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartProjectVersion.html">StartProjectVersion</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StopProjectVersion.html">StopProjectVersion</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_UpdateDatasetEntries.html">UpdateDatasetEntries</a>
  #                </p>
  #             </li>
  #          </ul>
  #
  #
  #          <p>
  #             <b>Amazon Rekognition Video Stored Video</b>
  #          </p>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetCelebrityRecognition.html">GetCelebrityRecognition</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetContentModeration.html">GetContentModeration</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetFaceDetection.html">GetFaceDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetFaceSearch.html">GetFaceSearch</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetLabelDetection.html">GetLabelDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetPersonTracking.html">GetPersonTracking</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetSegmentDetection.html">GetSegmentDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_GetTextDetection.html">GetTextDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartCelebrityRecognition.html">StartCelebrityRecognition</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartContentModeration.html">StartContentModeration</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartFaceDetection.html">StartFaceDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartFaceSearch.html">StartFaceSearch</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartLabelDetection.html">StartLabelDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartPersonTracking.html">StartPersonTracking</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartSegmentDetection.html">StartSegmentDetection</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartTextDetection.html">StartTextDetection</a>
  #                </p>
  #             </li>
  #          </ul>
  #
  #          <p>
  #             <b>Amazon Rekognition Video Streaming Video</b>
  #          </p>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateStreamProcessor.html">CreateStreamProcessor</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DeleteStreamProcessor.html">DeleteStreamProcessor</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_DescribeStreamProcessor.html">DescribeStreamProcessor</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_ListStreamProcessors.html">ListStreamProcessors</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StartStreamProcessor.html">StartStreamProcessor</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/rekognition/latest/APIReference/API_StopStreamProcessor.html">StopStreamProcessor</a>
  #                </p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Rekognition::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Compares a face in the <i>source</i> input image with
    #       each of the 100 largest faces detected in the <i>target</i> input image.
    #     </p>
    #
    #          <p> If the source image contains multiple faces, the service detects the largest face
    #         and compares it with each face detected in the target image. </p>
    #
    #
    #          <note>
    #             <p>CompareFaces uses machine learning algorithms, which are probabilistic.
    #       A false negative is an incorrect prediction that
    #       a face in the target image has a low similarity confidence score when compared to the face
    #       in the source image. To reduce the probability of false negatives,
    #       we recommend that you compare the target image against multiple source images.
    #       If you plan to use <code>CompareFaces</code> to make a decision that impacts an individual's rights,
    #       privacy, or access to services, we recommend that you pass the result to a human for review and further
    #       validation before taking action.</p>
    #          </note>
    #
    #
    #          <p>You pass the input and target images either as base64-encoded image bytes or as
    #       references to images in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes isn't
    #       supported. The image must be formatted as a PNG or JPEG file. </p>
    #          <p>In response, the operation returns an array of face matches ordered by similarity score
    #       in descending order. For each face match, the response provides a bounding box of the face,
    #       facial landmarks, pose details (pitch, roll, and yaw), quality (brightness and sharpness), and
    #       confidence value (indicating the level of confidence that the bounding box contains a face).
    #       The response also provides a similarity score, which indicates how closely the faces match. </p>
    #
    #          <note>
    #             <p>By default, only faces with a similarity score of greater than or equal to 80% are
    #         returned in the response. You can change this value by specifying the
    #           <code>SimilarityThreshold</code> parameter.</p>
    #          </note>
    #
    #          <p>
    #             <code>CompareFaces</code> also returns an array of faces that don't match the source image.
    #       For each face, it returns a bounding box, confidence value, landmarks, pose details, and quality.
    #     The response also returns information about the face in the source image, including the bounding box
    #       of the face and confidence value.</p>
    #
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a
    #       variety of common use cases.  Use <code>QualityFilter</code> to set the quality bar
    #       by specifying <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>.
    #       If you do not want to filter detected faces, specify <code>NONE</code>. The default value is <code>NONE</code>. </p>
    #
    #          <p>If the image doesn't contain Exif metadata, <code>CompareFaces</code> returns orientation information for the
    #         source and target images. Use these values to display the images with the correct image orientation.</p>
    #          <p>If no faces are detected in the source or target images, <code>CompareFaces</code> returns an
    #     <code>InvalidParameterException</code> error. </p>
    #
    #
    #          <note>
    #             <p> This is a stateless API operation. That is, data returned by this operation doesn't persist.</p>
    #          </note>
    #
    #
    #          <p>For an example, see Comparing Faces in Images in the Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:CompareFaces</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::CompareFacesInput}.
    #
    # @option params [Image] :source_image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Image] :target_image
    #   <p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
    #       </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Float] :similarity_threshold
    #   <p>The minimum level of confidence in the face matches that a match must meet to be
    #         included in the <code>FaceMatches</code> array.</p>
    #
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't compared. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality bar.
    #         If you specify <code>LOW</code>,
    #         <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
    #         don’t meet the chosen quality bar.
    #
    #         The quality bar is based on a variety of common use cases. Low-quality
    #         detections can occur for a number of reasons. Some examples are an object that's misidentified
    #         as a face, a face that's too blurry, or a face with a
    #         pose that's too extreme to use. If you specify <code>NONE</code>, no
    #         filtering is performed. The default value is <code>NONE</code>.
    #       </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>
    #
    # @return [Types::CompareFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.compare_faces(
    #     source_image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     similarity_threshold: 1.0,
    #     quality_filter: 'NONE' # accepts ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompareFacesOutput
    #   resp.data.source_image_face #=> Types::ComparedSourceImageFace
    #   resp.data.source_image_face.bounding_box #=> Types::BoundingBox
    #   resp.data.source_image_face.bounding_box.width #=> Float
    #   resp.data.source_image_face.bounding_box.height #=> Float
    #   resp.data.source_image_face.bounding_box.left #=> Float
    #   resp.data.source_image_face.bounding_box.top #=> Float
    #   resp.data.source_image_face.confidence #=> Float
    #   resp.data.face_matches #=> Array<CompareFacesMatch>
    #   resp.data.face_matches[0] #=> Types::CompareFacesMatch
    #   resp.data.face_matches[0].similarity #=> Float
    #   resp.data.face_matches[0].face #=> Types::ComparedFace
    #   resp.data.face_matches[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.face_matches[0].face.confidence #=> Float
    #   resp.data.face_matches[0].face.landmarks #=> Array<Landmark>
    #   resp.data.face_matches[0].face.landmarks[0] #=> Types::Landmark
    #   resp.data.face_matches[0].face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.face_matches[0].face.landmarks[0].x #=> Float
    #   resp.data.face_matches[0].face.landmarks[0].y #=> Float
    #   resp.data.face_matches[0].face.pose #=> Types::Pose
    #   resp.data.face_matches[0].face.pose.roll #=> Float
    #   resp.data.face_matches[0].face.pose.yaw #=> Float
    #   resp.data.face_matches[0].face.pose.pitch #=> Float
    #   resp.data.face_matches[0].face.quality #=> Types::ImageQuality
    #   resp.data.face_matches[0].face.quality.brightness #=> Float
    #   resp.data.face_matches[0].face.quality.sharpness #=> Float
    #   resp.data.face_matches[0].face.emotions #=> Array<Emotion>
    #   resp.data.face_matches[0].face.emotions[0] #=> Types::Emotion
    #   resp.data.face_matches[0].face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.face_matches[0].face.emotions[0].confidence #=> Float
    #   resp.data.face_matches[0].face.smile #=> Types::Smile
    #   resp.data.face_matches[0].face.smile.value #=> Boolean
    #   resp.data.face_matches[0].face.smile.confidence #=> Float
    #   resp.data.unmatched_faces #=> Array<ComparedFace>
    #   resp.data.source_image_orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   resp.data.target_image_orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    def compare_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompareFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompareFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompareFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::CompareFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompareFaces,
        stubs: @stubs,
        params_class: Params::CompareFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :compare_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a collection in an AWS Region. You can add faces to the collection using the
    #         <a>IndexFaces</a> operation. </p>
    #          <p>For example, you might create collections, one for each of your application users. A
    #       user can then index faces using the <code>IndexFaces</code> operation and persist results in a
    #       specific collection. Then, a user can search the collection for faces in the user-specific
    #       container. </p>
    #          <p>When you create a collection, it is associated with the latest version of the face model version.</p>
    #          <note>
    #             <p>Collection names are case-sensitive.</p>
    #          </note>
    #
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:CreateCollection</code> action. If you want to tag your collection, you also require permission to perform the <code>rekognition:TagResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCollectionInput}.
    #
    # @option params [String] :collection_id
    #   <p>ID for the collection that you are creating.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the collection.
    #       </p>
    #
    # @return [Types::CreateCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_collection(
    #     collection_id: 'CollectionId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCollectionOutput
    #   resp.data.status_code #=> Integer
    #   resp.data.collection_arn #=> String
    #   resp.data.face_model_version #=> String
    #
    def create_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceAlreadyExistsException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::CreateCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCollection,
        stubs: @stubs,
        params_class: Params::CreateCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Rekognition Custom Labels dataset. You can create a dataset by using
    #    an Amazon Sagemaker format manifest file or by copying an existing Amazon Rekognition Custom Labels dataset.</p>
    #
    #          <p>To create a training dataset for a project, specify <code>train</code> for the value of
    #       <code>DatasetType</code>. To create the test dataset for a project,
    #       specify <code>test</code> for the value of <code>DatasetType</code>.
    #     </p>
    #
    #
    #          <p>The response from <code>CreateDataset</code> is the Amazon Resource Name (ARN) for the dataset.
    #    Creating a dataset takes a while to complete. Use <a>DescribeDataset</a> to check the
    #    current status. The dataset created successfully if the value of <code>Status</code> is
    #    <code>CREATE_COMPLETE</code>. </p>
    #          <p>To check if any non-terminal errors occurred, call <a>ListDatasetEntries</a>
    # and check for the presence of <code>errors</code> lists in the JSON Lines.</p>
    #          <p>Dataset creation fails if a terminal error occurs (<code>Status</code> = <code>CREATE_FAILED</code>).
    #       Currently, you can't access the terminal error information.
    #
    #    </p>
    #
    #
    #          <p>For more information, see Creating dataset in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.</p>
    #
    #          <p>This operation requires permissions to perform the <code>rekognition:CreateDataset</code> action.
    #    If you want to copy an existing dataset, you also require permission to perform the <code>rekognition:ListDatasetEntries</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [DatasetSource] :dataset_source
    #   <p>
    #   The source files for the dataset. You can specify the ARN of an existing dataset or specify the Amazon S3 bucket location
    #   of an Amazon Sagemaker format manifest file. If you don't specify <code>datasetSource</code>, an empty dataset is created.
    #     To add labeled images to the dataset,  You can use the console or call <a>UpdateDatasetEntries</a>.
    #
    #   </p>
    #
    # @option params [String] :dataset_type
    #   <p>
    #   The type of the dataset. Specify <code>train</code> to create a training dataset. Specify <code>test</code>
    #      to create a test dataset.
    #   </p>
    #
    # @option params [String] :project_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels project to which you want to asssign the dataset.
    #   </p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: 'Bucket',
    #           name: 'Name',
    #           version: 'Version'
    #         }
    #       },
    #       dataset_arn: 'DatasetArn'
    #     },
    #     dataset_type: 'TRAIN', # required - accepts ["TRAIN", "TEST"]
    #     project_arn: 'ProjectArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.dataset_arn #=> String
    #
    def create_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ResourceAlreadyExistsException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::CreateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataset,
        stubs: @stubs,
        params_class: Params::CreateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Rekognition Custom Labels project. A project is a group of resources (datasets, model versions)
    #          that you use to create and manage Amazon Rekognition Custom Labels models.  </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:CreateProject</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project to create.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     project_name: 'ProjectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project_arn #=> String
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::CreateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProject,
        stubs: @stubs,
        params_class: Params::CreateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of a model and begins training.
    #          Models are managed as part of an Amazon Rekognition Custom Labels project.
    #          The response from <code>CreateProjectVersion</code>
    #          is an Amazon Resource Name (ARN) for the version of the model. </p>
    #
    #
    #          <p>Training uses the training and test datasets associated with the project.
    #          For more information, see Creating training and test dataset in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #       </p>
    #
    #
    #          <note>
    #             <p>You can train a model in a project that doesn't have associated datasets by specifying manifest files in the
    #          <code>TrainingData</code> and <code>TestingData</code> fields.
    #          </p>
    #             <p>If you open the console after training a model with manifest files, Amazon Rekognition Custom Labels creates
    #             the datasets for you using the most recent manifest files. You can no longer train
    #             a model version for the project by specifying manifest files. </p>
    #             <p>Instead of training with a project without associated datasets,
    #             we recommend that you use the manifest
    #             files to create training and test datasets for the project.</p>
    #          </note>
    #
    #
    #          <p>Training takes a while to complete. You can get the current status by calling
    #          <a>DescribeProjectVersions</a>. Training completed successfully if
    #          the value of the <code>Status</code> field is <code>TRAINING_COMPLETED</code>.</p>
    #
    #          <p>If training
    #          fails, see Debugging a failed model training in the <i>Amazon Rekognition Custom Labels</i> developer guide. </p>
    #
    #
    #          <p>Once training has successfully completed, call <a>DescribeProjectVersions</a> to
    #          get the training results and evaluate the model.  For more information, see Improving a trained Amazon Rekognition Custom Labels model
    #          in the <i>Amazon Rekognition Custom Labels</i> developers guide.
    #       </p>
    #
    #          <p>After evaluating the model, you start the model
    #        by calling <a>StartProjectVersion</a>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:CreateProjectVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectVersionInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the Amazon Rekognition Custom Labels project that
    #            manages the model that you want to train.</p>
    #
    # @option params [String] :version_name
    #   <p>A name for the version of the model. This value must be unique.</p>
    #
    # @option params [OutputConfig] :output_config
    #   <p>The Amazon S3 bucket location to store the results of training.
    #         The S3 bucket can be in any AWS account as long as the caller has
    #         <code>s3:PutObject</code> permissions on the S3 bucket.</p>
    #
    # @option params [TrainingData] :training_data
    #   <p>Specifies an external manifest that the services uses to train the model.
    #            If you specify <code>TrainingData</code> you must also specify <code>TestingData</code>.
    #            The project must not have any associated datasets.
    #         </p>
    #
    # @option params [TestingData] :testing_data
    #   <p>Specifies an external manifest that the service uses to test the model.
    #            If you specify <code>TestingData</code> you must also specify <code>TrainingData</code>.
    #            The project must not have any associated datasets.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the model.
    #       </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key).
    #            You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key,
    #            an alias for your KMS key, or an alias ARN.
    #            The key is used to encrypt training and test images copied into the service for model training.
    #            Your source images are unaffected. The key is also used to encrypt training results
    #            and manifest files written to the output Amazon S3 bucket (<code>OutputConfig</code>).</p>
    #            <p>If you choose to use your own KMS key, you need the following permissions on the KMS key.</p>
    #            <ul>
    #               <li>
    #                  <p>kms:CreateGrant</p>
    #               </li>
    #               <li>
    #                  <p>kms:DescribeKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:GenerateDataKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:Decrypt</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted
    #            using a key that AWS owns and manages.</p>
    #
    # @return [Types::CreateProjectVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project_version(
    #     project_arn: 'ProjectArn', # required
    #     version_name: 'VersionName', # required
    #     output_config: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key_prefix: 'S3KeyPrefix'
    #     }, # required
    #     training_data: {
    #       assets: [
    #         {
    #           ground_truth_manifest: {
    #             s3_object: {
    #               bucket: 'Bucket',
    #               name: 'Name',
    #               version: 'Version'
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     testing_data: {
    #       auto_create: false
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     kms_key_id: 'KmsKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectVersionOutput
    #   resp.data.project_version_arn #=> String
    #
    def create_project_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProjectVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::CreateProjectVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProjectVersion,
        stubs: @stubs,
        params_class: Params::CreateProjectVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces or to detect labels in a streaming video.</p>
    #         <p>Amazon Rekognition Video is a consumer of live video from Amazon Kinesis Video Streams. There are two different settings for stream processors in Amazon Rekognition: detecting faces and detecting labels.</p>
    #         <ul>
    #             <li>
    #                <p>If you are creating a stream processor for detecting faces, you provide as input a Kinesis video stream (<code>Input</code>) and a Kinesis data stream (<code>Output</code>) stream. You also specify the
    #                 face recognition criteria in <code>Settings</code>. For example, the collection containing faces that you want to recognize. After you have finished analyzing a streaming video, use <a>StopStreamProcessor</a> to
    #                 stop processing.</p>
    #             </li>
    #             <li>
    #                <p>If you are creating a stream processor to detect labels, you provide as input a Kinesis video stream (<code>Input</code>), Amazon S3 bucket information (<code>Output</code>), and an
    #                 Amazon SNS topic ARN (<code>NotificationChannel</code>). You can also provide a KMS key ID to encrypt the data sent to your Amazon S3 bucket.
    #                 You specify what you want to detect in <code>ConnectedHomeSettings</code>, such as people, packages and people, or pets, people, and packages. You can also specify where in the frame you want Amazon Rekognition to monitor with <code>RegionsOfInterest</code>.
    #                 When you run the <a>StartStreamProcessor</a> operation on a label detection stream processor, you input start and stop information to determine the length of the processing time.</p>
    #             </li>
    #          </ul>
    #
    #         <p>
    #             Use <code>Name</code> to assign an identifier for the stream processor. You use <code>Name</code>
    #             to manage the stream processor. For example, you can start processing the source video by calling <a>StartStreamProcessor</a> with
    #             the <code>Name</code> field. </p>
    #         <p>This operation requires permissions to perform the
    #             <code>rekognition:CreateStreamProcessor</code> action. If you want to tag your stream processor, you also require permission to perform the <code>rekognition:TagResource</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamProcessorInput}.
    #
    # @option params [StreamProcessorInput] :input
    #   <p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>. This is required for both face search and label detection stream processors.</p>
    #
    # @option params [StreamProcessorOutput] :output
    #   <p>Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>.
    #               This must be a <a>S3Destination</a> of an Amazon S3 bucket that you own for a label detection stream processor or a Kinesis data stream ARN for a face search stream processor.</p>
    #
    # @option params [String] :name
    #   <p>An identifier you assign to the stream processor. You can use <code>Name</code> to
    #               manage the stream processor. For example, you can get the current status of the stream processor by calling <a>DescribeStreamProcessor</a>.
    #               <code>Name</code> is idempotent. This is required for both face search and label detection stream processors.
    #          </p>
    #
    # @option params [StreamProcessorSettings] :settings
    #   <p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor.
    #               The IAM role provides Rekognition read permissions for a Kinesis stream.
    #               It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the stream processor.
    #       </p>
    #
    # @option params [StreamProcessorNotificationChannel] :notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the object detection results and completion status of a video analysis operation.</p>
    #           <p>Amazon Rekognition publishes a notification the first time an object of interest or a person is detected in the video stream. For example, if Amazon Rekognition
    #               detects a person at second 2, a pet at second 4, and a person again at second 5, Amazon Rekognition sends 2 object class detected notifications,
    #               one for a person at second 2 and one for a pet at second 4.</p>
    #           <p>Amazon Rekognition also publishes an an end-of-session notification with a summary when the stream processing session is complete.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>
    #               The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #               You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN.
    #               The key is used to encrypt results and data published to your Amazon S3 bucket, which includes  image frames and hero images. Your source images are unaffected.
    #           </p>
    #           <p>
    #               </p>
    #
    # @option params [Array<RegionOfInterest>] :regions_of_interest
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. You can specify up to 10 regions of interest. This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #           </p>
    #
    # @option params [StreamProcessorDataSharingPreference] :data_sharing_preference
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    #
    # @return [Types::CreateStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_processor(
    #     input: {
    #       kinesis_video_stream: {
    #         arn: 'Arn'
    #       }
    #     }, # required
    #     output: {
    #       kinesis_data_stream: {
    #         arn: 'Arn'
    #       },
    #       s3_destination: {
    #         bucket: 'Bucket',
    #         key_prefix: 'KeyPrefix'
    #       }
    #     }, # required
    #     name: 'Name', # required
    #     settings: {
    #       face_search: {
    #         collection_id: 'CollectionId',
    #         face_match_threshold: 1.0
    #       },
    #       connected_home: {
    #         labels: [
    #           'member'
    #         ], # required
    #         min_confidence: 1.0
    #       }
    #     }, # required
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn' # required
    #     },
    #     kms_key_id: 'KmsKeyId',
    #     regions_of_interest: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         polygon: [
    #           {
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_sharing_preference: {
    #       opt_in: false # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamProcessorOutput
    #   resp.data.stream_processor_arn #=> String
    #
    def create_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ServiceQuotaExceededException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::CreateStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamProcessor,
        stubs: @stubs,
        params_class: Params::CreateStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stream_processor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified collection. Note that this operation
    #       removes all faces in the collection. For an example, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/delete-collection-procedure.html">Deleting a collection</a>.</p>
    #
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:DeleteCollection</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCollectionInput}.
    #
    # @option params [String] :collection_id
    #   <p>ID of the collection to delete.</p>
    #
    # @return [Types::DeleteCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_collection(
    #     collection_id: 'CollectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCollectionOutput
    #   resp.data.status_code #=> Integer
    #
    def delete_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCollection,
        stubs: @stubs,
        params_class: Params::DeleteCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing Amazon Rekognition Custom Labels dataset.
    #    Deleting a dataset might take while. Use <a>DescribeDataset</a> to check the
    #    current status. The dataset is still deleting if the value of <code>Status</code> is
    #    <code>DELETE_IN_PROGRESS</code>. If you try to access the dataset after it is deleted, you get
    #    a <code>ResourceNotFoundException</code> exception.
    #
    # </p>
    #          <p>You can't delete a dataset while it is creating (<code>Status</code> =  <code>CREATE_IN_PROGRESS</code>)
    #       or if the dataset is updating (<code>Status</code> =  <code>UPDATE_IN_PROGRESS</code>).</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DeleteDataset</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels dataset that you want to delete.
    #   </p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     dataset_arn: 'DatasetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #
    def delete_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataset,
        stubs: @stubs,
        params_class: Params::DeleteDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes faces from a collection. You specify a collection ID and an array of face IDs
    #       to remove from the collection.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DeleteFaces</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFacesInput}.
    #
    # @option params [String] :collection_id
    #   <p>Collection from which to remove the specific faces.</p>
    #
    # @option params [Array<String>] :face_ids
    #   <p>An array of face IDs to delete.</p>
    #
    # @return [Types::DeleteFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_faces(
    #     collection_id: 'CollectionId', # required
    #     face_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFacesOutput
    #   resp.data.deleted_faces #=> Array<String>
    #   resp.data.deleted_faces[0] #=> String
    #
    def delete_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFaces,
        stubs: @stubs,
        params_class: Params::DeleteFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Rekognition Custom Labels project.  To delete a project you must first delete all models associated
    #          with the project. To delete a model, see <a>DeleteProjectVersion</a>.</p>
    #          <p>
    #             <code>DeleteProject</code> is an asynchronous operation. To check if the project is deleted,
    #       call <a>DescribeProjects</a>. The project is deleted when the project no longer appears in the
    #       response.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:DeleteProject</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that you want to delete.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project_arn: 'ProjectArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.status #=> String, one of ["CREATING", "CREATED", "DELETING"]
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProject,
        stubs: @stubs,
        params_class: Params::DeleteProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Rekognition Custom Labels model.  </p>
    #          <p>You can't delete a model if it is running or if it is training.
    #           To check the status of a model, use the <code>Status</code> field returned
    #          from <a>DescribeProjectVersions</a>.
    #          To stop a running model call <a>StopProjectVersion</a>. If the model
    #       is training, wait until it finishes.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:DeleteProjectVersion</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectVersionInput}.
    #
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>
    #
    # @return [Types::DeleteProjectVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project_version(
    #     project_version_arn: 'ProjectVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectVersionOutput
    #   resp.data.status #=> String, one of ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    def delete_project_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProjectVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteProjectVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProjectVersion,
        stubs: @stubs,
        params_class: Params::DeleteProjectVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the stream processor identified by <code>Name</code>. You assign the value for <code>Name</code> when you create the stream processor with
    #             <a>CreateStreamProcessor</a>. You might not be able to use the same name for a stream processor for a few seconds after calling <code>DeleteStreamProcessor</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamProcessorInput}.
    #
    # @option params [String] :name
    #   <p>The name of the stream processor you want to delete.</p>
    #
    # @return [Types::DeleteStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream_processor(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamProcessorOutput
    #
    def delete_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStreamProcessor,
        stubs: @stubs,
        params_class: Params::DeleteStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stream_processor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified collection. You can use <code>DescribeCollection</code> to get
    #          information, such as the number of faces indexed into a collection and the version of the
    #          model used by the collection for face detection.</p>
    #
    #          <p>For more information, see Describing a Collection in the
    #      Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCollectionInput}.
    #
    # @option params [String] :collection_id
    #   <p>The ID of the collection to describe.</p>
    #
    # @return [Types::DescribeCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_collection(
    #     collection_id: 'CollectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCollectionOutput
    #   resp.data.face_count #=> Integer
    #   resp.data.face_model_version #=> String
    #   resp.data.collection_arn #=> String
    #   resp.data.creation_timestamp #=> Time
    #
    def describe_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCollection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCollection,
        stubs: @stubs,
        params_class: Params::DescribeCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Describes an Amazon Rekognition Custom Labels dataset. You can get information such as the current status of a dataset and
    # statistics about the images and labels in a dataset.
    # </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeDataset</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to describe.
    #   </p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     dataset_arn: 'DatasetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.dataset_description #=> Types::DatasetDescription
    #   resp.data.dataset_description.creation_timestamp #=> Time
    #   resp.data.dataset_description.last_updated_timestamp #=> Time
    #   resp.data.dataset_description.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"]
    #   resp.data.dataset_description.status_message #=> String
    #   resp.data.dataset_description.status_message_code #=> String, one of ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"]
    #   resp.data.dataset_description.dataset_stats #=> Types::DatasetStats
    #   resp.data.dataset_description.dataset_stats.labeled_entries #=> Integer
    #   resp.data.dataset_description.dataset_stats.total_entries #=> Integer
    #   resp.data.dataset_description.dataset_stats.total_labels #=> Integer
    #   resp.data.dataset_description.dataset_stats.error_entries #=> Integer
    #
    def describe_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataset,
        stubs: @stubs,
        params_class: Params::DescribeDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists and describes the versions of a model in an Amazon Rekognition Custom Labels project. You
    #          can specify up to 10 model versions in <code>ProjectVersionArns</code>. If
    #          you don't specify a value, descriptions for all model versions in the project are returned.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeProjectVersions</code>
    #             action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectVersionsInput}.
    #
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that contains the models you want to describe.</p>
    #
    # @option params [Array<String>] :version_names
    #   <p>A list of model version names that you want to describe. You can add up to 10 model version names
    #            to the list. If you don't specify a value, all model descriptions are returned.  A version name is part of a
    #            model (ProjectVersion) ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is the version name in the following ARN.
    #                  <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #              results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response.
    #              You can use this pagination token to retrieve the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call.
    #             The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException
    #             error occurs. The default value is 100. </p>
    #
    # @return [Types::DescribeProjectVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project_versions(
    #     project_arn: 'ProjectArn', # required
    #     version_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectVersionsOutput
    #   resp.data.project_version_descriptions #=> Array<ProjectVersionDescription>
    #   resp.data.project_version_descriptions[0] #=> Types::ProjectVersionDescription
    #   resp.data.project_version_descriptions[0].project_version_arn #=> String
    #   resp.data.project_version_descriptions[0].creation_timestamp #=> Time
    #   resp.data.project_version_descriptions[0].min_inference_units #=> Integer
    #   resp.data.project_version_descriptions[0].status #=> String, one of ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #   resp.data.project_version_descriptions[0].status_message #=> String
    #   resp.data.project_version_descriptions[0].billable_training_time_in_seconds #=> Integer
    #   resp.data.project_version_descriptions[0].training_end_timestamp #=> Time
    #   resp.data.project_version_descriptions[0].output_config #=> Types::OutputConfig
    #   resp.data.project_version_descriptions[0].output_config.s3_bucket #=> String
    #   resp.data.project_version_descriptions[0].output_config.s3_key_prefix #=> String
    #   resp.data.project_version_descriptions[0].training_data_result #=> Types::TrainingDataResult
    #   resp.data.project_version_descriptions[0].training_data_result.input #=> Types::TrainingData
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets #=> Array<Asset>
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0] #=> Types::Asset
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest #=> Types::GroundTruthManifest
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object #=> Types::S3Object
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.data.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.data.project_version_descriptions[0].training_data_result.output #=> Types::TrainingData
    #   resp.data.project_version_descriptions[0].training_data_result.validation #=> Types::ValidationData
    #   resp.data.project_version_descriptions[0].training_data_result.validation.assets #=> Array<Asset>
    #   resp.data.project_version_descriptions[0].testing_data_result #=> Types::TestingDataResult
    #   resp.data.project_version_descriptions[0].testing_data_result.input #=> Types::TestingData
    #   resp.data.project_version_descriptions[0].testing_data_result.input.assets #=> Array<Asset>
    #   resp.data.project_version_descriptions[0].testing_data_result.input.auto_create #=> Boolean
    #   resp.data.project_version_descriptions[0].testing_data_result.output #=> Types::TestingData
    #   resp.data.project_version_descriptions[0].testing_data_result.validation #=> Types::ValidationData
    #   resp.data.project_version_descriptions[0].evaluation_result #=> Types::EvaluationResult
    #   resp.data.project_version_descriptions[0].evaluation_result.f1_score #=> Float
    #   resp.data.project_version_descriptions[0].evaluation_result.summary #=> Types::Summary
    #   resp.data.project_version_descriptions[0].evaluation_result.summary.s3_object #=> Types::S3Object
    #   resp.data.project_version_descriptions[0].manifest_summary #=> Types::GroundTruthManifest
    #   resp.data.project_version_descriptions[0].kms_key_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_project_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProjectVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeProjectVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProjectVersions,
        stubs: @stubs,
        params_class: Params::DescribeProjectVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about your Amazon Rekognition Custom Labels projects. </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeProjects</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #            results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #            token to retrieve the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100. </p>
    #
    # @option params [Array<String>] :project_names
    #   <p>A list of the projects that you want Amazon Rekognition Custom Labels to describe. If you don't specify a value,
    #         the response includes descriptions for all the projects in your AWS account.</p>
    #
    # @return [Types::DescribeProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_projects(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     project_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectsOutput
    #   resp.data.project_descriptions #=> Array<ProjectDescription>
    #   resp.data.project_descriptions[0] #=> Types::ProjectDescription
    #   resp.data.project_descriptions[0].project_arn #=> String
    #   resp.data.project_descriptions[0].creation_timestamp #=> Time
    #   resp.data.project_descriptions[0].status #=> String, one of ["CREATING", "CREATED", "DELETING"]
    #   resp.data.project_descriptions[0].datasets #=> Array<DatasetMetadata>
    #   resp.data.project_descriptions[0].datasets[0] #=> Types::DatasetMetadata
    #   resp.data.project_descriptions[0].datasets[0].creation_timestamp #=> Time
    #   resp.data.project_descriptions[0].datasets[0].dataset_type #=> String, one of ["TRAIN", "TEST"]
    #   resp.data.project_descriptions[0].datasets[0].dataset_arn #=> String
    #   resp.data.project_descriptions[0].datasets[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"]
    #   resp.data.project_descriptions[0].datasets[0].status_message #=> String
    #   resp.data.project_descriptions[0].datasets[0].status_message_code #=> String, one of ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"]
    #   resp.data.next_token #=> String
    #
    def describe_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProjects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProjects,
        stubs: @stubs,
        params_class: Params::DescribeProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about a stream processor created by <a>CreateStreamProcessor</a>. You can get information about the input and output streams, the input parameters for the face recognition being performed,
    #             and the current status of the stream processor.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamProcessorInput}.
    #
    # @option params [String] :name
    #   <p>Name of the stream processor for which you want information.</p>
    #
    # @return [Types::DescribeStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream_processor(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamProcessorOutput
    #   resp.data.name #=> String
    #   resp.data.stream_processor_arn #=> String
    #   resp.data.status #=> String, one of ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"]
    #   resp.data.status_message #=> String
    #   resp.data.creation_timestamp #=> Time
    #   resp.data.last_update_timestamp #=> Time
    #   resp.data.input #=> Types::StreamProcessorInput
    #   resp.data.input.kinesis_video_stream #=> Types::KinesisVideoStream
    #   resp.data.input.kinesis_video_stream.arn #=> String
    #   resp.data.output #=> Types::StreamProcessorOutput
    #   resp.data.output.kinesis_data_stream #=> Types::KinesisDataStream
    #   resp.data.output.kinesis_data_stream.arn #=> String
    #   resp.data.output.s3_destination #=> Types::S3Destination
    #   resp.data.output.s3_destination.bucket #=> String
    #   resp.data.output.s3_destination.key_prefix #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.settings #=> Types::StreamProcessorSettings
    #   resp.data.settings.face_search #=> Types::FaceSearchSettings
    #   resp.data.settings.face_search.collection_id #=> String
    #   resp.data.settings.face_search.face_match_threshold #=> Float
    #   resp.data.settings.connected_home #=> Types::ConnectedHomeSettings
    #   resp.data.settings.connected_home.labels #=> Array<String>
    #   resp.data.settings.connected_home.labels[0] #=> String
    #   resp.data.settings.connected_home.min_confidence #=> Float
    #   resp.data.notification_channel #=> Types::StreamProcessorNotificationChannel
    #   resp.data.notification_channel.sns_topic_arn #=> String
    #   resp.data.kms_key_id #=> String
    #   resp.data.regions_of_interest #=> Array<RegionOfInterest>
    #   resp.data.regions_of_interest[0] #=> Types::RegionOfInterest
    #   resp.data.regions_of_interest[0].bounding_box #=> Types::BoundingBox
    #   resp.data.regions_of_interest[0].bounding_box.width #=> Float
    #   resp.data.regions_of_interest[0].bounding_box.height #=> Float
    #   resp.data.regions_of_interest[0].bounding_box.left #=> Float
    #   resp.data.regions_of_interest[0].bounding_box.top #=> Float
    #   resp.data.regions_of_interest[0].polygon #=> Array<Point>
    #   resp.data.regions_of_interest[0].polygon[0] #=> Types::Point
    #   resp.data.regions_of_interest[0].polygon[0].x #=> Float
    #   resp.data.regions_of_interest[0].polygon[0].y #=> Float
    #   resp.data.data_sharing_preference #=> Types::StreamProcessorDataSharingPreference
    #   resp.data.data_sharing_preference.opt_in #=> Boolean
    #
    def describe_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStreamProcessor,
        stubs: @stubs,
        params_class: Params::DescribeStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream_processor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects custom labels in a supplied image by using an Amazon Rekognition Custom Labels model. </p>
    #          <p>You specify which version of a model version to use by using the <code>ProjectVersionArn</code> input
    #       parameter. </p>
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in
    #          an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing
    #          image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p> For each object that the model version detects on an image, the API returns a
    #          (<code>CustomLabel</code>) object in an array (<code>CustomLabels</code>).
    #          Each <code>CustomLabel</code> object provides the label name (<code>Name</code>), the level
    #          of confidence that the image contains the object (<code>Confidence</code>), and
    #          object location information, if it exists,  for the label on the image (<code>Geometry</code>). </p>
    #
    #
    #
    #
    #
    #
    #
    #
    #
    #
    #          <p>To filter labels that are returned, specify a value for <code>MinConfidence</code>.
    #          <code>DetectCustomLabelsLabels</code> only returns labels with a confidence that's higher than
    #          the specified value.
    #
    #          The value of <code>MinConfidence</code> maps to the assumed threshold values
    #          created during training. For more information, see <i>Assumed threshold</i>
    #          in the Amazon Rekognition Custom Labels Developer Guide.
    #          Amazon Rekognition Custom Labels metrics expresses an assumed threshold as a floating point value between 0-1. The range of
    #          <code>MinConfidence</code> normalizes the threshold value to a percentage value (0-100). Confidence
    #          responses from <code>DetectCustomLabels</code> are also returned as a percentage.
    #          You can use <code>MinConfidence</code> to change the precision and recall or your model.
    #          For more information, see
    #          <i>Analyzing an image</i> in the Amazon Rekognition Custom Labels Developer Guide. </p>
    #
    #          <p>If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>
    #       returns labels based on the assumed threshold of each label.</p>
    #
    #
    #
    #
    #
    #          <p>This is a stateless API operation. That is, the operation does not persist any
    #          data.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:DetectCustomLabels</code> action. </p>
    #
    #
    #
    #          <p>For more information, see
    #       <i>Analyzing an image</i> in the Amazon Rekognition Custom Labels Developer Guide. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectCustomLabelsInput}.
    #
    # @option params [String] :project_version_arn
    #   <p>The ARN of the model version that you want to use.</p>
    #
    # @option params [Image] :image
    #   <p>Provides the input image either as bytes or an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code>
    #         property. For example, you would use the <code>Bytes</code> property to pass an image loaded
    #         from a local file system. Image bytes passed by using the <code>Bytes</code> property must be
    #         base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to
    #         call Amazon Rekognition API operations. </p>
    #
    #            <p>For more information, see Analyzing an Image Loaded from a Local File System
    #         in the Amazon Rekognition Developer Guide.</p>
    #            <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the
    #           <code>S3Object</code> property. Images stored in an S3 bucket do not need to be
    #         base64-encoded.</p>
    #            <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #         Amazon Rekognition operations.</p>
    #            <p>If you use the
    #         AWS
    #         CLI to call Amazon Rekognition operations, passing image bytes using the Bytes
    #         property is not supported. You must first upload the image to an Amazon S3 bucket and then
    #         call the operation using the S3Object property.</p>
    #
    #            <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3
    #         object. For more information, see How Amazon Rekognition works with IAM in the Amazon Rekognition Developer Guide.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results you want the service to return in the response.
    #            The service returns the specified number of highest confidence labels ranked from highest confidence
    #         to lowest.</p>
    #
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return.
    #            <code>DetectCustomLabels</code> doesn't return any labels with a confidence value that's lower than
    #            this specified value. If you specify a
    #         value of 0, <code>DetectCustomLabels</code> returns all labels, regardless of the assumed
    #            threshold applied to each label.
    #         If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>
    #            returns labels based on the assumed threshold of each label.</p>
    #
    # @return [Types::DetectCustomLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_custom_labels(
    #     project_version_arn: 'ProjectVersionArn', # required
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     max_results: 1,
    #     min_confidence: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectCustomLabelsOutput
    #   resp.data.custom_labels #=> Array<CustomLabel>
    #   resp.data.custom_labels[0] #=> Types::CustomLabel
    #   resp.data.custom_labels[0].name #=> String
    #   resp.data.custom_labels[0].confidence #=> Float
    #   resp.data.custom_labels[0].geometry #=> Types::Geometry
    #   resp.data.custom_labels[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.custom_labels[0].geometry.bounding_box.width #=> Float
    #   resp.data.custom_labels[0].geometry.bounding_box.height #=> Float
    #   resp.data.custom_labels[0].geometry.bounding_box.left #=> Float
    #   resp.data.custom_labels[0].geometry.bounding_box.top #=> Float
    #   resp.data.custom_labels[0].geometry.polygon #=> Array<Point>
    #   resp.data.custom_labels[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.custom_labels[0].geometry.polygon[0].x #=> Float
    #   resp.data.custom_labels[0].geometry.polygon[0].y #=> Float
    #
    def detect_custom_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectCustomLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectCustomLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectCustomLabels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotReadyException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::DetectCustomLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectCustomLabels,
        stubs: @stubs,
        params_class: Params::DetectCustomLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_custom_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects faces within an image that is provided as input.</p>
    #
    #          <p>
    #             <code>DetectFaces</code> detects the 100 largest faces in the image. For each face
    #       detected, the operation returns face details. These details include a bounding box of the
    #       face, a confidence value (that the bounding box contains a face), and a fixed set of
    #       attributes such as facial landmarks (for example, coordinates of eye and mouth),
    #       presence of beard, sunglasses, and so on. </p>
    #          <p>The face-detection algorithm is most effective on frontal faces. For non-frontal or
    #       obscured faces, the algorithm might not detect the faces or might detect faces with lower
    #       confidence. </p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the AWS CLI
    #        to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #
    #          <note>
    #             <p>This is a stateless API operation. That is, the operation does not persist any
    #         data.</p>
    #          </note>
    #
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:DetectFaces</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectFacesInput}.
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Array<String>] :attributes
    #   <p>An array of facial attributes you want to be returned. This can be the default list of
    #         attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if
    #         you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial
    #         attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all
    #         facial attributes are returned, but the operation takes longer to complete.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    #
    # @return [Types::DetectFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_faces(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     attributes: [
    #       'DEFAULT' # accepts ["DEFAULT", "ALL"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectFacesOutput
    #   resp.data.face_details #=> Array<FaceDetail>
    #   resp.data.face_details[0] #=> Types::FaceDetail
    #   resp.data.face_details[0].bounding_box #=> Types::BoundingBox
    #   resp.data.face_details[0].bounding_box.width #=> Float
    #   resp.data.face_details[0].bounding_box.height #=> Float
    #   resp.data.face_details[0].bounding_box.left #=> Float
    #   resp.data.face_details[0].bounding_box.top #=> Float
    #   resp.data.face_details[0].age_range #=> Types::AgeRange
    #   resp.data.face_details[0].age_range.low #=> Integer
    #   resp.data.face_details[0].age_range.high #=> Integer
    #   resp.data.face_details[0].smile #=> Types::Smile
    #   resp.data.face_details[0].smile.value #=> Boolean
    #   resp.data.face_details[0].smile.confidence #=> Float
    #   resp.data.face_details[0].eyeglasses #=> Types::Eyeglasses
    #   resp.data.face_details[0].eyeglasses.value #=> Boolean
    #   resp.data.face_details[0].eyeglasses.confidence #=> Float
    #   resp.data.face_details[0].sunglasses #=> Types::Sunglasses
    #   resp.data.face_details[0].sunglasses.value #=> Boolean
    #   resp.data.face_details[0].sunglasses.confidence #=> Float
    #   resp.data.face_details[0].gender #=> Types::Gender
    #   resp.data.face_details[0].gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.face_details[0].gender.confidence #=> Float
    #   resp.data.face_details[0].beard #=> Types::Beard
    #   resp.data.face_details[0].beard.value #=> Boolean
    #   resp.data.face_details[0].beard.confidence #=> Float
    #   resp.data.face_details[0].mustache #=> Types::Mustache
    #   resp.data.face_details[0].mustache.value #=> Boolean
    #   resp.data.face_details[0].mustache.confidence #=> Float
    #   resp.data.face_details[0].eyes_open #=> Types::EyeOpen
    #   resp.data.face_details[0].eyes_open.value #=> Boolean
    #   resp.data.face_details[0].eyes_open.confidence #=> Float
    #   resp.data.face_details[0].mouth_open #=> Types::MouthOpen
    #   resp.data.face_details[0].mouth_open.value #=> Boolean
    #   resp.data.face_details[0].mouth_open.confidence #=> Float
    #   resp.data.face_details[0].emotions #=> Array<Emotion>
    #   resp.data.face_details[0].emotions[0] #=> Types::Emotion
    #   resp.data.face_details[0].emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.face_details[0].emotions[0].confidence #=> Float
    #   resp.data.face_details[0].landmarks #=> Array<Landmark>
    #   resp.data.face_details[0].landmarks[0] #=> Types::Landmark
    #   resp.data.face_details[0].landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.face_details[0].landmarks[0].x #=> Float
    #   resp.data.face_details[0].landmarks[0].y #=> Float
    #   resp.data.face_details[0].pose #=> Types::Pose
    #   resp.data.face_details[0].pose.roll #=> Float
    #   resp.data.face_details[0].pose.yaw #=> Float
    #   resp.data.face_details[0].pose.pitch #=> Float
    #   resp.data.face_details[0].quality #=> Types::ImageQuality
    #   resp.data.face_details[0].quality.brightness #=> Float
    #   resp.data.face_details[0].quality.sharpness #=> Float
    #   resp.data.face_details[0].confidence #=> Float
    #   resp.data.orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    def detect_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::DetectFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectFaces,
        stubs: @stubs,
        params_class: Params::DetectFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects instances of real-world entities within an image (JPEG or PNG)
    #        provided as input. This includes objects like flower, tree, and table; events like
    #        wedding, graduation, and birthday party; and concepts like landscape, evening, and nature.
    #      </p>
    #
    #          <p>For an example, see Analyzing images stored in an Amazon S3 bucket in the Amazon Rekognition Developer Guide.</p>
    #          <note>
    #             <p>
    #                <code>DetectLabels</code> does not support the detection of activities. However, activity detection
    #         is supported for label detection in videos. For more information, see StartLabelDetection in the Amazon Rekognition Developer Guide.</p>
    #          </note>
    #
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in
    #       an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p> For each object, scene, and concept the API returns one or more labels. Each label
    #       provides the object name, and the level of confidence that the image contains the object. For
    #       example, suppose the input image has a lighthouse, the sea, and a rock. The response includes
    #       all three labels, one for each object. </p>
    #
    #          <p>
    #             <code>{Name: lighthouse, Confidence: 98.4629}</code>
    #          </p>
    #          <p>
    #             <code>{Name: rock,Confidence: 79.2097}</code>
    #          </p>
    #          <p>
    #             <code> {Name: sea,Confidence: 75.061}</code>
    #          </p>
    #          <p>In the preceding example, the operation returns one label for each of the three
    #       objects. The operation can also return multiple labels for the same object in the image. For
    #       example, if the input image shows a flower (for example, a tulip), the operation might return
    #       the following three labels. </p>
    #          <p>
    #             <code>{Name: flower,Confidence: 99.0562}</code>
    #          </p>
    #          <p>
    #             <code>{Name: plant,Confidence: 99.0562}</code>
    #          </p>
    #          <p>
    #             <code>{Name: tulip,Confidence: 99.0562}</code>
    #          </p>
    #
    #          <p>In this example, the detection algorithm more precisely identifies the flower as a
    #       tulip.</p>
    #          <p>In response, the API returns an array of labels. In addition, the response also
    #       includes the orientation correction. Optionally, you can specify <code>MinConfidence</code> to
    #       control the confidence threshold for the labels returned. The default is 55%. You can also add
    #       the <code>MaxLabels</code> parameter to limit the number of labels returned. </p>
    #          <note>
    #             <p>If the object detected is a person, the operation doesn't provide the same facial
    #         details that the <a>DetectFaces</a> operation provides.</p>
    #          </note>
    #          <p>
    #             <code>DetectLabels</code> returns bounding boxes for instances of common object labels in an array of
    #       <a>Instance</a> objects. An <code>Instance</code> object contains a
    #       <a>BoundingBox</a> object, for the location of the label on the image. It also includes
    #       the confidence by which the bounding box was detected.</p>
    #          <p>
    #             <code>DetectLabels</code> also returns a hierarchical taxonomy of detected labels. For example,
    #       a detected car might be assigned the label <i>car</i>. The label <i>car</i>
    #       has two parent labels: <i>Vehicle</i> (its parent) and <i>Transportation</i> (its
    #       grandparent).
    #       The response returns the entire list of ancestors for a label. Each ancestor is a unique label in the response.
    #       In the previous example, <i>Car</i>, <i>Vehicle</i>, and <i>Transportation</i>
    #       are returned as unique labels in the response.
    #       </p>
    #          <p>This is a stateless API operation. That is, the operation does not persist any
    #       data.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:DetectLabels</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectLabelsInput}.
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing image bytes is not supported. Images stored in an S3 Bucket do
    #       not need to be base64-encoded.</p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Integer] :max_labels
    #   <p>Maximum number of labels you want the service to return in the response. The service
    #         returns the specified number of highest confidence labels. </p>
    #
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with confidence lower than this specified value.</p>
    #            <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a
    #         confidence values greater than or equal to 55 percent.</p>
    #
    # @return [Types::DetectLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_labels(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     max_labels: 1,
    #     min_confidence: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectLabelsOutput
    #   resp.data.labels #=> Array<Label>
    #   resp.data.labels[0] #=> Types::Label
    #   resp.data.labels[0].name #=> String
    #   resp.data.labels[0].confidence #=> Float
    #   resp.data.labels[0].instances #=> Array<Instance>
    #   resp.data.labels[0].instances[0] #=> Types::Instance
    #   resp.data.labels[0].instances[0].bounding_box #=> Types::BoundingBox
    #   resp.data.labels[0].instances[0].bounding_box.width #=> Float
    #   resp.data.labels[0].instances[0].bounding_box.height #=> Float
    #   resp.data.labels[0].instances[0].bounding_box.left #=> Float
    #   resp.data.labels[0].instances[0].bounding_box.top #=> Float
    #   resp.data.labels[0].instances[0].confidence #=> Float
    #   resp.data.labels[0].parents #=> Array<Parent>
    #   resp.data.labels[0].parents[0] #=> Types::Parent
    #   resp.data.labels[0].parents[0].name #=> String
    #   resp.data.orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   resp.data.label_model_version #=> String
    #
    def detect_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectLabels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::DetectLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectLabels,
        stubs: @stubs,
        params_class: Params::DetectLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects unsafe content in a specified JPEG or PNG format image.
    #      Use <code>DetectModerationLabels</code> to moderate images depending on your requirements.
    #      For example, you might want to filter images that contain nudity, but not images containing
    #      suggestive content.</p>
    #          <p>To filter images, use the labels returned by <code>DetectModerationLabels</code>
    #      to determine which types of content are appropriate.</p>
    #
    #          <p>For information about moderation labels,
    #       see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectModerationLabelsInput}.
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with a confidence level lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with
    #         confidence values greater than or equal to 50 percent.</p>
    #
    # @option params [HumanLoopConfig] :human_loop_config
    #   <p>Sets up the configuration for human evaluation, including the FlowDefinition
    #         the image will be sent to.</p>
    #
    # @return [Types::DetectModerationLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_moderation_labels(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     min_confidence: 1.0,
    #     human_loop_config: {
    #       human_loop_name: 'HumanLoopName', # required
    #       flow_definition_arn: 'FlowDefinitionArn', # required
    #       data_attributes: {
    #         content_classifiers: [
    #           'FreeOfPersonallyIdentifiableInformation' # accepts ["FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"]
    #         ]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectModerationLabelsOutput
    #   resp.data.moderation_labels #=> Array<ModerationLabel>
    #   resp.data.moderation_labels[0] #=> Types::ModerationLabel
    #   resp.data.moderation_labels[0].confidence #=> Float
    #   resp.data.moderation_labels[0].name #=> String
    #   resp.data.moderation_labels[0].parent_name #=> String
    #   resp.data.moderation_model_version #=> String
    #   resp.data.human_loop_activation_output #=> Types::HumanLoopActivationOutput
    #   resp.data.human_loop_activation_output.human_loop_arn #=> String
    #   resp.data.human_loop_activation_output.human_loop_activation_reasons #=> Array<String>
    #   resp.data.human_loop_activation_output.human_loop_activation_reasons[0] #=> String
    #   resp.data.human_loop_activation_output.human_loop_activation_conditions_evaluation_results #=> String
    #
    def detect_moderation_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectModerationLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectModerationLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectModerationLabels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException, Errors::HumanLoopQuotaExceededException]),
        data_parser: Parsers::DetectModerationLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectModerationLabels,
        stubs: @stubs,
        params_class: Params::DetectModerationLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_moderation_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects Personal Protective Equipment (PPE) worn by people detected in an image. Amazon Rekognition can detect the
    #          following types of PPE.</p>
    #          <ul>
    #             <li>
    #                <p>Face cover</p>
    #             </li>
    #             <li>
    #                <p>Hand cover</p>
    #             </li>
    #             <li>
    #                <p>Head cover</p>
    #             </li>
    #          </ul>
    #
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket.
    #          The image must be either a PNG or JPG formatted file. </p>
    #
    #          <p>
    #             <code>DetectProtectiveEquipment</code> detects PPE worn by up to 15 persons detected in an image.</p>
    #          <p>For each person detected in the image the API returns an array of body parts (face, head, left-hand, right-hand).
    #          For each body part, an array of detected items of PPE is returned, including an indicator of whether or not the PPE
    #          covers the body part. The API returns the confidence it has in each detection
    #          (person, PPE, body part and body part coverage). It also returns a bounding box (<a>BoundingBox</a>) for each detected
    #          person and each detected item of PPE. </p>
    #          <p>You can optionally request a summary of detected PPE items with the <code>SummarizationAttributes</code> input parameter.
    #          The summary provides the following information. </p>
    #          <ul>
    #             <li>
    #                <p>The persons detected as wearing all of the types of PPE that you specify.</p>
    #             </li>
    #             <li>
    #                <p>The persons detected as not wearing all of the types PPE that you specify.</p>
    #             </li>
    #             <li>
    #                <p>The persons detected where PPE adornment could not be determined. </p>
    #             </li>
    #          </ul>
    #          <p>This is a stateless API operation. That is, the operation does not persist any data.</p>
    #
    #          <p>This operation requires permissions to perform the <code>rekognition:DetectProtectiveEquipment</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectProtectiveEquipmentInput}.
    #
    # @option params [Image] :image
    #   <p>The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can
    #            reference an image stored in an Amazon S3 bucket. </p>
    #
    # @option params [ProtectiveEquipmentSummarizationAttributes] :summarization_attributes
    #   <p>An array of PPE types that you want to summarize.</p>
    #
    # @return [Types::DetectProtectiveEquipmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_protective_equipment(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     summarization_attributes: {
    #       min_confidence: 1.0, # required
    #       required_equipment_types: [
    #         'FACE_COVER' # accepts ["FACE_COVER", "HAND_COVER", "HEAD_COVER"]
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectProtectiveEquipmentOutput
    #   resp.data.protective_equipment_model_version #=> String
    #   resp.data.persons #=> Array<ProtectiveEquipmentPerson>
    #   resp.data.persons[0] #=> Types::ProtectiveEquipmentPerson
    #   resp.data.persons[0].body_parts #=> Array<ProtectiveEquipmentBodyPart>
    #   resp.data.persons[0].body_parts[0] #=> Types::ProtectiveEquipmentBodyPart
    #   resp.data.persons[0].body_parts[0].name #=> String, one of ["FACE", "HEAD", "LEFT_HAND", "RIGHT_HAND"]
    #   resp.data.persons[0].body_parts[0].confidence #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections #=> Array<EquipmentDetection>
    #   resp.data.persons[0].body_parts[0].equipment_detections[0] #=> Types::EquipmentDetection
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].bounding_box.width #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].bounding_box.height #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].bounding_box.left #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].bounding_box.top #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].confidence #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].type #=> String, one of ["FACE_COVER", "HAND_COVER", "HEAD_COVER"]
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].covers_body_part #=> Types::CoversBodyPart
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].covers_body_part.confidence #=> Float
    #   resp.data.persons[0].body_parts[0].equipment_detections[0].covers_body_part.value #=> Boolean
    #   resp.data.persons[0].bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].confidence #=> Float
    #   resp.data.persons[0].id #=> Integer
    #   resp.data.summary #=> Types::ProtectiveEquipmentSummary
    #   resp.data.summary.persons_with_required_equipment #=> Array<Integer>
    #   resp.data.summary.persons_with_required_equipment[0] #=> Integer
    #   resp.data.summary.persons_without_required_equipment #=> Array<Integer>
    #   resp.data.summary.persons_indeterminate #=> Array<Integer>
    #
    def detect_protective_equipment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectProtectiveEquipmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectProtectiveEquipmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectProtectiveEquipment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::DetectProtectiveEquipment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectProtectiveEquipment,
        stubs: @stubs,
        params_class: Params::DetectProtectiveEquipmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_protective_equipment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects text in the input image and converts it into machine-readable text.</p>
    #          <p>Pass the input image as base64-encoded image bytes or as a reference to an image in an
    #       Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, you must pass it as a
    #       reference to an image in an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
    #       supported. The image must be either a .png or .jpeg formatted file. </p>
    #          <p>The <code>DetectText</code> operation returns text in an array of <a>TextDetection</a> elements, <code>TextDetections</code>. Each
    #         <code>TextDetection</code> element provides information about a single word or line of text
    #       that was detected in the image. </p>
    #          <p>A word is one or more script characters that are not separated by spaces.
    #         <code>DetectText</code> can detect up to 100 words in an image.</p>
    #          <p>A line is a string of equally spaced words. A line isn't necessarily a complete
    #       sentence. For example, a driver's license number is detected as a line. A line ends when there
    #       is no aligned text after it. Also, a line ends when there is a large gap between words,
    #       relative to the length of the words. This means, depending on the gap between words, Amazon Rekognition
    #       may detect multiple lines in text aligned in the same direction. Periods don't represent the
    #       end of a line. If a sentence spans multiple lines, the <code>DetectText</code> operation
    #       returns multiple lines.</p>
    #          <p>To determine whether a <code>TextDetection</code> element is a line of text or a word,
    #       use the <code>TextDetection</code> object <code>Type</code> field. </p>
    #          <p>To be detected, text must be within +/- 90 degrees orientation of the horizontal axis.</p>
    #
    #          <p>For more information, see Detecting text in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectTextInput}.
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #         to call Amazon Rekognition operations, you can't pass image bytes. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [DetectTextFilters] :filters
    #   <p>Optional parameters that let you set the criteria that the text must meet to be included in your response.</p>
    #
    # @return [Types::DetectTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_text(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     filters: {
    #       word_filter: {
    #         min_confidence: 1.0,
    #         min_bounding_box_height: 1.0,
    #         min_bounding_box_width: 1.0
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectTextOutput
    #   resp.data.text_detections #=> Array<TextDetection>
    #   resp.data.text_detections[0] #=> Types::TextDetection
    #   resp.data.text_detections[0].detected_text #=> String
    #   resp.data.text_detections[0].type #=> String, one of ["LINE", "WORD"]
    #   resp.data.text_detections[0].id #=> Integer
    #   resp.data.text_detections[0].parent_id #=> Integer
    #   resp.data.text_detections[0].confidence #=> Float
    #   resp.data.text_detections[0].geometry #=> Types::Geometry
    #   resp.data.text_detections[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.text_detections[0].geometry.bounding_box.width #=> Float
    #   resp.data.text_detections[0].geometry.bounding_box.height #=> Float
    #   resp.data.text_detections[0].geometry.bounding_box.left #=> Float
    #   resp.data.text_detections[0].geometry.bounding_box.top #=> Float
    #   resp.data.text_detections[0].geometry.polygon #=> Array<Point>
    #   resp.data.text_detections[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.text_detections[0].geometry.polygon[0].x #=> Float
    #   resp.data.text_detections[0].geometry.polygon[0].y #=> Float
    #   resp.data.text_model_version #=> String
    #
    def detect_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectTextInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectText
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::DetectText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectText,
        stubs: @stubs,
        params_class: Params::DetectTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Distributes the entries (images) in a training dataset across the training dataset and the test dataset for a project.
    #          <code>DistributeDatasetEntries</code> moves 20% of the training dataset images to the test dataset.
    #          An entry is a JSON Line that describes an image.
    #       </p>
    #          <p>You supply the Amazon Resource Names (ARN) of a project's training dataset and test dataset.
    #          The training dataset must contain the images that you want to split. The test dataset
    #       must be empty. The datasets must belong to the same project. To create training and test datasets for a project, call <a>CreateDataset</a>.</p>
    #          <p>Distributing a dataset takes a while to complete. To check the status call <code>DescribeDataset</code>. The operation
    #          is complete when the <code>Status</code> field for the training dataset and the test dataset is <code>UPDATE_COMPLETE</code>.
    #          If the dataset split fails, the value of <code>Status</code> is <code>UPDATE_FAILED</code>.</p>
    #
    #          <p>This operation requires permissions to perform the <code>rekognition:DistributeDatasetEntries</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DistributeDatasetEntriesInput}.
    #
    # @option params [Array<DistributeDataset>] :datasets
    #   <p>The ARNS for the training dataset and test dataset that you want to use. The datasets must belong to
    #            the same project. The test dataset must be empty.
    #            </p>
    #
    # @return [Types::DistributeDatasetEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.distribute_dataset_entries(
    #     datasets: [
    #       {
    #         arn: 'Arn' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DistributeDatasetEntriesOutput
    #
    def distribute_dataset_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DistributeDatasetEntriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DistributeDatasetEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DistributeDatasetEntries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotReadyException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::DistributeDatasetEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DistributeDatasetEntries,
        stubs: @stubs,
        params_class: Params::DistributeDatasetEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :distribute_dataset_entries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the name and additional information about a celebrity based on their Amazon Rekognition ID.
    #       The additional information is returned as an array of URLs. If there is no additional
    #       information about the celebrity, this list is empty.</p>
    #
    #          <p>For more information, see Getting information about a celebrity in
    #       the Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:GetCelebrityInfo</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCelebrityInfoInput}.
    #
    # @option params [String] :id
    #   <p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation,
    #      which recognizes celebrities in an image. </p>
    #
    # @return [Types::GetCelebrityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_celebrity_info(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCelebrityInfoOutput
    #   resp.data.urls #=> Array<String>
    #   resp.data.urls[0] #=> String
    #   resp.data.name #=> String
    #   resp.data.known_gender #=> Types::KnownGender
    #   resp.data.known_gender.type #=> String, one of ["Male", "Female", "Nonbinary", "Unlisted"]
    #
    def get_celebrity_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCelebrityInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCelebrityInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCelebrityInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetCelebrityInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCelebrityInfo,
        stubs: @stubs,
        params_class: Params::GetCelebrityInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_celebrity_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by
    #      <a>StartCelebrityRecognition</a>.</p>
    #          <p>Celebrity recognition in a video is an asynchronous operation. Analysis is started by a
    #       call to <a>StartCelebrityRecognition</a> which returns a job identifier
    #         (<code>JobId</code>). </p>
    #          <p>When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion
    #       status to the Amazon Simple Notification Service topic registered in the initial call to
    #         <code>StartCelebrityRecognition</code>. To get the results of the celebrity recognition
    #       analysis, first check that the status value published to the Amazon SNS topic is
    #         <code>SUCCEEDED</code>. If so, call <code>GetCelebrityDetection</code> and pass the job
    #       identifier (<code>JobId</code>) from the initial call to <code>StartCelebrityDetection</code>. </p>
    #
    #          <p>For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.</p>
    #          <p>
    #             <code>GetCelebrityRecognition</code> returns detected celebrities and the time(s) they
    #       are detected in an array (<code>Celebrities</code>) of <a>CelebrityRecognition</a>
    #        objects. Each <code>CelebrityRecognition</code>
    #       contains information about the celebrity in a <a>CelebrityDetail</a> object and the
    #       time, <code>Timestamp</code>, the celebrity was detected.  This <a>CelebrityDetail</a> object stores information about the detected celebrity's face
    #       attributes, a face bounding box, known gender, the celebrity's name, and a confidence
    #       estimate.</p>
    #          <note>
    #             <p>
    #                <code>GetCelebrityRecognition</code> only returns the default facial
    #         attributes (<code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>,
    #           <code>Pose</code>, and <code>Quality</code>). The <code>BoundingBox</code> field only
    #         applies to the detected face instance. The other facial attributes listed in the
    #           <code>Face</code> object of the following response syntax are not returned. For more
    #         information, see FaceDetail in the Amazon Rekognition Developer Guide. </p>
    #          </note>
    #          <p>By default, the <code>Celebrities</code> array is sorted by time (milliseconds from the start of the video).
    #       You can also sort the array by celebrity by specifying the value <code>ID</code> in the <code>SortBy</code> input parameter.</p>
    #          <p>The <code>CelebrityDetail</code> object includes the celebrity identifer and additional information urls. If you don't store
    #       the additional information urls, you can get them later by calling <a>GetCelebrityInfo</a> with the celebrity identifer.</p>
    #          <p>No information is returned for faces not recognized as celebrities.</p>
    #          <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than
    #       specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a
    #       pagination token for getting the next set of results. To get the next page of results, call <code>GetCelebrityDetection</code>
    #       and populate the <code>NextToken</code> request parameter with the token
    #       value returned from the previous call to <code>GetCelebrityRecognition</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCelebrityRecognitionInput}.
    #
    # @option params [String] :job_id
    #   <p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from
    #         a call to <code>StartCelebrityRecognition</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>
    #
    # @option params [String] :sort_by
    #   <p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier,
    #           specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>
    #
    # @return [Types::GetCelebrityRecognitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_celebrity_recognition(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     sort_by: 'ID' # accepts ["ID", "TIMESTAMP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCelebrityRecognitionOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.next_token #=> String
    #   resp.data.celebrities #=> Array<CelebrityRecognition>
    #   resp.data.celebrities[0] #=> Types::CelebrityRecognition
    #   resp.data.celebrities[0].timestamp #=> Integer
    #   resp.data.celebrities[0].celebrity #=> Types::CelebrityDetail
    #   resp.data.celebrities[0].celebrity.urls #=> Array<String>
    #   resp.data.celebrities[0].celebrity.urls[0] #=> String
    #   resp.data.celebrities[0].celebrity.name #=> String
    #   resp.data.celebrities[0].celebrity.id #=> String
    #   resp.data.celebrities[0].celebrity.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.bounding_box #=> Types::BoundingBox
    #   resp.data.celebrities[0].celebrity.bounding_box.width #=> Float
    #   resp.data.celebrities[0].celebrity.bounding_box.height #=> Float
    #   resp.data.celebrities[0].celebrity.bounding_box.left #=> Float
    #   resp.data.celebrities[0].celebrity.bounding_box.top #=> Float
    #   resp.data.celebrities[0].celebrity.face #=> Types::FaceDetail
    #   resp.data.celebrities[0].celebrity.face.bounding_box #=> Types::BoundingBox
    #   resp.data.celebrities[0].celebrity.face.age_range #=> Types::AgeRange
    #   resp.data.celebrities[0].celebrity.face.age_range.low #=> Integer
    #   resp.data.celebrities[0].celebrity.face.age_range.high #=> Integer
    #   resp.data.celebrities[0].celebrity.face.smile #=> Types::Smile
    #   resp.data.celebrities[0].celebrity.face.smile.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.smile.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.eyeglasses #=> Types::Eyeglasses
    #   resp.data.celebrities[0].celebrity.face.eyeglasses.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.eyeglasses.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.sunglasses #=> Types::Sunglasses
    #   resp.data.celebrities[0].celebrity.face.sunglasses.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.sunglasses.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.gender #=> Types::Gender
    #   resp.data.celebrities[0].celebrity.face.gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.celebrities[0].celebrity.face.gender.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.beard #=> Types::Beard
    #   resp.data.celebrities[0].celebrity.face.beard.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.beard.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.mustache #=> Types::Mustache
    #   resp.data.celebrities[0].celebrity.face.mustache.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.mustache.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.eyes_open #=> Types::EyeOpen
    #   resp.data.celebrities[0].celebrity.face.eyes_open.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.eyes_open.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.mouth_open #=> Types::MouthOpen
    #   resp.data.celebrities[0].celebrity.face.mouth_open.value #=> Boolean
    #   resp.data.celebrities[0].celebrity.face.mouth_open.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.emotions #=> Array<Emotion>
    #   resp.data.celebrities[0].celebrity.face.emotions[0] #=> Types::Emotion
    #   resp.data.celebrities[0].celebrity.face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.celebrities[0].celebrity.face.emotions[0].confidence #=> Float
    #   resp.data.celebrities[0].celebrity.face.landmarks #=> Array<Landmark>
    #   resp.data.celebrities[0].celebrity.face.landmarks[0] #=> Types::Landmark
    #   resp.data.celebrities[0].celebrity.face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.celebrities[0].celebrity.face.landmarks[0].x #=> Float
    #   resp.data.celebrities[0].celebrity.face.landmarks[0].y #=> Float
    #   resp.data.celebrities[0].celebrity.face.pose #=> Types::Pose
    #   resp.data.celebrities[0].celebrity.face.pose.roll #=> Float
    #   resp.data.celebrities[0].celebrity.face.pose.yaw #=> Float
    #   resp.data.celebrities[0].celebrity.face.pose.pitch #=> Float
    #   resp.data.celebrities[0].celebrity.face.quality #=> Types::ImageQuality
    #   resp.data.celebrities[0].celebrity.face.quality.brightness #=> Float
    #   resp.data.celebrities[0].celebrity.face.quality.sharpness #=> Float
    #   resp.data.celebrities[0].celebrity.face.confidence #=> Float
    #   resp.data.celebrities[0].celebrity.known_gender #=> Types::KnownGender
    #   resp.data.celebrities[0].celebrity.known_gender.type #=> String, one of ["Male", "Female", "Nonbinary", "Unlisted"]
    #
    def get_celebrity_recognition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCelebrityRecognitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCelebrityRecognitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCelebrityRecognition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetCelebrityRecognition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCelebrityRecognition,
        stubs: @stubs,
        params_class: Params::GetCelebrityRecognitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_celebrity_recognition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the inappropriate, unwanted, or offensive content analysis results for a Amazon Rekognition Video analysis started by
    #        <a>StartContentModeration</a>. For a list of moderation labels in Amazon Rekognition, see
    #        <a href="https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api">Using the image and video moderation APIs</a>.</p>
    #
    #          <p>Amazon Rekognition Video inappropriate or offensive content detection in a stored video is an asynchronous operation. You start analysis by calling
    #        <a>StartContentModeration</a> which returns a job identifier (<code>JobId</code>).
    #        When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service
    #        topic registered in the initial call to <code>StartContentModeration</code>.
    #        To get the results of the content analysis, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <code>GetContentModeration</code> and pass the job identifier
    #        (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p>
    #
    #          <p>For more information, see Working with Stored Videos in the
    #      Amazon Rekognition Devlopers Guide.</p>
    #          <p>
    #             <code>GetContentModeration</code> returns detected inappropriate, unwanted, or offensive content moderation labels,
    #       and the time they are detected, in an array, <code>ModerationLabels</code>, of
    #       <a>ContentModerationDetection</a> objects.
    #      </p>
    #          <p>By default, the moderated labels are returned sorted by time, in milliseconds from the start of the
    #        video. You can also sort them by moderated label by specifying <code>NAME</code> for the <code>SortBy</code>
    #        input parameter. </p>
    #          <p>Since video analysis can return a large number of results, use the <code>MaxResults</code> parameter to limit
    #       the number of labels returned in a single call to <code>GetContentModeration</code>. If there are more results than
    #        specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a
    #        pagination token for getting the next set of results. To get the next page of results, call <code>GetContentModeration</code>
    #        and populate the <code>NextToken</code> request parameter with the value of <code>NextToken</code>
    #        returned from the previous call to <code>GetContentModeration</code>.</p>
    #
    #          <p>For more information, see moderating content in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContentModerationInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier for the inappropriate, unwanted, or offensive content moderation job. Use <code>JobId</code> to identify the job in
    #          a subsequent call to <code>GetContentModeration</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #       If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #       The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition
    #           returns a pagination token in the response. You can use this pagination token
    #           to retrieve the next set of content moderation labels.</p>
    #
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>ModerationLabelDetections</code> array.
    #          Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #          Use <code>NAME</code> to alphabetically group elements for a label together.
    #          Within each label group, the array element are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    #
    # @return [Types::GetContentModerationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_moderation(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     sort_by: 'NAME' # accepts ["NAME", "TIMESTAMP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContentModerationOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.moderation_labels #=> Array<ContentModerationDetection>
    #   resp.data.moderation_labels[0] #=> Types::ContentModerationDetection
    #   resp.data.moderation_labels[0].timestamp #=> Integer
    #   resp.data.moderation_labels[0].moderation_label #=> Types::ModerationLabel
    #   resp.data.moderation_labels[0].moderation_label.confidence #=> Float
    #   resp.data.moderation_labels[0].moderation_label.name #=> String
    #   resp.data.moderation_labels[0].moderation_label.parent_name #=> String
    #   resp.data.next_token #=> String
    #   resp.data.moderation_model_version #=> String
    #
    def get_content_moderation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContentModerationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContentModerationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContentModeration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetContentModeration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContentModeration,
        stubs: @stubs,
        params_class: Params::GetContentModerationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_content_moderation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets face detection results for a Amazon Rekognition Video analysis started by <a>StartFaceDetection</a>.</p>
    #          <p>Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling <a>StartFaceDetection</a>
    #      which returns a job identifier (<code>JobId</code>). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to
    #      the Amazon Simple Notification Service topic registered in the initial call to <code>StartFaceDetection</code>. To get the results
    #      of the face detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #      If so, call  <a>GetFaceDetection</a> and pass the job identifier
    #      (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p>
    #          <p>
    #             <code>GetFaceDetection</code> returns an array of detected faces (<code>Faces</code>) sorted by the time the faces were detected. </p>
    #          <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than
    #    specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set
    #    of results. To get the next page of results, call <code>GetFaceDetection</code> and populate the <code>NextToken</code> request parameter with the token
    #     value returned from the previous call to <code>GetFaceDetection</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFaceDetectionInput}.
    #
    # @option params [String] :job_id
    #   <p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of faces.</p>
    #
    # @return [Types::GetFaceDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_face_detection(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFaceDetectionOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.next_token #=> String
    #   resp.data.faces #=> Array<FaceDetection>
    #   resp.data.faces[0] #=> Types::FaceDetection
    #   resp.data.faces[0].timestamp #=> Integer
    #   resp.data.faces[0].face #=> Types::FaceDetail
    #   resp.data.faces[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.faces[0].face.bounding_box.width #=> Float
    #   resp.data.faces[0].face.bounding_box.height #=> Float
    #   resp.data.faces[0].face.bounding_box.left #=> Float
    #   resp.data.faces[0].face.bounding_box.top #=> Float
    #   resp.data.faces[0].face.age_range #=> Types::AgeRange
    #   resp.data.faces[0].face.age_range.low #=> Integer
    #   resp.data.faces[0].face.age_range.high #=> Integer
    #   resp.data.faces[0].face.smile #=> Types::Smile
    #   resp.data.faces[0].face.smile.value #=> Boolean
    #   resp.data.faces[0].face.smile.confidence #=> Float
    #   resp.data.faces[0].face.eyeglasses #=> Types::Eyeglasses
    #   resp.data.faces[0].face.eyeglasses.value #=> Boolean
    #   resp.data.faces[0].face.eyeglasses.confidence #=> Float
    #   resp.data.faces[0].face.sunglasses #=> Types::Sunglasses
    #   resp.data.faces[0].face.sunglasses.value #=> Boolean
    #   resp.data.faces[0].face.sunglasses.confidence #=> Float
    #   resp.data.faces[0].face.gender #=> Types::Gender
    #   resp.data.faces[0].face.gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.faces[0].face.gender.confidence #=> Float
    #   resp.data.faces[0].face.beard #=> Types::Beard
    #   resp.data.faces[0].face.beard.value #=> Boolean
    #   resp.data.faces[0].face.beard.confidence #=> Float
    #   resp.data.faces[0].face.mustache #=> Types::Mustache
    #   resp.data.faces[0].face.mustache.value #=> Boolean
    #   resp.data.faces[0].face.mustache.confidence #=> Float
    #   resp.data.faces[0].face.eyes_open #=> Types::EyeOpen
    #   resp.data.faces[0].face.eyes_open.value #=> Boolean
    #   resp.data.faces[0].face.eyes_open.confidence #=> Float
    #   resp.data.faces[0].face.mouth_open #=> Types::MouthOpen
    #   resp.data.faces[0].face.mouth_open.value #=> Boolean
    #   resp.data.faces[0].face.mouth_open.confidence #=> Float
    #   resp.data.faces[0].face.emotions #=> Array<Emotion>
    #   resp.data.faces[0].face.emotions[0] #=> Types::Emotion
    #   resp.data.faces[0].face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.faces[0].face.emotions[0].confidence #=> Float
    #   resp.data.faces[0].face.landmarks #=> Array<Landmark>
    #   resp.data.faces[0].face.landmarks[0] #=> Types::Landmark
    #   resp.data.faces[0].face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.faces[0].face.landmarks[0].x #=> Float
    #   resp.data.faces[0].face.landmarks[0].y #=> Float
    #   resp.data.faces[0].face.pose #=> Types::Pose
    #   resp.data.faces[0].face.pose.roll #=> Float
    #   resp.data.faces[0].face.pose.yaw #=> Float
    #   resp.data.faces[0].face.pose.pitch #=> Float
    #   resp.data.faces[0].face.quality #=> Types::ImageQuality
    #   resp.data.faces[0].face.quality.brightness #=> Float
    #   resp.data.faces[0].face.quality.sharpness #=> Float
    #   resp.data.faces[0].face.confidence #=> Float
    #
    def get_face_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFaceDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFaceDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFaceDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetFaceDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFaceDetection,
        stubs: @stubs,
        params_class: Params::GetFaceDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_face_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the face search results for Amazon Rekognition Video face search started by
    #       <a>StartFaceSearch</a>. The search returns faces in a collection that match the faces
    #     of persons detected in a video. It also includes the time(s) that faces are matched in the video.</p>
    #          <p>Face search in a video is an asynchronous operation. You start face search by calling
    #       to <a>StartFaceSearch</a> which returns a job identifier (<code>JobId</code>).
    #       When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service
    #       topic registered in the initial call to <code>StartFaceSearch</code>.
    #       To get the search results, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call  <code>GetFaceSearch</code> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>.</p>
    #
    #          <p>For more information, see Searching Faces in a Collection in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>The search results are retured in an array, <code>Persons</code>, of
    #     <a>PersonMatch</a> objects. Each<code>PersonMatch</code> element contains
    #     details about the matching faces in the input collection, person information (facial attributes,
    #     bounding boxes, and person identifer)
    #     for the matched person, and the time the person was matched in the video.</p>
    #          <note>
    #             <p>
    #                <code>GetFaceSearch</code> only returns the default
    #         facial attributes (<code>BoundingBox</code>, <code>Confidence</code>,
    #         <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed
    #         in the <code>Face</code> object of the following response syntax are not returned. For more information,
    #         see FaceDetail in the Amazon Rekognition Developer Guide. </p>
    #          </note>
    #
    #          <p>By default, the <code>Persons</code> array is sorted by the time, in milliseconds from the
    #     start of the video, persons are matched.
    #     You can also sort by persons by specifying <code>INDEX</code> for the <code>SORTBY</code> input
    #     parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFaceSearchInput}.
    #
    # @option params [String] :job_id
    #   <p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of search results. </p>
    #
    # @option params [String] :sort_by
    #   <p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time
    #         that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>
    #
    # @return [Types::GetFaceSearchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_face_search(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     sort_by: 'INDEX' # accepts ["INDEX", "TIMESTAMP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFaceSearchOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.next_token #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.persons #=> Array<PersonMatch>
    #   resp.data.persons[0] #=> Types::PersonMatch
    #   resp.data.persons[0].timestamp #=> Integer
    #   resp.data.persons[0].person #=> Types::PersonDetail
    #   resp.data.persons[0].person.index #=> Integer
    #   resp.data.persons[0].person.bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].person.bounding_box.width #=> Float
    #   resp.data.persons[0].person.bounding_box.height #=> Float
    #   resp.data.persons[0].person.bounding_box.left #=> Float
    #   resp.data.persons[0].person.bounding_box.top #=> Float
    #   resp.data.persons[0].person.face #=> Types::FaceDetail
    #   resp.data.persons[0].person.face.bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].person.face.age_range #=> Types::AgeRange
    #   resp.data.persons[0].person.face.age_range.low #=> Integer
    #   resp.data.persons[0].person.face.age_range.high #=> Integer
    #   resp.data.persons[0].person.face.smile #=> Types::Smile
    #   resp.data.persons[0].person.face.smile.value #=> Boolean
    #   resp.data.persons[0].person.face.smile.confidence #=> Float
    #   resp.data.persons[0].person.face.eyeglasses #=> Types::Eyeglasses
    #   resp.data.persons[0].person.face.eyeglasses.value #=> Boolean
    #   resp.data.persons[0].person.face.eyeglasses.confidence #=> Float
    #   resp.data.persons[0].person.face.sunglasses #=> Types::Sunglasses
    #   resp.data.persons[0].person.face.sunglasses.value #=> Boolean
    #   resp.data.persons[0].person.face.sunglasses.confidence #=> Float
    #   resp.data.persons[0].person.face.gender #=> Types::Gender
    #   resp.data.persons[0].person.face.gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.persons[0].person.face.gender.confidence #=> Float
    #   resp.data.persons[0].person.face.beard #=> Types::Beard
    #   resp.data.persons[0].person.face.beard.value #=> Boolean
    #   resp.data.persons[0].person.face.beard.confidence #=> Float
    #   resp.data.persons[0].person.face.mustache #=> Types::Mustache
    #   resp.data.persons[0].person.face.mustache.value #=> Boolean
    #   resp.data.persons[0].person.face.mustache.confidence #=> Float
    #   resp.data.persons[0].person.face.eyes_open #=> Types::EyeOpen
    #   resp.data.persons[0].person.face.eyes_open.value #=> Boolean
    #   resp.data.persons[0].person.face.eyes_open.confidence #=> Float
    #   resp.data.persons[0].person.face.mouth_open #=> Types::MouthOpen
    #   resp.data.persons[0].person.face.mouth_open.value #=> Boolean
    #   resp.data.persons[0].person.face.mouth_open.confidence #=> Float
    #   resp.data.persons[0].person.face.emotions #=> Array<Emotion>
    #   resp.data.persons[0].person.face.emotions[0] #=> Types::Emotion
    #   resp.data.persons[0].person.face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.persons[0].person.face.emotions[0].confidence #=> Float
    #   resp.data.persons[0].person.face.landmarks #=> Array<Landmark>
    #   resp.data.persons[0].person.face.landmarks[0] #=> Types::Landmark
    #   resp.data.persons[0].person.face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.persons[0].person.face.landmarks[0].x #=> Float
    #   resp.data.persons[0].person.face.landmarks[0].y #=> Float
    #   resp.data.persons[0].person.face.pose #=> Types::Pose
    #   resp.data.persons[0].person.face.pose.roll #=> Float
    #   resp.data.persons[0].person.face.pose.yaw #=> Float
    #   resp.data.persons[0].person.face.pose.pitch #=> Float
    #   resp.data.persons[0].person.face.quality #=> Types::ImageQuality
    #   resp.data.persons[0].person.face.quality.brightness #=> Float
    #   resp.data.persons[0].person.face.quality.sharpness #=> Float
    #   resp.data.persons[0].person.face.confidence #=> Float
    #   resp.data.persons[0].face_matches #=> Array<FaceMatch>
    #   resp.data.persons[0].face_matches[0] #=> Types::FaceMatch
    #   resp.data.persons[0].face_matches[0].similarity #=> Float
    #   resp.data.persons[0].face_matches[0].face #=> Types::Face
    #   resp.data.persons[0].face_matches[0].face.face_id #=> String
    #   resp.data.persons[0].face_matches[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].face_matches[0].face.image_id #=> String
    #   resp.data.persons[0].face_matches[0].face.external_image_id #=> String
    #   resp.data.persons[0].face_matches[0].face.confidence #=> Float
    #   resp.data.persons[0].face_matches[0].face.index_faces_model_version #=> String
    #
    def get_face_search(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFaceSearchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFaceSearchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFaceSearch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetFaceSearch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFaceSearch,
        stubs: @stubs,
        params_class: Params::GetFaceSearchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_face_search
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the label detection results of a Amazon Rekognition Video analysis started by <a>StartLabelDetection</a>.  </p>
    #
    #          <p>The label detection operation is started by a call to <a>StartLabelDetection</a>
    #       which returns a job identifier (<code>JobId</code>). When the label detection operation finishes, Amazon Rekognition publishes a completion status to
    #       the Amazon Simple Notification Service topic registered in the initial call to <code>StartlabelDetection</code>. To get the results
    #       of the label detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #       If so, call  <a>GetLabelDetection</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartLabelDetection</code>.</p>
    #          <p>
    #             <code>GetLabelDetection</code> returns an array of detected labels (<code>Labels</code>) sorted by the time
    #        the labels were detected. You can also sort by the label name by specifying <code>NAME</code> for the
    #        <code>SortBy</code> input parameter.</p>
    #          <p>The labels returned include the label name, the percentage confidence in the accuracy of the detected label,
    #         and the time the label was detected in the video.</p>
    #          <p>The returned labels also include bounding box information for common objects, a
    #        hierarchical taxonomy of detected labels, and the version of the label model used for detection.</p>
    #
    #          <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than
    #     specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set
    #     of results. To get the next page of results, call <code>GetlabelDetection</code> and populate the <code>NextToken</code> request parameter with the token
    #      value returned from the previous call to <code>GetLabelDetection</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLabelDetectionInput}.
    #
    # @option params [String] :job_id
    #   <p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from
    #         an initial call to <code>StartlabelDetection</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of labels. </p>
    #
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>Labels</code> array.
    #         Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #         Use <code>NAME</code> to alphabetically group elements for a label together.
    #         Within each label group, the array element are sorted by detection confidence.
    #         The default sort is by <code>TIMESTAMP</code>.</p>
    #
    # @return [Types::GetLabelDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_label_detection(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     sort_by: 'NAME' # accepts ["NAME", "TIMESTAMP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLabelDetectionOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.next_token #=> String
    #   resp.data.labels #=> Array<LabelDetection>
    #   resp.data.labels[0] #=> Types::LabelDetection
    #   resp.data.labels[0].timestamp #=> Integer
    #   resp.data.labels[0].label #=> Types::Label
    #   resp.data.labels[0].label.name #=> String
    #   resp.data.labels[0].label.confidence #=> Float
    #   resp.data.labels[0].label.instances #=> Array<Instance>
    #   resp.data.labels[0].label.instances[0] #=> Types::Instance
    #   resp.data.labels[0].label.instances[0].bounding_box #=> Types::BoundingBox
    #   resp.data.labels[0].label.instances[0].bounding_box.width #=> Float
    #   resp.data.labels[0].label.instances[0].bounding_box.height #=> Float
    #   resp.data.labels[0].label.instances[0].bounding_box.left #=> Float
    #   resp.data.labels[0].label.instances[0].bounding_box.top #=> Float
    #   resp.data.labels[0].label.instances[0].confidence #=> Float
    #   resp.data.labels[0].label.parents #=> Array<Parent>
    #   resp.data.labels[0].label.parents[0] #=> Types::Parent
    #   resp.data.labels[0].label.parents[0].name #=> String
    #   resp.data.label_model_version #=> String
    #
    def get_label_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLabelDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLabelDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLabelDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetLabelDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLabelDetection,
        stubs: @stubs,
        params_class: Params::GetLabelDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_label_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the path tracking results of a Amazon Rekognition Video analysis started by <a>StartPersonTracking</a>.</p>
    #
    #          <p>The person path tracking operation is started by a call to <code>StartPersonTracking</code>
    #      which returns a job identifier (<code>JobId</code>). When the operation finishes, Amazon Rekognition Video publishes a completion status to
    #      the Amazon Simple Notification Service topic registered in the initial call to <code>StartPersonTracking</code>.</p>
    #          <p>To get the results of the person path tracking operation, first check
    #        that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #      If so, call  <a>GetPersonTracking</a> and pass the job identifier
    #      (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p>
    #          <p>
    #             <code>GetPersonTracking</code> returns an array, <code>Persons</code>, of tracked persons and the time(s) their
    #        paths were tracked in the video. </p>
    #          <note>
    #             <p>
    #                <code>GetPersonTracking</code> only returns the default
    #        facial attributes (<code>BoundingBox</code>, <code>Confidence</code>,
    #        <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed
    #        in the <code>Face</code> object of the following response syntax are not returned. </p>
    #
    #             <p>For more information, see FaceDetail in the Amazon Rekognition Developer Guide.</p>
    #          </note>
    #
    #
    #          <p>By default, the array is sorted by the time(s) a person's path is tracked in the video.
    #       You can sort by tracked persons by specifying <code>INDEX</code> for the <code>SortBy</code> input parameter.</p>
    #
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of items returned. If there are more results than
    #    specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set
    #    of results. To get the next page of results, call <code>GetPersonTracking</code> and populate the <code>NextToken</code> request parameter with the token
    #     value returned from the previous call to <code>GetPersonTracking</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPersonTrackingInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of persons. </p>
    #
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements
    #          by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons.
    #          If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    #
    # @return [Types::GetPersonTrackingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_person_tracking(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     sort_by: 'INDEX' # accepts ["INDEX", "TIMESTAMP"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPersonTrackingOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.next_token #=> String
    #   resp.data.persons #=> Array<PersonDetection>
    #   resp.data.persons[0] #=> Types::PersonDetection
    #   resp.data.persons[0].timestamp #=> Integer
    #   resp.data.persons[0].person #=> Types::PersonDetail
    #   resp.data.persons[0].person.index #=> Integer
    #   resp.data.persons[0].person.bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].person.bounding_box.width #=> Float
    #   resp.data.persons[0].person.bounding_box.height #=> Float
    #   resp.data.persons[0].person.bounding_box.left #=> Float
    #   resp.data.persons[0].person.bounding_box.top #=> Float
    #   resp.data.persons[0].person.face #=> Types::FaceDetail
    #   resp.data.persons[0].person.face.bounding_box #=> Types::BoundingBox
    #   resp.data.persons[0].person.face.age_range #=> Types::AgeRange
    #   resp.data.persons[0].person.face.age_range.low #=> Integer
    #   resp.data.persons[0].person.face.age_range.high #=> Integer
    #   resp.data.persons[0].person.face.smile #=> Types::Smile
    #   resp.data.persons[0].person.face.smile.value #=> Boolean
    #   resp.data.persons[0].person.face.smile.confidence #=> Float
    #   resp.data.persons[0].person.face.eyeglasses #=> Types::Eyeglasses
    #   resp.data.persons[0].person.face.eyeglasses.value #=> Boolean
    #   resp.data.persons[0].person.face.eyeglasses.confidence #=> Float
    #   resp.data.persons[0].person.face.sunglasses #=> Types::Sunglasses
    #   resp.data.persons[0].person.face.sunglasses.value #=> Boolean
    #   resp.data.persons[0].person.face.sunglasses.confidence #=> Float
    #   resp.data.persons[0].person.face.gender #=> Types::Gender
    #   resp.data.persons[0].person.face.gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.persons[0].person.face.gender.confidence #=> Float
    #   resp.data.persons[0].person.face.beard #=> Types::Beard
    #   resp.data.persons[0].person.face.beard.value #=> Boolean
    #   resp.data.persons[0].person.face.beard.confidence #=> Float
    #   resp.data.persons[0].person.face.mustache #=> Types::Mustache
    #   resp.data.persons[0].person.face.mustache.value #=> Boolean
    #   resp.data.persons[0].person.face.mustache.confidence #=> Float
    #   resp.data.persons[0].person.face.eyes_open #=> Types::EyeOpen
    #   resp.data.persons[0].person.face.eyes_open.value #=> Boolean
    #   resp.data.persons[0].person.face.eyes_open.confidence #=> Float
    #   resp.data.persons[0].person.face.mouth_open #=> Types::MouthOpen
    #   resp.data.persons[0].person.face.mouth_open.value #=> Boolean
    #   resp.data.persons[0].person.face.mouth_open.confidence #=> Float
    #   resp.data.persons[0].person.face.emotions #=> Array<Emotion>
    #   resp.data.persons[0].person.face.emotions[0] #=> Types::Emotion
    #   resp.data.persons[0].person.face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.persons[0].person.face.emotions[0].confidence #=> Float
    #   resp.data.persons[0].person.face.landmarks #=> Array<Landmark>
    #   resp.data.persons[0].person.face.landmarks[0] #=> Types::Landmark
    #   resp.data.persons[0].person.face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.persons[0].person.face.landmarks[0].x #=> Float
    #   resp.data.persons[0].person.face.landmarks[0].y #=> Float
    #   resp.data.persons[0].person.face.pose #=> Types::Pose
    #   resp.data.persons[0].person.face.pose.roll #=> Float
    #   resp.data.persons[0].person.face.pose.yaw #=> Float
    #   resp.data.persons[0].person.face.pose.pitch #=> Float
    #   resp.data.persons[0].person.face.quality #=> Types::ImageQuality
    #   resp.data.persons[0].person.face.quality.brightness #=> Float
    #   resp.data.persons[0].person.face.quality.sharpness #=> Float
    #   resp.data.persons[0].person.face.confidence #=> Float
    #
    def get_person_tracking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPersonTrackingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPersonTrackingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPersonTracking
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetPersonTracking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPersonTracking,
        stubs: @stubs,
        params_class: Params::GetPersonTrackingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_person_tracking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the segment detection results of a Amazon Rekognition Video analysis started by <a>StartSegmentDetection</a>.</p>
    #          <p>Segment detection with Amazon Rekognition Video is an asynchronous operation. You start segment detection by
    #       calling <a>StartSegmentDetection</a> which returns a job identifier (<code>JobId</code>).
    #       When the segment detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service
    #       topic registered in the initial call to <code>StartSegmentDetection</code>. To get the results
    #       of the segment detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #       if so, call <code>GetSegmentDetection</code> and pass the job identifier (<code>JobId</code>) from the initial call
    #       of <code>StartSegmentDetection</code>.</p>
    #          <p>
    #             <code>GetSegmentDetection</code> returns detected segments in an array (<code>Segments</code>)
    #       of <a>SegmentDetection</a> objects. <code>Segments</code> is sorted by the segment types
    #       specified in the <code>SegmentTypes</code> input parameter of <code>StartSegmentDetection</code>.
    #     Each element of the array includes the detected segment, the precentage confidence in the acuracy
    #       of the detected segment, the type of the segment, and the frame in which the segment was detected.</p>
    #          <p>Use <code>SelectedSegmentTypes</code> to find out the type of segment detection requested in the
    #     call to <code>StartSegmentDetection</code>.</p>
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of segment detections returned. If there are more results than
    #       specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains
    #       a pagination token for getting the next set of results. To get the next page of results, call <code>GetSegmentDetection</code>
    #       and populate the <code>NextToken</code> request parameter with the token value returned from the previous
    #       call to <code>GetSegmentDetection</code>.</p>
    #
    #          <p>For more information, see Detecting video segments in stored video in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSegmentDetectionInput}.
    #
    # @option params [String] :job_id
    #   <p>Job identifier for the text detection operation for which you want results returned.
    #         You get the job identifer from an initial call to <code>StartSegmentDetection</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
    #         request to retrieve the next set of text.</p>
    #
    # @return [Types::GetSegmentDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_detection(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSegmentDetectionOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Array<VideoMetadata>
    #   resp.data.video_metadata[0] #=> Types::VideoMetadata
    #   resp.data.video_metadata[0].codec #=> String
    #   resp.data.video_metadata[0].duration_millis #=> Integer
    #   resp.data.video_metadata[0].format #=> String
    #   resp.data.video_metadata[0].frame_rate #=> Float
    #   resp.data.video_metadata[0].frame_height #=> Integer
    #   resp.data.video_metadata[0].frame_width #=> Integer
    #   resp.data.video_metadata[0].color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.audio_metadata #=> Array<AudioMetadata>
    #   resp.data.audio_metadata[0] #=> Types::AudioMetadata
    #   resp.data.audio_metadata[0].codec #=> String
    #   resp.data.audio_metadata[0].duration_millis #=> Integer
    #   resp.data.audio_metadata[0].sample_rate #=> Integer
    #   resp.data.audio_metadata[0].number_of_channels #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.segments #=> Array<SegmentDetection>
    #   resp.data.segments[0] #=> Types::SegmentDetection
    #   resp.data.segments[0].type #=> String, one of ["TECHNICAL_CUE", "SHOT"]
    #   resp.data.segments[0].start_timestamp_millis #=> Integer
    #   resp.data.segments[0].end_timestamp_millis #=> Integer
    #   resp.data.segments[0].duration_millis #=> Integer
    #   resp.data.segments[0].start_timecode_smpte #=> String
    #   resp.data.segments[0].end_timecode_smpte #=> String
    #   resp.data.segments[0].duration_smpte #=> String
    #   resp.data.segments[0].technical_cue_segment #=> Types::TechnicalCueSegment
    #   resp.data.segments[0].technical_cue_segment.type #=> String, one of ["ColorBars", "EndCredits", "BlackFrames", "OpeningCredits", "StudioLogo", "Slate", "Content"]
    #   resp.data.segments[0].technical_cue_segment.confidence #=> Float
    #   resp.data.segments[0].shot_segment #=> Types::ShotSegment
    #   resp.data.segments[0].shot_segment.index #=> Integer
    #   resp.data.segments[0].shot_segment.confidence #=> Float
    #   resp.data.segments[0].start_frame_number #=> Integer
    #   resp.data.segments[0].end_frame_number #=> Integer
    #   resp.data.segments[0].duration_frames #=> Integer
    #   resp.data.selected_segment_types #=> Array<SegmentTypeInfo>
    #   resp.data.selected_segment_types[0] #=> Types::SegmentTypeInfo
    #   resp.data.selected_segment_types[0].type #=> String, one of ["TECHNICAL_CUE", "SHOT"]
    #   resp.data.selected_segment_types[0].model_version #=> String
    #
    def get_segment_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSegmentDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSegmentDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSegmentDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetSegmentDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSegmentDetection,
        stubs: @stubs,
        params_class: Params::GetSegmentDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_segment_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the text detection results of a Amazon Rekognition Video analysis started by <a>StartTextDetection</a>.</p>
    #          <p>Text detection with Amazon Rekognition Video is an asynchronous operation. You start text detection by
    #      calling <a>StartTextDetection</a> which returns a job identifier (<code>JobId</code>)
    #      When the text detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service
    #      topic registered in the initial call to <code>StartTextDetection</code>. To get the results
    #      of the text detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #      if so, call <code>GetTextDetection</code> and pass the job identifier (<code>JobId</code>) from the initial call
    #      of <code>StartLabelDetection</code>.</p>
    #          <p>
    #             <code>GetTextDetection</code> returns an array of detected text (<code>TextDetections</code>) sorted by
    #        the time the text was detected, up to 50 words per frame of video.</p>
    #          <p>Each element of the array includes the detected text, the precentage confidence in the acuracy
    #        of the detected text, the time the text was detected, bounding box information for where the text
    #        was located, and unique identifiers for words and their lines.</p>
    #          <p>Use MaxResults parameter to limit the number of text detections returned. If there are more results than
    #      specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains
    #      a pagination token for getting the next set of results. To get the next page of results, call <code>GetTextDetection</code>
    #      and populate the <code>NextToken</code> request parameter with the token value returned from the previous
    #      call to <code>GetTextDetection</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTextDetectionInput}.
    #
    # @option params [String] :job_id
    #   <p>Job identifier for the text detection operation for which you want results returned.
    #           You get the job identifer from an initial call to <code>StartTextDetection</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns
    #         a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>
    #
    # @return [Types::GetTextDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_text_detection(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTextDetectionOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.video_metadata #=> Types::VideoMetadata
    #   resp.data.video_metadata.codec #=> String
    #   resp.data.video_metadata.duration_millis #=> Integer
    #   resp.data.video_metadata.format #=> String
    #   resp.data.video_metadata.frame_rate #=> Float
    #   resp.data.video_metadata.frame_height #=> Integer
    #   resp.data.video_metadata.frame_width #=> Integer
    #   resp.data.video_metadata.color_range #=> String, one of ["FULL", "LIMITED"]
    #   resp.data.text_detections #=> Array<TextDetectionResult>
    #   resp.data.text_detections[0] #=> Types::TextDetectionResult
    #   resp.data.text_detections[0].timestamp #=> Integer
    #   resp.data.text_detections[0].text_detection #=> Types::TextDetection
    #   resp.data.text_detections[0].text_detection.detected_text #=> String
    #   resp.data.text_detections[0].text_detection.type #=> String, one of ["LINE", "WORD"]
    #   resp.data.text_detections[0].text_detection.id #=> Integer
    #   resp.data.text_detections[0].text_detection.parent_id #=> Integer
    #   resp.data.text_detections[0].text_detection.confidence #=> Float
    #   resp.data.text_detections[0].text_detection.geometry #=> Types::Geometry
    #   resp.data.text_detections[0].text_detection.geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.text_detections[0].text_detection.geometry.bounding_box.width #=> Float
    #   resp.data.text_detections[0].text_detection.geometry.bounding_box.height #=> Float
    #   resp.data.text_detections[0].text_detection.geometry.bounding_box.left #=> Float
    #   resp.data.text_detections[0].text_detection.geometry.bounding_box.top #=> Float
    #   resp.data.text_detections[0].text_detection.geometry.polygon #=> Array<Point>
    #   resp.data.text_detections[0].text_detection.geometry.polygon[0] #=> Types::Point
    #   resp.data.text_detections[0].text_detection.geometry.polygon[0].x #=> Float
    #   resp.data.text_detections[0].text_detection.geometry.polygon[0].y #=> Float
    #   resp.data.next_token #=> String
    #   resp.data.text_model_version #=> String
    #
    def get_text_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTextDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTextDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTextDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::GetTextDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTextDetection,
        stubs: @stubs,
        params_class: Params::GetTextDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_text_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects faces in the input image and adds them to the specified collection. </p>
    #          <p>Amazon Rekognition doesn't save the actual faces that are detected. Instead, the underlying
    #       detection algorithm first detects the faces in the input image. For each face, the algorithm
    #       extracts facial features into a feature vector, and stores it in the backend database.
    #       Amazon Rekognition uses feature vectors when it performs face match and search operations using the
    #         <a>SearchFaces</a> and <a>SearchFacesByImage</a>
    #       operations.</p>
    #
    #          <p>For more information, see Adding faces to a collection in the Amazon Rekognition
    #       Developer Guide.</p>
    #          <p>To get the number of faces in a collection, call <a>DescribeCollection</a>. </p>
    #
    #          <p>If you're using version 1.0 of the face detection model, <code>IndexFaces</code>
    #       indexes the 15 largest faces in the input image. Later versions of the face detection model
    #       index the 100 largest faces in the input image. </p>
    #          <p>If you're using version 4 or later of the face model, image orientation information
    #      is not returned in the <code>OrientationCorrection</code> field. </p>
    #          <p>To determine which version of the model you're using, call <a>DescribeCollection</a>
    #       and supply the collection ID. You can also get the model version from the value of <code>FaceModelVersion</code> in the response
    #       from <code>IndexFaces</code>
    #          </p>
    #
    #          <p>For more information, see Model Versioning in the Amazon Rekognition Developer
    #       Guide.</p>
    #          <p>If you provide the optional <code>ExternalImageId</code> for the input image you
    #       provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the <a>ListFaces</a> operation, the response returns the external ID. You can use this
    #       external image ID to create a client-side index to associate the faces with each image. You
    #       can then use the index to find all faces in an image.</p>
    #          <p>You can specify the maximum number of faces to index with the <code>MaxFaces</code> input
    #       parameter. This is useful when you want to index the largest faces in an image and don't want to index
    #       smaller faces, such as those belonging to people standing in the background.</p>
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a
    #       variety of common use cases. By default, <code>IndexFaces</code> chooses the quality bar that's
    #       used to filter faces.  You can also explicitly choose
    #       the quality bar. Use <code>QualityFilter</code>, to set the quality bar
    #       by specifying <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>.
    #       If you do not want to filter detected faces, specify <code>NONE</code>. </p>
    #          <note>
    #             <p>To use quality filtering, you need a collection associated with version 3 of the
    #     face model or higher. To get the version of the face model associated with a collection, call
    #       <a>DescribeCollection</a>. </p>
    #          </note>
    #          <p>Information about faces detected in an image, but not indexed, is returned in an array of
    #       <a>UnindexedFace</a> objects, <code>UnindexedFaces</code>. Faces aren't
    #       indexed for reasons such as:</p>
    #          <ul>
    #             <li>
    #                <p>The number of faces detected exceeds the value of the <code>MaxFaces</code> request
    #           parameter.</p>
    #             </li>
    #             <li>
    #                <p>The face is too small compared to the image dimensions.</p>
    #             </li>
    #             <li>
    #                <p>The face is too blurry.</p>
    #             </li>
    #             <li>
    #                <p>The image is too dark.</p>
    #             </li>
    #             <li>
    #                <p>The face has an extreme pose.</p>
    #             </li>
    #             <li>
    #                <p>The face doesn’t have enough detail to be suitable for face search.</p>
    #             </li>
    #          </ul>
    #          <p>In response, the <code>IndexFaces</code> operation returns an array of metadata for
    #       all detected faces, <code>FaceRecords</code>. This includes: </p>
    #          <ul>
    #             <li>
    #                <p>The bounding box, <code>BoundingBox</code>, of the detected face. </p>
    #             </li>
    #             <li>
    #                <p>A confidence value, <code>Confidence</code>, which indicates the confidence that the
    #           bounding box contains a face.</p>
    #             </li>
    #             <li>
    #                <p>A face ID, <code>FaceId</code>, assigned by the service for each face that's detected
    #           and stored.</p>
    #             </li>
    #             <li>
    #                <p>An image ID, <code>ImageId</code>, assigned by the service for the input image.</p>
    #             </li>
    #          </ul>
    #          <p>If you request all facial attributes (by using the <code>detectionAttributes</code>
    #       parameter), Amazon Rekognition returns detailed facial attributes, such as facial landmarks (for
    #       example, location of eye and mouth) and other facial attributes. If you provide
    #       the same image, specify the same collection, and use the same external ID in the
    #         <code>IndexFaces</code> operation, Amazon Rekognition doesn't save duplicate face metadata.</p>
    #
    #
    #          <p></p>
    #
    #
    #          <p>The input image is passed either as base64-encoded image bytes, or as a reference to an
    #       image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations,
    #       passing image bytes isn't supported. The image must be formatted as a PNG or JPEG file. </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:IndexFaces</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::IndexFacesInput}.
    #
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection to which you want to add the faces that are detected
    #         in the input images.</p>
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [String] :external_image_id
    #   <p>The ID you want to assign to all the faces detected in the image.</p>
    #
    # @option params [Array<String>] :detection_attributes
    #   <p>An array of facial attributes that you want to be returned. This can be the default
    #         list of attributes or all attributes. If you don't specify a value for <code>Attributes</code>
    #         or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial
    #         attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all
    #         facial attributes are returned, but the operation takes longer to complete.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    #
    # @option params [Integer] :max_faces
    #   <p>The maximum number of faces to index. The value of <code>MaxFaces</code> must be greater
    #         than or equal to 1. <code>IndexFaces</code> returns no more than 100 detected faces in an
    #         image, even if you specify a larger value for <code>MaxFaces</code>.</p>
    #            <p>If <code>IndexFaces</code> detects more faces than the value of <code>MaxFaces</code>, the
    #         faces with the lowest quality are filtered out first. If there are still more faces than the
    #         value of <code>MaxFaces</code>, the faces with the smallest bounding boxes are filtered out
    #         (up to the number that's needed to satisfy the value of <code>MaxFaces</code>). Information
    #         about the unindexed faces is available in the <code>UnindexedFaces</code> array. </p>
    #            <p>The faces that are returned by <code>IndexFaces</code> are sorted by the largest face
    #         bounding box size to the smallest size, in descending order.</p>
    #            <p>
    #               <code>MaxFaces</code> can be used with a collection associated with any version of
    #         the face model.</p>
    #
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #       Filtered faces aren't indexed. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality bar.
    #         If you specify <code>LOW</code>,
    #         <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
    #         don’t meet the chosen quality bar.  The default value is <code>AUTO</code>.
    #
    #         The quality bar is based on a variety of common use cases. Low-quality
    #         detections can occur for a number of reasons. Some examples are an object that's misidentified
    #         as a face, a face that's too blurry, or a face with a
    #         pose that's too extreme to use. If you specify <code>NONE</code>, no
    #         filtering is performed.
    #       </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>
    #
    # @return [Types::IndexFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.index_faces(
    #     collection_id: 'CollectionId', # required
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     external_image_id: 'ExternalImageId',
    #     detection_attributes: [
    #       'DEFAULT' # accepts ["DEFAULT", "ALL"]
    #     ],
    #     max_faces: 1,
    #     quality_filter: 'NONE' # accepts ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IndexFacesOutput
    #   resp.data.face_records #=> Array<FaceRecord>
    #   resp.data.face_records[0] #=> Types::FaceRecord
    #   resp.data.face_records[0].face #=> Types::Face
    #   resp.data.face_records[0].face.face_id #=> String
    #   resp.data.face_records[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.face_records[0].face.bounding_box.width #=> Float
    #   resp.data.face_records[0].face.bounding_box.height #=> Float
    #   resp.data.face_records[0].face.bounding_box.left #=> Float
    #   resp.data.face_records[0].face.bounding_box.top #=> Float
    #   resp.data.face_records[0].face.image_id #=> String
    #   resp.data.face_records[0].face.external_image_id #=> String
    #   resp.data.face_records[0].face.confidence #=> Float
    #   resp.data.face_records[0].face.index_faces_model_version #=> String
    #   resp.data.face_records[0].face_detail #=> Types::FaceDetail
    #   resp.data.face_records[0].face_detail.bounding_box #=> Types::BoundingBox
    #   resp.data.face_records[0].face_detail.age_range #=> Types::AgeRange
    #   resp.data.face_records[0].face_detail.age_range.low #=> Integer
    #   resp.data.face_records[0].face_detail.age_range.high #=> Integer
    #   resp.data.face_records[0].face_detail.smile #=> Types::Smile
    #   resp.data.face_records[0].face_detail.smile.value #=> Boolean
    #   resp.data.face_records[0].face_detail.smile.confidence #=> Float
    #   resp.data.face_records[0].face_detail.eyeglasses #=> Types::Eyeglasses
    #   resp.data.face_records[0].face_detail.eyeglasses.value #=> Boolean
    #   resp.data.face_records[0].face_detail.eyeglasses.confidence #=> Float
    #   resp.data.face_records[0].face_detail.sunglasses #=> Types::Sunglasses
    #   resp.data.face_records[0].face_detail.sunglasses.value #=> Boolean
    #   resp.data.face_records[0].face_detail.sunglasses.confidence #=> Float
    #   resp.data.face_records[0].face_detail.gender #=> Types::Gender
    #   resp.data.face_records[0].face_detail.gender.value #=> String, one of ["Male", "Female"]
    #   resp.data.face_records[0].face_detail.gender.confidence #=> Float
    #   resp.data.face_records[0].face_detail.beard #=> Types::Beard
    #   resp.data.face_records[0].face_detail.beard.value #=> Boolean
    #   resp.data.face_records[0].face_detail.beard.confidence #=> Float
    #   resp.data.face_records[0].face_detail.mustache #=> Types::Mustache
    #   resp.data.face_records[0].face_detail.mustache.value #=> Boolean
    #   resp.data.face_records[0].face_detail.mustache.confidence #=> Float
    #   resp.data.face_records[0].face_detail.eyes_open #=> Types::EyeOpen
    #   resp.data.face_records[0].face_detail.eyes_open.value #=> Boolean
    #   resp.data.face_records[0].face_detail.eyes_open.confidence #=> Float
    #   resp.data.face_records[0].face_detail.mouth_open #=> Types::MouthOpen
    #   resp.data.face_records[0].face_detail.mouth_open.value #=> Boolean
    #   resp.data.face_records[0].face_detail.mouth_open.confidence #=> Float
    #   resp.data.face_records[0].face_detail.emotions #=> Array<Emotion>
    #   resp.data.face_records[0].face_detail.emotions[0] #=> Types::Emotion
    #   resp.data.face_records[0].face_detail.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.face_records[0].face_detail.emotions[0].confidence #=> Float
    #   resp.data.face_records[0].face_detail.landmarks #=> Array<Landmark>
    #   resp.data.face_records[0].face_detail.landmarks[0] #=> Types::Landmark
    #   resp.data.face_records[0].face_detail.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.face_records[0].face_detail.landmarks[0].x #=> Float
    #   resp.data.face_records[0].face_detail.landmarks[0].y #=> Float
    #   resp.data.face_records[0].face_detail.pose #=> Types::Pose
    #   resp.data.face_records[0].face_detail.pose.roll #=> Float
    #   resp.data.face_records[0].face_detail.pose.yaw #=> Float
    #   resp.data.face_records[0].face_detail.pose.pitch #=> Float
    #   resp.data.face_records[0].face_detail.quality #=> Types::ImageQuality
    #   resp.data.face_records[0].face_detail.quality.brightness #=> Float
    #   resp.data.face_records[0].face_detail.quality.sharpness #=> Float
    #   resp.data.face_records[0].face_detail.confidence #=> Float
    #   resp.data.orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   resp.data.face_model_version #=> String
    #   resp.data.unindexed_faces #=> Array<UnindexedFace>
    #   resp.data.unindexed_faces[0] #=> Types::UnindexedFace
    #   resp.data.unindexed_faces[0].reasons #=> Array<String>
    #   resp.data.unindexed_faces[0].reasons[0] #=> String, one of ["EXCEEDS_MAX_FACES", "EXTREME_POSE", "LOW_BRIGHTNESS", "LOW_SHARPNESS", "LOW_CONFIDENCE", "SMALL_BOUNDING_BOX", "LOW_FACE_QUALITY"]
    #   resp.data.unindexed_faces[0].face_detail #=> Types::FaceDetail
    #
    def index_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IndexFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IndexFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IndexFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::IndexFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IndexFaces,
        stubs: @stubs,
        params_class: Params::IndexFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :index_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns list of collection IDs in your account.
    #     If the result is truncated, the response also provides a <code>NextToken</code>
    #     that you can use in the subsequent request to fetch the next set of collection IDs.</p>
    #
    #          <p>For an example, see Listing collections in the Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:ListCollections</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCollectionsInput}.
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of collection IDs to return. </p>
    #
    # @return [Types::ListCollectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collections(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCollectionsOutput
    #   resp.data.collection_ids #=> Array<String>
    #   resp.data.collection_ids[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.face_model_versions #=> Array<String>
    #   resp.data.face_model_versions[0] #=> String
    #
    def list_collections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCollectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCollectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCollections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::ListCollections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCollections,
        stubs: @stubs,
        params_class: Params::ListCollectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_collections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Lists the entries (images) within a dataset. An entry is a
    # JSON Line that contains the information for a single image, including
    # the image location, assigned labels, and object location bounding boxes. For
    # more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-manifest-files.html">Creating a manifest file</a>.</p>
    #          <p>JSON Lines in the response include information about non-terminal
    #    errors found in the dataset.
    #    Non terminal errors are reported in <code>errors</code> lists within each JSON Line. The
    #    same information is reported in the training and testing validation result manifests that
    #    Amazon Rekognition Custom Labels creates during model training.
    #  </p>
    #
    #          <p>You can filter the response in variety of ways, such as choosing which labels to return and returning JSON Lines created after a specific date.
    # </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:ListDatasetEntries</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetEntriesInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) for the dataset that you want to use.
    #   </p>
    #
    # @option params [Array<String>] :contains_labels
    #   <p>Specifies a label filter for the response. The response includes an entry only if one or more of the labels in <code>ContainsLabels</code> exist in the entry.
    #         </p>
    #
    # @option params [Boolean] :labeled
    #   <p>
    #      Specify <code>true</code> to get only the JSON Lines where the image is labeled.
    #      Specify <code>false</code> to get only the JSON Lines where the image isn't labeled. If you
    #      don't specify <code>Labeled</code>, <code>ListDatasetEntries</code> returns JSON Lines for labeled and unlabeled
    #      images.
    #   </p>
    #
    # @option params [String] :source_ref_contains
    #   <p>If specified, <code>ListDatasetEntries</code> only returns JSON Lines where the value of <code>SourceRefContains</code> is
    #      part of the <code>source-ref</code> field. The <code>source-ref</code> field contains the Amazon S3 location of the image.
    #      You can use <code>SouceRefContains</code> for tasks such as getting the JSON Line for a single image, or gettting JSON Lines for all images within a specific folder.</p>
    #
    # @option params [Boolean] :has_errors
    #   <p>Specifies an error filter for the response. Specify <code>True</code> to only include entries that have errors.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    # @return [Types::ListDatasetEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_entries(
    #     dataset_arn: 'DatasetArn', # required
    #     contains_labels: [
    #       'member'
    #     ],
    #     labeled: false,
    #     source_ref_contains: 'SourceRefContains',
    #     has_errors: false,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetEntriesOutput
    #   resp.data.dataset_entries #=> Array<String>
    #   resp.data.dataset_entries[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_dataset_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetEntriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetEntries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotReadyException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::ListDatasetEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetEntries,
        stubs: @stubs,
        params_class: Params::ListDatasetEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_entries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see
    #    <a href="https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-labeling-images.html">Labeling images</a>.
    # </p>
    #          <p>
    #       Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see Labeling images
    #       in the <i>Amazon Rekognition Custom Labels Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetLabelsInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to use.
    #   </p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    # @return [Types::ListDatasetLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_labels(
    #     dataset_arn: 'DatasetArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetLabelsOutput
    #   resp.data.dataset_label_descriptions #=> Array<DatasetLabelDescription>
    #   resp.data.dataset_label_descriptions[0] #=> Types::DatasetLabelDescription
    #   resp.data.dataset_label_descriptions[0].label_name #=> String
    #   resp.data.dataset_label_descriptions[0].label_stats #=> Types::DatasetLabelStats
    #   resp.data.dataset_label_descriptions[0].label_stats.entry_count #=> Integer
    #   resp.data.dataset_label_descriptions[0].label_stats.bounding_box_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_dataset_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasetLabels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotReadyException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::ListDatasetLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasetLabels,
        stubs: @stubs,
        params_class: Params::ListDatasetLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dataset_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata for faces in the specified collection.
    #       This metadata includes information such as the bounding box coordinates, the confidence
    #       (that the bounding box contains a face), and face ID. For an example, see Listing Faces in a Collection
    #       in the Amazon Rekognition Developer Guide.</p>
    #
    #
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:ListFaces</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFacesInput}.
    #
    # @option params [String] :collection_id
    #   <p>ID of the collection from which to list the faces.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #         Amazon Rekognition returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of faces.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of faces to return.</p>
    #
    # @return [Types::ListFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_faces(
    #     collection_id: 'CollectionId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFacesOutput
    #   resp.data.faces #=> Array<Face>
    #   resp.data.faces[0] #=> Types::Face
    #   resp.data.faces[0].face_id #=> String
    #   resp.data.faces[0].bounding_box #=> Types::BoundingBox
    #   resp.data.faces[0].bounding_box.width #=> Float
    #   resp.data.faces[0].bounding_box.height #=> Float
    #   resp.data.faces[0].bounding_box.left #=> Float
    #   resp.data.faces[0].bounding_box.top #=> Float
    #   resp.data.faces[0].image_id #=> String
    #   resp.data.faces[0].external_image_id #=> String
    #   resp.data.faces[0].confidence #=> Float
    #   resp.data.faces[0].index_faces_model_version #=> String
    #   resp.data.next_token #=> String
    #   resp.data.face_model_version #=> String
    #
    def list_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::ListFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFaces,
        stubs: @stubs,
        params_class: Params::ListFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of stream processors that you have created with <a>CreateStreamProcessor</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamProcessorsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video
    #               returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>
    #
    # @return [Types::ListStreamProcessorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_processors(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamProcessorsOutput
    #   resp.data.next_token #=> String
    #   resp.data.stream_processors #=> Array<StreamProcessor>
    #   resp.data.stream_processors[0] #=> Types::StreamProcessor
    #   resp.data.stream_processors[0].name #=> String
    #   resp.data.stream_processors[0].status #=> String, one of ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"]
    #
    def list_stream_processors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamProcessorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamProcessorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamProcessors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::InvalidPaginationTokenException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::ListStreamProcessors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamProcessors,
        stubs: @stubs,
        params_class: Params::ListStreamProcessorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stream_processors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a list of tags in an Amazon Rekognition collection, stream processor, or Custom Labels model.
    #     </p>
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:ListTagsForResource</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that contains the tags that you want a list of.
    #       </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
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

    # <p>Returns an array of celebrities recognized in the input image.  For more information, see Recognizing celebrities
    #     in the Amazon Rekognition Developer Guide. </p>
    #          <p>
    #             <code>RecognizeCelebrities</code> returns the 64 largest faces in the image. It lists the
    #       recognized celebrities in the <code>CelebrityFaces</code> array and any unrecognized faces in
    #       the <code>UnrecognizedFaces</code> array. <code>RecognizeCelebrities</code> doesn't return
    #       celebrities whose faces aren't among the largest 64 faces in the image.</p>
    #
    #          <p>For each celebrity recognized, <code>RecognizeCelebrities</code> returns a
    #         <code>Celebrity</code> object. The <code>Celebrity</code> object contains the celebrity
    #       name, ID, URL links to additional information, match confidence, and a
    #         <code>ComparedFace</code> object that you can use to locate the celebrity's face on the
    #       image.</p>
    #          <p>Amazon Rekognition doesn't retain information about which images a celebrity has been recognized
    #       in. Your application must store this information and use the <code>Celebrity</code> ID
    #       property as a unique identifier for the celebrity. If you don't store the celebrity name or
    #       additional information URLs returned by <code>RecognizeCelebrities</code>, you will need the
    #       ID to identify the celebrity in a call to the <a>GetCelebrityInfo</a>
    #       operation.</p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #
    #
    #
    #
    #          <p>For an example, see Recognizing celebrities in an image in the Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:RecognizeCelebrities</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::RecognizeCelebritiesInput}.
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    #
    # @return [Types::RecognizeCelebritiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_celebrities(
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecognizeCelebritiesOutput
    #   resp.data.celebrity_faces #=> Array<Celebrity>
    #   resp.data.celebrity_faces[0] #=> Types::Celebrity
    #   resp.data.celebrity_faces[0].urls #=> Array<String>
    #   resp.data.celebrity_faces[0].urls[0] #=> String
    #   resp.data.celebrity_faces[0].name #=> String
    #   resp.data.celebrity_faces[0].id #=> String
    #   resp.data.celebrity_faces[0].face #=> Types::ComparedFace
    #   resp.data.celebrity_faces[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.celebrity_faces[0].face.bounding_box.width #=> Float
    #   resp.data.celebrity_faces[0].face.bounding_box.height #=> Float
    #   resp.data.celebrity_faces[0].face.bounding_box.left #=> Float
    #   resp.data.celebrity_faces[0].face.bounding_box.top #=> Float
    #   resp.data.celebrity_faces[0].face.confidence #=> Float
    #   resp.data.celebrity_faces[0].face.landmarks #=> Array<Landmark>
    #   resp.data.celebrity_faces[0].face.landmarks[0] #=> Types::Landmark
    #   resp.data.celebrity_faces[0].face.landmarks[0].type #=> String, one of ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #   resp.data.celebrity_faces[0].face.landmarks[0].x #=> Float
    #   resp.data.celebrity_faces[0].face.landmarks[0].y #=> Float
    #   resp.data.celebrity_faces[0].face.pose #=> Types::Pose
    #   resp.data.celebrity_faces[0].face.pose.roll #=> Float
    #   resp.data.celebrity_faces[0].face.pose.yaw #=> Float
    #   resp.data.celebrity_faces[0].face.pose.pitch #=> Float
    #   resp.data.celebrity_faces[0].face.quality #=> Types::ImageQuality
    #   resp.data.celebrity_faces[0].face.quality.brightness #=> Float
    #   resp.data.celebrity_faces[0].face.quality.sharpness #=> Float
    #   resp.data.celebrity_faces[0].face.emotions #=> Array<Emotion>
    #   resp.data.celebrity_faces[0].face.emotions[0] #=> Types::Emotion
    #   resp.data.celebrity_faces[0].face.emotions[0].type #=> String, one of ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #   resp.data.celebrity_faces[0].face.emotions[0].confidence #=> Float
    #   resp.data.celebrity_faces[0].face.smile #=> Types::Smile
    #   resp.data.celebrity_faces[0].face.smile.value #=> Boolean
    #   resp.data.celebrity_faces[0].face.smile.confidence #=> Float
    #   resp.data.celebrity_faces[0].match_confidence #=> Float
    #   resp.data.celebrity_faces[0].known_gender #=> Types::KnownGender
    #   resp.data.celebrity_faces[0].known_gender.type #=> String, one of ["Male", "Female", "Nonbinary", "Unlisted"]
    #   resp.data.unrecognized_faces #=> Array<ComparedFace>
    #   resp.data.orientation_correction #=> String, one of ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    def recognize_celebrities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecognizeCelebritiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecognizeCelebritiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecognizeCelebrities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::RecognizeCelebrities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecognizeCelebrities,
        stubs: @stubs,
        params_class: Params::RecognizeCelebritiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :recognize_celebrities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a given input face ID, searches for matching faces in the collection the face
    #       belongs to. You get a face ID when you add a face to the collection using the <a>IndexFaces</a> operation. The operation compares the features of the input face with
    #       faces in the specified collection. </p>
    #          <note>
    #             <p>You can also search faces without indexing faces by using the
    #           <code>SearchFacesByImage</code> operation.</p>
    #          </note>
    #
    #          <p>
    #      The operation response returns
    #       an array of faces that match, ordered by similarity score with the highest
    #       similarity first. More specifically, it is an
    #       array of metadata for each face match that is found. Along with the metadata, the response also
    #       includes a <code>confidence</code> value for each face match, indicating the confidence
    #       that the specific face matches the input face.
    #     </p>
    #
    #          <p>For an example, see Searching for a face using its face ID in the Amazon Rekognition Developer Guide.</p>
    #
    #          <p>This operation requires permissions to perform the <code>rekognition:SearchFaces</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchFacesInput}.
    #
    # @option params [String] :collection_id
    #   <p>ID of the collection the face belongs to.</p>
    #
    # @option params [String] :face_id
    #   <p>ID of a face to find matches for in the collection.</p>
    #
    # @option params [Integer] :max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    #
    # @option params [Float] :face_match_threshold
    #   <p>Optional value specifying the minimum confidence in the face match to return. For
    #         example, don't return any matches where confidence in matches is less than 70%.
    #         The default value is 80%.
    #       </p>
    #
    # @return [Types::SearchFacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_faces(
    #     collection_id: 'CollectionId', # required
    #     face_id: 'FaceId', # required
    #     max_faces: 1,
    #     face_match_threshold: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchFacesOutput
    #   resp.data.searched_face_id #=> String
    #   resp.data.face_matches #=> Array<FaceMatch>
    #   resp.data.face_matches[0] #=> Types::FaceMatch
    #   resp.data.face_matches[0].similarity #=> Float
    #   resp.data.face_matches[0].face #=> Types::Face
    #   resp.data.face_matches[0].face.face_id #=> String
    #   resp.data.face_matches[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.face_matches[0].face.bounding_box.width #=> Float
    #   resp.data.face_matches[0].face.bounding_box.height #=> Float
    #   resp.data.face_matches[0].face.bounding_box.left #=> Float
    #   resp.data.face_matches[0].face.bounding_box.top #=> Float
    #   resp.data.face_matches[0].face.image_id #=> String
    #   resp.data.face_matches[0].face.external_image_id #=> String
    #   resp.data.face_matches[0].face.confidence #=> Float
    #   resp.data.face_matches[0].face.index_faces_model_version #=> String
    #   resp.data.face_model_version #=> String
    #
    def search_faces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchFacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchFacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchFaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::SearchFaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchFaces,
        stubs: @stubs,
        params_class: Params::SearchFacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_faces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a given input image, first detects the largest face in the image, and then searches
    #       the specified collection for matching faces. The operation compares the features of the input
    #       face with faces in the specified collection. </p>
    #          <note>
    #             <p>To search for all faces in an input image, you might first call the <a>IndexFaces</a> operation, and then use the face IDs returned in subsequent
    #         calls to the <a>SearchFaces</a> operation. </p>
    #             <p> You can also call the <code>DetectFaces</code> operation and use the bounding boxes
    #         in the response to make face crops, which then you can pass in to the
    #           <code>SearchFacesByImage</code> operation. </p>
    #          </note>
    #
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p>
    #       The response returns an array of faces that match, ordered by similarity score with the
    #       highest similarity first. More specifically, it is an
    #       array of metadata for each face match found. Along with the metadata, the response also
    #       includes a <code>similarity</code> indicating how similar the face is
    #       to the input face.
    #
    #       In the response, the operation also returns the bounding
    #       box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition
    #       used for the input image.
    #     </p>
    #          <p>If no faces are detected in the input image, <code>SearchFacesByImage</code> returns an
    #       <code>InvalidParameterException</code> error. </p>
    #
    #          <p>For an example, Searching for a Face Using an Image in the Amazon Rekognition Developer Guide.</p>
    #
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a
    #       variety of common use cases.
    #       Use <code>QualityFilter</code> to set the quality bar for
    #       filtering by specifying <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>.
    #       If you do not want to filter detected faces, specify <code>NONE</code>. The default
    #       value is <code>NONE</code>.</p>
    #          <note>
    #             <p>To use quality filtering, you need a collection associated with version 3 of the
    #       face model or higher. To get the version of the face model associated with a collection, call
    #       <a>DescribeCollection</a>. </p>
    #          </note>
    #
    #          <p>This operation requires permissions to perform the <code>rekognition:SearchFacesByImage</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchFacesByImageInput}.
    #
    # @option params [String] :collection_id
    #   <p>ID of the collection to search.</p>
    #
    # @option params [Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    # @option params [Integer] :max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    #
    # @option params [Float] :face_match_threshold
    #   <p>(Optional) Specifies the minimum confidence in the face match to return. For example,
    #         don't return any matches where confidence in matches is less than 70%.
    #       The default value is 80%.</p>
    #
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't searched for in the collection. If you specify <code>AUTO</code>, Amazon Rekognition
    #         chooses the quality bar.  If you specify <code>LOW</code>,
    #         <code>MEDIUM</code>, or <code>HIGH</code>, filtering removes all faces that
    #         don’t meet the chosen quality bar.
    #
    #         The quality bar is based on a variety of common use cases. Low-quality
    #         detections can occur for a number of reasons. Some examples are an object that's misidentified
    #         as a face, a face that's too blurry, or a face with a
    #         pose that's too extreme to use. If you specify <code>NONE</code>, no
    #         filtering is performed.  The default value is <code>NONE</code>.
    #       </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3 of the face model or higher.</p>
    #
    # @return [Types::SearchFacesByImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_faces_by_image(
    #     collection_id: 'CollectionId', # required
    #     image: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     max_faces: 1,
    #     face_match_threshold: 1.0,
    #     quality_filter: 'NONE' # accepts ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchFacesByImageOutput
    #   resp.data.searched_face_bounding_box #=> Types::BoundingBox
    #   resp.data.searched_face_bounding_box.width #=> Float
    #   resp.data.searched_face_bounding_box.height #=> Float
    #   resp.data.searched_face_bounding_box.left #=> Float
    #   resp.data.searched_face_bounding_box.top #=> Float
    #   resp.data.searched_face_confidence #=> Float
    #   resp.data.face_matches #=> Array<FaceMatch>
    #   resp.data.face_matches[0] #=> Types::FaceMatch
    #   resp.data.face_matches[0].similarity #=> Float
    #   resp.data.face_matches[0].face #=> Types::Face
    #   resp.data.face_matches[0].face.face_id #=> String
    #   resp.data.face_matches[0].face.bounding_box #=> Types::BoundingBox
    #   resp.data.face_matches[0].face.image_id #=> String
    #   resp.data.face_matches[0].face.external_image_id #=> String
    #   resp.data.face_matches[0].face.confidence #=> Float
    #   resp.data.face_matches[0].face.index_faces_model_version #=> String
    #   resp.data.face_model_version #=> String
    #
    def search_faces_by_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchFacesByImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchFacesByImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchFacesByImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ImageTooLargeException, Errors::InternalServerError, Errors::InvalidImageFormatException]),
        data_parser: Parsers::SearchFacesByImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchFacesByImage,
        stubs: @stubs,
        params_class: Params::SearchFacesByImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_faces_by_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts asynchronous recognition of celebrities in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect celebrities in a video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video.
    #       <code>StartCelebrityRecognition</code>
    #       returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis.
    #       When celebrity recognition analysis is finished, Amazon Rekognition Video publishes a completion status
    #       to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #       To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call  <a>GetCelebrityRecognition</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartCelebrityRecognition</code>. </p>
    #
    #          <p>For more information, see Recognizing celebrities in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::StartCelebrityRecognitionInput}.
    #
    # @option params [Video] :video
    #   <p>The video in which you want to recognize celebrities. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #       <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         celebrity recognition analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartCelebrityRecognitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_celebrity_recognition(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCelebrityRecognitionOutput
    #   resp.data.job_id #=> String
    #
    def start_celebrity_recognition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCelebrityRecognitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCelebrityRecognitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCelebrityRecognition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartCelebrityRecognition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCelebrityRecognition,
        stubs: @stubs,
        params_class: Params::StartCelebrityRecognitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_celebrity_recognition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts asynchronous detection of inappropriate, unwanted, or offensive content in a stored video. For a list of moderation labels in Amazon Rekognition, see
    #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api">Using the image and video moderation APIs</a>.</p>
    #          <p>Amazon Rekognition Video can moderate content in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video. <code>StartContentModeration</code>
    #         returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis.
    #         When content analysis is finished, Amazon Rekognition Video publishes a completion status
    #         to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p>
    #         <p>To get the results of the content analysis, first check that the status value published to the Amazon SNS
    #         topic is <code>SUCCEEDED</code>. If so, call <a>GetContentModeration</a> and pass the job identifier
    #         (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p>
    #
    #          <p>For more information, see Moderating content in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::StartContentModerationInput}.
    #
    # @option params [Video] :video
    #   <p>The video in which you want to detect inappropriate, unwanted, or offensive content. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence
    #         represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence.
    #         100 is the highest confidence.  Amazon Rekognition doesn't return any moderated content labels with a confidence level
    #         lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code>
    #          returns labels with confidence values greater than or equal to 50 percent.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         content analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartContentModerationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_content_moderation(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     min_confidence: 1.0,
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartContentModerationOutput
    #   resp.data.job_id #=> String
    #
    def start_content_moderation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartContentModerationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartContentModerationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartContentModeration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartContentModeration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartContentModeration,
        stubs: @stubs,
        params_class: Params::StartContentModerationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_content_moderation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts asynchronous detection of faces in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket.
    #        Use <a>Video</a> to specify the bucket name and the filename of the video.
    #        <code>StartFaceDetection</code> returns a job identifier (<code>JobId</code>) that you
    #        use to get the results of the operation.
    #        When face detection is finished, Amazon Rekognition Video publishes a completion status
    #        to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #        To get the results of the face detection operation, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <a>GetFaceDetection</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p>
    #
    #          <p>For more information, see Detecting faces in a stored video in the
    #      Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFaceDetectionInput}.
    #
    # @option params [Video] :video
    #   <p>The video in which you want to detect faces. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #            face detection operation. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    # @option params [String] :face_attributes
    #   <p>The face attributes you want returned.</p>
    #            <p>
    #               <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p>
    #            <p>
    #               <code>ALL</code> - All facial attributes are returned.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartFaceDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_face_detection(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     face_attributes: 'DEFAULT', # accepts ["DEFAULT", "ALL"]
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFaceDetectionOutput
    #   resp.data.job_id #=> String
    #
    def start_face_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFaceDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFaceDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFaceDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartFaceDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFaceDetection,
        stubs: @stubs,
        params_class: Params::StartFaceDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_face_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video.</p>
    #          <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video. <code>StartFaceSearch</code>
    #       returns a job identifier (<code>JobId</code>) which you use to get the search results once the search has completed.
    #       When searching is finished, Amazon Rekognition Video publishes a completion status
    #       to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #       To get the search results, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call <a>GetFaceSearch</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>. For more information, see
    #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/procedure-person-search-videos.html">Searching stored videos for faces</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::StartFaceSearchInput}.
    #
    # @option params [Video] :video
    #   <p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [Float] :face_match_threshold
    #   <p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.
    #         The default value is 80%.</p>
    #
    # @option params [String] :collection_id
    #   <p>ID of the collection that contains the faces you want to search for.</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartFaceSearchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_face_search(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     face_match_threshold: 1.0,
    #     collection_id: 'CollectionId', # required
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFaceSearchOutput
    #   resp.data.job_id #=> String
    #
    def start_face_search(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFaceSearchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFaceSearchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFaceSearch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartFaceSearch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFaceSearch,
        stubs: @stubs,
        params_class: Params::StartFaceSearchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_face_search
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts asynchronous detection of labels in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect labels in a video. Labels are instances of real-world entities.
    #        This includes objects like flower, tree, and table; events like
    #        wedding, graduation, and birthday party; concepts like landscape, evening, and nature; and activities
    #        like a person getting out of a car or a person skiing.</p>
    #
    #          <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #        and the filename of the video.
    #         <code>StartLabelDetection</code> returns a job identifier (<code>JobId</code>) which you use to get the
    #        results of the operation. When label detection is finished, Amazon Rekognition Video publishes a completion status
    #         to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p>
    #          <p>To get the results of the label detection operation, first check that the status value published to the Amazon SNS
    #         topic is <code>SUCCEEDED</code>. If so, call  <a>GetLabelDetection</a> and pass the job identifier
    #        (<code>JobId</code>) from the initial call to <code>StartLabelDetection</code>.</p>
    #         <p></p>
    #
    # @param [Hash] params
    #   See {Types::StartLabelDetectionInput}.
    #
    # @option params [Video] :video
    #   <p>The video in which you want to detect labels. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence
    #          represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence.
    #          100 is the highest confidence.  Amazon Rekognition Video doesn't return any labels with a confidence level
    #          lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with confidence
    #        values greater than or equal to 50 percent.</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartLabelDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_label_detection(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     min_confidence: 1.0,
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartLabelDetectionOutput
    #   resp.data.job_id #=> String
    #
    def start_label_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartLabelDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartLabelDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartLabelDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartLabelDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartLabelDetection,
        stubs: @stubs,
        params_class: Params::StartLabelDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_label_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the asynchronous tracking of a person's path in a stored video.</p>
    #          <p>Amazon Rekognition Video can track the path of people in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #        and the filename of the video. <code>StartPersonTracking</code>
    #        returns a job identifier (<code>JobId</code>) which you use to get the results of the operation.
    #        When label detection is finished, Amazon Rekognition publishes a completion status
    #        to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. </p>
    #          <p>To get the results of the person detection operation, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <a>GetPersonTracking</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPersonTrackingInput}.
    #
    # @option params [Video] :video
    #   <p>The video in which you want to detect people. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @return [Types::StartPersonTrackingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_person_tracking(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPersonTrackingOutput
    #   resp.data.job_id #=> String
    #
    def start_person_tracking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPersonTrackingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPersonTrackingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPersonTracking
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartPersonTracking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPersonTracking,
        stubs: @stubs,
        params_class: Params::StartPersonTrackingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_person_tracking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the running of the version of a model. Starting a model takes a while
    #       to complete. To check the current state of the model, use <a>DescribeProjectVersions</a>.</p>
    #          <p>Once the model is running, you can detect custom labels in new images by calling
    #          <a>DetectCustomLabels</a>.</p>
    #          <note>
    #             <p>You are charged for the amount of time that the model is running. To stop a running
    #       model, call <a>StopProjectVersion</a>.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:StartProjectVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartProjectVersionInput}.
    #
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name(ARN) of the model version that you want to start.</p>
    #
    # @option params [Integer] :min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #         inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS).
    #         Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #         of inference units that you use.
    #       </p>
    #
    # @return [Types::StartProjectVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_project_version(
    #     project_version_arn: 'ProjectVersionArn', # required
    #     min_inference_units: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartProjectVersionOutput
    #   resp.data.status #=> String, one of ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    def start_project_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartProjectVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartProjectVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartProjectVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::StartProjectVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartProjectVersion,
        stubs: @stubs,
        params_class: Params::StartProjectVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_project_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts asynchronous detection of segment detection in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect segments in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and
    #       the filename of the video. <code>StartSegmentDetection</code> returns a job identifier (<code>JobId</code>) which you use to get
    #       the results of the operation. When segment detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic
    #       that you specify in <code>NotificationChannel</code>.</p>
    #          <p>You can use the <code>Filters</code> (<a>StartSegmentDetectionFilters</a>)
    #       input parameter to specify the minimum detection confidence returned in the response.
    #       Within <code>Filters</code>, use <code>ShotFilter</code> (<a>StartShotDetectionFilter</a>)
    #       to filter detected shots. Use  <code>TechnicalCueFilter</code> (<a>StartTechnicalCueDetectionFilter</a>)
    #       to filter technical cues. </p>
    #          <p>To get the results of the segment detection operation, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. if so, call <a>GetSegmentDetection</a> and pass the job identifier (<code>JobId</code>)
    #       from the initial call to <code>StartSegmentDetection</code>. </p>
    #
    #
    #          <p>For more information, see Detecting video segments in stored video in the Amazon Rekognition Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSegmentDetectionInput}.
    #
    # @option params [Video] :video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartSegmentDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #         segment detection operation. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    # @option params [StartSegmentDetectionFilters] :filters
    #   <p>Filters for technical cue or shot detection.</p>
    #
    # @option params [Array<String>] :segment_types
    #   <p>An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.</p>
    #
    # @return [Types::StartSegmentDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_segment_detection(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag',
    #     filters: {
    #       technical_cue_filter: {
    #         min_segment_confidence: 1.0,
    #         black_frame: {
    #           max_pixel_threshold: 1.0,
    #           min_coverage_percentage: 1.0
    #         }
    #       },
    #       shot_filter: {
    #         min_segment_confidence: 1.0
    #       }
    #     },
    #     segment_types: [
    #       'TECHNICAL_CUE' # accepts ["TECHNICAL_CUE", "SHOT"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSegmentDetectionOutput
    #   resp.data.job_id #=> String
    #
    def start_segment_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSegmentDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSegmentDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSegmentDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartSegmentDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSegmentDetection,
        stubs: @stubs,
        params_class: Params::StartSegmentDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_segment_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts processing a stream processor. You create a stream processor by calling <a>CreateStreamProcessor</a>.
    #             To tell <code>StartStreamProcessor</code> which stream processor to start, use the value of the <code>Name</code> field specified in the call to
    #             <code>CreateStreamProcessor</code>.</p>
    #         <p>If you are using a label detection stream processor to detect labels, you need to provide a <code>Start selector</code> and a <code>Stop selector</code> to determine the length of the stream processing time.</p>
    #
    # @param [Hash] params
    #   See {Types::StartStreamProcessorInput}.
    #
    # @option params [String] :name
    #   <p>The name of the stream processor to start processing.</p>
    #
    # @option params [StreamProcessingStartSelector] :start_selector
    #   <p>
    #               Specifies the starting point in the Kinesis stream to start processing.
    #               You can use the producer timestamp or the fragment number.
    #               For more information, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html">Fragment</a>.
    #           </p>
    #           <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    #
    # @option params [StreamProcessingStopSelector] :stop_selector
    #   <p>
    #               Specifies when to stop processing the stream. You can specify a
    #               maximum amount of time to process the video.
    #           </p>
    #           <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    #
    # @return [Types::StartStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stream_processor(
    #     name: 'Name', # required
    #     start_selector: {
    #       kvs_stream_start_selector: {
    #         producer_timestamp: 1,
    #         fragment_number: 'FragmentNumber'
    #       }
    #     },
    #     stop_selector: {
    #       max_duration_in_seconds: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStreamProcessorOutput
    #   resp.data.session_id #=> String
    #
    def start_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::StartStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStreamProcessor,
        stubs: @stubs,
        params_class: Params::StartStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_stream_processor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts asynchronous detection of text in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect text in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and
    #        the filename of the video. <code>StartTextDetection</code> returns a job identifier (<code>JobId</code>) which you use to get
    #        the results of the operation. When text detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic
    #        that you specify in <code>NotificationChannel</code>.</p>
    #          <p>To get the results of the text detection operation, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. if so, call <a>GetTextDetection</a> and pass the job identifier (<code>JobId</code>)
    #        from the initial call to <code>StartTextDetection</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::StartTextDetectionInput}.
    #
    # @option params [Video] :video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartTextDetection</code>
    #         requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job
    #           from being accidentaly started more than once.</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see
    #             <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html">Calling Amazon Rekognition Video operations</a>. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.
    #             For more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html#api-video-roles-all-topics">Giving access to multiple Amazon SNS topics</a>.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier returned in the completion status published by your Amazon Simple Notification Service topic.  For example, you can use <code>JobTag</code> to group related jobs
    #         and identify them in the completion notification.</p>
    #
    # @option params [StartTextDetectionFilters] :filters
    #   <p>Optional parameters that let you set criteria the text must meet to be included in your response.</p>
    #
    # @return [Types::StartTextDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_text_detection(
    #     video: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     job_tag: 'JobTag',
    #     filters: {
    #       word_filter: {
    #         min_confidence: 1.0,
    #         min_bounding_box_height: 1.0,
    #         min_bounding_box_width: 1.0
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTextDetectionOutput
    #   resp.data.job_id #=> String
    #
    def start_text_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTextDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTextDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTextDetection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidS3ObjectException, Errors::ProvisionedThroughputExceededException, Errors::VideoTooLargeException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::InternalServerError]),
        data_parser: Parsers::StartTextDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTextDetection,
        stubs: @stubs,
        params_class: Params::StartTextDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_text_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a running model. The operation might take a while to complete. To
    #          check the current status, call <a>DescribeProjectVersions</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::StopProjectVersionInput}.
    #
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>
    #            <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>
    #
    # @return [Types::StopProjectVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_project_version(
    #     project_version_arn: 'ProjectVersionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopProjectVersionOutput
    #   resp.data.status #=> String, one of ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    def stop_project_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopProjectVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopProjectVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopProjectVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::StopProjectVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopProjectVersion,
        stubs: @stubs,
        params_class: Params::StopProjectVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_project_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a running stream processor that was created by <a>CreateStreamProcessor</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopStreamProcessorInput}.
    #
    # @option params [String] :name
    #   <p>The name of a stream processor created by <a>CreateStreamProcessor</a>.</p>
    #
    # @return [Types::StopStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stream_processor(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStreamProcessorOutput
    #
    def stop_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::StopStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStreamProcessor,
        stubs: @stubs,
        params_class: Params::StopStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_stream_processor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Adds one or more key-value tags to an Amazon Rekognition collection, stream processor, or Custom Labels model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging AWS Resources</a>.
    #     </p>
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:TagResource</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to assign the tags to.
    #       </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>
    #         The key-value tags to assign to the resource.
    #       </p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
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

    # <p>
    #       Removes one or more tags from an Amazon Rekognition collection, stream processor, or Custom Labels model.
    #     </p>
    #          <p>This operation requires permissions to perform the
    #       <code>rekognition:UntagResource</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to remove the tags from.
    #       </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #         A list of the tags that you want to remove.
    #       </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
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

    # <p>Adds or updates one or more entries (images) in a dataset. An entry is a JSON Line which contains the
    #       information for a single image,  including
    #       the image location, assigned labels, and object location bounding boxes.  For more information,
    #       see Image-Level labels in manifest files and Object localization in manifest files in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #      </p>
    #
    #
    #
    #          <p>If the <code>source-ref</code> field in the JSON line references an existing image, the existing image in the dataset
    #       is updated.
    #       If <code>source-ref</code> field doesn't reference an existing image, the image is added as a new image to the dataset. </p>
    #
    #          <p>You specify the changes that you want to make in the <code>Changes</code> input parameter.
    #     There isn't a limit to the number JSON Lines that you can change, but the size of <code>Changes</code> must be less
    # than 5MB.</p>
    #
    #
    #          <p>
    #             <code>UpdateDatasetEntries</code> returns immediatly, but the dataset update might take a while to complete.
    #       Use <a>DescribeDataset</a> to check the
    #       current status. The dataset updated successfully if the value of <code>Status</code> is
    #       <code>UPDATE_COMPLETE</code>. </p>
    #          <p>To check if any non-terminal errors occured, call <a>ListDatasetEntries</a>
    #       and check for the presence of <code>errors</code> lists in the JSON Lines.</p>
    #          <p>Dataset update fails if a terminal error occurs (<code>Status</code> = <code>UPDATE_FAILED</code>).
    #       Currently, you can't access the terminal error information from the Amazon Rekognition Custom Labels SDK.
    #    </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:UpdateDatasetEntries</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetEntriesInput}.
    #
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to update.
    #   </p>
    #
    # @option params [DatasetChanges] :changes
    #   <p>
    #      The changes that you want to make to the dataset.
    #   </p>
    #
    # @return [Types::UpdateDatasetEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset_entries(
    #     dataset_arn: 'DatasetArn', # required
    #     changes: {
    #       ground_truth: 'GroundTruth' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetEntriesOutput
    #
    def update_dataset_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetEntriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDatasetEntries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceInUseException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateDatasetEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDatasetEntries,
        stubs: @stubs,
        params_class: Params::UpdateDatasetEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset_entries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Allows you to update a stream processor. You can change some settings and regions of interest and delete certain parameters.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamProcessorInput}.
    #
    # @option params [String] :name
    #   <p>
    #               Name of the stream processor that you want to update.
    #           </p>
    #
    # @option params [StreamProcessorSettingsForUpdate] :settings_for_update
    #   <p>
    #               The stream processor settings that you want to update. Label detection settings can be updated to detect different labels with a different minimum confidence.
    #           </p>
    #
    # @option params [Array<RegionOfInterest>] :regions_of_interest_for_update
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.
    #           </p>
    #
    # @option params [StreamProcessorDataSharingPreference] :data_sharing_preference_for_update
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    #
    # @option params [Array<String>] :parameters_to_delete
    #   <p>
    #               A list of parameters you want to delete from the stream processor.
    #           </p>
    #
    # @return [Types::UpdateStreamProcessorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream_processor(
    #     name: 'Name', # required
    #     settings_for_update: {
    #       connected_home_for_update: {
    #         labels: [
    #           'member'
    #         ],
    #         min_confidence: 1.0
    #       }
    #     },
    #     regions_of_interest_for_update: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         polygon: [
    #           {
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_sharing_preference_for_update: {
    #       opt_in: false # required
    #     },
    #     parameters_to_delete: [
    #       'ConnectedHomeMinConfidence' # accepts ["ConnectedHomeMinConfidence", "RegionsOfInterest"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStreamProcessorOutput
    #
    def update_stream_processor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStreamProcessorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStreamProcessorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStreamProcessor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ProvisionedThroughputExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateStreamProcessor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStreamProcessor,
        stubs: @stubs,
        params_class: Params::UpdateStreamProcessorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stream_processor
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
