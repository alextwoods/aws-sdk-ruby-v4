# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rekognition
  module Types

    # <p>You are not authorized to perform the action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure containing the estimated age range, in years, for a face.</p>
    #          <p>Amazon Rekognition estimates an age range for faces detected in the input image. Estimated age
    #       ranges can overlap. A face of a 5-year-old might have an estimated range of 4-6, while the
    #       face of a 6-year-old might have an estimated range of 4-8.</p>
    #
    # @!attribute low
    #   <p>The lowest estimated age.</p>
    #
    #   @return [Integer]
    #
    # @!attribute high
    #   <p>The highest estimated age.</p>
    #
    #   @return [Integer]
    #
    AgeRange = ::Struct.new(
      :low,
      :high,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Assets are the images that you use to train and evaluate a model version.
    #          Assets can also contain validation information that you use to debug a failed model training.
    #          </p>
    #
    # @!attribute ground_truth_manifest
    #   <p>The S3 bucket that contains an Amazon Sagemaker Ground Truth format manifest file.
    #   </p>
    #
    #   @return [GroundTruthManifest]
    #
    Asset = ::Struct.new(
      :ground_truth_manifest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Attribute
    #
    module Attribute
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Metadata information about an audio stream. An array of <code>AudioMetadata</code> objects
    #       for the audio streams found in a stored video is returned by <a>GetSegmentDetection</a>. </p>
    #
    # @!attribute codec
    #   <p>The audio codec used to encode or decode the audio stream. </p>
    #
    #   @return [String]
    #
    # @!attribute duration_millis
    #   <p>The duration of the audio stream in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sample_rate
    #   <p>The sample rate for the audio stream.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_channels
    #   <p>The number of audio channels in the segment.</p>
    #
    #   @return [Integer]
    #
    AudioMetadata = ::Struct.new(
      :codec,
      :duration_millis,
      :sample_rate,
      :number_of_channels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether or not the face has a beard, and the confidence level in the
    #       determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the face has beard or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Beard = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>
    #       A filter that allows you to control the black frame detection by specifying the black levels
    #       and pixel coverage of black pixels in a frame. As videos can come from multiple sources, formats,
    #       and time periods, they may contain different standards and varying noise levels for black frames that need to be accounted for.
    #       For more information, see <a>StartSegmentDetection</a>.
    #     </p>
    #
    # @!attribute max_pixel_threshold
    #   <p>
    #         A threshold used to determine the maximum luminance value for a pixel to be considered black. In a full color range video,
    #         luminance values range from 0-255. A pixel value of 0 is pure black, and the most strict filter. The maximum black pixel
    #         value is computed as follows: max_black_pixel_value = minimum_luminance + MaxPixelThreshold *luminance_range.
    #       </p>
    #            <p>For example, for a full range video with BlackPixelThreshold = 0.1,  max_black_pixel_value is 0 + 0.1 * (255-0) = 25.5.</p>
    #            <p>The default value of MaxPixelThreshold is 0.2, which maps to a max_black_pixel_value of 51 for a full range video.
    #         You can lower this threshold to be more strict on black levels.</p>
    #
    #   @return [Float]
    #
    # @!attribute min_coverage_percentage
    #   <p>
    #         The minimum percentage of pixels in a frame that need to have a luminance below the max_black_pixel_value for a frame to be considered
    #         a black frame. Luminance is calculated using the BT.709 matrix.
    #       </p>
    #            <p>The default value is 99, which means at least 99% of all pixels in the frame are black pixels as per the <code>MaxPixelThreshold</code>
    #         set. You can reduce this value to allow more noise on the black frame.</p>
    #
    #   @return [Float]
    #
    BlackFrame = ::Struct.new(
      :max_pixel_threshold,
      :min_coverage_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BodyPart
    #
    module BodyPart
      # No documentation available.
      #
      FACE = "FACE"

      # No documentation available.
      #
      HEAD = "HEAD"

      # No documentation available.
      #
      LEFT_HAND = "LEFT_HAND"

      # No documentation available.
      #
      RIGHT_HAND = "RIGHT_HAND"
    end

    # <p>Identifies the bounding box around the label, face, text, object of interest, or personal protective equipment.
    #       The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and
    #       left sides of the bounding box. Note that the upper-left corner of the image is the origin
    #       (0,0). </p>
    #          <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall
    #       image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of
    #       the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700)
    #       and a <code>top</code> value of 0.25 (50/200).</p>
    #          <p>The <code>width</code> and <code>height</code> values represent the dimensions of the
    #       bounding box as a ratio of the overall image dimension. For example, if the input image is
    #       700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p>
    #          <note>
    #             <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is
    #         able to detect a face that is at the image edge and is only partially visible, the service
    #         can return coordinates that are outside the image bounds and, depending on the image edge,
    #         you might get negative values or values greater than 1 for the <code>left</code> or
    #           <code>top</code> values. </p>
    #          </note>
    #
    # @!attribute width
    #   <p>Width of the bounding box as a ratio of the overall image width.</p>
    #
    #   @return [Float]
    #
    # @!attribute height
    #   <p>Height of the bounding box as a ratio of the overall image height.</p>
    #
    #   @return [Float]
    #
    # @!attribute left
    #   <p>Left coordinate of the bounding box as a ratio of overall image width.</p>
    #
    #   @return [Float]
    #
    # @!attribute top
    #   <p>Top coordinate of the bounding box as a ratio of overall image height.</p>
    #
    #   @return [Float]
    #
    BoundingBox = ::Struct.new(
      :width,
      :height,
      :left,
      :top,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a celebrity recognized by the <a>RecognizeCelebrities</a> operation.</p>
    #
    # @!attribute urls
    #   <p>An array of URLs pointing to additional information about the celebrity. If there is no
    #         additional information about the celebrity, this list is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the celebrity.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>A unique identifier for the celebrity. </p>
    #
    #   @return [String]
    #
    # @!attribute face
    #   <p>Provides information about the celebrity's face, such as its location on the
    #         image.</p>
    #
    #   @return [ComparedFace]
    #
    # @!attribute match_confidence
    #   <p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the
    #         celebrity.</p>
    #
    #   @return [Float]
    #
    # @!attribute known_gender
    #   <p>The known gender identity for the celebrity that matches the provided ID. The known
    #         gender identity can be Male, Female, Nonbinary, or Unlisted.</p>
    #
    #   @return [KnownGender]
    #
    Celebrity = ::Struct.new(
      :urls,
      :name,
      :id,
      :face,
      :match_confidence,
      :known_gender,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a recognized celebrity.</p>
    #
    # @!attribute urls
    #   <p>An array of URLs pointing to additional celebrity information. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the celebrity.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique identifier for the celebrity. </p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence, in percentage, that Amazon Rekognition has that the recognized face is the celebrity. </p>
    #
    #   @return [Float]
    #
    # @!attribute bounding_box
    #   <p>Bounding box around the body of a celebrity.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute face
    #   <p>Face details for the recognized celebrity.</p>
    #
    #   @return [FaceDetail]
    #
    # @!attribute known_gender
    #   <p>Retrieves the known gender for the celebrity.</p>
    #
    #   @return [KnownGender]
    #
    CelebrityDetail = ::Struct.new(
      :urls,
      :name,
      :id,
      :confidence,
      :bounding_box,
      :face,
      :known_gender,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a detected celebrity and the time the celebrity was detected in a stored video.
    #         For more information, see GetCelebrityRecognition in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute timestamp
    #   <p>The time, in milliseconds from the start of the video, that the celebrity was recognized.</p>
    #
    #   @return [Integer]
    #
    # @!attribute celebrity
    #   <p>Information about a recognized celebrity.</p>
    #
    #   @return [CelebrityDetail]
    #
    CelebrityRecognition = ::Struct.new(
      :timestamp,
      :celebrity,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # Includes enum constants for CelebrityRecognitionSortBy
    #
    module CelebrityRecognitionSortBy
      # No documentation available.
      #
      ID = "ID"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # @!attribute source_image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute target_image
    #   <p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported.
    #       </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute similarity_threshold
    #   <p>The minimum level of confidence in the face matches that a match must meet to be
    #         included in the <code>FaceMatches</code> array.</p>
    #
    #   @return [Float]
    #
    # @!attribute quality_filter
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
    #   Enum, one of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    CompareFacesInput = ::Struct.new(
      :source_image,
      :target_image,
      :similarity_threshold,
      :quality_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a face in a target image that matches the source image face
    #       analyzed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding
    #       box of the face in the target image. The <code>Similarity</code> property is the confidence
    #       that the source image face matches the face in the bounding box.</p>
    #
    # @!attribute similarity
    #   <p>Level of confidence that the faces match.</p>
    #
    #   @return [Float]
    #
    # @!attribute face
    #   <p>Provides face metadata (bounding box and confidence that the bounding box actually
    #         contains a face).</p>
    #
    #   @return [ComparedFace]
    #
    CompareFacesMatch = ::Struct.new(
      :similarity,
      :face,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_image_face
    #   <p>The face in the source image that was used for comparison.</p>
    #
    #   @return [ComparedSourceImageFace]
    #
    # @!attribute face_matches
    #   <p>An array of faces in the target image that match the source image face. Each
    #           <code>CompareFacesMatch</code> object provides the bounding box, the confidence level that
    #         the bounding box contains a face, and the similarity score for the face in the bounding box
    #         and the face in the source image.</p>
    #
    #   @return [Array<CompareFacesMatch>]
    #
    # @!attribute unmatched_faces
    #   <p>An array of faces in the target image that did not match the source image
    #         face.</p>
    #
    #   @return [Array<ComparedFace>]
    #
    # @!attribute source_image_orientation_correction
    #   <p>The value of <code>SourceImageOrientationCorrection</code> is always null.</p>
    #            <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
    #         that includes the image's orientation. Amazon Rekognition uses this orientation information to perform
    #         image correction. The bounding box coordinates are translated to represent object locations
    #         after the orientation information in the Exif metadata is used to correct the image orientation.
    #         Images in .png format don't contain Exif metadata.</p>
    #            <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
    #         .jpeg images without orientation information in the image Exif metadata. The bounding box
    #         coordinates aren't translated and represent the object locations before the image is rotated.
    #       </p>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    # @!attribute target_image_orientation_correction
    #   <p>The value of <code>TargetImageOrientationCorrection</code> is always null.</p>
    #            <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
    #         that includes the image's orientation. Amazon Rekognition uses this orientation information to perform
    #         image correction. The bounding box coordinates are translated to represent object locations
    #         after the orientation information in the Exif metadata is used to correct the image orientation.
    #         Images in .png format don't contain Exif metadata.</p>
    #            <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
    #         .jpeg images without orientation information in the image Exif metadata. The bounding box
    #         coordinates aren't translated and represent the object locations before the image is rotated.
    #       </p>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    CompareFacesOutput = ::Struct.new(
      :source_image_face,
      :face_matches,
      :unmatched_faces,
      :source_image_orientation_correction,
      :target_image_orientation_correction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides face metadata for target image faces that are analyzed by
    #         <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
    #
    # @!attribute bounding_box
    #   <p>Bounding box of the face.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute confidence
    #   <p>Level of confidence that what the bounding box contains is a face.</p>
    #
    #   @return [Float]
    #
    # @!attribute landmarks
    #   <p>An array of facial landmarks.</p>
    #
    #   @return [Array<Landmark>]
    #
    # @!attribute pose
    #   <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
    #
    #   @return [Pose]
    #
    # @!attribute quality
    #   <p>Identifies face image brightness and sharpness. </p>
    #
    #   @return [ImageQuality]
    #
    # @!attribute emotions
    #   <p> The emotions that appear to be expressed on the face,
    #         and the confidence level in the determination. Valid values include "Happy", "Sad",
    #         "Angry", "Confused", "Disgusted", "Surprised", "Calm", "Unknown", and "Fear".
    #       </p>
    #
    #   @return [Array<Emotion>]
    #
    # @!attribute smile
    #   <p> Indicates whether or not the face is smiling, and the confidence level in the determination.
    #       </p>
    #
    #   @return [Smile]
    #
    ComparedFace = ::Struct.new(
      :bounding_box,
      :confidence,
      :landmarks,
      :pose,
      :quality,
      :emotions,
      :smile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target.
    #       This contains a bounding box for the selected face and confidence level that the bounding box
    #       contains a face. Note that Amazon Rekognition selects the largest face in the source image for this
    #       comparison. </p>
    #
    # @!attribute bounding_box
    #   <p>Bounding box of the face.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute confidence
    #   <p>Confidence level that the selected bounding box contains a face.</p>
    #
    #   @return [Float]
    #
    ComparedSourceImageFace = ::Struct.new(
      :bounding_box,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Label detection settings to use on a streaming video. Defining the settings is required in the request parameter for <a>CreateStreamProcessor</a>.
    #             Including this setting in the <code>CreateStreamProcessor</code> request enables you to use the stream processor for label detection.
    #             You can then select what you want the stream processor to detect, such as people or pets. When the stream processor has started, one notification
    #             is sent for each object class specified. For example, if packages and pets are selected, one SNS notification is published the first time a package is detected
    #             and one SNS notification is published the first time a pet is detected, as well as an end-of-session summary.
    #         </p>
    #
    # @!attribute labels
    #   <p>
    #               Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: "PERSON", "PET", "PACKAGE", and "ALL".
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute min_confidence
    #   <p>
    #               The minimum confidence required to label an object in the video.
    #           </p>
    #
    #   @return [Float]
    #
    ConnectedHomeSettings = ::Struct.new(
      :labels,
      :min_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The label detection settings you want to use in your stream processor. This includes the labels you want the stream processor to detect and the minimum confidence level allowed to label objects.
    #         </p>
    #
    # @!attribute labels
    #   <p>
    #               Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: "PERSON", "PET", "PACKAGE", and "ALL".
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute min_confidence
    #   <p>
    #               The minimum confidence required to label an object in the video.
    #           </p>
    #
    #   @return [Float]
    #
    ConnectedHomeSettingsForUpdate = ::Struct.new(
      :labels,
      :min_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentClassifier
    #
    module ContentClassifier
      # No documentation available.
      #
      FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation"

      # No documentation available.
      #
      FREE_OF_ADULT_CONTENT = "FreeOfAdultContent"
    end

    # <p>Information about an inappropriate, unwanted, or offensive content label detection in a stored video.</p>
    #
    # @!attribute timestamp
    #   <p>Time, in milliseconds from the beginning of the video, that the content moderation label was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute moderation_label
    #   <p>The content moderation label detected by in the stored video.</p>
    #
    #   @return [ModerationLabel]
    #
    ContentModerationDetection = ::Struct.new(
      :timestamp,
      :moderation_label,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # Includes enum constants for ContentModerationSortBy
    #
    module ContentModerationSortBy
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # <p>Information about an item of Personal Protective Equipment covering a corresponding body part. For more
    #          information, see <a>DetectProtectiveEquipment</a>.</p>
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has in the value of <code>Value</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute value
    #   <p>True if the PPE covers the corresponding body part, otherwise false.</p>
    #
    #   @return [Boolean]
    #
    CoversBodyPart = ::Struct.new(
      :confidence,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # @!attribute collection_id
    #   <p>ID for the collection that you are creating.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the collection.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateCollectionInput = ::Struct.new(
      :collection_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_code
    #   <p>HTTP status code indicating the result of the operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute collection_arn
    #   <p>Amazon Resource Name (ARN) of the collection. You can use this to manage permissions on
    #         your resources. </p>
    #
    #   @return [String]
    #
    # @!attribute face_model_version
    #   <p>Version number of the face detection model associated with the collection you are creating.</p>
    #
    #   @return [String]
    #
    CreateCollectionOutput = ::Struct.new(
      :status_code,
      :collection_arn,
      :face_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_source
    #   <p>
    #   The source files for the dataset. You can specify the ARN of an existing dataset or specify the Amazon S3 bucket location
    #   of an Amazon Sagemaker format manifest file. If you don't specify <code>datasetSource</code>, an empty dataset is created.
    #     To add labeled images to the dataset,  You can use the console or call <a>UpdateDatasetEntries</a>.
    #
    #   </p>
    #
    #   @return [DatasetSource]
    #
    # @!attribute dataset_type
    #   <p>
    #   The type of the dataset. Specify <code>train</code> to create a training dataset. Specify <code>test</code>
    #      to create a test dataset.
    #   </p>
    #
    #   Enum, one of: ["TRAIN", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute project_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels project to which you want to asssign the dataset.
    #   </p>
    #
    #   @return [String]
    #
    CreateDatasetInput = ::Struct.new(
      :dataset_source,
      :dataset_type,
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_arn
    #   <p>
    #   The ARN of the created  Amazon Rekognition Custom Labels dataset.
    #   </p>
    #
    #   @return [String]
    #
    CreateDatasetOutput = ::Struct.new(
      :dataset_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to create.</p>
    #
    #   @return [String]
    #
    CreateProjectInput = ::Struct.new(
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the new project. You can use the ARN to
    #         configure IAM access to the project. </p>
    #
    #   @return [String]
    #
    CreateProjectOutput = ::Struct.new(
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The ARN of the Amazon Rekognition Custom Labels project that
    #            manages the model that you want to train.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>A name for the version of the model. This value must be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute output_config
    #   <p>The Amazon S3 bucket location to store the results of training.
    #         The S3 bucket can be in any AWS account as long as the caller has
    #         <code>s3:PutObject</code> permissions on the S3 bucket.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute training_data
    #   <p>Specifies an external manifest that the services uses to train the model.
    #            If you specify <code>TrainingData</code> you must also specify <code>TestingData</code>.
    #            The project must not have any associated datasets.
    #         </p>
    #
    #   @return [TrainingData]
    #
    # @!attribute testing_data
    #   <p>Specifies an external manifest that the service uses to test the model.
    #            If you specify <code>TestingData</code> you must also specify <code>TrainingData</code>.
    #            The project must not have any associated datasets.</p>
    #
    #   @return [TestingData]
    #
    # @!attribute tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the model.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute kms_key_id
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
    #   @return [String]
    #
    CreateProjectVersionInput = ::Struct.new(
      :project_arn,
      :version_name,
      :output_config,
      :training_data,
      :testing_data,
      :tags,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_arn
    #   <p>The ARN of the model version that was created. Use <code>DescribeProjectVersion</code>
    #            to get the current status of the training operation.</p>
    #
    #   @return [String]
    #
    CreateProjectVersionOutput = ::Struct.new(
      :project_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input
    #   <p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>. This is required for both face search and label detection stream processors.</p>
    #
    #   @return [StreamProcessorInput]
    #
    # @!attribute output
    #   <p>Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>.
    #               This must be a <a>S3Destination</a> of an Amazon S3 bucket that you own for a label detection stream processor or a Kinesis data stream ARN for a face search stream processor.</p>
    #
    #   @return [StreamProcessorOutput]
    #
    # @!attribute name
    #   <p>An identifier you assign to the stream processor. You can use <code>Name</code> to
    #               manage the stream processor. For example, you can get the current status of the stream processor by calling <a>DescribeStreamProcessor</a>.
    #               <code>Name</code> is idempotent. This is required for both face search and label detection stream processors.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>
    #
    #   @return [StreamProcessorSettings]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor.
    #               The IAM role provides Rekognition read permissions for a Kinesis stream.
    #               It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         A set of tags (key-value pairs) that you want to attach to the stream processor.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the object detection results and completion status of a video analysis operation.</p>
    #           <p>Amazon Rekognition publishes a notification the first time an object of interest or a person is detected in the video stream. For example, if Amazon Rekognition
    #               detects a person at second 2, a pet at second 4, and a person again at second 5, Amazon Rekognition sends 2 object class detected notifications,
    #               one for a person at second 2 and one for a pet at second 4.</p>
    #           <p>Amazon Rekognition also publishes an an end-of-session notification with a summary when the stream processing session is complete.</p>
    #
    #   @return [StreamProcessorNotificationChannel]
    #
    # @!attribute kms_key_id
    #   <p>
    #               The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #               You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN.
    #               The key is used to encrypt results and data published to your Amazon S3 bucket, which includes  image frames and hero images. Your source images are unaffected.
    #           </p>
    #           <p>
    #               </p>
    #
    #   @return [String]
    #
    # @!attribute regions_of_interest
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. You can specify up to 10 regions of interest. This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #           </p>
    #
    #   @return [Array<RegionOfInterest>]
    #
    # @!attribute data_sharing_preference
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    #
    #   @return [StreamProcessorDataSharingPreference]
    #
    CreateStreamProcessorInput = ::Struct.new(
      :input,
      :output,
      :name,
      :settings,
      :role_arn,
      :tags,
      :notification_channel,
      :kms_key_id,
      :regions_of_interest,
      :data_sharing_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stream_processor_arn
    #   <p>Amazon Resource Number for the newly created stream processor.</p>
    #
    #   @return [String]
    #
    CreateStreamProcessorOutput = ::Struct.new(
      :stream_processor_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom label detected in an image by a call to <a>DetectCustomLabels</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the custom label.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence that the model has in the detection of the custom label. The
    #         range is 0-100. A higher value indicates a higher confidence.</p>
    #
    #   @return [Float]
    #
    # @!attribute geometry
    #   <p>The location of the detected object on the image that corresponds to the custom label.
    #            Includes an axis aligned coarse bounding box surrounding the object and a finer grain polygon
    #            for more accurate spatial information.</p>
    #
    #   @return [Geometry]
    #
    CustomLabel = ::Struct.new(
      :name,
      :confidence,
      :geometry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Describes updates or additions to a dataset. A Single update or addition
    # is an entry (JSON Line) that provides information about a single image. To update an existing entry,
    # you match the <code>source-ref</code> field of the update entry with the <code>source-ref</code> filed of the entry that you want to update.
    #  If the <code>source-ref</code> field doesn't match an existing entry, the entry is added to dataset as a new entry. </p>
    #
    # @!attribute ground_truth
    #   <p>A Base64-encoded binary data object
    #      containing one or JSON lines that either update the dataset or are additions to the dataset.  You change a dataset by calling <a>UpdateDatasetEntries</a>.
    #      If you are using an AWS SDK to call <code>UpdateDatasetEntries</code>, you don't need to encode <code>Changes</code> as the SDK encodes the data for you.
    #
    #   </p>
    #
    #
    #            <p>For example JSON lines,
    #         see Image-Level labels in manifest files and
    #         and Object localization in manifest files in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #      </p>
    #
    #   @return [String]
    #
    DatasetChanges = ::Struct.new(
      :ground_truth,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # A description for a dataset. For more information, see <a>DescribeDataset</a>.</p>
    #          <p>The status fields <code>Status</code>, <code>StatusMessage</code>, and <code>StatusMessageCode</code>
    # reflect the last operation on the dataset.
    # </p>
    #
    # @!attribute creation_timestamp
    #   <p>
    #   The Unix timestamp for the time and date that the dataset was created.
    #   </p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>
    #      The Unix timestamp for the date and time that the dataset was last updated.
    #   </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>
    #      The status of the dataset.
    #   </p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>
    #      The status message for the dataset.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute status_message_code
    #   <p>
    #      The status message code for the dataset operation. If a service error occurs, try the
    #      API call again later. If a client error occurs, check the input parameters to the dataset
    #      API call that failed.
    #   </p>
    #
    #   Enum, one of: ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute dataset_stats
    #   <p>
    #   The status message code for the dataset.
    #   </p>
    #
    #   @return [DatasetStats]
    #
    DatasetDescription = ::Struct.new(
      :creation_timestamp,
      :last_updated_timestamp,
      :status,
      :status_message,
      :status_message_code,
      :dataset_stats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Describes a dataset label. For more information, see <a>ListDatasetLabels</a>.
    # </p>
    #
    # @!attribute label_name
    #   <p>
    #   The name of the label.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute label_stats
    #   <p>
    #   Statistics about the label.
    #   </p>
    #
    #   @return [DatasetLabelStats]
    #
    DatasetLabelDescription = ::Struct.new(
      :label_name,
      :label_stats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #    Statistics about a label used in a dataset. For more information, see <a>DatasetLabelDescription</a>.
    # </p>
    #
    # @!attribute entry_count
    #   <p>
    #   The total number of images that use the label.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute bounding_box_count
    #   <p>
    #   The total number of images that have the label assigned to a bounding box.
    #   </p>
    #
    #   @return [Integer]
    #
    DatasetLabelStats = ::Struct.new(
      :entry_count,
      :bounding_box_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #    Summary information for an Amazon Rekognition Custom Labels dataset. For more information, see
    #    <a>ProjectDescription</a>.
    # </p>
    #
    # @!attribute creation_timestamp
    #   <p>
    #      The Unix timestamp for the date and time that the dataset was created.
    #   </p>
    #
    #   @return [Time]
    #
    # @!attribute dataset_type
    #   <p>
    #      The type of the dataset.
    #   </p>
    #
    #   Enum, one of: ["TRAIN", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) for the dataset.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>
    #      The status for the dataset.
    #   </p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>
    #      The status message for the dataset.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute status_message_code
    #   <p>
    #      The status message code for the dataset operation. If a service error occurs, try the
    #      API call again later. If a client error occurs, check the input parameters to the dataset
    #      API call that failed.
    #   </p>
    #
    #   Enum, one of: ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"]
    #
    #   @return [String]
    #
    DatasetMetadata = ::Struct.new(
      :creation_timestamp,
      :dataset_type,
      :dataset_arn,
      :status,
      :status_message,
      :status_message_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # The source that Amazon Rekognition Custom Labels uses to create a dataset. To
    # use an Amazon Sagemaker format manifest file, specify the  S3 bucket location in the <code>GroundTruthManifest</code> field.
    # The S3 bucket must be in your AWS account.
    # To create a copy of an existing dataset,  specify the Amazon Resource Name (ARN) of
    # an existing dataset in <code>DatasetArn</code>.</p>
    #          <p>You need to specify a value for <code>DatasetArn</code> or <code>GroundTruthManifest</code>, but not both.
    #     if you supply both values, or if you don't specify any values, an InvalidParameterException exception occurs.
    #  </p>
    #          <p>For more information, see <a>CreateDataset</a>.</p>
    #
    # @!attribute ground_truth_manifest
    #   <p>The S3 bucket that contains an Amazon Sagemaker Ground Truth format manifest file.
    #   </p>
    #
    #   @return [GroundTruthManifest]
    #
    # @!attribute dataset_arn
    #   <p>
    #   The ARN of an Amazon Rekognition Custom Labels dataset that you want to copy.
    #   </p>
    #
    #   @return [String]
    #
    DatasetSource = ::Struct.new(
      :ground_truth_manifest,
      :dataset_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # Provides statistics about a dataset. For more information, see <a>DescribeDataset</a>.
    #
    # </p>
    #
    # @!attribute labeled_entries
    #   <p>
    #   The total number of images in the dataset that have labels.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_entries
    #   <p>
    #   The total number of images in the dataset.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_labels
    #   <p>
    #   The total number of labels declared in the dataset.
    #   </p>
    #
    #   @return [Integer]
    #
    # @!attribute error_entries
    #   <p>
    #            The total number of entries that contain at least one error.
    #         </p>
    #
    #   @return [Integer]
    #
    DatasetStats = ::Struct.new(
      :labeled_entries,
      :total_entries,
      :total_labels,
      :error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatasetStatus
    #
    module DatasetStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"
    end

    # Includes enum constants for DatasetStatusMessageCode
    #
    module DatasetStatusMessageCode
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      SERVICE_ERROR = "SERVICE_ERROR"

      # No documentation available.
      #
      CLIENT_ERROR = "CLIENT_ERROR"
    end

    # Includes enum constants for DatasetType
    #
    module DatasetType
      # No documentation available.
      #
      TRAIN = "TRAIN"

      # No documentation available.
      #
      TEST = "TEST"
    end

    # @!attribute collection_id
    #   <p>ID of the collection to delete.</p>
    #
    #   @return [String]
    #
    DeleteCollectionInput = ::Struct.new(
      :collection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_code
    #   <p>HTTP status code that indicates the result of the operation.</p>
    #
    #   @return [Integer]
    #
    DeleteCollectionOutput = ::Struct.new(
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels dataset that you want to delete.
    #   </p>
    #
    #   @return [String]
    #
    DeleteDatasetInput = ::Struct.new(
      :dataset_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDatasetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>Collection from which to remove the specific faces.</p>
    #
    #   @return [String]
    #
    # @!attribute face_ids
    #   <p>An array of face IDs to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteFacesInput = ::Struct.new(
      :collection_id,
      :face_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deleted_faces
    #   <p>An array of strings (face IDs) of the faces that were deleted.</p>
    #
    #   @return [Array<String>]
    #
    DeleteFacesOutput = ::Struct.new(
      :deleted_faces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current status of the delete project operation.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "DELETING"]
    #
    #   @return [String]
    #
    DeleteProjectOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteProjectVersionInput = ::Struct.new(
      :project_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The status of the deletion operation.</p>
    #
    #   Enum, one of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    #   @return [String]
    #
    DeleteProjectVersionOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the stream processor you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteStreamProcessorInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStreamProcessorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>The ID of the collection to describe.</p>
    #
    #   @return [String]
    #
    DescribeCollectionInput = ::Struct.new(
      :collection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute face_count
    #   <p>The number of faces that are indexed into the collection. To index faces into a
    #            collection, use <a>IndexFaces</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute face_model_version
    #   <p>The version of the face model that's used by the collection for face detection.</p>
    #
    #            <p>For more information, see Model versioning in the
    #        Amazon Rekognition Developer Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) of the collection.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The number of milliseconds since the Unix epoch time until the creation of the collection.
    #            The Unix epoch time is 00:00:00 Coordinated Universal Time (UTC), Thursday, 1 January 1970.</p>
    #
    #   @return [Time]
    #
    DescribeCollectionOutput = ::Struct.new(
      :face_count,
      :face_model_version,
      :collection_arn,
      :creation_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to describe.
    #   </p>
    #
    #   @return [String]
    #
    DescribeDatasetInput = ::Struct.new(
      :dataset_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_description
    #   <p>
    #   The description for the dataset.
    #   </p>
    #
    #   @return [DatasetDescription]
    #
    DescribeDatasetOutput = ::Struct.new(
      :dataset_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that contains the models you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute version_names
    #   <p>A list of model version names that you want to describe. You can add up to 10 model version names
    #            to the list. If you don't specify a value, all model descriptions are returned.  A version name is part of a
    #            model (ProjectVersion) ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is the version name in the following ARN.
    #                  <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #              results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response.
    #              You can use this pagination token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call.
    #             The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException
    #             error occurs. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    DescribeProjectVersionsInput = ::Struct.new(
      :project_arn,
      :version_names,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_descriptions
    #   <p>A list of model descriptions. The list is sorted by the creation date and time of
    #            the model versions, latest to earliest.</p>
    #
    #   @return [Array<ProjectVersionDescription>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #            results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response.
    #            You can use this pagination token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeProjectVersionsOutput = ::Struct.new(
      :project_version_descriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #            results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #            token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    # @!attribute project_names
    #   <p>A list of the projects that you want Amazon Rekognition Custom Labels to describe. If you don't specify a value,
    #         the response includes descriptions for all the projects in your AWS account.</p>
    #
    #   @return [Array<String>]
    #
    DescribeProjectsInput = ::Struct.new(
      :next_token,
      :max_results,
      :project_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_descriptions
    #   <p>A list of project descriptions. The list is sorted by the date and time the projects are created.</p>
    #
    #   @return [Array<ProjectDescription>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #            results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response.
    #            You can use this pagination token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeProjectsOutput = ::Struct.new(
      :project_descriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the stream processor for which you want information.</p>
    #
    #   @return [String]
    #
    DescribeStreamProcessorInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Name of the stream processor. </p>
    #
    #   @return [String]
    #
    # @!attribute stream_processor_arn
    #   <p>ARN of the stream processor.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the stream processor.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Detailed status message about the stream processor.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>Date and time the stream processor was created</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_timestamp
    #   <p>The time, in Unix format, the stream processor was last updated. For example, when the stream
    #           processor moves from a running state to a failed state, or when the user starts or stops the stream processor.</p>
    #
    #   @return [Time]
    #
    # @!attribute input
    #   <p>Kinesis video stream that provides the source streaming video.</p>
    #
    #   @return [StreamProcessorInput]
    #
    # @!attribute output
    #   <p>Kinesis data stream to which Amazon Rekognition Video puts the analysis results.</p>
    #
    #   @return [StreamProcessorOutput]
    #
    # @!attribute role_arn
    #   <p>ARN of the IAM role that allows access to the stream processor.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces
    #               in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>
    #
    #   @return [StreamProcessorSettings]
    #
    # @!attribute notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the object detection results and completion status of a video analysis operation.</p>
    #           <p>Amazon Rekognition publishes a notification the first time an object of interest or a person is detected in the video stream. For example, if Amazon Rekognition
    #               detects a person at second 2, a pet at second 4, and a person again at second 5, Amazon Rekognition sends 2 object class detected notifications,
    #               one for a person at second 2 and one for a pet at second 4.</p>
    #           <p>Amazon Rekognition also publishes an an end-of-session notification with a summary when the stream processing session is complete.</p>
    #
    #   @return [StreamProcessorNotificationChannel]
    #
    # @!attribute kms_key_id
    #   <p>
    #               The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute regions_of_interest
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.
    #           </p>
    #
    #   @return [Array<RegionOfInterest>]
    #
    # @!attribute data_sharing_preference
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    #
    #   @return [StreamProcessorDataSharingPreference]
    #
    DescribeStreamProcessorOutput = ::Struct.new(
      :name,
      :stream_processor_arn,
      :status,
      :status_message,
      :creation_timestamp,
      :last_update_timestamp,
      :input,
      :output,
      :role_arn,
      :settings,
      :notification_channel,
      :kms_key_id,
      :regions_of_interest,
      :data_sharing_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_arn
    #   <p>The ARN of the model version that you want to use.</p>
    #
    #   @return [String]
    #
    # @!attribute image
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
    #   @return [Image]
    #
    # @!attribute max_results
    #   <p>Maximum number of results you want the service to return in the response.
    #            The service returns the specified number of highest confidence labels ranked from highest confidence
    #         to lowest.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return.
    #            <code>DetectCustomLabels</code> doesn't return any labels with a confidence value that's lower than
    #            this specified value. If you specify a
    #         value of 0, <code>DetectCustomLabels</code> returns all labels, regardless of the assumed
    #            threshold applied to each label.
    #         If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>
    #            returns labels based on the assumed threshold of each label.</p>
    #
    #   @return [Float]
    #
    DetectCustomLabelsInput = ::Struct.new(
      :project_version_arn,
      :image,
      :max_results,
      :min_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_labels
    #   <p>An array of custom labels detected in the input image.</p>
    #
    #   @return [Array<CustomLabel>]
    #
    DetectCustomLabelsOutput = ::Struct.new(
      :custom_labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute attributes
    #   <p>An array of facial attributes you want to be returned. This can be the default list of
    #         attributes or all attributes. If you don't specify a value for <code>Attributes</code> or if
    #         you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial
    #         attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all
    #         facial attributes are returned, but the operation takes longer to complete.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    #
    #   @return [Array<String>]
    #
    DetectFacesInput = ::Struct.new(
      :image,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute face_details
    #   <p>Details of each face found in the image. </p>
    #
    #   @return [Array<FaceDetail>]
    #
    # @!attribute orientation_correction
    #   <p>The value of <code>OrientationCorrection</code> is always null.</p>
    #            <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
    #         that includes the image's orientation. Amazon Rekognition uses this orientation information to perform
    #         image correction. The bounding box coordinates are translated to represent object locations
    #         after the orientation information in the Exif metadata is used to correct the image orientation.
    #         Images in .png format don't contain Exif metadata.</p>
    #            <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
    #         .jpeg images without orientation information in the image Exif metadata. The bounding box
    #         coordinates aren't translated and represent the object locations before the image is rotated.
    #       </p>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    DetectFacesOutput = ::Struct.new(
      :face_details,
      :orientation_correction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing image bytes is not supported. Images stored in an S3 Bucket do
    #       not need to be base64-encoded.</p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute max_labels
    #   <p>Maximum number of labels you want the service to return in the response. The service
    #         returns the specified number of highest confidence labels. </p>
    #
    #   @return [Integer]
    #
    # @!attribute min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with confidence lower than this specified value.</p>
    #            <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a
    #         confidence values greater than or equal to 55 percent.</p>
    #
    #   @return [Float]
    #
    DetectLabelsInput = ::Struct.new(
      :image,
      :max_labels,
      :min_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute labels
    #   <p>An array of labels for the real-world objects detected. </p>
    #
    #   @return [Array<Label>]
    #
    # @!attribute orientation_correction
    #   <p>The value of <code>OrientationCorrection</code> is always null.</p>
    #            <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
    #         that includes the image's orientation. Amazon Rekognition uses this orientation information to perform
    #         image correction. The bounding box coordinates are translated to represent object locations
    #         after the orientation information in the Exif metadata is used to correct the image orientation.
    #         Images in .png format don't contain Exif metadata.</p>
    #            <p>Amazon Rekognition doesn’t perform image correction for images in .png format and
    #            .jpeg images without orientation information in the image Exif metadata. The bounding box
    #            coordinates aren't translated and represent the object locations before the image is rotated.
    #         </p>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    # @!attribute label_model_version
    #   <p>Version number of the label detection model that was used to detect labels.</p>
    #
    #   @return [String]
    #
    DetectLabelsOutput = ::Struct.new(
      :labels,
      :orientation_correction,
      :label_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with a confidence level lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with
    #         confidence values greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    # @!attribute human_loop_config
    #   <p>Sets up the configuration for human evaluation, including the FlowDefinition
    #         the image will be sent to.</p>
    #
    #   @return [HumanLoopConfig]
    #
    DetectModerationLabelsInput = ::Struct.new(
      :image,
      :min_confidence,
      :human_loop_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute moderation_labels
    #   <p>Array of detected Moderation labels and the time, in milliseconds from the
    #         start of the video, they were detected.</p>
    #
    #   @return [Array<ModerationLabel>]
    #
    # @!attribute moderation_model_version
    #   <p>Version number of the moderation detection model that was used to detect unsafe content.</p>
    #
    #   @return [String]
    #
    # @!attribute human_loop_activation_output
    #   <p>Shows the results of the human in the loop evaluation.</p>
    #
    #   @return [HumanLoopActivationOutput]
    #
    DetectModerationLabelsOutput = ::Struct.new(
      :moderation_labels,
      :moderation_model_version,
      :human_loop_activation_output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can
    #            reference an image stored in an Amazon S3 bucket. </p>
    #
    #   @return [Image]
    #
    # @!attribute summarization_attributes
    #   <p>An array of PPE types that you want to summarize.</p>
    #
    #   @return [ProtectiveEquipmentSummarizationAttributes]
    #
    DetectProtectiveEquipmentInput = ::Struct.new(
      :image,
      :summarization_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute protective_equipment_model_version
    #   <p>The version number of the PPE detection model used to detect PPE in the image.</p>
    #
    #   @return [String]
    #
    # @!attribute persons
    #   <p>An array of persons detected in the image (including persons not wearing PPE).</p>
    #
    #   @return [Array<ProtectiveEquipmentPerson>]
    #
    # @!attribute summary
    #   <p>Summary information for the types of PPE specified in the <code>SummarizationAttributes</code> input
    #         parameter.</p>
    #
    #   @return [ProtectiveEquipmentSummary]
    #
    DetectProtectiveEquipmentOutput = ::Struct.new(
      :protective_equipment_model_version,
      :persons,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of optional parameters that you can use to set the criteria that the text must meet to be included in your response.
    #       <code>WordFilter</code> looks at a word’s height, width, and minimum confidence. <code>RegionOfInterest</code>
    #       lets you set a specific region of the image to look for text in.
    #       </p>
    #
    # @!attribute word_filter
    #   <p>A set of parameters that allow you to filter out certain results from your returned results.</p>
    #
    #   @return [DetectionFilter]
    #
    # @!attribute regions_of_interest
    #   <p> A Filter focusing on a certain area of the image. Uses a <code>BoundingBox</code> object to set the region
    #         of the image.</p>
    #
    #   @return [Array<RegionOfInterest>]
    #
    DetectTextFilters = ::Struct.new(
      :word_filter,
      :regions_of_interest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #         to call Amazon Rekognition operations, you can't pass image bytes. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute filters
    #   <p>Optional parameters that let you set the criteria that the text must meet to be included in your response.</p>
    #
    #   @return [DetectTextFilters]
    #
    DetectTextInput = ::Struct.new(
      :image,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text_detections
    #   <p>An array of text that was detected in the input image.</p>
    #
    #   @return [Array<TextDetection>]
    #
    # @!attribute text_model_version
    #   <p>The model version used to detect text.</p>
    #
    #   @return [String]
    #
    DetectTextOutput = ::Struct.new(
      :text_detections,
      :text_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of parameters that allow you to filter out certain results from your returned results.</p>
    #
    # @!attribute min_confidence
    #   <p>Sets the confidence of word detection. Words with detection confidence below this will be
    #         excluded from the result. Values should be between 0 and 100. The default MinConfidence is
    #         80.</p>
    #
    #   @return [Float]
    #
    # @!attribute min_bounding_box_height
    #   <p>Sets the minimum height of the word bounding box. Words with bounding box heights lesser than
    #         this value will be excluded from the result. Value is relative to the video frame height.</p>
    #
    #   @return [Float]
    #
    # @!attribute min_bounding_box_width
    #   <p>Sets the minimum width of the word bounding box. Words with bounding boxes widths lesser than
    #         this value will be excluded from the result. Value is relative to the video frame width.</p>
    #
    #   @return [Float]
    #
    DetectionFilter = ::Struct.new(
      :min_confidence,
      :min_bounding_box_height,
      :min_bounding_box_width,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #          A training dataset or a test dataset used in a dataset distribution operation.
    #          For more information, see <a>DistributeDatasetEntries</a>.
    #       </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset that you want to use.
    #         </p>
    #
    #   @return [String]
    #
    DistributeDataset = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute datasets
    #   <p>The ARNS for the training dataset and test dataset that you want to use. The datasets must belong to
    #            the same project. The test dataset must be empty.
    #            </p>
    #
    #   @return [Array<DistributeDataset>]
    #
    DistributeDatasetEntriesInput = ::Struct.new(
      :datasets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DistributeDatasetEntriesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The emotions that appear to be expressed on the face, and the confidence level in the determination.
    #       The API is only making a determination of the physical appearance of a person's face. It is not a determination
    #       of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have
    #       a sad face might not be sad emotionally.</p>
    #
    # @!attribute type
    #   <p>Type of emotion detected.</p>
    #
    #   Enum, one of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Emotion = ::Struct.new(
      :type,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EmotionName
    #
    module EmotionName
      # No documentation available.
      #
      HAPPY = "HAPPY"

      # No documentation available.
      #
      SAD = "SAD"

      # No documentation available.
      #
      ANGRY = "ANGRY"

      # No documentation available.
      #
      CONFUSED = "CONFUSED"

      # No documentation available.
      #
      DISGUSTED = "DISGUSTED"

      # No documentation available.
      #
      SURPRISED = "SURPRISED"

      # No documentation available.
      #
      CALM = "CALM"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      FEAR = "FEAR"
    end

    # <p>Information about an item of Personal Protective Equipment (PPE) detected by
    #          <a>DetectProtectiveEquipment</a>. For more
    #          information, see <a>DetectProtectiveEquipment</a>.</p>
    #
    # @!attribute bounding_box
    #   <p>A bounding box surrounding the item of detected PPE.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has that the bounding box (<code>BoundingBox</code>) contains an item of PPE.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The type of detected PPE.</p>
    #
    #   Enum, one of: ["FACE_COVER", "HAND_COVER", "HEAD_COVER"]
    #
    #   @return [String]
    #
    # @!attribute covers_body_part
    #   <p>Information about the body part covered by the detected PPE.</p>
    #
    #   @return [CoversBodyPart]
    #
    EquipmentDetection = ::Struct.new(
      :bounding_box,
      :confidence,
      :type,
      :covers_body_part,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The evaluation results for the training of a model.</p>
    #
    # @!attribute f1_score
    #   <p>The F1 score for the evaluation of all labels. The F1 score metric evaluates the overall precision
    #            and recall performance of the model as a single value. A higher value indicates better precision
    #            and recall performance. A lower score indicates that precision, recall, or both are performing poorly.
    #
    #     </p>
    #
    #   @return [Float]
    #
    # @!attribute summary
    #   <p>The S3 bucket that contains the training summary.</p>
    #
    #   @return [Summary]
    #
    EvaluationResult = ::Struct.new(
      :f1_score,
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether or not the eyes on the face are open, and the confidence level in the
    #       determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the eyes on the face are open.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    EyeOpen = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in
    #       the determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the face is wearing eye glasses or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Eyeglasses = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>Describes the face properties such as the bounding box, face ID, image ID of the input
    #       image, and external image ID that you assigned. </p>
    #
    # @!attribute face_id
    #   <p>Unique identifier that Amazon Rekognition assigns to the face.</p>
    #
    #   @return [String]
    #
    # @!attribute bounding_box
    #   <p>Bounding box of the face.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute image_id
    #   <p>Unique identifier that Amazon Rekognition assigns to the input image.</p>
    #
    #   @return [String]
    #
    # @!attribute external_image_id
    #   <p>Identifier that you assign to all the faces in the input image.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>Confidence level that the bounding box contains a face (and not a different object such
    #         as a tree).</p>
    #
    #   @return [Float]
    #
    # @!attribute index_faces_model_version
    #   <p>
    #         The version of the face detect and storage model that was used when indexing the face vector.
    #       </p>
    #
    #   @return [String]
    #
    Face = ::Struct.new(
      :face_id,
      :bounding_box,
      :image_id,
      :external_image_id,
      :confidence,
      :index_faces_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FaceAttributes
    #
    module FaceAttributes
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>Structure containing attributes of the face that the algorithm detected.</p>
    #          <p>A <code>FaceDetail</code> object contains either the default facial attributes or all facial attributes.
    #       The default attributes are <code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>.</p>
    #          <p>
    #             <a>GetFaceDetection</a> is the only Amazon Rekognition Video stored video operation that can return a <code>FaceDetail</code> object with all attributes.
    #       To specify which attributes to return, use the <code>FaceAttributes</code> input parameter for <a>StartFaceDetection</a>.
    #       The following Amazon Rekognition Video operations return only the default attributes. The corresponding Start operations
    #         don't have a <code>FaceAttributes</code> input parameter.</p>
    #          <ul>
    #             <li>
    #                <p>GetCelebrityRecognition</p>
    #             </li>
    #             <li>
    #                <p>GetPersonTracking</p>
    #             </li>
    #             <li>
    #                <p>GetFaceSearch</p>
    #             </li>
    #          </ul>
    #          <p>The Amazon Rekognition Image <a>DetectFaces</a> and <a>IndexFaces</a> operations
    #       can return all facial attributes. To specify which attributes to return, use the
    #       <code>Attributes</code> input parameter for <code>DetectFaces</code>. For <code>IndexFaces</code>, use the
    #       <code>DetectAttributes</code> input parameter.</p>
    #
    # @!attribute bounding_box
    #   <p>Bounding box of the face. Default attribute.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute age_range
    #   <p>The estimated age range, in years, for the face. Low represents the lowest estimated
    #         age and High represents the highest estimated age.</p>
    #
    #   @return [AgeRange]
    #
    # @!attribute smile
    #   <p>Indicates whether or not the face is smiling, and the confidence level in the
    #         determination.</p>
    #
    #   @return [Smile]
    #
    # @!attribute eyeglasses
    #   <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in
    #         the determination.</p>
    #
    #   @return [Eyeglasses]
    #
    # @!attribute sunglasses
    #   <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in
    #         the determination.</p>
    #
    #   @return [Sunglasses]
    #
    # @!attribute gender
    #   <p>The predicted gender of a detected face.
    #       </p>
    #
    #   @return [Gender]
    #
    # @!attribute beard
    #   <p>Indicates whether or not the face has a beard, and the confidence level in the
    #         determination.</p>
    #
    #   @return [Beard]
    #
    # @!attribute mustache
    #   <p>Indicates whether or not the face has a mustache, and the confidence level in the
    #         determination.</p>
    #
    #   @return [Mustache]
    #
    # @!attribute eyes_open
    #   <p>Indicates whether or not the eyes on the face are open, and the confidence level in the
    #         determination.</p>
    #
    #   @return [EyeOpen]
    #
    # @!attribute mouth_open
    #   <p>Indicates whether or not the mouth on the face is open, and the confidence level in the
    #         determination.</p>
    #
    #   @return [MouthOpen]
    #
    # @!attribute emotions
    #   <p>The emotions that appear to be expressed on the face, and the confidence level in the determination.
    #         The API is only making a determination of the physical appearance of a person's face. It is not a determination
    #         of the person’s internal emotional state and should not be used in such a way. For example, a person pretending to have
    #         a sad face might not be sad emotionally.</p>
    #
    #   @return [Array<Emotion>]
    #
    # @!attribute landmarks
    #   <p>Indicates the location of landmarks on the face. Default attribute.</p>
    #
    #   @return [Array<Landmark>]
    #
    # @!attribute pose
    #   <p>Indicates the pose of the face as determined by its pitch, roll, and yaw. Default attribute.</p>
    #
    #   @return [Pose]
    #
    # @!attribute quality
    #   <p>Identifies image brightness and sharpness. Default attribute.</p>
    #
    #   @return [ImageQuality]
    #
    # @!attribute confidence
    #   <p>Confidence level that the bounding box contains a face (and not a different object such
    #         as a tree). Default attribute.</p>
    #
    #   @return [Float]
    #
    FaceDetail = ::Struct.new(
      :bounding_box,
      :age_range,
      :smile,
      :eyeglasses,
      :sunglasses,
      :gender,
      :beard,
      :mustache,
      :eyes_open,
      :mouth_open,
      :emotions,
      :landmarks,
      :pose,
      :quality,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>
    #
    # @!attribute timestamp
    #   <p>Time, in milliseconds from the start of the video, that the face was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute face
    #   <p>The face properties for the detected face.</p>
    #
    #   @return [FaceDetail]
    #
    FaceDetection = ::Struct.new(
      :timestamp,
      :face,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # <p>Provides face metadata. In addition, it also provides the confidence in the match of
    #       this face with the input face.</p>
    #
    # @!attribute similarity
    #   <p>Confidence in the match of this face with the input face.</p>
    #
    #   @return [Float]
    #
    # @!attribute face
    #   <p>Describes the face properties such as the bounding box, face ID, image ID of the source
    #         image, and external image ID that you assigned.</p>
    #
    #   @return [Face]
    #
    FaceMatch = ::Struct.new(
      :similarity,
      :face,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object containing both the face metadata (stored in the backend database), and facial
    #       attributes that are detected but aren't stored in the database.</p>
    #
    # @!attribute face
    #   <p>Describes the face properties such as the bounding box, face ID, image ID of the input
    #         image, and external image ID that you assigned. </p>
    #
    #   @return [Face]
    #
    # @!attribute face_detail
    #   <p>Structure containing attributes of the face that the algorithm detected.</p>
    #
    #   @return [FaceDetail]
    #
    FaceRecord = ::Struct.new(
      :face,
      :face_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input face recognition parameters for an Amazon Rekognition stream processor.
    #             Includes the collection to use for face recognition and the face attributes to detect.
    #             Defining the settings is required in the request parameter for <a>CreateStreamProcessor</a>.</p>
    #
    # @!attribute collection_id
    #   <p>The ID of a collection that contains faces that you want to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute face_match_threshold
    #   <p>Minimum face match confidence score that must be met to return a result for a recognized face. The default is 80.
    #           0 is the lowest confidence. 100 is the highest confidence. Values between 0 and 100 are accepted, and values lower than 80 are set to 80.</p>
    #
    #   @return [Float]
    #
    FaceSearchSettings = ::Struct.new(
      :collection_id,
      :face_match_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FaceSearchSortBy
    #
    module FaceSearchSortBy
      # No documentation available.
      #
      INDEX = "INDEX"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # <p>The predicted gender of a detected face.
    #           </p>
    #
    #
    #          <p>Amazon Rekognition makes gender binary (male/female) predictions based on the physical appearance
    #       of a face in a particular image. This kind of prediction is not designed to categorize a person’s gender
    #       identity, and you shouldn't use Amazon Rekognition to make such a determination. For example, a male actor
    #       wearing a long-haired wig and earrings for a role might be predicted as female.</p>
    #
    #          <p>Using Amazon Rekognition to make gender binary predictions is best suited for use cases where aggregate gender distribution statistics need to be
    #       analyzed without identifying specific users. For example, the percentage of female users compared to male users on a social media platform. </p>
    #
    #          <p>We don't recommend using gender binary predictions to make decisions that impact an individual's rights, privacy, or access to services.</p>
    #
    # @!attribute value
    #   <p>The predicted gender of the face.</p>
    #
    #   Enum, one of: ["Male", "Female"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the prediction.</p>
    #
    #   @return [Float]
    #
    Gender = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GenderType
    #
    module GenderType
      # No documentation available.
      #
      Male = "Male"

      # No documentation available.
      #
      Female = "Female"
    end

    # <p>Information about where an object (<a>DetectCustomLabels</a>) or text (<a>DetectText</a>) is located on
    #       an image.</p>
    #
    # @!attribute bounding_box
    #   <p>An axis-aligned coarse representation of the detected item's location on the
    #         image.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute polygon
    #   <p>Within the bounding box, a fine-grained polygon around the detected item.</p>
    #
    #   @return [Array<Point>]
    #
    Geometry = ::Struct.new(
      :bounding_box,
      :polygon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation,
    #      which recognizes celebrities in an image. </p>
    #
    #   @return [String]
    #
    GetCelebrityInfoInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute urls
    #   <p>An array of URLs pointing to additional celebrity information. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the celebrity.</p>
    #
    #   @return [String]
    #
    # @!attribute known_gender
    #   <p>Retrieves the known gender for the celebrity.</p>
    #
    #   @return [KnownGender]
    #
    GetCelebrityInfoOutput = ::Struct.new(
      :urls,
      :name,
      :known_gender,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from
    #         a call to <code>StartCelebrityRecognition</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier,
    #           specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>
    #
    #   Enum, one of: ["ID", "TIMESTAMP"]
    #
    #   @return [String]
    #
    GetCelebrityRecognitionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the celebrity recognition job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
    #         every page of paginated responses from a Amazon Rekognition Video operation.</p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request
    #         to retrieve the next set of celebrities.</p>
    #
    #   @return [String]
    #
    # @!attribute celebrities
    #   <p>Array of celebrities recognized in the video.</p>
    #
    #   @return [Array<CelebrityRecognition>]
    #
    GetCelebrityRecognitionOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :celebrities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the inappropriate, unwanted, or offensive content moderation job. Use <code>JobId</code> to identify the job in
    #          a subsequent call to <code>GetContentModeration</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #       If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #       The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition
    #           returns a pagination token in the response. You can use this pagination token
    #           to retrieve the next set of content moderation labels.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Sort to use for elements in the <code>ModerationLabelDetections</code> array.
    #          Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #          Use <code>NAME</code> to alphabetically group elements for a label together.
    #          Within each label group, the array element are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    #
    #   Enum, one of: ["NAME", "TIMESTAMP"]
    #
    #   @return [String]
    #
    GetContentModerationInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the content moderation analysis job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code>
    #        is returned in every page of paginated responses from <code>GetContentModeration</code>. </p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute moderation_labels
    #   <p>The detected inappropriate, unwanted, or offensive content moderation labels and the time(s) they were detected.</p>
    #
    #   @return [Array<ContentModerationDetection>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
    #        request to retrieve the next set of content moderation labels. </p>
    #
    #   @return [String]
    #
    # @!attribute moderation_model_version
    #   <p>Version number of the moderation detection model that was used to detect inappropriate, unwanted, or offensive content.</p>
    #
    #   @return [String]
    #
    GetContentModerationOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :moderation_labels,
      :next_token,
      :moderation_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of faces.</p>
    #
    #   @return [String]
    #
    GetFaceDetectionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the face detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
    #          every page of paginated responses from a Amazon Rekognition video operation.</p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. </p>
    #
    #   @return [String]
    #
    # @!attribute faces
    #   <p>An array of faces detected in the video. Each element contains a detected face's details and the time,
    #          in milliseconds from the start of the video, the face was detected. </p>
    #
    #   @return [Array<FaceDetection>]
    #
    GetFaceDetectionOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :faces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of search results. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time
    #         that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>
    #
    #   Enum, one of: ["INDEX", "TIMESTAMP"]
    #
    #   @return [String]
    #
    GetFaceSearchInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the face search job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of search results. </p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses
    #         from a Amazon Rekognition Video operation. </p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute persons
    #   <p>An array of persons,  <a>PersonMatch</a>,
    #         in the video whose face(s) match the face(s) in an Amazon Rekognition collection. It also includes time information
    #          for when persons are matched in the video.
    #         You specify the input collection in an initial call to <code>StartFaceSearch</code>.
    #         Each  <code>Persons</code> element includes a time the person was matched,
    #         face match details (<code>FaceMatches</code>) for matching faces in the collection,
    #          and person information (<code>Person</code>) for the matched person. </p>
    #
    #   @return [Array<PersonMatch>]
    #
    GetFaceSearchOutput = ::Struct.new(
      :job_status,
      :status_message,
      :next_token,
      :video_metadata,
      :persons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from
    #         an initial call to <code>StartlabelDetection</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of labels. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Sort to use for elements in the <code>Labels</code> array.
    #         Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #         Use <code>NAME</code> to alphabetically group elements for a label together.
    #         Within each label group, the array element are sorted by detection confidence.
    #         The default sort is by <code>TIMESTAMP</code>.</p>
    #
    #   Enum, one of: ["NAME", "TIMESTAMP"]
    #
    #   @return [String]
    #
    GetLabelDetectionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the label detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
    #          every page of paginated responses from a Amazon Rekognition video operation.</p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request
    #           to retrieve the next set of labels.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>An array of labels detected in the video. Each element contains the detected label and the time,
    #           in milliseconds from the start of the video, that the label was detected. </p>
    #
    #   @return [Array<LabelDetection>]
    #
    # @!attribute label_model_version
    #   <p>Version number of the label detection model that was used to detect labels.</p>
    #
    #   @return [String]
    #
    GetLabelDetectionOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :labels,
      :label_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of persons. </p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements
    #          by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons.
    #          If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    #
    #   Enum, one of: ["INDEX", "TIMESTAMP"]
    #
    #   @return [String]
    #
    GetPersonTrackingInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>The current status of the person tracking job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition Video analyzed. <code>Videometadata</code> is returned in
    #          every page of paginated responses from a Amazon Rekognition Video operation.</p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of persons. </p>
    #
    #   @return [String]
    #
    # @!attribute persons
    #   <p>An array of the persons detected in the video and the time(s) their path was tracked throughout the video.
    #           An array element will exist for each time a person's path is tracked. </p>
    #
    #   @return [Array<PersonDetection>]
    #
    GetPersonTrackingOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :persons,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Job identifier for the text detection operation for which you want results returned.
    #         You get the job identifer from an initial call to <code>StartSegmentDetection</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
    #         request to retrieve the next set of text.</p>
    #
    #   @return [String]
    #
    GetSegmentDetectionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>Current status of the segment detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Currently, Amazon Rekognition Video returns a single   object in the
    #         <code>VideoMetadata</code> array. The object
    #         contains information about the video stream in the input file that Amazon Rekognition Video chose to analyze.
    #         The <code>VideoMetadata</code> object includes the video codec, video format and other information.
    #         Video metadata is returned in each page of information returned by <code>GetSegmentDetection</code>.</p>
    #
    #   @return [Array<VideoMetadata>]
    #
    # @!attribute audio_metadata
    #   <p>An array of
    #          objects. There can be multiple audio streams.
    #         Each <code>AudioMetadata</code> object contains metadata for a single audio stream.
    #         Audio information in an <code>AudioMetadata</code> objects includes
    #         the audio codec, the number of audio channels, the duration of the audio stream,
    #         and the sample rate. Audio metadata is returned in each page of information returned
    #         by <code>GetSegmentDetection</code>.</p>
    #
    #   @return [Array<AudioMetadata>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns
    #         a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>
    #
    #   @return [String]
    #
    # @!attribute segments
    #   <p>An array of segments detected in a video.  The array is sorted by the segment types (TECHNICAL_CUE or SHOT)
    #         specified in the <code>SegmentTypes</code> input parameter of <code>StartSegmentDetection</code>. Within
    #         each segment type the array is sorted by timestamp values.</p>
    #
    #   @return [Array<SegmentDetection>]
    #
    # @!attribute selected_segment_types
    #   <p>An array containing the segment types requested in the call to <code>StartSegmentDetection</code>.
    #       </p>
    #
    #   @return [Array<SegmentTypeInfo>]
    #
    GetSegmentDetectionOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :audio_metadata,
      :next_token,
      :segments,
      :selected_segment_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Job identifier for the text detection operation for which you want results returned.
    #           You get the job identifer from an initial call to <code>StartTextDetection</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns
    #         a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>
    #
    #   @return [String]
    #
    GetTextDetectionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_status
    #   <p>Current status of the text detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>If the job fails, <code>StatusMessage</code> provides a descriptive error message.</p>
    #
    #   @return [String]
    #
    # @!attribute video_metadata
    #   <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in
    #               every page of paginated responses from a Amazon Rekognition video operation.</p>
    #
    #   @return [VideoMetadata]
    #
    # @!attribute text_detections
    #   <p>An array of text detected in the video. Each element contains the detected text, the time in milliseconds
    #         from the start of the video that the text was detected, and where it was detected on the screen.</p>
    #
    #   @return [Array<TextDetectionResult>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
    #           request to retrieve the next set of text.</p>
    #
    #   @return [String]
    #
    # @!attribute text_model_version
    #   <p>Version number of the text detection model that was used to detect text.</p>
    #
    #   @return [String]
    #
    GetTextDetectionOutput = ::Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :text_detections,
      :next_token,
      :text_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket that contains an Amazon Sagemaker Ground Truth format manifest file.
    # </p>
    #
    # @!attribute s3_object
    #   <p>Provides the S3 bucket name and object name.</p>
    #            <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #         Amazon Rekognition operations.</p>
    #
    #            <p>For Amazon Rekognition to process an S3 object, the user must have permission to
    #         access the S3 object. For more information, see How Amazon Rekognition works with IAM in the Amazon Rekognition
    #         Developer Guide. </p>
    #
    #   @return [S3Object]
    #
    GroundTruthManifest = ::Struct.new(
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the input did
    #        not trigger human review.</p>
    #
    # @!attribute human_loop_arn
    #   <p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>
    #
    #   @return [String]
    #
    # @!attribute human_loop_activation_reasons
    #   <p>Shows if and why human review was needed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute human_loop_activation_conditions_evaluation_results
    #   <p>Shows the result of condition evaluations, including those conditions which activated a
    #         human review.</p>
    #
    #   @return [String]
    #
    HumanLoopActivationOutput = ::Struct.new(
      :human_loop_arn,
      :human_loop_activation_reasons,
      :human_loop_activation_conditions_evaluation_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sets up the flow definition the image will be sent to if one of the conditions is met.
    #       You can also set certain attributes of the image before review.</p>
    #
    # @!attribute human_loop_name
    #   <p>The name of the human review used for this image. This should be kept unique within a region.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition. You can create a flow definition by using the Amazon Sagemaker
    #         <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateFlowDefinition.html">CreateFlowDefinition</a>
    #        Operation. </p>
    #
    #   @return [String]
    #
    # @!attribute data_attributes
    #   <p>Sets attributes of the input data.</p>
    #
    #   @return [HumanLoopDataAttributes]
    #
    HumanLoopConfig = ::Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :data_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to set attributes of the image. Currently, you can declare an image as free of
    #       personally identifiable information.</p>
    #
    # @!attribute content_classifiers
    #   <p>Sets whether the input image is free of personally identifiable information.</p>
    #
    #   @return [Array<String>]
    #
    HumanLoopDataAttributes = ::Struct.new(
      :content_classifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of in-progress human reviews you have has exceeded the number allowed.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota code.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    HumanLoopQuotaExceededException = ::Struct.new(
      :resource_type,
      :quota_code,
      :service_code,
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at least one of the other input
    #         parameters is different from the previous call to the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the input image either as bytes or an S3 object.</p>
    #          <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code>
    #       property. For example, you would use the <code>Bytes</code> property to pass an image loaded
    #       from a local file system. Image bytes passed by using the <code>Bytes</code> property must be
    #       base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to
    #       call Amazon Rekognition API operations. </p>
    #
    #          <p>For more information, see Analyzing an Image Loaded from a Local File System
    #       in the Amazon Rekognition Developer Guide.</p>
    #          <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the
    #         <code>S3Object</code> property. Images stored in an S3 bucket do not need to be
    #       base64-encoded.</p>
    #          <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #       Amazon Rekognition operations.</p>
    #          <p>If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes using the Bytes
    #       property is not supported. You must first upload the image to an Amazon S3 bucket and then
    #       call the operation using the S3Object property.</p>
    #
    #          <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3
    #       object. For more information, see How Amazon Rekognition works with IAM in the Amazon Rekognition Developer Guide.
    #     </p>
    #
    # @!attribute bytes
    #   <p>Blob of image bytes up to 5 MBs.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object
    #   <p>Identifies an S3 object as the image source.</p>
    #
    #   @return [S3Object]
    #
    Image = ::Struct.new(
      :bytes,
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies face image brightness and sharpness. </p>
    #
    # @!attribute brightness
    #   <p>Value representing brightness of the face. The service returns a value between 0 and
    #         100 (inclusive). A higher value indicates a brighter face image.</p>
    #
    #   @return [Float]
    #
    # @!attribute sharpness
    #   <p>Value representing sharpness of the face. The service returns a value between 0 and 100
    #         (inclusive). A higher value indicates a sharper face image.</p>
    #
    #   @return [Float]
    #
    ImageQuality = ::Struct.new(
      :brightness,
      :sharpness,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input image size exceeds the allowed limit. If you are calling
    #       DetectProtectiveEquipment, the image size or resolution exceeds the allowed limit. For more information, see
    #       Guidelines and quotas in Amazon Rekognition in the Amazon Rekognition Developer Guide. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ImageTooLargeException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>The ID of an existing collection to which you want to add the faces that are detected
    #         in the input images.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute external_image_id
    #   <p>The ID you want to assign to all the faces detected in the image.</p>
    #
    #   @return [String]
    #
    # @!attribute detection_attributes
    #   <p>An array of facial attributes that you want to be returned. This can be the default
    #         list of attributes or all attributes. If you don't specify a value for <code>Attributes</code>
    #         or if you specify <code>["DEFAULT"]</code>, the API returns the following subset of facial
    #         attributes: <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code>. If you provide <code>["ALL"]</code>, all
    #         facial attributes are returned, but the operation takes longer to complete.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_faces
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
    #   @return [Integer]
    #
    # @!attribute quality_filter
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
    #   Enum, one of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    IndexFacesInput = ::Struct.new(
      :collection_id,
      :image,
      :external_image_id,
      :detection_attributes,
      :max_faces,
      :quality_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute face_records
    #   <p>An array of faces detected and added to the collection.
    #         For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide.
    #       </p>
    #
    #   @return [Array<FaceRecord>]
    #
    # @!attribute orientation_correction
    #   <p>If your collection is associated with a face detection model that's later
    #         than version 3.0, the value of <code>OrientationCorrection</code>
    #         is always null and no orientation information is returned.</p>
    #
    #            <p>If your collection is associated with a face detection model that's
    #         version 3.0 or earlier, the following applies:</p>
    #            <ul>
    #               <li>
    #                  <p>If the input image is in .jpeg format, it might contain exchangeable image file format (Exif) metadata
    #           that includes the image's orientation. Amazon Rekognition uses this orientation information to perform
    #           image correction - the bounding box coordinates are translated to represent object locations
    #           after the orientation information in the Exif metadata is used to correct the image orientation.
    #           Images in .png format don't contain Exif metadata. The value of <code>OrientationCorrection</code>
    #           is null.</p>
    #               </li>
    #               <li>
    #                  <p>If the image doesn't contain orientation information in its Exif metadata, Amazon Rekognition returns
    #         an estimated orientation (ROTATE_0, ROTATE_90, ROTATE_180, ROTATE_270). Amazon Rekognition doesn’t perform
    #         image correction for images. The bounding box coordinates aren't translated and represent the
    #         object locations before the image is rotated.</p>
    #               </li>
    #            </ul>
    #
    #
    #
    #            <p>Bounding box information is returned in the <code>FaceRecords</code> array. You can get the
    #       version of the face detection model by calling <a>DescribeCollection</a>. </p>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    # @!attribute face_model_version
    #   <p>The version number of the face detection model that's associated with the input
    #         collection (<code>CollectionId</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute unindexed_faces
    #   <p>An array of faces that were detected in the image but weren't indexed. They weren't
    #         indexed because the quality filter identified them as low quality, or the
    #           <code>MaxFaces</code> request parameter filtered them out. To use the quality filter, you
    #         specify the <code>QualityFilter</code> request parameter.</p>
    #
    #   @return [Array<UnindexedFace>]
    #
    IndexFacesOutput = ::Struct.new(
      :face_records,
      :orientation_correction,
      :face_model_version,
      :unindexed_faces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An instance of a label returned by Amazon Rekognition Image (<a>DetectLabels</a>)
    #       or by Amazon Rekognition Video (<a>GetLabelDetection</a>).</p>
    #
    # @!attribute bounding_box
    #   <p>The position of the label instance on the image.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has in the accuracy of the bounding box.</p>
    #
    #   @return [Float]
    #
    Instance = ::Struct.new(
      :bounding_box,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Rekognition experienced a service issue. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    InternalServerError = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided image format is not supported. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    InvalidImageFormatException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Pagination token in the request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    InvalidPaginationTokenException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input parameter violated a constraint. Validate your parameter before calling the API
    #       operation again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    InvalidS3ObjectException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see
    #             CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute arn
    #   <p>ARN of the output Amazon Kinesis Data Streams stream.</p>
    #
    #   @return [String]
    #
    KinesisDataStream = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Kinesis video stream stream that provides the source streaming video for a Amazon Rekognition Video stream processor. For more information, see
    #             CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute arn
    #   <p>ARN of the Kinesis video stream stream that streams the source video.</p>
    #
    #   @return [String]
    #
    KinesisVideoStream = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Specifies the starting point in a Kinesis stream to start processing.
    #             You can use the producer timestamp or the fragment number.
    #             For more information, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html">Fragment</a>.
    #         </p>
    #
    # @!attribute producer_timestamp
    #   <p>
    #               The timestamp from the producer corresponding to the fragment.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute fragment_number
    #   <p>
    #               The unique identifier of the fragment. This value monotonically increases based on the ingestion order.
    #           </p>
    #
    #   @return [String]
    #
    KinesisVideoStreamStartSelector = ::Struct.new(
      :producer_timestamp,
      :fragment_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The known gender identity for the celebrity that matches the provided ID. The known
    #       gender identity can be Male, Female, Nonbinary, or Unlisted.</p>
    #
    # @!attribute type
    #   <p>A string value of the KnownGender info about the Celebrity.</p>
    #
    #   Enum, one of: ["Male", "Female", "Nonbinary", "Unlisted"]
    #
    #   @return [String]
    #
    KnownGender = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KnownGenderType
    #
    module KnownGenderType
      # No documentation available.
      #
      Male = "Male"

      # No documentation available.
      #
      Female = "Female"

      # No documentation available.
      #
      Nonbinary = "Nonbinary"

      # No documentation available.
      #
      Unlisted = "Unlisted"
    end

    # <p>Structure containing details about the detected label, including the name, detected instances, parent labels, and level of
    #       confidence.</p>
    #          <p>
    #     </p>
    #
    # @!attribute name
    #   <p>The name (label) of the object or scene.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>Level of confidence.</p>
    #
    #   @return [Float]
    #
    # @!attribute instances
    #   <p>If <code>Label</code> represents an object, <code>Instances</code> contains the bounding boxes for each instance of the detected object.
    #         Bounding boxes are returned for common object labels such as people, cars, furniture, apparel or pets.</p>
    #
    #   @return [Array<Instance>]
    #
    # @!attribute parents
    #   <p>The parent labels for a label. The response includes all ancestor labels.</p>
    #
    #   @return [Array<Parent>]
    #
    Label = ::Struct.new(
      :name,
      :confidence,
      :instances,
      :parents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>
    #
    # @!attribute timestamp
    #   <p>Time, in milliseconds from the start of the video, that the label was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute label
    #   <p>Details about the detected label.</p>
    #
    #   @return [Label]
    #
    LabelDetection = ::Struct.new(
      :timestamp,
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # Includes enum constants for LabelDetectionSortBy
    #
    module LabelDetectionSortBy
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # <p>Indicates the location of the landmark on the face.</p>
    #
    # @!attribute type
    #   <p>Type of landmark.</p>
    #
    #   Enum, one of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"]
    #
    #   @return [String]
    #
    # @!attribute x
    #   <p>The x-coordinate of the landmark expressed as a ratio of the width of the image.
    #         The x-coordinate is measured from the left-side of the image.
    #         For example, if the image is 700 pixels wide and the x-coordinate of the landmark is at 350 pixels, this value is 0.5. </p>
    #
    #   @return [Float]
    #
    # @!attribute y
    #   <p>The y-coordinate of the landmark expressed as a ratio of the height of the image.
    #         The y-coordinate is measured from the top of the image.
    #         For example, if the image height is 200 pixels and the y-coordinate of the landmark is at 50 pixels, this value is 0.25.</p>
    #
    #   @return [Float]
    #
    Landmark = ::Struct.new(
      :type,
      :x,
      :y,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LandmarkType
    #
    module LandmarkType
      # No documentation available.
      #
      eyeLeft = "eyeLeft"

      # No documentation available.
      #
      eyeRight = "eyeRight"

      # No documentation available.
      #
      nose = "nose"

      # No documentation available.
      #
      mouthLeft = "mouthLeft"

      # No documentation available.
      #
      mouthRight = "mouthRight"

      # No documentation available.
      #
      leftEyeBrowLeft = "leftEyeBrowLeft"

      # No documentation available.
      #
      leftEyeBrowRight = "leftEyeBrowRight"

      # No documentation available.
      #
      leftEyeBrowUp = "leftEyeBrowUp"

      # No documentation available.
      #
      rightEyeBrowLeft = "rightEyeBrowLeft"

      # No documentation available.
      #
      rightEyeBrowRight = "rightEyeBrowRight"

      # No documentation available.
      #
      rightEyeBrowUp = "rightEyeBrowUp"

      # No documentation available.
      #
      leftEyeLeft = "leftEyeLeft"

      # No documentation available.
      #
      leftEyeRight = "leftEyeRight"

      # No documentation available.
      #
      leftEyeUp = "leftEyeUp"

      # No documentation available.
      #
      leftEyeDown = "leftEyeDown"

      # No documentation available.
      #
      rightEyeLeft = "rightEyeLeft"

      # No documentation available.
      #
      rightEyeRight = "rightEyeRight"

      # No documentation available.
      #
      rightEyeUp = "rightEyeUp"

      # No documentation available.
      #
      rightEyeDown = "rightEyeDown"

      # No documentation available.
      #
      noseLeft = "noseLeft"

      # No documentation available.
      #
      noseRight = "noseRight"

      # No documentation available.
      #
      mouthUp = "mouthUp"

      # No documentation available.
      #
      mouthDown = "mouthDown"

      # No documentation available.
      #
      leftPupil = "leftPupil"

      # No documentation available.
      #
      rightPupil = "rightPupil"

      # No documentation available.
      #
      upperJawlineLeft = "upperJawlineLeft"

      # No documentation available.
      #
      midJawlineLeft = "midJawlineLeft"

      # No documentation available.
      #
      chinBottom = "chinBottom"

      # No documentation available.
      #
      midJawlineRight = "midJawlineRight"

      # No documentation available.
      #
      upperJawlineRight = "upperJawlineRight"
    end

    # <p>An Amazon Rekognition service limit was exceeded. For example, if you start too many Amazon Rekognition Video jobs concurrently, calls to start operations
    #             (<code>StartLabelDetection</code>, for example) will raise a <code>LimitExceededException</code> exception (HTTP status code: 400) until
    #             the number of concurrently running jobs is below the Amazon Rekognition service limit.  </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token from the previous response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of collection IDs to return. </p>
    #
    #   @return [Integer]
    #
    ListCollectionsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_ids
    #   <p>An array of collection IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If the result is truncated, the response provides a <code>NextToken</code> that you can
    #         use in the subsequent request to fetch the next set of collection IDs.</p>
    #
    #   @return [String]
    #
    # @!attribute face_model_versions
    #   <p>Version numbers of the face detection models associated with the collections in the array <code>CollectionIds</code>.
    #       For example, the value of <code>FaceModelVersions[2]</code> is the version number for the face detection model used
    #         by the collection in <code>CollectionId[2]</code>.</p>
    #
    #   @return [Array<String>]
    #
    ListCollectionsOutput = ::Struct.new(
      :collection_ids,
      :next_token,
      :face_model_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) for the dataset that you want to use.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute contains_labels
    #   <p>Specifies a label filter for the response. The response includes an entry only if one or more of the labels in <code>ContainsLabels</code> exist in the entry.
    #         </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute labeled
    #   <p>
    #      Specify <code>true</code> to get only the JSON Lines where the image is labeled.
    #      Specify <code>false</code> to get only the JSON Lines where the image isn't labeled. If you
    #      don't specify <code>Labeled</code>, <code>ListDatasetEntries</code> returns JSON Lines for labeled and unlabeled
    #      images.
    #   </p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_ref_contains
    #   <p>If specified, <code>ListDatasetEntries</code> only returns JSON Lines where the value of <code>SourceRefContains</code> is
    #      part of the <code>source-ref</code> field. The <code>source-ref</code> field contains the Amazon S3 location of the image.
    #      You can use <code>SouceRefContains</code> for tasks such as getting the JSON Line for a single image, or gettting JSON Lines for all images within a specific folder.</p>
    #
    #   @return [String]
    #
    # @!attribute has_errors
    #   <p>Specifies an error filter for the response. Specify <code>True</code> to only include entries that have errors.
    #         </p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    ListDatasetEntriesInput = ::Struct.new(
      :dataset_arn,
      :contains_labels,
      :labeled,
      :source_ref_contains,
      :has_errors,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_entries
    #   <p>
    #   A list of entries (images) in the dataset.
    #   </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    ListDatasetEntriesOutput = ::Struct.new(
      :dataset_entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to use.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100.
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    ListDatasetLabelsInput = ::Struct.new(
      :dataset_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dataset_label_descriptions
    #   <p>
    #   A list of the labels in the dataset.
    #   </p>
    #
    #   @return [Array<DatasetLabelDescription>]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination
    #         token to retrieve the next set of results. </p>
    #
    #   @return [String]
    #
    ListDatasetLabelsOutput = ::Struct.new(
      :dataset_label_descriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>ID of the collection from which to list the faces.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #         Amazon Rekognition returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of faces.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of faces to return.</p>
    #
    #   @return [Integer]
    #
    ListFacesInput = ::Struct.new(
      :collection_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute faces
    #   <p>An array of <code>Face</code> objects. </p>
    #
    #   @return [Array<Face>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition returns this token that you can use in the
    #         subsequent request to retrieve the next set of faces.</p>
    #
    #   @return [String]
    #
    # @!attribute face_model_version
    #   <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
    #
    #   @return [String]
    #
    ListFacesOutput = ::Struct.new(
      :faces,
      :next_token,
      :face_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video
    #               returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>
    #
    #   @return [Integer]
    #
    ListStreamProcessorsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent
    #               request to retrieve the next set of stream processors. </p>
    #
    #   @return [String]
    #
    # @!attribute stream_processors
    #   <p>List of stream processors that you have created.</p>
    #
    #   @return [Array<StreamProcessor>]
    #
    ListStreamProcessorsOutput = ::Struct.new(
      :next_token,
      :stream_processors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that contains the tags that you want a list of.
    #       </p>
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
    #   <p>
    #         A list of key-value tags assigned to the resource.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a single type of inappropriate, unwanted, or offensive content found in an image or video. Each type of
    #       moderated content has a label within a hierarchical taxonomy. For more information, see
    #       Content moderation in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute confidence
    #   <p>Specifies the confidence that Amazon Rekognition has that the label has been correctly
    #         identified.</p>
    #            <p>If you don't specify the <code>MinConfidence</code> parameter in the call to
    #           <code>DetectModerationLabels</code>, the operation returns labels with a confidence value
    #         greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    # @!attribute name
    #   <p>The label name for the type of unsafe content detected in the image.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_name
    #   <p>The name for the parent label. Labels at the top level of the hierarchy have the parent
    #         label <code>""</code>.</p>
    #
    #   @return [String]
    #
    ModerationLabel = ::Struct.new(
      :confidence,
      :name,
      :parent_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether or not the mouth on the face is open, and the confidence level in the
    #       determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the mouth on the face is open or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    MouthOpen = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>Indicates whether or not the face has a mustache, and the confidence level in the
    #       determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the face has mustache or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Mustache = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see
    #           <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html">Calling Amazon Rekognition Video operations</a>. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.
    #           For more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html#api-video-roles-all-topics">Giving access to multiple Amazon SNS topics</a>.</p>
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon SNS topic to which Amazon Rekognition posts the completion status.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that gives Amazon Rekognition publishing permissions to the Amazon SNS topic. </p>
    #
    #   @return [String]
    #
    NotificationChannel = ::Struct.new(
      :sns_topic_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrientationCorrection
    #
    module OrientationCorrection
      # No documentation available.
      #
      ROTATE_0 = "ROTATE_0"

      # No documentation available.
      #
      ROTATE_90 = "ROTATE_90"

      # No documentation available.
      #
      ROTATE_180 = "ROTATE_180"

      # No documentation available.
      #
      ROTATE_270 = "ROTATE_270"
    end

    # <p>The S3 bucket and folder location where training output is placed.</p>
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket where training output is placed.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix applied to the training output files. </p>
    #
    #   @return [String]
    #
    OutputConfig = ::Struct.new(
      :s3_bucket,
      :s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parent label for a label. A label can have 0, 1, or more parents. </p>
    #
    # @!attribute name
    #   <p>The name of the parent label.</p>
    #
    #   @return [String]
    #
    Parent = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a person detected in a video analysis request.</p>
    #
    # @!attribute index
    #   <p>Identifier for the person detected person within a video. Use to keep track of the person throughout the video. The identifier is not stored by Amazon Rekognition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bounding_box
    #   <p>Bounding box around the detected person.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute face
    #   <p>Face details for the detected person.</p>
    #
    #   @return [FaceDetail]
    #
    PersonDetail = ::Struct.new(
      :index,
      :bounding_box,
      :face,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.index ||= 0
      end
    end

    # <p>Details and path tracking information for a single time a person's path is tracked in a video.
    #             Amazon Rekognition operations that track people's paths return an array of <code>PersonDetection</code> objects
    #             with elements for each time a person's path is tracked in a video. </p>
    #
    #          <p>For more information, see GetPersonTracking in the Amazon Rekognition Developer Guide. </p>
    #
    # @!attribute timestamp
    #   <p>The time, in milliseconds from the start of the video, that the person's path was tracked.</p>
    #
    #   @return [Integer]
    #
    # @!attribute person
    #   <p>Details about a person whose path was tracked in a video.</p>
    #
    #   @return [PersonDetail]
    #
    PersonDetection = ::Struct.new(
      :timestamp,
      :person,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # <p>Information about a person whose face matches a face(s) in an Amazon Rekognition collection.
    #       Includes information about the faces in the Amazon Rekognition collection (<a>FaceMatch</a>), information about the person (<a>PersonDetail</a>),
    #       and the time stamp for when the person was detected in a video. An array of
    #         <code>PersonMatch</code> objects is returned by <a>GetFaceSearch</a>. </p>
    #
    # @!attribute timestamp
    #   <p>The time, in milliseconds from the beginning of the video, that the person was matched in the video.</p>
    #
    #   @return [Integer]
    #
    # @!attribute person
    #   <p>Information about the matched person.</p>
    #
    #   @return [PersonDetail]
    #
    # @!attribute face_matches
    #   <p>Information about the faces in the input collection that match the face of a person in the video.</p>
    #
    #   @return [Array<FaceMatch>]
    #
    PersonMatch = ::Struct.new(
      :timestamp,
      :person,
      :face_matches,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # Includes enum constants for PersonTrackingSortBy
    #
    module PersonTrackingSortBy
      # No documentation available.
      #
      INDEX = "INDEX"

      # No documentation available.
      #
      TIMESTAMP = "TIMESTAMP"
    end

    # <p>The X and Y coordinates of a point on an image or video frame. The X and Y values are ratios
    #       of the overall image size or video resolution. For example, if an input image is 700x200 and the
    #       values are X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p>
    #
    #          <p>An array of <code>Point</code> objects makes up a <code>Polygon</code>.
    #       A <code>Polygon</code> is returned by <a>DetectText</a> and by <a>DetectCustomLabels</a>
    #             <code>Polygon</code>
    #       represents a fine-grained polygon around a detected item. For more information, see Geometry in the
    #       Amazon Rekognition Developer Guide. </p>
    #
    # @!attribute x
    #   <p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute y
    #   <p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>
    #
    #   @return [Float]
    #
    Point = ::Struct.new(
      :x,
      :y,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
    #
    # @!attribute roll
    #   <p>Value representing the face rotation on the roll axis.</p>
    #
    #   @return [Float]
    #
    # @!attribute yaw
    #   <p>Value representing the face rotation on the yaw axis.</p>
    #
    #   @return [Float]
    #
    # @!attribute pitch
    #   <p>Value representing the face rotation on the pitch axis.</p>
    #
    #   @return [Float]
    #
    Pose = ::Struct.new(
      :roll,
      :yaw,
      :pitch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A description of an Amazon Rekognition Custom Labels project. For more information, see <a>DescribeProjects</a>.</p>
    #
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The Unix timestamp for the date and time that the project was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the project.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute datasets
    #   <p>
    #            Information about the training and test datasets in the project.
    #         </p>
    #
    #   @return [Array<DatasetMetadata>]
    #
    ProjectDescription = ::Struct.new(
      :project_arn,
      :creation_timestamp,
      :status,
      :datasets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectStatus
    #
    module ProjectStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>A description of a version of an Amazon Rekognition Custom Labels model.</p>
    #
    # @!attribute project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The Unix datetime for the date and time that training started.</p>
    #
    #   @return [Time]
    #
    # @!attribute min_inference_units
    #   <p>The minimum number of inference units used by the model. For more information,
    #         see <a>StartProjectVersion</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The current status of the model version.</p>
    #
    #   Enum, one of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A descriptive message for an error or warning that occurred.</p>
    #
    #   @return [String]
    #
    # @!attribute billable_training_time_in_seconds
    #   <p>The duration, in seconds, that you were billed for a successful training of the model version.
    #         This value is only returned if the model version has been successfully trained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute training_end_timestamp
    #   <p>The Unix date and time that training of the model ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute output_config
    #   <p>The location where training results are saved.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute training_data_result
    #   <p>Contains information about the training results.</p>
    #
    #   @return [TrainingDataResult]
    #
    # @!attribute testing_data_result
    #   <p>Contains information about the testing results.</p>
    #
    #   @return [TestingDataResult]
    #
    # @!attribute evaluation_result
    #   <p>The training results. <code>EvaluationResult</code> is only returned if training is successful.</p>
    #
    #   @return [EvaluationResult]
    #
    # @!attribute manifest_summary
    #   <p>The location of the summary manifest. The summary manifest provides aggregate data validation results for the training
    #            and test datasets.</p>
    #
    #   @return [GroundTruthManifest]
    #
    # @!attribute kms_key_id
    #   <p>The identifer for the AWS Key Management Service key (AWS KMS key) that was used to encrypt the model during training. </p>
    #
    #   @return [String]
    #
    ProjectVersionDescription = ::Struct.new(
      :project_version_arn,
      :creation_timestamp,
      :min_inference_units,
      :status,
      :status_message,
      :billable_training_time_in_seconds,
      :training_end_timestamp,
      :output_config,
      :training_data_result,
      :testing_data_result,
      :evaluation_result,
      :manifest_summary,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectVersionStatus
    #
    module ProjectVersionStatus
      # No documentation available.
      #
      TRAINING_IN_PROGRESS = "TRAINING_IN_PROGRESS"

      # No documentation available.
      #
      TRAINING_COMPLETED = "TRAINING_COMPLETED"

      # No documentation available.
      #
      TRAINING_FAILED = "TRAINING_FAILED"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>Information about a body part detected by <a>DetectProtectiveEquipment</a> that contains PPE.
    #          An array of <code>ProtectiveEquipmentBodyPart</code> objects is returned for each person detected by
    #          <code>DetectProtectiveEquipment</code>. </p>
    #
    # @!attribute name
    #   <p>The detected body part.</p>
    #
    #   Enum, one of: ["FACE", "HEAD", "LEFT_HAND", "RIGHT_HAND"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has in the detection accuracy of the detected body part.
    #         </p>
    #
    #   @return [Float]
    #
    # @!attribute equipment_detections
    #   <p>An array of Personal Protective Equipment items detected around a body part.</p>
    #
    #   @return [Array<EquipmentDetection>]
    #
    ProtectiveEquipmentBodyPart = ::Struct.new(
      :name,
      :confidence,
      :equipment_detections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A person detected by a call to <a>DetectProtectiveEquipment</a>. The API returns
    #          all persons detected in the input
    #          image in an array of <code>ProtectiveEquipmentPerson</code> objects.</p>
    #
    # @!attribute body_parts
    #   <p>An array of body parts detected on a person's body (including body parts without PPE). </p>
    #
    #   @return [Array<ProtectiveEquipmentBodyPart>]
    #
    # @!attribute bounding_box
    #   <p>A bounding box around the detected person.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has that the bounding box contains a person.</p>
    #
    #   @return [Float]
    #
    # @!attribute id
    #   <p>The identifier for the detected person. The identifier is only unique for a single call to
    #            <code>DetectProtectiveEquipment</code>.</p>
    #
    #   @return [Integer]
    #
    ProtectiveEquipmentPerson = ::Struct.new(
      :body_parts,
      :bounding_box,
      :confidence,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies summary attributes to return from a call to <a>DetectProtectiveEquipment</a>.
    #          You can specify which types of PPE to summarize. You can also specify a minimum confidence value for detections.
    #          Summary information is returned in the <code>Summary</code> (<a>ProtectiveEquipmentSummary</a>) field of the response from
    #          <code>DetectProtectiveEquipment</code>.
    #          The summary includes which persons in an image were detected wearing the requested types of person protective equipment (PPE), which persons
    #          were detected as not wearing PPE, and the persons in which a determination could not be made. For more information,
    #          see <a>ProtectiveEquipmentSummary</a>.</p>
    #
    # @!attribute min_confidence
    #   <p>The minimum confidence level for which you want summary information.
    #            The confidence level applies to person detection, body part detection, equipment detection, and body part coverage.
    #            Amazon Rekognition doesn't return summary information with a confidence than this specified value. There isn't a
    #            default value.</p>
    #            <p>Specify a <code>MinConfidence</code> value that is between 50-100% as <code>DetectProtectiveEquipment</code>
    #            returns predictions only where the detection confidence is between 50% - 100%.
    #            If you specify a value that is less than 50%, the results are the same specifying a value of 50%.</p>
    #            <p>
    #         </p>
    #
    #   @return [Float]
    #
    # @!attribute required_equipment_types
    #   <p>An array of personal protective equipment types for which you want summary information.
    #            If a person is detected wearing a required requipment type, the person's ID is added to the
    #            <code>PersonsWithRequiredEquipment</code> array field returned in <a>ProtectiveEquipmentSummary</a>
    #            by <code>DetectProtectiveEquipment</code>.  </p>
    #
    #   @return [Array<String>]
    #
    ProtectiveEquipmentSummarizationAttributes = ::Struct.new(
      :min_confidence,
      :required_equipment_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for required items of personal protective equipment (PPE) detected on persons by a call
    #          to <a>DetectProtectiveEquipment</a>. You specify the required type of PPE in
    #          the <code>SummarizationAttributes</code>
    #          (<a>ProtectiveEquipmentSummarizationAttributes</a>) input parameter.
    #          The summary includes which persons were detected wearing the required personal protective equipment
    #          (<code>PersonsWithRequiredEquipment</code>),
    #          which persons were detected as not wearing the required PPE (<code>PersonsWithoutRequiredEquipment</code>),
    #          and the persons in which a determination
    #          could not be made (<code>PersonsIndeterminate</code>).</p>
    #          <p>To get a total for each category, use the size of the field array. For example,
    #          to find out how many people were detected as wearing the specified PPE,
    #          use the size of the <code>PersonsWithRequiredEquipment</code> array.
    #          If you want to find out more about a person, such as the
    #          location (<a>BoundingBox</a>) of the person on the image, use the person ID in each array element.
    #          Each person ID matches the ID field of a <a>ProtectiveEquipmentPerson</a> object returned
    #          in the <code>Persons</code> array by <code>DetectProtectiveEquipment</code>.</p>
    #
    # @!attribute persons_with_required_equipment
    #   <p>An array of IDs for persons who are wearing detected personal protective equipment.
    #         </p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute persons_without_required_equipment
    #   <p>An array of IDs for persons who are not wearing all of the types of PPE specified in the <code>RequiredEquipmentTypes</code> field of
    #            the detected personal protective equipment.
    #         </p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute persons_indeterminate
    #   <p>An array of IDs for persons where it was not possible to determine if they are wearing personal protective equipment.
    #         </p>
    #
    #   @return [Array<Integer>]
    #
    ProtectiveEquipmentSummary = ::Struct.new(
      :persons_with_required_equipment,
      :persons_without_required_equipment,
      :persons_indeterminate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProtectiveEquipmentType
    #
    module ProtectiveEquipmentType
      # No documentation available.
      #
      FACE_COVER = "FACE_COVER"

      # No documentation available.
      #
      HAND_COVER = "HAND_COVER"

      # No documentation available.
      #
      HEAD_COVER = "HEAD_COVER"
    end

    # <p>The number of requests exceeded your throughput limit. If you want to increase this
    #       limit, contact Amazon Rekognition.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ProvisionedThroughputExceededException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QualityFilter
    #
    module QualityFilter
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for Reason
    #
    module Reason
      # No documentation available.
      #
      EXCEEDS_MAX_FACES = "EXCEEDS_MAX_FACES"

      # No documentation available.
      #
      EXTREME_POSE = "EXTREME_POSE"

      # No documentation available.
      #
      LOW_BRIGHTNESS = "LOW_BRIGHTNESS"

      # No documentation available.
      #
      LOW_SHARPNESS = "LOW_SHARPNESS"

      # No documentation available.
      #
      LOW_CONFIDENCE = "LOW_CONFIDENCE"

      # No documentation available.
      #
      SMALL_BOUNDING_BOX = "SMALL_BOUNDING_BOX"

      # No documentation available.
      #
      LOW_FACE_QUALITY = "LOW_FACE_QUALITY"
    end

    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to call
    #         Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    RecognizeCelebritiesInput = ::Struct.new(
      :image,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute celebrity_faces
    #   <p>Details about each celebrity found in the image. Amazon Rekognition can detect a maximum of 64
    #         celebrities in an image. Each celebrity object includes the following attributes:
    #         <code>Face</code>, <code>Confidence</code>, <code>Emotions</code>, <code>Landmarks</code>,
    #         <code>Pose</code>, <code>Quality</code>, <code>Smile</code>, <code>Id</code>,
    #         <code>KnownGender</code>, <code>MatchConfidence</code>, <code>Name</code>,
    #         <code>Urls</code>.</p>
    #
    #   @return [Array<Celebrity>]
    #
    # @!attribute unrecognized_faces
    #   <p>Details about each unrecognized face in the image.</p>
    #
    #   @return [Array<ComparedFace>]
    #
    # @!attribute orientation_correction
    #   <note>
    #               <p>Support for estimating image orientation using the the OrientationCorrection field has ceased as of August 2021.
    #           Any returned values for this field included in an API response will always be NULL.</p>
    #            </note>
    #            <p>The orientation of the input image (counterclockwise direction). If your application
    #         displays the image, you can use this value to correct the orientation. The bounding box
    #         coordinates returned in <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code>
    #         represent face locations before the image orientation is corrected. </p>
    #            <note>
    #               <p>If the input image is in .jpeg format, it might contain exchangeable image (Exif)
    #           metadata that includes the image's orientation. If so, and the Exif metadata for the input
    #           image populates the orientation field, the value of <code>OrientationCorrection</code> is
    #           null. The <code>CelebrityFaces</code> and <code>UnrecognizedFaces</code> bounding box
    #           coordinates represent face locations after Exif metadata is used to correct the image
    #           orientation. Images in .png format don't contain Exif metadata. </p>
    #            </note>
    #
    #   Enum, one of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #
    #   @return [String]
    #
    RecognizeCelebritiesOutput = ::Struct.new(
      :celebrity_faces,
      :unrecognized_faces,
      :orientation_correction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a location within the frame that Rekognition checks for objects of interest such as text, labels, or faces. It uses a <code>BoundingBox</code>
    #       or object or <code>Polygon</code> to set a region of the screen.</p>
    #          <p>A word, face, or label is included in the region if it is more than half in that region. If there is more than
    #       one region, the word, face, or label is compared with all regions of the screen. Any object of interest that is more than half in a region
    #       is kept in the results.</p>
    #
    # @!attribute bounding_box
    #   <p>The box representing a region of interest on screen.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute polygon
    #   <p>
    #               Specifies a shape made up of up to 10 <code>Point</code> objects to define a region of interest.
    #           </p>
    #
    #   @return [Array<Point>]
    #
    RegionOfInterest = ::Struct.new(
      :bounding_box,
      :polygon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource with the specified ID already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource is already being used.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource specified in the request cannot be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource isn't ready. For example,
    #          this exception occurs when you call <code>DetectCustomLabels</code> with a
    #          model version that isn't deployed. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ResourceNotReadyException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation.
    #             These results include the name of the stream processor resource, the session ID of the stream processing session,
    #             and labeled timestamps and bounding boxes for detected labels.
    #         </p>
    #
    # @!attribute bucket
    #   <p>
    #               The name of the Amazon S3 bucket you want to associate with the streaming video project. You must be the owner of the Amazon S3 bucket.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute key_prefix
    #   <p>
    #               The prefix value of the location within the bucket that you want the information to be published to.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Using prefixes</a>.
    #           </p>
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket,
      :key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the S3 bucket name and object name.</p>
    #          <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #       Amazon Rekognition operations.</p>
    #
    #          <p>For Amazon Rekognition to process an S3 object, the user must have permission to
    #       access the S3 object. For more information, see How Amazon Rekognition works with IAM in the Amazon Rekognition
    #       Developer Guide. </p>
    #
    # @!attribute bucket
    #   <p>Name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>S3 object key name.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>If the bucket is versioning enabled, you can specify the object version. </p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :bucket,
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>ID of the collection to search.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The input image as base64-encoded bytes or an S3 object.
    #         If you use the AWS CLI to call Amazon Rekognition operations,
    #         passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to base64-encode image bytes
    #         passed using the <code>Bytes</code> field.
    #         For more information, see Images in the Amazon Rekognition developer guide.</p>
    #
    #   @return [Image]
    #
    # @!attribute max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    #
    #   @return [Integer]
    #
    # @!attribute face_match_threshold
    #   <p>(Optional) Specifies the minimum confidence in the face match to return. For example,
    #         don't return any matches where confidence in matches is less than 70%.
    #       The default value is 80%.</p>
    #
    #   @return [Float]
    #
    # @!attribute quality_filter
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
    #   Enum, one of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    SearchFacesByImageInput = ::Struct.new(
      :collection_id,
      :image,
      :max_faces,
      :face_match_threshold,
      :quality_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute searched_face_bounding_box
    #   <p>The bounding box around the face in the input image that Amazon Rekognition used for the
    #         search.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute searched_face_confidence
    #   <p>The level of confidence that the <code>searchedFaceBoundingBox</code>, contains a
    #         face.</p>
    #
    #   @return [Float]
    #
    # @!attribute face_matches
    #   <p>An array of faces that match the input face, along with the confidence in the
    #         match.</p>
    #
    #   @return [Array<FaceMatch>]
    #
    # @!attribute face_model_version
    #   <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
    #
    #   @return [String]
    #
    SearchFacesByImageOutput = ::Struct.new(
      :searched_face_bounding_box,
      :searched_face_confidence,
      :face_matches,
      :face_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collection_id
    #   <p>ID of the collection the face belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute face_id
    #   <p>ID of a face to find matches for in the collection.</p>
    #
    #   @return [String]
    #
    # @!attribute max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    #
    #   @return [Integer]
    #
    # @!attribute face_match_threshold
    #   <p>Optional value specifying the minimum confidence in the face match to return. For
    #         example, don't return any matches where confidence in matches is less than 70%.
    #         The default value is 80%.
    #       </p>
    #
    #   @return [Float]
    #
    SearchFacesInput = ::Struct.new(
      :collection_id,
      :face_id,
      :max_faces,
      :face_match_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute searched_face_id
    #   <p>ID of the face that was searched for matches in a collection.</p>
    #
    #   @return [String]
    #
    # @!attribute face_matches
    #   <p>An array of faces that matched the input face, along with the confidence in the
    #         match.</p>
    #
    #   @return [Array<FaceMatch>]
    #
    # @!attribute face_model_version
    #   <p>Version number of the face detection model associated with the input collection (<code>CollectionId</code>).</p>
    #
    #   @return [String]
    #
    SearchFacesOutput = ::Struct.new(
      :searched_face_id,
      :face_matches,
      :face_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A technical cue or shot detection segment detected in a video. An array
    #     of <code>SegmentDetection</code> objects containing all segments detected in a stored video
    #       is returned by <a>GetSegmentDetection</a>.
    #     </p>
    #
    # @!attribute type
    #   <p>The type of the  segment. Valid values are <code>TECHNICAL_CUE</code> and <code>SHOT</code>.</p>
    #
    #   Enum, one of: ["TECHNICAL_CUE", "SHOT"]
    #
    #   @return [String]
    #
    # @!attribute start_timestamp_millis
    #   <p>The start time of the detected segment in milliseconds from the start of the video. This value
    #         is rounded down. For example, if the actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a value of
    #         100 millis.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_timestamp_millis
    #   <p>The end time of the detected segment, in milliseconds, from the start of the video.
    #       This value is rounded down.</p>
    #
    #   @return [Integer]
    #
    # @!attribute duration_millis
    #   <p>The duration of the detected segment in milliseconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute start_timecode_smpte
    #   <p>The frame-accurate SMPTE timecode, from the start of a video, for the start of a detected segment.
    #         <code>StartTimecode</code> is in <i>HH:MM:SS:fr</i> format
    #         (and <i>;fr</i> for drop frame-rates). </p>
    #
    #   @return [String]
    #
    # @!attribute end_timecode_smpte
    #   <p>The frame-accurate SMPTE timecode, from the start of a video, for the end of a detected segment.
    #         <code>EndTimecode</code> is in <i>HH:MM:SS:fr</i> format
    #         (and <i>;fr</i> for drop frame-rates).</p>
    #
    #   @return [String]
    #
    # @!attribute duration_smpte
    #   <p>The duration of the timecode for the detected segment in SMPTE format.</p>
    #
    #   @return [String]
    #
    # @!attribute technical_cue_segment
    #   <p>If the segment is a technical cue, contains information about the technical cue.</p>
    #
    #   @return [TechnicalCueSegment]
    #
    # @!attribute shot_segment
    #   <p>If the segment is a shot detection, contains information about the shot detection.</p>
    #
    #   @return [ShotSegment]
    #
    # @!attribute start_frame_number
    #   <p>
    #         The frame number of the start of a video segment, using a frame index that starts with 0.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute end_frame_number
    #   <p>
    #         The frame number at the end of a video segment, using a frame index that starts with 0.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute duration_frames
    #   <p>
    #         The duration of a video segment, expressed in frames.
    #       </p>
    #
    #   @return [Integer]
    #
    SegmentDetection = ::Struct.new(
      :type,
      :start_timestamp_millis,
      :end_timestamp_millis,
      :duration_millis,
      :start_timecode_smpte,
      :end_timecode_smpte,
      :duration_smpte,
      :technical_cue_segment,
      :shot_segment,
      :start_frame_number,
      :end_frame_number,
      :duration_frames,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.start_timestamp_millis ||= 0
        self.end_timestamp_millis ||= 0
      end
    end

    # Includes enum constants for SegmentType
    #
    module SegmentType
      # No documentation available.
      #
      TECHNICAL_CUE = "TECHNICAL_CUE"

      # No documentation available.
      #
      SHOT = "SHOT"
    end

    # <p>Information about the type of a segment requested in a call to <a>StartSegmentDetection</a>.
    #       An array of <code>SegmentTypeInfo</code> objects is returned  by the response from <a>GetSegmentDetection</a>.</p>
    #
    # @!attribute type
    #   <p>The type of a segment (technical cue or shot detection).</p>
    #
    #   Enum, one of: ["TECHNICAL_CUE", "SHOT"]
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model used to detect segments.</p>
    #
    #   @return [String]
    #
    SegmentTypeInfo = ::Struct.new(
      :type,
      :model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    #
    #          <p>The size of the collection exceeds the allowed limit. For more information, see
    #       Guidelines and quotas in Amazon Rekognition in the Amazon Rekognition Developer Guide. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a shot detection segment detected in a video. For more information,
    #       see <a>SegmentDetection</a>.</p>
    #
    # @!attribute index
    #   <p>An Identifier for a shot detection segment detected in a video. </p>
    #
    #   @return [Integer]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>
    #
    #   @return [Float]
    #
    ShotSegment = ::Struct.new(
      :index,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether or not the face is smiling, and the confidence level in the
    #       determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the face is smiling or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Smile = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # @!attribute video
    #   <p>The video in which you want to recognize celebrities. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #       <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         celebrity recognition analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartCelebrityRecognitionInput = ::Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the celebrity recognition analysis job. Use <code>JobId</code> to identify the job in
    #         a subsequent call to <code>GetCelebrityRecognition</code>.</p>
    #
    #   @return [String]
    #
    StartCelebrityRecognitionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>The video in which you want to detect inappropriate, unwanted, or offensive content. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    #   @return [Video]
    #
    # @!attribute min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence
    #         represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence.
    #         100 is the highest confidence.  Amazon Rekognition doesn't return any moderated content labels with a confidence level
    #         lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code>
    #          returns labels with confidence values greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         content analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartContentModerationInput = ::Struct.new(
      :video,
      :min_confidence,
      :client_request_token,
      :notification_channel,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the content analysis job. Use <code>JobId</code> to identify the job in
    #         a subsequent call to <code>GetContentModeration</code>.</p>
    #
    #   @return [String]
    #
    StartContentModerationOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>The video in which you want to detect faces. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #            face detection operation. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute face_attributes
    #   <p>The face attributes you want returned.</p>
    #            <p>
    #               <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p>
    #            <p>
    #               <code>ALL</code> - All facial attributes are returned.</p>
    #
    #   Enum, one of: ["DEFAULT", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartFaceDetectionInput = ::Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :face_attributes,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the face detection job. Use <code>JobId</code> to identify the job in
    #       a subsequent call to <code>GetFaceDetection</code>.</p>
    #
    #   @return [String]
    #
    StartFaceDetectionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute face_match_threshold
    #   <p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.
    #         The default value is 80%.</p>
    #
    #   @return [Float]
    #
    # @!attribute collection_id
    #   <p>ID of the collection that contains the faces you want to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartFaceSearchInput = ::Struct.new(
      :video,
      :client_request_token,
      :face_match_threshold,
      :collection_id,
      :notification_channel,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the search job. Use <code>JobId</code> to identify the job in a subsequent call to <code>GetFaceSearch</code>. </p>
    #
    #   @return [String]
    #
    StartFaceSearchOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>The video in which you want to detect labels. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence
    #          represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence.
    #          100 is the highest confidence.  Amazon Rekognition Video doesn't return any labels with a confidence level
    #          lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with confidence
    #        values greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartLabelDetectionInput = ::Struct.new(
      :video,
      :client_request_token,
      :min_confidence,
      :notification_channel,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the label detection job. Use <code>JobId</code> to identify the job in
    #       a subsequent call to <code>GetLabelDetection</code>. </p>
    #
    #   @return [String]
    #
    StartLabelDetectionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>The video in which you want to detect people. The video must be stored
    #         in an Amazon S3 bucket.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    StartPersonTrackingInput = ::Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the person detection job. Use <code>JobId</code> to identify the job in
    #       a subsequent call to <code>GetPersonTracking</code>.</p>
    #
    #   @return [String]
    #
    StartPersonTrackingOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_arn
    #   <p>The Amazon Resource Name(ARN) of the model version that you want to start.</p>
    #
    #   @return [String]
    #
    # @!attribute min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #         inference unit represents 1 hour of processing and can support up to 5 Transaction Pers Second (TPS).
    #         Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #         of inference units that you use.
    #       </p>
    #
    #   @return [Integer]
    #
    StartProjectVersionInput = ::Struct.new(
      :project_version_arn,
      :min_inference_units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current running status of the model. </p>
    #
    #   Enum, one of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    #   @return [String]
    #
    StartProjectVersionOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters applied to the technical cue or shot detection segments.
    #       For more information, see <a>StartSegmentDetection</a>.
    #     </p>
    #
    # @!attribute technical_cue_filter
    #   <p>Filters that are specific to technical cues.</p>
    #
    #   @return [StartTechnicalCueDetectionFilter]
    #
    # @!attribute shot_filter
    #   <p>Filters that are specific to shot detections.</p>
    #
    #   @return [StartShotDetectionFilter]
    #
    StartSegmentDetectionFilters = ::Struct.new(
      :technical_cue_filter,
      :shot_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartSegmentDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #         segment detection operation. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters for technical cue or shot detection.</p>
    #
    #   @return [StartSegmentDetectionFilters]
    #
    # @!attribute segment_types
    #   <p>An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.</p>
    #
    #   @return [Array<String>]
    #
    StartSegmentDetectionInput = ::Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      :filters,
      :segment_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Unique identifier for the segment detection job. The <code>JobId</code> is returned from <code>StartSegmentDetection</code>.
    #       </p>
    #
    #   @return [String]
    #
    StartSegmentDetectionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters for the shot detection segments returned by <code>GetSegmentDetection</code>.
    #       For more information, see <a>StartSegmentDetectionFilters</a>.</p>
    #
    # @!attribute min_segment_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence
    #         represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.
    #         100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level
    #         lower than this specified value.</p>
    #            <p>If you don't specify <code>MinSegmentConfidence</code>, the <code>GetSegmentDetection</code> returns
    #           segments with confidence values greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    StartShotDetectionFilter = ::Struct.new(
      :min_segment_confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the stream processor to start processing.</p>
    #
    #   @return [String]
    #
    # @!attribute start_selector
    #   <p>
    #               Specifies the starting point in the Kinesis stream to start processing.
    #               You can use the producer timestamp or the fragment number.
    #               For more information, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html">Fragment</a>.
    #           </p>
    #           <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    #
    #   @return [StreamProcessingStartSelector]
    #
    # @!attribute stop_selector
    #   <p>
    #               Specifies when to stop processing the stream. You can specify a
    #               maximum amount of time to process the video.
    #           </p>
    #           <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    #
    #   @return [StreamProcessingStopSelector]
    #
    StartStreamProcessorInput = ::Struct.new(
      :name,
      :start_selector,
      :stop_selector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_id
    #   <p>
    #               A unique identifier for the stream processing session.
    #           </p>
    #
    #   @return [String]
    #
    StartStreamProcessorOutput = ::Struct.new(
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters for the technical segments returned by <a>GetSegmentDetection</a>. For more information,
    #       see <a>StartSegmentDetectionFilters</a>.</p>
    #
    # @!attribute min_segment_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected segment. Confidence
    #         represents how certain Amazon Rekognition is that a segment is correctly identified. 0 is the lowest confidence.
    #         100 is the highest confidence.  Amazon Rekognition Video doesn't return any segments with a confidence level
    #         lower than this specified value.</p>
    #            <p>If you don't specify <code>MinSegmentConfidence</code>, <code>GetSegmentDetection</code> returns
    #         segments with confidence values greater than or equal to 50 percent.</p>
    #
    #   @return [Float]
    #
    # @!attribute black_frame
    #   <p>
    #         A filter that allows you to control the black frame detection by specifying the black levels and pixel coverage of black pixels in a frame.
    #         Videos can come from multiple sources, formats, and time periods, with different standards and varying noise levels for black frames that need to be accounted for.
    #       </p>
    #
    #   @return [BlackFrame]
    #
    StartTechnicalCueDetectionFilter = ::Struct.new(
      :min_segment_confidence,
      :black_frame,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Set of optional parameters that let you set the criteria text must meet to be included in your response.
    #       <code>WordFilter</code> looks at a word's height, width and minimum confidence. <code>RegionOfInterest</code>
    #       lets you set a specific region of the screen to look for text in.</p>
    #
    # @!attribute word_filter
    #   <p>Filters focusing on qualities of the text, such as confidence or size.</p>
    #
    #   @return [DetectionFilter]
    #
    # @!attribute regions_of_interest
    #   <p>Filter focusing on a certain area of the frame. Uses a <code>BoundingBox</code> object to set the region
    #         of the screen.</p>
    #
    #   @return [Array<RegionOfInterest>]
    #
    StartTextDetectionFilters = ::Struct.new(
      :word_filter,
      :regions_of_interest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    #
    #   @return [Video]
    #
    # @!attribute client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartTextDetection</code>
    #         requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job
    #           from being accidentaly started more than once.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see
    #             <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html">Calling Amazon Rekognition Video operations</a>. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.
    #             For more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html api-video-roles-all-topics">Giving access to multiple Amazon SNS topics</a>.</p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute job_tag
    #   <p>An identifier returned in the completion status published by your Amazon Simple Notification Service topic.  For example, you can use <code>JobTag</code> to group related jobs
    #         and identify them in the completion notification.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Optional parameters that let you set criteria the text must meet to be included in your response.</p>
    #
    #   @return [StartTextDetectionFilters]
    #
    StartTextDetectionInput = ::Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Identifier for the text detection job.  Use <code>JobId</code> to identify the job in a subsequent call to <code>GetTextDetection</code>.</p>
    #
    #   @return [String]
    #
    StartTextDetectionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that you want to delete.</p>
    #            <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>
    #
    #   @return [String]
    #
    StopProjectVersionInput = ::Struct.new(
      :project_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The current status of the stop operation. </p>
    #
    #   Enum, one of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"]
    #
    #   @return [String]
    #
    StopProjectVersionOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of a stream processor created by <a>CreateStreamProcessor</a>.</p>
    #
    #   @return [String]
    #
    StopStreamProcessorInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopStreamProcessorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute kvs_stream_start_selector
    #   <p>
    #               Specifies the starting point in the stream to start processing. This can be done with a timestamp or a fragment number in a Kinesis stream.
    #           </p>
    #
    #   @return [KinesisVideoStreamStartSelector]
    #
    StreamProcessingStartSelector = ::Struct.new(
      :kvs_stream_start_selector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Specifies when to stop processing the stream. You can specify a maximum amount
    #             of time to process the video.
    #         </p>
    #
    # @!attribute max_duration_in_seconds
    #   <p>
    #               Specifies the maximum amount of time in seconds that you want the stream to be processed. The largest amount of time is 2 minutes. The default is 10 seconds.
    #           </p>
    #
    #   @return [Integer]
    #
    StreamProcessingStopSelector = ::Struct.new(
      :max_duration_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that recognizes faces or labels in a streaming video. An Amazon Rekognition stream processor is created by a call to <a>CreateStreamProcessor</a>.  The request
    #         parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts.
    #
    #         </p>
    #
    # @!attribute name
    #   <p>Name of the Amazon Rekognition stream processor. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Current status of the Amazon Rekognition stream processor.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"]
    #
    #   @return [String]
    #
    StreamProcessor = ::Struct.new(
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Allows you to opt in or opt out to share data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #                 Note that if you opt out at the account level this setting is ignored on individual streams.
    #
    #         </p>
    #
    # @!attribute opt_in
    #   <p>
    #               If this option is set to true, you choose to share data with Rekognition to improve model performance.
    #           </p>
    #
    #   @return [Boolean]
    #
    StreamProcessorDataSharingPreference = ::Struct.new(
      :opt_in,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.opt_in ||= false
      end
    end

    # <p>Information about the source streaming video. </p>
    #
    # @!attribute kinesis_video_stream
    #   <p>The Kinesis video stream input stream for the source streaming video.</p>
    #
    #   @return [KinesisVideoStream]
    #
    StreamProcessorInput = ::Struct.new(
      :kinesis_video_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the object detection results and completion status of a video analysis operation.</p>
    #         <p>Amazon Rekognition publishes a notification the first time an object of interest or a person is detected in the video stream. For example, if Amazon Rekognition
    #             detects a person at second 2, a pet at second 4, and a person again at second 5, Amazon Rekognition sends 2 object class detected notifications,
    #             one for a person at second 2 and one for a pet at second 4.</p>
    #         <p>Amazon Rekognition also publishes an an end-of-session notification with a summary when the stream processing session is complete.</p>
    #
    # @!attribute sns_topic_arn
    #   <p>
    #               The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.
    #           </p>
    #
    #   @return [String]
    #
    StreamProcessorNotificationChannel = ::Struct.new(
      :sns_topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Amazon Kinesis Data Streams stream to which a Amazon Rekognition Video stream processor streams the results of a video analysis. For more
    #            information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute kinesis_data_stream
    #   <p>The Amazon Kinesis Data Streams stream to which the Amazon Rekognition stream processor streams the analysis results.</p>
    #
    #   @return [KinesisDataStream]
    #
    # @!attribute s3_destination
    #   <p>
    #               The Amazon S3 bucket location to which Amazon Rekognition publishes the detailed inference results of a video analysis operation.
    #           </p>
    #
    #   @return [S3Destination]
    #
    StreamProcessorOutput = ::Struct.new(
      :kinesis_data_stream,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamProcessorParameterToDelete
    #
    module StreamProcessorParameterToDelete
      # No documentation available.
      #
      ConnectedHomeMinConfidence = "ConnectedHomeMinConfidence"

      # No documentation available.
      #
      RegionsOfInterest = "RegionsOfInterest"
    end

    # <p>Input parameters used in a streaming video analyzed by a Amazon Rekognition stream processor.
    #             You can use <code>FaceSearch</code> to recognize faces in a streaming video, or you can use <code>ConnectedHome</code> to detect labels. </p>
    #
    # @!attribute face_search
    #   <p>Face search settings to use on a streaming video. </p>
    #
    #   @return [FaceSearchSettings]
    #
    # @!attribute connected_home
    #   <p>
    #               Label detection settings to use on a streaming video. Defining the settings is required in the request parameter for <a>CreateStreamProcessor</a>.
    #               Including this setting in the <code>CreateStreamProcessor</code> request enables you to use the stream processor for label detection.
    #               You can then select what you want the stream processor to detect, such as people or pets. When the stream processor has started, one notification
    #               is sent for each object class specified. For example, if packages and pets are selected, one SNS notification is published the first time a package is detected
    #               and one SNS notification is published the first time a pet is detected, as well as an end-of-session summary.
    #           </p>
    #
    #   @return [ConnectedHomeSettings]
    #
    StreamProcessorSettings = ::Struct.new(
      :face_search,
      :connected_home,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The stream processor settings that you want to update. <code>ConnectedHome</code> settings can be updated to detect different labels with a different minimum confidence.
    #         </p>
    #
    # @!attribute connected_home_for_update
    #   <p>
    #               The label detection settings you want to use for your stream processor.
    #           </p>
    #
    #   @return [ConnectedHomeSettingsForUpdate]
    #
    StreamProcessorSettingsForUpdate = ::Struct.new(
      :connected_home_for_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StreamProcessorStatus
    #
    module StreamProcessorStatus
      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>The S3 bucket that contains the training summary. The training summary includes
    #          aggregated evaluation metrics for the entire testing dataset and metrics for each
    #          individual label.  </p>
    #          <p>You get the training summary S3 bucket location by calling <a>DescribeProjectVersions</a>.
    #          </p>
    #
    # @!attribute s3_object
    #   <p>Provides the S3 bucket name and object name.</p>
    #            <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #         Amazon Rekognition operations.</p>
    #
    #            <p>For Amazon Rekognition to process an S3 object, the user must have permission to
    #         access the S3 object. For more information, see How Amazon Rekognition works with IAM in the Amazon Rekognition
    #         Developer Guide. </p>
    #
    #   @return [S3Object]
    #
    Summary = ::Struct.new(
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in
    #       the determination.</p>
    #
    # @!attribute value
    #   <p>Boolean value that indicates whether the face is wearing sunglasses or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute confidence
    #   <p>Level of confidence in the determination.</p>
    #
    #   @return [Float]
    #
    Sunglasses = ::Struct.new(
      :value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= false
      end
    end

    # @!attribute resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to assign the tags to.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         The key-value tags to assign to the resource.
    #       </p>
    #
    #   @return [Hash<String, String>]
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

    # <p>Information about a technical cue segment. For more information, see <a>SegmentDetection</a>.</p>
    #
    # @!attribute type
    #   <p>The type of the technical cue.</p>
    #
    #   Enum, one of: ["ColorBars", "EndCredits", "BlackFrames", "OpeningCredits", "StudioLogo", "Slate", "Content"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition Video has in the accuracy of the detected segment.</p>
    #
    #   @return [Float]
    #
    TechnicalCueSegment = ::Struct.new(
      :type,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TechnicalCueType
    #
    module TechnicalCueType
      # No documentation available.
      #
      COLOR_BARS = "ColorBars"

      # No documentation available.
      #
      END_CREDITS = "EndCredits"

      # No documentation available.
      #
      BLACK_FRAMES = "BlackFrames"

      # No documentation available.
      #
      OPENING_CREDITS = "OpeningCredits"

      # No documentation available.
      #
      STUDIO_LOGO = "StudioLogo"

      # No documentation available.
      #
      SLATE = "Slate"

      # No documentation available.
      #
      CONTENT = "Content"
    end

    # <p>The dataset used for testing. Optionally, if <code>AutoCreate</code> is set,  Amazon Rekognition Custom Labels uses the
    #          training dataset to create a test dataset with a temporary split of the training dataset. </p>
    #
    # @!attribute assets
    #   <p>The assets used for testing.</p>
    #
    #   @return [Array<Asset>]
    #
    # @!attribute auto_create
    #   <p>If specified, Amazon Rekognition Custom Labels temporarily splits the training dataset (80%) to create a test dataset (20%) for the training job.
    #         After training completes, the test dataset is not stored and the training dataset reverts to its previous size.</p>
    #
    #   @return [Boolean]
    #
    TestingData = ::Struct.new(
      :assets,
      :auto_create,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_create ||= false
      end
    end

    # <p>Sagemaker Groundtruth format manifest files for the input, output and validation datasets that are used and created during testing.</p>
    #
    # @!attribute input
    #   <p>The testing dataset that was supplied for training.</p>
    #
    #   @return [TestingData]
    #
    # @!attribute output
    #   <p>The subset of the dataset that was actually tested. Some images (assets) might not be tested due to
    #            file formatting and other issues. </p>
    #
    #   @return [TestingData]
    #
    # @!attribute validation
    #   <p>The location of the data validation manifest. The data validation manifest is created for the test dataset during model training.</p>
    #
    #   @return [ValidationData]
    #
    TestingDataResult = ::Struct.new(
      :input,
      :output,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a word or line of text detected by <a>DetectText</a>.</p>
    #          <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the
    #       image. </p>
    #          <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line
    #       and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which
    #       the word appears. The word <code>Id</code> is also an index for the word within a line of
    #       words. </p>
    #
    #          <p>For more information, see Detecting text in the Amazon Rekognition Developer Guide.</p>
    #
    # @!attribute detected_text
    #   <p>The word or line of text recognized by Amazon Rekognition. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of text that was detected.</p>
    #
    #   Enum, one of: ["LINE", "WORD"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier for the detected text. The identifier is only unique for a single call
    #         to <code>DetectText</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute parent_id
    #   <p>The Parent identifier for the detected text identified by the value of <code>ID</code>.
    #         If the type of detected text is <code>LINE</code>, the value of <code>ParentId</code> is
    #           <code>Null</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute confidence
    #   <p>The confidence that Amazon Rekognition has in the accuracy of the detected text and the accuracy
    #         of the geometry points around the detected text.</p>
    #
    #   @return [Float]
    #
    # @!attribute geometry
    #   <p>The location of the detected text on the image. Includes an axis aligned coarse
    #         bounding box surrounding the text and a finer grain polygon for more accurate spatial
    #         information.</p>
    #
    #   @return [Geometry]
    #
    TextDetection = ::Struct.new(
      :detected_text,
      :type,
      :id,
      :parent_id,
      :confidence,
      :geometry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about text detected in a video. Incudes the detected text,
    #         the time in milliseconds from the start of the video that the text was detected, and where it was detected on the screen.</p>
    #
    # @!attribute timestamp
    #   <p>The time, in milliseconds from the start of the video, that the text was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute text_detection
    #   <p>Details about text detected in a video.</p>
    #
    #   @return [TextDetection]
    #
    TextDetectionResult = ::Struct.new(
      :timestamp,
      :text_detection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.timestamp ||= 0
      end
    end

    # Includes enum constants for TextTypes
    #
    module TextTypes
      # No documentation available.
      #
      LINE = "LINE"

      # No documentation available.
      #
      WORD = "WORD"
    end

    # <p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The dataset used for training.</p>
    #
    # @!attribute assets
    #   <p>A Sagemaker GroundTruth manifest file that contains the training images (assets).</p>
    #
    #   @return [Array<Asset>]
    #
    TrainingData = ::Struct.new(
      :assets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sagemaker Groundtruth format manifest files for the input, output and validation datasets that are used and created during testing.</p>
    #
    # @!attribute input
    #   <p>The training assets that you supplied for training.</p>
    #
    #   @return [TrainingData]
    #
    # @!attribute output
    #   <p>The images (assets) that were actually trained by Amazon Rekognition Custom Labels. </p>
    #
    #   @return [TrainingData]
    #
    # @!attribute validation
    #   <p>The location of the data validation manifest. The data validation manifest is created for the training dataset during model training.</p>
    #
    #   @return [ValidationData]
    #
    TrainingDataResult = ::Struct.new(
      :input,
      :output,
      :validation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A face that <a>IndexFaces</a> detected, but didn't index. Use the
    #         <code>Reasons</code> response attribute to determine why a face wasn't indexed.</p>
    #
    # @!attribute reasons
    #   <p>An array of reasons that specify why a face wasn't indexed. </p>
    #            <ul>
    #               <li>
    #                  <p>EXTREME_POSE - The face is at a pose that can't be detected. For example, the head is turned
    #             too far away from the camera.</p>
    #               </li>
    #               <li>
    #                  <p>EXCEEDS_MAX_FACES - The number of faces detected is already higher than that specified by the
    #         <code>MaxFaces</code> input parameter for <code>IndexFaces</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LOW_BRIGHTNESS - The image is too dark.</p>
    #               </li>
    #               <li>
    #                  <p>LOW_SHARPNESS - The image is too blurry.</p>
    #               </li>
    #               <li>
    #                  <p>LOW_CONFIDENCE - The face was detected with a low confidence.</p>
    #               </li>
    #               <li>
    #                  <p>SMALL_BOUNDING_BOX - The bounding box around the face is too small.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute face_detail
    #   <p>The
    #         structure that contains attributes of a face that
    #         <code>IndexFaces</code>detected, but didn't index. </p>
    #
    #   @return [FaceDetail]
    #
    UnindexedFace = ::Struct.new(
      :reasons,
      :face_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to remove the tags from.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>
    #         A list of the tags that you want to remove.
    #       </p>
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

    # @!attribute dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to update.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute changes
    #   <p>
    #      The changes that you want to make to the dataset.
    #   </p>
    #
    #   @return [DatasetChanges]
    #
    UpdateDatasetEntriesInput = ::Struct.new(
      :dataset_arn,
      :changes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDatasetEntriesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>
    #               Name of the stream processor that you want to update.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute settings_for_update
    #   <p>
    #               The stream processor settings that you want to update. Label detection settings can be updated to detect different labels with a different minimum confidence.
    #           </p>
    #
    #   @return [StreamProcessorSettingsForUpdate]
    #
    # @!attribute regions_of_interest_for_update
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.
    #           </p>
    #
    #   @return [Array<RegionOfInterest>]
    #
    # @!attribute data_sharing_preference_for_update
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    #
    #   @return [StreamProcessorDataSharingPreference]
    #
    # @!attribute parameters_to_delete
    #   <p>
    #               A list of parameters you want to delete from the stream processor.
    #           </p>
    #
    #   @return [Array<String>]
    #
    UpdateStreamProcessorInput = ::Struct.new(
      :name,
      :settings_for_update,
      :regions_of_interest_for_update,
      :data_sharing_preference_for_update,
      :parameters_to_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateStreamProcessorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the Amazon S3 bucket location of the validation data for a model training job. </p>
    #          <p>The validation data includes error information for individual JSON Lines in the dataset.
    #          For more information, see <i>Debugging a Failed Model Training</i> in the
    #          Amazon Rekognition Custom Labels Developer Guide. </p>
    #
    #          <p>You get the <code>ValidationData</code> object for the training dataset (<a>TrainingDataResult</a>)
    #          and the test dataset (<a>TestingDataResult</a>) by calling <a>DescribeProjectVersions</a>. </p>
    #          <p>The assets array contains a single <a>Asset</a> object.
    #          The <a>GroundTruthManifest</a> field of the Asset object contains the S3 bucket location of
    #          the validation data.
    # </p>
    #
    # @!attribute assets
    #   <p>The assets that comprise the validation data. </p>
    #
    #   @return [Array<Asset>]
    #
    ValidationData = ::Struct.new(
      :assets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #             specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    #
    # @!attribute s3_object
    #   <p>The Amazon S3 bucket name and file name for the video.</p>
    #
    #   @return [S3Object]
    #
    Video = ::Struct.new(
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VideoColorRange
    #
    module VideoColorRange
      # No documentation available.
      #
      FULL = "FULL"

      # No documentation available.
      #
      LIMITED = "LIMITED"
    end

    # Includes enum constants for VideoJobStatus
    #
    module VideoJobStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in
    #             every page of paginated responses from a Amazon Rekognition video operation.</p>
    #
    # @!attribute codec
    #   <p>Type of compression used in the analyzed video. </p>
    #
    #   @return [String]
    #
    # @!attribute duration_millis
    #   <p>Length of the video in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute format
    #   <p>Format of the analyzed video. Possible values are MP4, MOV and AVI. </p>
    #
    #   @return [String]
    #
    # @!attribute frame_rate
    #   <p>Number of frames per second in the video.</p>
    #
    #   @return [Float]
    #
    # @!attribute frame_height
    #   <p>Vertical pixel dimension of the video.</p>
    #
    #   @return [Integer]
    #
    # @!attribute frame_width
    #   <p>Horizontal pixel dimension of the video.</p>
    #
    #   @return [Integer]
    #
    # @!attribute color_range
    #   <p>
    #         A description of the range of luminance values in a video, either LIMITED (16 to 235) or FULL (0 to 255).
    #       </p>
    #
    #   Enum, one of: ["FULL", "LIMITED"]
    #
    #   @return [String]
    #
    VideoMetadata = ::Struct.new(
      :codec,
      :duration_millis,
      :format,
      :frame_rate,
      :frame_height,
      :frame_width,
      :color_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The file size or duration of the supplied media is too large. The maximum file size is 10GB.
    #         The maximum duration is 6 hours. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute logref
    #   <p>A universally unique identifier (UUID) for the request.</p>
    #
    #   @return [String]
    #
    VideoTooLargeException = ::Struct.new(
      :message,
      :code,
      :logref,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
