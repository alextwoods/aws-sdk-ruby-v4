# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Translate
  module Types

    # <p>The custom terminology applied to the input text by Amazon Translate for the translated text
    #       response. This is optional in the response and will only be present if you specified
    #       terminology input in the request. Currently, only one terminology can be applied per
    #       TranslateText request.</p>
    #
    # @!attribute name
    #   <p>The name of the custom terminology applied to the input text by Amazon Translate for the translated
    #         text response.</p>
    #
    #   @return [String]
    #
    # @!attribute terms
    #   <p>The specific terms of the custom terminology applied to the input text by Amazon Translate for the
    #         translated text response. A maximum of 250 terms will be returned, and the specific terms
    #         applied will be the first 250 terms in the source text. </p>
    #
    #   @return [Array<Term>]
    #
    AppliedTerminology = ::Struct.new(
      :name,
      :terms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another modification is being made. That modification must complete before you can make
    #       your change.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A custom name for the parallel data resource in Amazon Translate. You must assign a name
    #         that is unique in the account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    #
    #   @return [String]
    #
    # @!attribute parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    #   @return [ParallelDataConfig]
    #
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt this object.</p>
    #
    #   @return [EncryptionKey]
    #
    # @!attribute client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    #
    #   @return [String]
    #
    CreateParallelDataInput = ::Struct.new(
      :name,
      :description,
      :parallel_data_config,
      :encryption_key,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The custom name that you assigned to the parallel data resource.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the parallel data resource. When the resource is ready for you to use, the
    #         status is <code>ACTIVE</code>.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    CreateParallelDataOutput = ::Struct.new(
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parallel data resource that is being deleted.</p>
    #
    #   @return [String]
    #
    DeleteParallelDataInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parallel data resource that is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the parallel data deletion.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    DeleteParallelDataOutput = ::Struct.new(
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom terminology being deleted. </p>
    #
    #   @return [String]
    #
    DeleteTerminologyInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTerminologyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeTextTranslationJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text_translation_job_properties
    #   <p>An object that contains the properties associated with an asynchronous batch translation
    #         job.</p>
    #
    #   @return [TextTranslationJobProperties]
    #
    DescribeTextTranslationJobOutput = ::Struct.new(
      :text_translation_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The confidence that Amazon Comprehend accurately detected the source language is low. If a
    #       low confidence level is acceptable for your application, you can use the language in the
    #       exception to call Amazon Translate again. For more information, see the <a href="https://docs.aws.amazon.com/comprehend/latest/dg/API_DetectDominantLanguage.html">DetectDominantLanguage</a> operation in the <i>Amazon Comprehend Developer
    #         Guide</i>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute detected_language_code
    #   <p>The language code of the auto-detected language from Amazon Comprehend.</p>
    #
    #   @return [String]
    #
    DetectedLanguageLowConfidenceException = ::Struct.new(
      :message,
      :detected_language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Directionality
    #
    module Directionality
      # No documentation available.
      #
      UNI = "UNI"

      # No documentation available.
      #
      MULTI = "MULTI"
    end

    # <p>The encryption key used to encrypt this object.</p>
    #
    # @!attribute type
    #   <p>The type of encryption key used by Amazon Translate to encrypt this object.</p>
    #
    #   Enum, one of: ["KMS"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The Amazon Resource Name (ARN) of the encryption key being used to encrypt this object.</p>
    #
    #   @return [String]
    #
    EncryptionKey = ::Struct.new(
      :type,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionKeyType
    #
    module EncryptionKeyType
      # No documentation available.
      #
      KMS = "KMS"
    end

    # Includes enum constants for Formality
    #
    module Formality
      # No documentation available.
      #
      FORMAL = "FORMAL"

      # No documentation available.
      #
      INFORMAL = "INFORMAL"
    end

    # @!attribute name
    #   <p>The name of the parallel data resource that is being retrieved.</p>
    #
    #   @return [String]
    #
    GetParallelDataInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parallel_data_properties
    #   <p>The properties of the parallel data resource that is being retrieved.</p>
    #
    #   @return [ParallelDataProperties]
    #
    # @!attribute data_location
    #   <p>The Amazon S3 location of the most recent parallel data input file that was successfully
    #         imported into Amazon Translate. The location is returned as a presigned URL that has a 30
    #         minute expiration.</p>
    #
    #            <important>
    #               <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
    #           attacks. </p>
    #               <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
    #           malicious code. The record begins with a special character, such as =, +, -, or @. When the
    #           file is opened in a spreadsheet program, the program might interpret the record as a formula
    #           and run the code within it.</p>
    #               <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
    #            </important>
    #
    #   @return [ParallelDataDataLocation]
    #
    # @!attribute auxiliary_data_location
    #   <p>The Amazon S3 location of a file that provides any errors or warnings that were produced
    #         by your input file. This file was created when Amazon Translate attempted to create a parallel
    #         data resource. The location is returned as a presigned URL to that has a 30 minute
    #         expiration.</p>
    #
    #   @return [ParallelDataDataLocation]
    #
    # @!attribute latest_update_attempt_auxiliary_data_location
    #   <p>The Amazon S3 location of a file that provides any errors or warnings that were produced
    #         by your input file. This file was created when Amazon Translate attempted to update a parallel
    #         data resource. The location is returned as a presigned URL to that has a 30 minute
    #         expiration.</p>
    #
    #   @return [ParallelDataDataLocation]
    #
    GetParallelDataOutput = ::Struct.new(
      :parallel_data_properties,
      :data_location,
      :auxiliary_data_location,
      :latest_update_attempt_auxiliary_data_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom terminology being retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute terminology_data_format
    #   <p>The data format of the custom terminology being retrieved.</p>
    #            <p>If you don't specify this parameter, Amazon Translate returns a file that has the same
    #         format as the file that was imported to create the terminology. </p>
    #            <p>If you specify this parameter when you retrieve a multi-directional terminology resource,
    #         you must specify the same format as that of the input file that was imported to create it.
    #         Otherwise, Amazon Translate throws an error.</p>
    #
    #   Enum, one of: ["CSV", "TMX", "TSV"]
    #
    #   @return [String]
    #
    GetTerminologyInput = ::Struct.new(
      :name,
      :terminology_data_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute terminology_properties
    #   <p>The properties of the custom terminology being retrieved.</p>
    #
    #   @return [TerminologyProperties]
    #
    # @!attribute terminology_data_location
    #   <p>The Amazon S3 location of the most recent custom terminology input file that was
    #         successfully imported into Amazon Translate. The location is returned as a presigned URL that
    #         has a 30 minute expiration.</p>
    #
    #            <important>
    #               <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
    #           attacks. </p>
    #               <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
    #           malicious code. The record begins with a special character, such as =, +, -, or @. When the
    #           file is opened in a spreadsheet program, the program might interpret the record as a formula
    #           and run the code within it.</p>
    #               <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
    #            </important>
    #
    #   @return [TerminologyDataLocation]
    #
    # @!attribute auxiliary_data_location
    #   <p>The Amazon S3 location of a file that provides any errors or warnings that were produced
    #         by your input file. This file was created when Amazon Translate attempted to create a
    #         terminology resource. The location is returned as a presigned URL to that has a 30 minute
    #         expiration.</p>
    #
    #   @return [TerminologyDataLocation]
    #
    GetTerminologyOutput = ::Struct.new(
      :terminology_properties,
      :terminology_data_location,
      :auxiliary_data_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the custom terminology being imported.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_strategy
    #   <p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE
    #         merge strategy is supported. In this case, the imported terminology will overwrite an existing
    #         terminology of the same name.</p>
    #
    #   Enum, one of: ["OVERWRITE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the custom terminology being imported.</p>
    #
    #   @return [String]
    #
    # @!attribute terminology_data
    #   <p>The terminology data for the custom terminology being imported.</p>
    #
    #   @return [TerminologyData]
    #
    # @!attribute encryption_key
    #   <p>The encryption key for the custom terminology being imported.</p>
    #
    #   @return [EncryptionKey]
    #
    ImportTerminologyInput = ::Struct.new(
      :name,
      :merge_strategy,
      :description,
      :terminology_data,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute terminology_properties
    #   <p>The properties of the custom terminology being imported.</p>
    #
    #   @return [TerminologyProperties]
    #
    # @!attribute auxiliary_data_location
    #   <p>The Amazon S3 location of a file that provides any errors or warnings that were produced
    #         by your input file. This file was created when Amazon Translate attempted to create a
    #         terminology resource. The location is returned as a presigned URL to that has a 30 minute
    #         expiration.</p>
    #
    #   @return [TerminologyDataLocation]
    #
    ImportTerminologyOutput = ::Struct.new(
      :terminology_properties,
      :auxiliary_data_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input configuration properties for requesting a batch translation job.</p>
    #
    # @!attribute s3_uri
    #   <p>The URI of the AWS S3 folder that contains the input file. The folder must be in the
    #         same Region as the API endpoint you are calling.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>Describes the format of the data that you submit to Amazon Translate as input. You can
    #         specify one of the following multipurpose internet mail extension (MIME) types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text/html</code>: The input data consists of one or more HTML files. Amazon
    #             Translate translates only the text that resides in the <code>html</code> element in each
    #             file.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>text/plain</code>: The input data consists of one or more unformatted text
    #             files. Amazon Translate translates every character in this type of input.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/vnd.openxmlformats-officedocument.wordprocessingml.document</code>:
    #             The input data consists of one or more Word documents (.docx).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/vnd.openxmlformats-officedocument.presentationml.presentation</code>:
    #             The input data consists of one or more PowerPoint Presentation files (.pptx).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</code>: The
    #             input data consists of one or more Excel Workbook files (.xlsx).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-xliff+xml</code>: The input data consists of one or more XML
    #             Localization Interchange File Format (XLIFF) files (.xlf). Amazon Translate supports only
    #             XLIFF version 1.2.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>If you structure your input data as HTML, ensure that you set this parameter to
    #             <code>text/html</code>. By doing so, you cut costs by limiting the translation to the
    #           contents of the <code>html</code> element in each file. Otherwise, if you set this parameter
    #           to <code>text/plain</code>, your costs will cover the translation of every character.</p>
    #            </important>
    #
    #   @return [String]
    #
    InputDataConfig = ::Struct.new(
      :s3_uri,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter specified for the operation is invalid. Specify a different filter.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidFilterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of the parameter is invalid. Review the value of the parameter you are using to
    #       correct it, and then retry your operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request that you made is invalid. Check your request to determine why it's invalid
    #       and then retry the request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of documents successfully and unsuccessfully processed during a translation
    #       job.</p>
    #
    # @!attribute translated_documents_count
    #   <p>The number of documents successfully processed during a translation job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute documents_with_errors_count
    #   <p>The number of documents that could not be processed during a translation job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute input_documents_count
    #   <p>The number of documents used as input in a translation job.</p>
    #
    #   @return [Integer]
    #
    JobDetails = ::Struct.new(
      :translated_documents_count,
      :documents_with_errors_count,
      :input_documents_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      COMPLETED_WITH_ERROR = "COMPLETED_WITH_ERROR"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOP_REQUESTED = "STOP_REQUESTED"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>The specified limit has been exceeded. Review your request and retry it with a quantity
    #       below the stated limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A string that specifies the next page of results to return in a paginated response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of parallel data resources returned for each request.</p>
    #
    #   @return [Integer]
    #
    ListParallelDataInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parallel_data_properties_list
    #   <p>The properties of the parallel data resources returned by this request.</p>
    #
    #   @return [Array<ParallelDataProperties>]
    #
    # @!attribute next_token
    #   <p>The string to use in a subsequent request to get the next page of results in a paginated
    #         response. This value is null if there are no additional pages.</p>
    #
    #   @return [String]
    #
    ListParallelDataOutput = ::Struct.new(
      :parallel_data_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the result of the request to ListTerminologies was truncated, include the NextToken to
    #         fetch the next group of custom terminologies. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of custom terminologies returned per list request.</p>
    #
    #   @return [Integer]
    #
    ListTerminologiesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute terminology_properties_list
    #   <p>The properties list of the custom terminologies returned on the list request.</p>
    #
    #   @return [Array<TerminologyProperties>]
    #
    # @!attribute next_token
    #   <p> If the response to the ListTerminologies was truncated, the NextToken fetches the next
    #         group of custom terminologies.</p>
    #
    #   @return [String]
    #
    ListTerminologiesOutput = ::Struct.new(
      :terminology_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>The parameters that specify which batch translation jobs to retrieve. Filters include job
    #         name, job status, and submission time. You can only set one filter at a time.</p>
    #
    #   @return [TextTranslationJobFilter]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default value is 100.</p>
    #
    #   @return [Integer]
    #
    ListTextTranslationJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text_translation_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<TextTranslationJobProperties>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code>
    #         when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTextTranslationJobsOutput = ::Struct.new(
      :text_translation_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MergeStrategy
    #
    module MergeStrategy
      # No documentation available.
      #
      OVERWRITE = "OVERWRITE"
    end

    # <p>The output configuration properties for a batch translation job.</p>
    #
    # @!attribute s3_uri
    #   <p>The URI of the S3 folder that contains a translation job's output file. The folder must
    #         be in the same Region as the API endpoint that you are calling.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt this object.</p>
    #
    #   @return [EncryptionKey]
    #
    OutputDataConfig = ::Struct.new(
      :s3_uri,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    # @!attribute s3_uri
    #   <p>The URI of the Amazon S3 folder that contains the parallel data input file. The folder
    #         must be in the same Region as the API endpoint you are calling.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The format of the parallel data input file.</p>
    #
    #   Enum, one of: ["TSV", "CSV", "TMX"]
    #
    #   @return [String]
    #
    ParallelDataConfig = ::Struct.new(
      :s3_uri,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location of the most recent parallel data input file that was successfully imported
    #       into Amazon Translate.</p>
    #
    # @!attribute repository_type
    #   <p>Describes the repository that contains the parallel data input file.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The Amazon S3 location of the parallel data input file. The location is returned as a
    #         presigned URL to that has a 30 minute expiration.</p>
    #
    #            <important>
    #               <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
    #           attacks. </p>
    #               <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
    #           malicious code. The record begins with a special character, such as =, +, -, or @. When the
    #           file is opened in a spreadsheet program, the program might interpret the record as a formula
    #           and run the code within it.</p>
    #               <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
    #            </important>
    #
    #   @return [String]
    #
    ParallelDataDataLocation = ::Struct.new(
      :repository_type,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParallelDataFormat
    #
    module ParallelDataFormat
      # No documentation available.
      #
      TSV = "TSV"

      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      TMX = "TMX"
    end

    # <p>The properties of a parallel data resource.</p>
    #
    # @!attribute name
    #   <p>The custom name assigned to the parallel data resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parallel data resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description assigned to the parallel data resource.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the parallel data resource. When the parallel data is ready for you to use,
    #         the status is <code>ACTIVE</code>.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute source_language_code
    #   <p>The source language of the translations in the parallel data file.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_codes
    #   <p>The language codes for the target languages available in the parallel data file. All
    #         possible target languages are returned as an array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    #   @return [ParallelDataConfig]
    #
    # @!attribute message
    #   <p>Additional information from Amazon Translate about the parallel data resource. </p>
    #
    #   @return [String]
    #
    # @!attribute imported_data_size
    #   <p>The number of UTF-8 characters that Amazon Translate imported from the parallel data input
    #         file. This number includes only the characters in your translation examples. It does not
    #         include characters that are used to format your file. For example, if you provided a
    #         Translation Memory Exchange (.tmx) file, this number does not include the tags.</p>
    #
    #   @return [Integer]
    #
    # @!attribute imported_record_count
    #   <p>The number of records successfully imported from the parallel data input file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_record_count
    #   <p>The number of records unsuccessfully imported from the parallel data input file.</p>
    #
    #   @return [Integer]
    #
    # @!attribute skipped_record_count
    #   <p>The number of items in the input file that Amazon Translate skipped when you created or
    #         updated the parallel data resource. For example, Amazon Translate skips empty records, empty
    #         target texts, and empty lines.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt this object.</p>
    #
    #   @return [EncryptionKey]
    #
    # @!attribute created_at
    #   <p>The time at which the parallel data resource was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time at which the parallel data resource was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_update_attempt_status
    #   <p>The status of the most recent update attempt for the parallel data resource.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute latest_update_attempt_at
    #   <p>The time that the most recent update was attempted.</p>
    #
    #   @return [Time]
    #
    ParallelDataProperties = ::Struct.new(
      :name,
      :arn,
      :description,
      :status,
      :source_language_code,
      :target_language_codes,
      :parallel_data_config,
      :message,
      :imported_data_size,
      :imported_record_count,
      :failed_record_count,
      :skipped_record_count,
      :encryption_key,
      :created_at,
      :last_updated_at,
      :latest_update_attempt_status,
      :latest_update_attempt_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParallelDataStatus
    #
    module ParallelDataStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for Profanity
    #
    module Profanity
      # No documentation available.
      #
      MASK = "MASK"
    end

    # <p>The resource you are looking for has not been found. Review the resource you're looking
    #       for and see if a different resource will accomplish your needs before retrying the revised
    #       request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Translate service is temporarily unavailable. Please wait a bit and then retry your
    #       request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_name
    #   <p>The name of the batch translation job to be performed.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>Specifies the format and S3 location of the input documents for the translation
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies the S3 folder to which your job output will be saved.
    #         </p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
    #         that grants Amazon Translate read access to your input data. For more information, see <a>identity-and-access-management</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_language_code
    #   <p>The language code of the input language. For a list of language codes, see <a>what-is-languages</a>.</p>
    #            <p>Amazon Translate does not automatically detect a source language during batch translation
    #         jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_codes
    #   <p>The language code of the output language.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute terminology_names
    #   <p>The name of a custom terminology resource to add to the translation job. This resource
    #         lists examples source terms and the desired translation for each term.</p>
    #            <p>This parameter accepts only one custom terminology resource.</p>
    #            <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p>
    #            <p>For more information, see <a>how-custom-terminology</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parallel_data_names
    #   <p>The name of a parallel data resource to add to the translation job. This resource consists
    #         of examples that show how you want segments of text to be translated. When you add parallel
    #         data to a translation job, you create an <i>Active Custom Translation</i> job. </p>
    #            <p>This parameter accepts only one parallel data resource.</p>
    #            <note>
    #               <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't
    #           use parallel data. For more information, see <a href="http://aws.amazon.com/translate/pricing/">Amazon Translate pricing</a>.</p>
    #            </note>
    #            <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p>
    #            <p>For more information, see <a>customizing-translations-parallel-data</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique identifier for the request. This token is auto-generated when using the Amazon Translate
    #         SDK.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Settings to configure your translation output, including the option to mask profane words
    #         and phrases.</p>
    #
    #   @return [TranslationSettings]
    #
    StartTextTranslationJobInput = ::Struct.new(
      :job_name,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :source_language_code,
      :target_language_codes,
      :terminology_names,
      :parallel_data_names,
      :client_token,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this ID with the
    #           <a>DescribeTextTranslationJob</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUBMITTED</code> - The job has been received and is queued for
    #             processing.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - Amazon Translate is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> - The job was successfully completed and the output is
    #             available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED_WITH_ERROR</code> - The job was completed with errors. The errors can
    #             be analyzed in the job's output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The job did not complete. To get details, use the <a>DescribeTextTranslationJob</a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_REQUESTED</code> - The user who started the job has requested that it be
    #             stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> - The job has been stopped.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartTextTranslationJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the job to be stopped.</p>
    #
    #   @return [String]
    #
    StopTextTranslationJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the stopped batch translation job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the designated job. Upon successful completion, the job's status will be
    #           <code>STOPPED</code>.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopTextTranslationJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The term being translated by the custom terminology.</p>
    #
    # @!attribute source_text
    #   <p>The source text of the term being translated by the custom terminology.</p>
    #
    #   @return [String]
    #
    # @!attribute target_text
    #   <p>The target text of the term being translated by the custom terminology.</p>
    #
    #   @return [String]
    #
    Term = ::Struct.new(
      :source_text,
      :target_text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data associated with the custom terminology.</p>
    #
    # @!attribute file
    #   <p>The file containing the custom terminology data. Your version of the AWS SDK performs a
    #         Base64-encoding on this field before sending a request to the AWS service. Users of the SDK
    #         should not perform Base64-encoding themselves.</p>
    #
    #   @return [String]
    #
    # @!attribute format
    #   <p>The data format of the custom terminology.</p>
    #
    #   Enum, one of: ["CSV", "TMX", "TSV"]
    #
    #   @return [String]
    #
    # @!attribute directionality
    #   <p>The directionality of your terminology resource indicates whether it has one source
    #         language (uni-directional) or multiple (multi-directional).</p>
    #            <dl>
    #               <dt>UNI</dt>
    #               <dd>
    #                  <p>The terminology resource has one source language (for example, the first column in a
    #               CSV file), and all of its other languages are target languages. </p>
    #               </dd>
    #               <dt>MULTI</dt>
    #               <dd>
    #                  <p>Any language in the terminology resource can be the source language or a target
    #               language. A single multi-directional terminology resource can be used for jobs that
    #               translate different language pairs. For example, if the terminology contains terms in
    #               English and Spanish, then it can be used for jobs that translate English to Spanish and
    #               jobs that translate Spanish to English.</p>
    #               </dd>
    #            </dl>
    #            <p>When you create a custom terminology resource without specifying the directionality, it
    #         behaves as uni-directional terminology, although this parameter will have a null value.</p>
    #
    #   Enum, one of: ["UNI", "MULTI"]
    #
    #   @return [String]
    #
    TerminologyData = ::Struct.new(
      :file,
      :format,
      :directionality,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Translate::Types::TerminologyData "\
          "file=\"[SENSITIVE]\", "\
          "format=#{format || 'nil'}, "\
          "directionality=#{directionality || 'nil'}>"
      end
    end

    # Includes enum constants for TerminologyDataFormat
    #
    module TerminologyDataFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      TMX = "TMX"

      # No documentation available.
      #
      TSV = "TSV"
    end

    # <p>The location of the custom terminology data.</p>
    #
    # @!attribute repository_type
    #   <p>The repository type for the custom terminology data.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The Amazon S3 location of the most recent custom terminology input file that was
    #         successfully imported into Amazon Translate. The location is returned as a presigned URL that
    #         has a 30 minute expiration.</p>
    #
    #            <important>
    #               <p>Amazon Translate doesn't scan all input files for the risk of CSV injection
    #           attacks. </p>
    #               <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains
    #           malicious code. The record begins with a special character, such as =, +, -, or @. When the
    #           file is opened in a spreadsheet program, the program might interpret the record as a formula
    #           and run the code within it.</p>
    #               <p>Before you download an input file from Amazon S3, ensure that you recognize the file and trust its creator.</p>
    #            </important>
    #
    #   @return [String]
    #
    TerminologyDataLocation = ::Struct.new(
      :repository_type,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties of the custom terminology.</p>
    #
    # @!attribute name
    #   <p>The name of the custom terminology.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the custom terminology properties.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the custom terminology. </p>
    #
    #   @return [String]
    #
    # @!attribute source_language_code
    #   <p>The language code for the source text of the translation request for which the custom
    #         terminology is being used.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_codes
    #   <p>The language codes for the target languages available with the custom terminology
    #         resource. All possible target languages are returned in array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute encryption_key
    #   <p>The encryption key for the custom terminology.</p>
    #
    #   @return [EncryptionKey]
    #
    # @!attribute size_bytes
    #   <p>The size of the file used when importing a custom terminology.</p>
    #
    #   @return [Integer]
    #
    # @!attribute term_count
    #   <p>The number of terms included in the custom terminology.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The time at which the custom terminology was created, based on the timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time at which the custom terminology was last update, based on the timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute directionality
    #   <p>The directionality of your terminology resource indicates whether it has one source
    #         language (uni-directional) or multiple (multi-directional). </p>
    #            <dl>
    #               <dt>UNI</dt>
    #               <dd>
    #                  <p>The terminology resource has one source language (the first column in a CSV file),
    #               and all of its other languages are target languages.</p>
    #               </dd>
    #               <dt>MULTI</dt>
    #               <dd>
    #                  <p>Any language in the terminology resource can be the source language.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["UNI", "MULTI"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Additional information from Amazon Translate about the terminology resource.</p>
    #
    #   @return [String]
    #
    # @!attribute skipped_term_count
    #   <p>The number of terms in the input file that Amazon Translate skipped when you created or
    #         updated the terminology resource.</p>
    #
    #   @return [Integer]
    #
    # @!attribute format
    #   <p>The format of the custom terminology input file.</p>
    #
    #   Enum, one of: ["CSV", "TMX", "TSV"]
    #
    #   @return [String]
    #
    TerminologyProperties = ::Struct.new(
      :name,
      :description,
      :arn,
      :source_language_code,
      :target_language_codes,
      :encryption_key,
      :size_bytes,
      :term_count,
      :created_at,
      :last_updated_at,
      :directionality,
      :message,
      :skipped_term_count,
      :format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The size of the text you submitted exceeds the size limit. Reduce the size of the text or
    #       use a smaller document and then retry your request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TextSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of translation jobs. For more information, see
    #         <a>ListTextTranslationJobs</a>.</p>
    #
    # @!attribute job_name
    #   <p>Filters the list of jobs by name.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based by job status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submitted_before_time
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing and
    #         returns only the jobs submitted before the specified time. Jobs are returned in ascending
    #         order, oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submitted_after_time
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing and
    #         returns only the jobs submitted after the specified time. Jobs are returned in descending
    #         order, newest to oldest.</p>
    #
    #   @return [Time]
    #
    TextTranslationJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submitted_before_time,
      :submitted_after_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a translation job.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the translation job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The user-defined name of the translation job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the translation job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute job_details
    #   <p>The number of documents successfully and unsuccessfully processed during the translation
    #         job.</p>
    #
    #   @return [JobDetails]
    #
    # @!attribute source_language_code
    #   <p>The language code of the language of the source text. The language must be a language
    #         supported by Amazon Translate.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_codes
    #   <p>The language code of the language of the target text. The language must be a language
    #         supported by Amazon Translate.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute terminology_names
    #   <p>A list containing the names of the terminologies applied to a translation job. Only one
    #         terminology can be applied per <a>StartTextTranslationJob</a> request at this
    #         time.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parallel_data_names
    #   <p>A list containing the names of the parallel data resources applied to the translation
    #         job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute message
    #   <p>An explanation of any errors that may have occurred during the translation job.</p>
    #
    #   @return [String]
    #
    # @!attribute submitted_time
    #   <p>The time at which the translation job was submitted.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time at which the translation job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input configuration properties that were specified when the job was requested.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output configuration properties that were specified when the job was requested.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
    #         that granted Amazon Translate read access to the job's input data.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Settings that configure the translation output.</p>
    #
    #   @return [TranslationSettings]
    #
    TextTranslationJobProperties = ::Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :job_details,
      :source_language_code,
      :target_language_codes,
      :terminology_names,
      :parallel_data_names,
      :message,
      :submitted_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> You have made too many requests within a short period of time. Wait for a short time and
    #       then try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text
    #   <p>The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on
    #         your character set, this may be fewer than 5,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute terminology_names
    #   <p>The name of the terminology list file to be used in the TranslateText request. You can use
    #         1 terminology list at most in a <code>TranslateText</code> request. Terminology lists can
    #         contain a maximum of 256 terms.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_language_code
    #   <p>The language code for the language of the source text. The language must be a language
    #         supported by Amazon Translate. For a list of language codes, see <a>what-is-languages</a>.</p>
    #            <p>To have Amazon Translate determine the source language of your text, you can specify
    #           <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify
    #           <code>auto</code>, Amazon Translate will call <a href="https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html">Amazon
    #           Comprehend</a> to determine the source language.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_code
    #   <p>The language code requested for the language of the target text. The language must be a
    #         language supported by Amazon Translate.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Settings to configure your translation output, including the option to mask profane words
    #         and phrases.</p>
    #
    #   @return [TranslationSettings]
    #
    TranslateTextInput = ::Struct.new(
      :text,
      :terminology_names,
      :source_language_code,
      :target_language_code,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute translated_text
    #   <p>The translated text.</p>
    #
    #   @return [String]
    #
    # @!attribute source_language_code
    #   <p>The language code for the language of the source text.</p>
    #
    #   @return [String]
    #
    # @!attribute target_language_code
    #   <p>The language code for the language of the target text. </p>
    #
    #   @return [String]
    #
    # @!attribute applied_terminologies
    #   <p>The names of the custom terminologies applied to the input text by Amazon Translate for the
    #         translated text response.</p>
    #
    #   @return [Array<AppliedTerminology>]
    #
    # @!attribute applied_settings
    #   <p>Settings that configure the translation output.</p>
    #
    #   @return [TranslationSettings]
    #
    TranslateTextOutput = ::Struct.new(
      :translated_text,
      :source_language_code,
      :target_language_code,
      :applied_terminologies,
      :applied_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings that configure the translation output.</p>
    #
    # @!attribute formality
    #   Enum, one of: ["FORMAL", "INFORMAL"]
    #
    #   @return [String]
    #
    # @!attribute profanity
    #   <p>Enable the profanity setting if you want Amazon Translate to mask profane words and
    #         phrases in your translation output.</p>
    #            <p>To mask profane words and phrases, Amazon Translate replaces them with the grawlix string
    #         “?$ @$“. This 5-character sequence is used for each profane word or phrase, regardless of the
    #         length or number of words.</p>
    #            <p>Amazon Translate does not detect profanity in all of its supported languages. For
    #         languages that support profanity detection, see <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is.html what-is-languages">Supported
    #           Languages and Language Codes in the Amazon Translate Developer Guide</a>.</p>
    #
    #   Enum, one of: ["MASK"]
    #
    #   @return [String]
    #
    TranslationSettings = ::Struct.new(
      :formality,
      :profanity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Translate does not support translation from the language of the source text into the requested
    #       target language. For more information, see <a>how-to-error-msg</a>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute source_language_code
    #   <p>The language code for the language of the input text. </p>
    #
    #   @return [String]
    #
    # @!attribute target_language_code
    #   <p>The language code for the language of the translated text. </p>
    #
    #   @return [String]
    #
    UnsupportedLanguagePairException = ::Struct.new(
      :message,
      :source_language_code,
      :target_language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parallel data resource being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    #
    #   @return [String]
    #
    # @!attribute parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    #   @return [ParallelDataConfig]
    #
    # @!attribute client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    #
    #   @return [String]
    #
    UpdateParallelDataInput = ::Struct.new(
      :name,
      :description,
      :parallel_data_config,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the parallel data resource being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the parallel data resource that you are attempting to update. Your update
    #         request is accepted only if this status is either <code>ACTIVE</code> or
    #         <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute latest_update_attempt_status
    #   <p>The status of the parallel data update attempt. When the updated parallel data resource is
    #         ready for you to use, the status is <code>ACTIVE</code>.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute latest_update_attempt_at
    #   <p>The time that the most recent update was attempted.</p>
    #
    #   @return [Time]
    #
    UpdateParallelDataOutput = ::Struct.new(
      :name,
      :status,
      :latest_update_attempt_status,
      :latest_update_attempt_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
