# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Comprehend
  module Types

    # Includes enum constants for AugmentedManifestsDocumentTypeFormat
    #
    module AugmentedManifestsDocumentTypeFormat
      # No documentation available.
      #
      PLAIN_TEXT_DOCUMENT = "PLAIN_TEXT_DOCUMENT"

      # No documentation available.
      #
      SEMI_STRUCTURED_DOCUMENT = "SEMI_STRUCTURED_DOCUMENT"
    end

    # <p>An augmented manifest file that provides training data for your custom model. An augmented
    #       manifest file is a labeled dataset that is produced by Amazon SageMaker Ground Truth.</p>
    #
    # @!attribute s3_uri
    #   <p>The Amazon S3 location of the augmented manifest file.</p>
    #
    #   @return [String]
    #
    # @!attribute split
    #   <p>The purpose of the data you've provided in the augmented manifest. You can either train or
    #         test this data. If you don't specify, the default is train.</p>
    #            <p>TRAIN - all of the documents in the manifest will be used for training. If no test
    #         documents are provided, Amazon Comprehend will automatically reserve a portion of the training
    #         documents for testing.</p>
    #            <p> TEST - all of the documents in the manifest will be used for testing.</p>
    #
    #   Enum, one of: ["TRAIN", "TEST"]
    #
    #   @return [String]
    #
    # @!attribute attribute_names
    #   <p>The JSON attribute that contains the annotations for your training documents. The number
    #         of attribute names that you specify depends on whether your augmented manifest file is the
    #         output of a single labeling job or a chained labeling job.</p>
    #            <p>If your file is the output of a single labeling job, specify the LabelAttributeName key
    #         that was used when the job was created in Ground Truth.</p>
    #            <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key
    #         for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from
    #         an individual job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute annotation_data_s3_uri
    #   <p>The S3 prefix to the annotation files that are referred in the augmented manifest
    #         file.</p>
    #
    #   @return [String]
    #
    # @!attribute source_documents_s3_uri
    #   <p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest
    #         file.</p>
    #
    #   @return [String]
    #
    # @!attribute document_type
    #   <p>The type of augmented manifest. PlainTextDocument or SemiStructuredDocument. If you don't
    #         specify, the default is PlainTextDocument. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that
    #             is encoded in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEMI_STRUCTURED_DOCUMENT</code> A document type with positional and structural
    #             context, like a PDF. For training with Amazon Comprehend, only PDFs are supported. For
    #             inference, Amazon Comprehend support PDFs, DOCX and TXT.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #
    #   @return [String]
    #
    AugmentedManifestsListItem = ::Struct.new(
      :s3_uri,
      :split,
      :attribute_names,
      :annotation_data_s3_uri,
      :source_documents_s3_uri,
      :document_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document should contain at least 20 characters and must contain fewer than
    #         5,000 bytes of UTF-8 encoded characters.</p>
    #
    #   @return [Array<String>]
    #
    BatchDetectDominantLanguageInput = ::Struct.new(
      :text_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectDominantLanguageInput "\
          "text_list=\"[SENSITIVE]\">"
      end
    end

    # <p>The result of calling the  operation.
    #       The operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute languages
    #   <p>One or more <a>DominantLanguage</a> objects describing the dominant
    #         languages in the document.</p>
    #
    #   @return [Array<DominantLanguage>]
    #
    BatchDetectDominantLanguageItemResult = ::Struct.new(
      :index,
      :languages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute result_list
    #   <p>A list of  objects
    #         containing the results of the operation. The results are sorted in ascending order by the
    #           <code>Index</code> field and match the order of the documents in the input list. If all of
    #         the documents contain an error, the <code>ResultList</code> is empty.</p>
    #
    #   @return [Array<BatchDetectDominantLanguageItemResult>]
    #
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #
    #   @return [Array<BatchItemError>]
    #
    BatchDetectDominantLanguageOutput = ::Struct.new(
      :result_list,
      :error_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectDominantLanguageOutput [SENSITIVE]>"
      end
    end

    # @!attribute text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    BatchDetectEntitiesInput = ::Struct.new(
      :text_list,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectEntitiesInput "\
          "text_list=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute entities
    #   <p>One or more <a>Entity</a> objects, one for each entity detected in the
    #         document.</p>
    #
    #   @return [Array<Entity>]
    #
    BatchDetectEntitiesItemResult = ::Struct.new(
      :index,
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #
    #   @return [Array<BatchDetectEntitiesItemResult>]
    #
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #
    #   @return [Array<BatchItemError>]
    #
    BatchDetectEntitiesOutput = ::Struct.new(
      :result_list,
      :error_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectEntitiesOutput [SENSITIVE]>"
      end
    end

    # @!attribute text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    BatchDetectKeyPhrasesInput = ::Struct.new(
      :text_list,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectKeyPhrasesInput "\
          "text_list=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute key_phrases
    #   <p>One or more <a>KeyPhrase</a> objects, one for each key phrase detected in
    #         the document.</p>
    #
    #   @return [Array<KeyPhrase>]
    #
    BatchDetectKeyPhrasesItemResult = ::Struct.new(
      :index,
      :key_phrases,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #
    #   @return [Array<BatchDetectKeyPhrasesItemResult>]
    #
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #
    #   @return [Array<BatchItemError>]
    #
    BatchDetectKeyPhrasesOutput = ::Struct.new(
      :result_list,
      :error_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectKeyPhrasesOutput [SENSITIVE]>"
      end
    end

    # @!attribute text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    BatchDetectSentimentInput = ::Struct.new(
      :text_list,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectSentimentInput "\
          "text_list=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sentiment
    #   <p>The sentiment detected in the document.</p>
    #
    #   Enum, one of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #
    #   @return [String]
    #
    # @!attribute sentiment_score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its sentiment
    #         detection.</p>
    #
    #   @return [SentimentScore]
    #
    BatchDetectSentimentItemResult = ::Struct.new(
      :index,
      :sentiment,
      :sentiment_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #
    #   @return [Array<BatchDetectSentimentItemResult>]
    #
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #
    #   @return [Array<BatchItemError>]
    #
    BatchDetectSentimentOutput = ::Struct.new(
      :result_list,
      :error_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectSentimentOutput [SENSITIVE]>"
      end
    end

    # @!attribute text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt"]
    #
    #   @return [String]
    #
    BatchDetectSyntaxInput = ::Struct.new(
      :text_list,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectSyntaxInput "\
          "text_list=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object that is successfully processed by the operation.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute syntax_tokens
    #   <p>The syntax tokens for the words in the document, one token for each word.</p>
    #
    #   @return [Array<SyntaxToken>]
    #
    BatchDetectSyntaxItemResult = ::Struct.new(
      :index,
      :syntax_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #
    #   @return [Array<BatchDetectSyntaxItemResult>]
    #
    # @!attribute error_list
    #   <p>A list containing one  object for each document that
    #         contained an error. The results are sorted in ascending order by the <code>Index</code> field
    #         and match the order of the documents in the input list. If there are no errors in the batch,
    #         the <code>ErrorList</code> is empty.</p>
    #
    #   @return [Array<BatchItemError>]
    #
    BatchDetectSyntaxOutput = ::Struct.new(
      :result_list,
      :error_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::BatchDetectSyntaxOutput [SENSITIVE]>"
      end
    end

    # <p>Describes an error that occurred while processing a document in a batch. The operation
    #       returns on <code>BatchItemError</code> object for each document that contained an
    #       error.</p>
    #
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_code
    #   <p>The numeric error code of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A text description of the error.</p>
    #
    #   @return [String]
    #
    BatchItemError = ::Struct.new(
      :index,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of documents in the request exceeds the limit of 25. Try your request again
    #       with fewer documents.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the result metrics for the test data associated with an documentation
    #       classifier.</p>
    #
    # @!attribute accuracy
    #   <p>The fraction of the labels that were correct recognized. It is computed by dividing the
    #         number of labels in the test documents that were correctly recognized by the total number of
    #         labels in the test documents.</p>
    #
    #   @return [Float]
    #
    # @!attribute precision
    #   <p>A measure of the usefulness of the classifier results in the test data. High precision
    #         means that the classifier returned substantially more relevant results than irrelevant
    #         ones.</p>
    #
    #   @return [Float]
    #
    # @!attribute recall
    #   <p>A measure of how complete the classifier results are for the test data. High recall means
    #         that the classifier returned most of the relevant results. </p>
    #
    #   @return [Float]
    #
    # @!attribute f1_score
    #   <p>A measure of how accurate the classifier results are for the test data. It is derived from
    #         the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
    #         harmonic average of the two scores. The highest score is 1, and the worst score is 0. </p>
    #
    #   @return [Float]
    #
    # @!attribute micro_precision
    #   <p>A measure of the usefulness of the recognizer results in the test data. High precision
    #         means that the recognizer returned substantially more relevant results than irrelevant ones.
    #         Unlike the Precision metric which comes from averaging the precision of all available labels,
    #         this is based on the overall score of all precision scores added together.</p>
    #
    #   @return [Float]
    #
    # @!attribute micro_recall
    #   <p>A measure of how complete the classifier results are for the test data. High recall means
    #         that the classifier returned most of the relevant results. Specifically, this indicates how
    #         many of the correct categories in the text that the model can predict. It is a percentage of
    #         correct categories in the text that can found. Instead of averaging the recall scores of all
    #         labels (as with Recall), micro Recall is based on the overall score of all recall scores added
    #         together.</p>
    #
    #   @return [Float]
    #
    # @!attribute micro_f1_score
    #   <p>A measure of how accurate the classifier results are for the test data. It is a
    #         combination of the <code>Micro Precision</code> and <code>Micro Recall</code> values. The
    #           <code>Micro F1Score</code> is the harmonic mean of the two scores. The highest score is 1,
    #         and the worst score is 0.</p>
    #
    #   @return [Float]
    #
    # @!attribute hamming_loss
    #   <p>Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction
    #         of wrong labels compared to the total number of labels. Scores closer to zero are
    #         better.</p>
    #
    #   @return [Float]
    #
    ClassifierEvaluationMetrics = ::Struct.new(
      :accuracy,
      :precision,
      :recall,
      :f1_score,
      :micro_precision,
      :micro_recall,
      :micro_f1_score,
      :hamming_loss,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a document classifier.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute number_of_labels
    #   <p>The number of labels in the input data. </p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_trained_documents
    #   <p>The number of documents in the input data that were used to train the classifier.
    #         Typically this is 80 to 90 percent of the input documents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_test_documents
    #   <p>The number of documents in the input data that were used to test the classifier. Typically
    #         this is 10 to 20 percent of the input documents, up to 10,000 documents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute evaluation_metrics
    #   <p> Describes the result metrics for the test data associated with an documentation
    #         classifier.</p>
    #
    #   @return [ClassifierEvaluationMetrics]
    #
    ClassifierMetadata = ::Struct.new(
      :number_of_labels,
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::ClassifierMetadata [SENSITIVE]>"
      end
    end

    # @!attribute text
    #   <p>The document text to be analyzed.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint. For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    #   @return [String]
    #
    ClassifyDocumentInput = ::Struct.new(
      :text,
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::ClassifyDocumentInput "\
          "text=\"[SENSITIVE]\", "\
          "endpoint_arn=#{endpoint_arn || 'nil'}>"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute classes
    #   <p>The classes used by the document being analyzed. These are used for multi-class trained
    #         models. Individual classes are mutually exclusive and each document is expected to have only a
    #         single class assigned to it. For example, an animal can be a dog or a cat, but not both at the
    #         same time. </p>
    #
    #   @return [Array<DocumentClass>]
    #
    # @!attribute labels
    #   <p>The labels used the document being analyzed. These are used for multi-label trained
    #         models. Individual labels represent different categories that are related in some manner and
    #         are not mutually exclusive. For example, a movie can be just an action movie, or it can be an
    #         action movie, a science fiction movie, and a comedy, all at the same time. </p>
    #
    #   @return [Array<DocumentLabel>]
    #
    ClassifyDocumentOutput = ::Struct.new(
      :classes,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::ClassifyDocumentOutput [SENSITIVE]>"
      end
    end

    # <p>Concurrent modification of the tags associated with an Amazon Comprehend resource is not
    #       supported. </p>
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

    # @!attribute text
    #   <p>Creates a new document classification request to analyze a single document in real-time,
    #         returning personally identifiable information (PII) entity labels.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    ContainsPiiEntitiesInput = ::Struct.new(
      :text,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute labels
    #   <p>The labels used in the document being analyzed. Individual labels represent personally
    #         identifiable information (PII) entity types.</p>
    #
    #   @return [Array<EntityLabel>]
    #
    ContainsPiiEntitiesOutput = ::Struct.new(
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_name
    #   <p>The name of the document classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name given to the newly created classifier. Version names can have a maximum
    #         of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same classifier name in the account/AWS
    #         Region.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the document classifier being created. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [DocumentClassifierInputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Enables the addition of output results configuration parameters for custom classifier
    #         jobs.</p>
    #
    #   @return [DocumentClassifierOutputDataConfig]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute mode
    #   <p>Indicates the mode in which the classifier will be trained. The classifier can be trained
    #         in multi-class mode, which identifies one and only one class for each document, or multi-label
    #         mode, which identifies one or more labels for each document. In multi-label mode, multiple
    #         labels for an individual document are separated by a delimiter. The default delimiter between
    #         labels is a pipe (|).</p>
    #
    #   Enum, one of: ["MULTI_CLASS", "MULTI_LABEL"]
    #
    #   @return [String]
    #
    # @!attribute model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute model_policy
    #   <p>The resource-based policy to attach to your custom document classifier model. You can use
    #         this policy to allow another AWS account to import your custom model.</p>
    #            <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line
    #         breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the
    #         JSON body is also enclosed in double quotes, then you must escape the double quotes that are
    #         inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateDocumentClassifierInput = ::Struct.new(
      :document_classifier_name,
      :version_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :output_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config,
      :mode,
      :model_kms_key_id,
      :model_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>
    #
    #   @return [String]
    #
    CreateDocumentClassifierOutput = ::Struct.new(
      :document_classifier_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for
    #         all subsequent requests to this resource. </p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint will be
    #         attached.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_request_token
    #   <p>An idempotency token provided by the customer. If this token matches a previous endpoint
    #         creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the endpoint being created. A tag is a key-value pair that adds
    #         metadata to the endpoint. For example, a tag with "Sales" as the key might be added to an
    #         endpoint to indicate its use by the sales department. </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    #
    #   @return [String]
    #
    CreateEndpointInput = ::Struct.new(
      :endpoint_name,
      :model_arn,
      :desired_inference_units,
      :client_request_token,
      :tags,
      :data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being created.</p>
    #
    #   @return [String]
    #
    CreateEndpointOutput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recognizer_name
    #   <p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256
    #         characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name
    #         must be unique in the account/region.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name given to the newly created recognizer. Version names can be a maximum of
    #         256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same recognizer name in the account/ AWS
    #         Region.</p>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the entity recognizer being created. A tag is a key-value pair
    #         that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data. The S3 bucket containing the input
    #         data must be located in the same region as the entity recognizer being created. </p>
    #
    #   @return [EntityRecognizerInputDataConfig]
    #
    # @!attribute client_request_token
    #   <p> A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p> You can specify any of the following languages supported by Amazon Comprehend: English
    #         ("en"), Spanish ("es"), French ("fr"), Italian ("it"), German ("de"), or Portuguese ("pt").
    #         All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom entity recognizer. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute model_policy
    #   <p>The JSON resource-based policy to attach to your custom entity recognizer model. You can
    #         use this policy to allow another AWS account to import your custom model.</p>
    #            <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for
    #         your policy, enclose the attribute names and values in double quotes. If the JSON body is also
    #         enclosed in double quotes, then you must escape the double quotes that are inside the
    #         policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateEntityRecognizerInput = ::Struct.new(
      :recognizer_name,
      :version_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config,
      :model_kms_key_id,
      :model_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    #   @return [String]
    #
    CreateEntityRecognizerOutput = ::Struct.new(
      :entity_recognizer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    #
    #   @return [String]
    #
    DeleteDocumentClassifierInput = ::Struct.new(
      :document_classifier_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDocumentClassifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>
    #
    #   @return [String]
    #
    DeleteEndpointInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    #   @return [String]
    #
    DeleteEntityRecognizerInput = ::Struct.new(
      :entity_recognizer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEntityRecognizerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy to delete.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :policy_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeDocumentClassificationJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classification_job_properties
    #   <p>An object that describes the properties associated with the document classification
    #         job.</p>
    #
    #   @return [DocumentClassificationJobProperties]
    #
    DescribeDocumentClassificationJobOutput = ::Struct.new(
      :document_classification_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeDocumentClassifierInput = ::Struct.new(
      :document_classifier_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_properties
    #   <p>An object that contains the properties associated with a document classifier.</p>
    #
    #   @return [DocumentClassifierProperties]
    #
    DescribeDocumentClassifierOutput = ::Struct.new(
      :document_classifier_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeDominantLanguageDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dominant_language_detection_job_properties
    #   <p>An object that contains the properties associated with a dominant language detection
    #         job.</p>
    #
    #   @return [DominantLanguageDetectionJobProperties]
    #
    DescribeDominantLanguageDetectionJobOutput = ::Struct.new(
      :dominant_language_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being described.</p>
    #
    #   @return [String]
    #
    DescribeEndpointInput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_properties
    #   <p>Describes information associated with the specific endpoint.</p>
    #
    #   @return [EndpointProperties]
    #
    DescribeEndpointOutput = ::Struct.new(
      :endpoint_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeEntitiesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities_detection_job_properties
    #   <p>An object that contains the properties associated with an entities detection job.</p>
    #
    #   @return [EntitiesDetectionJobProperties]
    #
    DescribeEntitiesDetectionJobOutput = ::Struct.new(
      :entities_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    #   @return [String]
    #
    DescribeEntityRecognizerInput = ::Struct.new(
      :entity_recognizer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_properties
    #   <p>Describes information associated with an entity recognizer.</p>
    #
    #   @return [EntityRecognizerProperties]
    #
    DescribeEntityRecognizerOutput = ::Struct.new(
      :entity_recognizer_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job.</p>
    #
    #   @return [String]
    #
    DescribeEventsDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events_detection_job_properties
    #   <p>An object that contains the properties associated with an event detection job.</p>
    #
    #   @return [EventsDetectionJobProperties]
    #
    DescribeEventsDetectionJobOutput = ::Struct.new(
      :events_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeKeyPhrasesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_phrases_detection_job_properties
    #   <p>An object that contains the properties associated with a key phrases detection job.
    #       </p>
    #
    #   @return [KeyPhrasesDetectionJobProperties]
    #
    DescribeKeyPhrasesDetectionJobOutput = ::Struct.new(
      :key_phrases_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribePiiEntitiesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pii_entities_detection_job_properties
    #   <p>Provides information about a PII entities detection job.</p>
    #
    #   @return [PiiEntitiesDetectionJobProperties]
    #
    DescribePiiEntitiesDetectionJobOutput = ::Struct.new(
      :pii_entities_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the policy to describe.</p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_policy
    #   <p>The JSON body of the resource-based policy.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The time at which the policy was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
    #         new revision ID, and it deletes the prior version of the policy.</p>
    #
    #   @return [String]
    #
    DescribeResourcePolicyOutput = ::Struct.new(
      :resource_policy,
      :creation_time,
      :last_modified_time,
      :policy_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeSentimentDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sentiment_detection_job_properties
    #   <p>An object that contains the properties associated with a sentiment detection job.</p>
    #
    #   @return [SentimentDetectionJobProperties]
    #
    DescribeSentimentDetectionJobOutput = ::Struct.new(
      :sentiment_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    #   @return [String]
    #
    DescribeTargetedSentimentDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targeted_sentiment_detection_job_properties
    #   <p>An object that contains the properties associated with a targeted sentiment detection job.</p>
    #
    #   @return [TargetedSentimentDetectionJobProperties]
    #
    DescribeTargetedSentimentDetectionJobOutput = ::Struct.new(
      :targeted_sentiment_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier assigned by the user to the detection job.</p>
    #
    #   @return [String]
    #
    DescribeTopicsDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute topics_detection_job_properties
    #   <p>The list of properties for the requested job.</p>
    #
    #   @return [TopicsDetectionJobProperties]
    #
    DescribeTopicsDetectionJobOutput = ::Struct.new(
      :topics_detection_job_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. Each string should contain at least 20 characters and must contain
    #         fewer that 5,000 bytes of UTF-8 encoded characters.</p>
    #
    #   @return [String]
    #
    DetectDominantLanguageInput = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectDominantLanguageInput "\
          "text=\"[SENSITIVE]\">"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute languages
    #   <p>The languages that Amazon Comprehend detected in the input text. For each language, the
    #         response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend
    #         has in the accuracy of its inference. For more information about RFC 5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying Languages</a> on the
    #           <i>IETF Tools</i> web site.</p>
    #
    #   @return [Array<DominantLanguage>]
    #
    DetectDominantLanguageOutput = ::Struct.new(
      :languages,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectDominantLanguageOutput [SENSITIVE]>"
      end
    end

    # @!attribute text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #            <p>If your request includes the endpoint for a custom entity recognition model, Amazon
    #         Comprehend uses the language of your custom model, and it ignores any language code that you
    #         specify here.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name of an endpoint that is associated with a custom entity
    #         recognition model. Provide an endpoint if you want to detect entities by using your own custom
    #         model instead of the default model that is used by Amazon Comprehend.</p>
    #            <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and
    #         it ignores any language code that you provide in your request.</p>
    #            <p>For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    #   @return [String]
    #
    DetectEntitiesInput = ::Struct.new(
      :text,
      :language_code,
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectEntitiesInput "\
          "text=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}, "\
          "endpoint_arn=#{endpoint_arn || 'nil'}>"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute entities
    #   <p>A collection of entities identified in the input text. For each entity, the response
    #         provides the entity text, entity type, where the entity text begins and ends, and the level of
    #         confidence that Amazon Comprehend has in the detection. </p>
    #            <p>If your request uses a custom entity recognition model, Amazon Comprehend detects the
    #         entities that the model is trained to recognize. Otherwise, it detects the default entity
    #         types. For a list of default entity types, see <a>how-entities</a>.</p>
    #
    #   @return [Array<Entity>]
    #
    DetectEntitiesOutput = ::Struct.new(
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectEntitiesOutput [SENSITIVE]>"
      end
    end

    # @!attribute text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    DetectKeyPhrasesInput = ::Struct.new(
      :text,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectKeyPhrasesInput "\
          "text=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute key_phrases
    #   <p>A collection of key phrases that Amazon Comprehend identified in the input text. For
    #         each key phrase, the response provides the text of the key phrase, where the key phrase begins
    #         and ends, and the level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection. </p>
    #
    #   @return [Array<KeyPhrase>]
    #
    DetectKeyPhrasesOutput = ::Struct.new(
      :key_phrases,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectKeyPhrasesOutput [SENSITIVE]>"
      end
    end

    # @!attribute text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    DetectPiiEntitiesInput = ::Struct.new(
      :text,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>A collection of PII entities identified in the input text. For each entity, the response
    #         provides the entity type, where the entity text begins and ends, and the level of confidence
    #         that Amazon Comprehend has in the detection.</p>
    #
    #   @return [Array<PiiEntity>]
    #
    DetectPiiEntitiesOutput = ::Struct.new(
      :entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    DetectSentimentInput = ::Struct.new(
      :text,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectSentimentInput "\
          "text=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute sentiment
    #   <p>The inferred sentiment that Amazon Comprehend has the highest level of confidence
    #         in.</p>
    #
    #   Enum, one of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #
    #   @return [String]
    #
    # @!attribute sentiment_score
    #   <p>An object that lists the sentiments, and their corresponding confidence
    #         levels.</p>
    #
    #   @return [SentimentScore]
    #
    DetectSentimentOutput = ::Struct.new(
      :sentiment,
      :sentiment_score,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectSentimentOutput [SENSITIVE]>"
      end
    end

    # @!attribute text
    #   <p>A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded
    #         characters.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt").</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt"]
    #
    #   @return [String]
    #
    DetectSyntaxInput = ::Struct.new(
      :text,
      :language_code,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectSyntaxInput "\
          "text=\"[SENSITIVE]\", "\
          "language_code=#{language_code || 'nil'}>"
      end
    end

    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute syntax_tokens
    #   <p>A collection of syntax tokens describing the text. For each token, the response provides
    #         the text, the token type, where the text begins and ends, and the level of confidence that
    #         Amazon Comprehend has that the token is correct. For a list of token types, see <a>how-syntax</a>.</p>
    #
    #   @return [Array<SyntaxToken>]
    #
    DetectSyntaxOutput = ::Struct.new(
      :syntax_tokens,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DetectSyntaxOutput [SENSITIVE]>"
      end
    end

    # <p>Specifies the class that categorizes the document being analyzed</p>
    #
    # @!attribute name
    #   <p>The name of the class.</p>
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The confidence score that Amazon Comprehend has this class correctly attributed.</p>
    #
    #   @return [Float]
    #
    DocumentClass = ::Struct.new(
      :name,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of document classification jobs. For more
    #       information, see the  operation. You can
    #       provide only one filter parameter in each request.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list based on job status. Returns only jobs with the specified status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    DocumentClassificationJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a document classification job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the document classification job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned to the document classification job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the document classification job. If the status is
    #           <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the document classification job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the document classification job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the document
    #         classification job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the document
    #         classification job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your document classification job. For more information, see <a href="https://docs.aws.amazon.com/vppc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    DocumentClassificationJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :document_classifier_arn,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentClassifierDataFormat
    #
    module DocumentClassifierDataFormat
      # No documentation available.
      #
      COMPREHEND_CSV = "COMPREHEND_CSV"

      # No documentation available.
      #
      AUGMENTED_MANIFEST = "AUGMENTED_MANIFEST"
    end

    # <p>Provides information for filtering a list of document classifiers. You can only specify
    #       one filtering parameter in a request. For more information, see the  operation.</p>
    #
    # @!attribute status
    #   <p>Filters the list of classifiers based on status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    # @!attribute document_classifier_name
    #   <p>The name that you assigned to the document classifier</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of classifiers based on the time that the classifier was submitted for
    #         processing. Returns only classifiers submitted before the specified time. Classifiers are
    #         returned in ascending order, oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of classifiers based on the time that the classifier was submitted for
    #         processing. Returns only classifiers submitted after the specified time. Classifiers are
    #         returned in descending order, newest to oldest.</p>
    #
    #   @return [Time]
    #
    DocumentClassifierFilter = ::Struct.new(
      :status,
      :document_classifier_name,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input properties for training a document classifier. </p>
    #          <p>For more information on how the input file is formatted, see <a>prep-classifier-data</a>. </p>
    #
    # @!attribute data_format
    #   <p>The format of your training data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPREHEND_CSV</code>: A two-column CSV file, where labels are provided in the
    #             first column, and documents are provided in the second. If you use this value, you must
    #             provide the <code>S3Uri</code> parameter in your request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
    #             SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
    #             object that contains a training document and its associated labels. </p>
    #                  <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
    #             in your request.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
    #         default.</p>
    #
    #   Enum, one of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #
    #   @return [String]
    #
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI for the input data. The S3 bucket must be in the same region as the API
    #         endpoint that you are calling. The URI can point to a single input file or it can provide the
    #         prefix for a collection of input files.</p>
    #            <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
    #         single file, Amazon Comprehend uses that file as input. If more than one file begins with the
    #         prefix, Amazon Comprehend uses all of them as input.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>COMPREHEND_CSV</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute test_s3_uri
    #   <p>The Amazon S3 URI for the input data. The Amazon S3 bucket must be in the same AWS Region
    #         as the API endpoint that you are calling. The URI can point to a single input file or it can
    #         provide the prefix for a collection of input files. </p>
    #
    #   @return [String]
    #
    # @!attribute label_delimiter
    #   <p>Indicates the delimiter used to separate each label for training a multi-label classifier.
    #         The default delimiter between labels is a pipe (|). You can use a different character as a
    #         delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the
    #         training documents use a delimiter other than the default or the delimiter you specify, the
    #         labels on that line will be combined to make a single unique label, such as
    #         LABELLABELLABEL.</p>
    #
    #   @return [String]
    #
    # @!attribute augmented_manifests
    #   <p>A list of augmented manifest files that provide training data for your custom model. An
    #         augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    #         Truth.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>AUGMENTED_MANIFEST</code>.</p>
    #
    #   @return [Array<AugmentedManifestsListItem>]
    #
    DocumentClassifierInputDataConfig = ::Struct.new(
      :data_format,
      :s3_uri,
      :test_s3_uri,
      :label_delimiter,
      :augmented_manifests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentClassifierMode
    #
    module DocumentClassifierMode
      # No documentation available.
      #
      MULTI_CLASS = "MULTI_CLASS"

      # No documentation available.
      #
      MULTI_LABEL = "MULTI_LABEL"
    end

    # <p>Provides output results configuration parameters for custom classifier jobs. </p>
    #
    # @!attribute s3_uri
    #   <p>When you use the <code>OutputDataConfig</code> object while creating a custom
    #         classifier, you specify the Amazon S3 location where you want to write the confusion matrix.
    #         The URI must be in the same region as the API endpoint that you are calling. The location is
    #         used as the prefix for the actual location of this output file.</p>
    #            <p>When the custom classifier job is finished, the service creates the output file in a
    #         directory specific to the job. The <code>S3Uri</code> field contains the location of the
    #         output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
    #         confusion matrix.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job. The KmsKeyId can be one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>KMS Key Alias: <code>"alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ARN of a KMS Key Alias:
    #               <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DocumentClassifierOutputDataConfig = ::Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a document classifier.</p>
    #
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code for the language of the documents that the classifier was trained
    #         on.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the document classifier. If the status is <code>TRAINED</code> the
    #         classifier is ready to use. If the status is <code>FAILED</code> you can see additional
    #         information about why the classifier wasn't trained in the <code>Message</code> field.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Additional information about the status of the classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the document classifier was submitted for training.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that training the document classifier completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute training_start_time
    #   <p>Indicates the time when the training starts on documentation classifiers. You are billed
    #         for the time interval between this time and the value of TrainingEndTime. </p>
    #
    #   @return [Time]
    #
    # @!attribute training_end_time
    #   <p>The time that training of the document classifier was completed. Indicates the time when
    #         the training completes on documentation classifiers. You are billed for the time interval
    #         between this time and the value of TrainingStartTime.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the document classifier
    #         for training.</p>
    #
    #   @return [DocumentClassifierInputDataConfig]
    #
    # @!attribute output_data_config
    #   <p> Provides output results configuration parameters for custom classifier jobs.</p>
    #
    #   @return [DocumentClassifierOutputDataConfig]
    #
    # @!attribute classifier_metadata
    #   <p>Information about the document classifier, including the number of documents used for
    #         training the classifier, the number of documents used for test the classifier, and an accuracy
    #         rating.</p>
    #
    #   @return [ClassifierMetadata]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vppc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute mode
    #   <p>Indicates the mode in which the specific classifier was trained. This also indicates the
    #         format of input documents and the format of the confusion matrix. Each classifier can only be
    #         trained in one mode and this cannot be changed once the classifier is trained.</p>
    #
    #   Enum, one of: ["MULTI_CLASS", "MULTI_LABEL"]
    #
    #   @return [String]
    #
    # @!attribute model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name that you assigned to the document classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
    #         different AWS account to create the document classifier model in your AWS account.</p>
    #
    #   @return [String]
    #
    DocumentClassifierProperties = ::Struct.new(
      :document_classifier_arn,
      :language_code,
      :status,
      :message,
      :submit_time,
      :end_time,
      :training_start_time,
      :training_end_time,
      :input_data_config,
      :output_data_config,
      :classifier_metadata,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      :mode,
      :model_kms_key_id,
      :version_name,
      :source_model_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::DocumentClassifierProperties "\
          "document_classifier_arn=#{document_classifier_arn || 'nil'}, "\
          "language_code=#{language_code || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "message=#{message || 'nil'}, "\
          "submit_time=#{submit_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "training_start_time=#{training_start_time || 'nil'}, "\
          "training_end_time=#{training_end_time || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "output_data_config=#{output_data_config || 'nil'}, "\
          "classifier_metadata=\"[SENSITIVE]\", "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "volume_kms_key_id=#{volume_kms_key_id || 'nil'}, "\
          "vpc_config=#{vpc_config || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "model_kms_key_id=#{model_kms_key_id || 'nil'}, "\
          "version_name=#{version_name || 'nil'}, "\
          "source_model_arn=#{source_model_arn || 'nil'}>"
      end
    end

    # <p>Describes information about a document classifier and its versions.</p>
    #
    # @!attribute document_classifier_name
    #   <p>The name that you assigned the document classifier.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_versions
    #   <p>The number of versions you created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute latest_version_created_at
    #   <p>The time that the latest document classifier version was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_version_name
    #   <p>The version name you assigned to the latest document classifier version.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_status
    #   <p>Provides the status of the latest document classifier version.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    DocumentClassifierSummary = ::Struct.new(
      :document_classifier_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one of the label or labels that categorize the document being analyzed.</p>
    #
    # @!attribute name
    #   <p>The name of the label.</p>
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The confidence score that Amazon Comprehend has this label correctly attributed.</p>
    #
    #   @return [Float]
    #
    DocumentLabel = ::Struct.new(
      :name,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentReadAction
    #
    module DocumentReadAction
      # No documentation available.
      #
      TEXTRACT_DETECT_DOCUMENT_TEXT = "TEXTRACT_DETECT_DOCUMENT_TEXT"

      # No documentation available.
      #
      TEXTRACT_ANALYZE_DOCUMENT = "TEXTRACT_ANALYZE_DOCUMENT"
    end

    # Includes enum constants for DocumentReadFeatureTypes
    #
    module DocumentReadFeatureTypes
      # No documentation available.
      #
      TABLES = "TABLES"

      # No documentation available.
      #
      FORMS = "FORMS"
    end

    # Includes enum constants for DocumentReadMode
    #
    module DocumentReadMode
      # No documentation available.
      #
      SERVICE_DEFAULT = "SERVICE_DEFAULT"

      # No documentation available.
      #
      FORCE_DOCUMENT_READ_ACTION = "FORCE_DOCUMENT_READ_ACTION"
    end

    # <p>The input properties for a topic detection job.</p>
    #
    # @!attribute document_read_action
    #   <p>This enum field will start with two values which will apply to PDFs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TEXTRACT_DETECT_DOCUMENT_TEXT</code> - The service calls DetectDocumentText
    #             for PDF documents per page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEXTRACT_ANALYZE_DOCUMENT</code> - The service calls AnalyzeDocument for PDF
    #             documents per page.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #
    #   @return [String]
    #
    # @!attribute document_read_mode
    #   <p>This enum field provides two values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_DEFAULT</code> - use service defaults for Document reading. For
    #             Digital PDF it would mean using an internal parser instead of Textract APIs</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DOCUMENT_READ_ACTION</code> - Always use specified action for
    #             DocumentReadAction, including Digital PDF. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #
    #   @return [String]
    #
    # @!attribute feature_types
    #   <p>Specifies how the text in an input file should be processed:</p>
    #
    #   @return [Array<String>]
    #
    DocumentReaderConfig = ::Struct.new(
      :document_read_action,
      :document_read_mode,
      :feature_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the code for the dominant language in the input text and the level of
    #       confidence that Amazon Comprehend has in the accuracy of the detection.</p>
    #
    # @!attribute language_code
    #   <p>The RFC 5646 language code for the dominant language. For more information about RFC
    #         5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying
    #           Languages</a> on the <i>IETF Tools</i> web site.</p>
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #
    #   @return [Float]
    #
    DominantLanguage = ::Struct.new(
      :language_code,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the
    #       operation.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    DominantLanguageDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a dominant language detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the dominant language detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
    #         fully qualified identifier for the job. It includes the AWS account, Region, and the job ID.
    #         The format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned to the dominant language detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the dominant language detection job. If the status is
    #           <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description for the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the dominant language detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the dominant language detection job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the dominant language
    #         detection job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the dominant language
    #         detection job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your dominant language detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    DominantLanguageDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter used to determine which endpoints are returned. You can filter jobs on their
    #       name, model, status, or the date and time that they were created. You can only set one filter
    #       at a time. </p>
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the status of the endpoint being returned. Possible values are: Creating, Ready,
    #         Updating, Deleting, Failed.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute creation_time_before
    #   <p>Specifies a date before which the returned endpoint or endpoints were created.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time_after
    #   <p>Specifies a date after which the returned endpoint or endpoints were created.</p>
    #
    #   @return [Time]
    #
    EndpointFilter = ::Struct.new(
      :model_arn,
      :status,
      :creation_time_before,
      :creation_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies information about the specified endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the status of the endpoint. Because the endpoint updates and creation are
    #         asynchronous, so customers will need to wait for the endpoint to be <code>Ready</code> status
    #         before making inference requests.</p>
    #
    #   Enum, one of: ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Specifies a reason for failure in cases of <code>Failed</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_model_arn
    #   <p>ARN of the new model to use for updating an existing endpoint. This ARN is going to be
    #         different from the model ARN when the update is in progress</p>
    #
    #   @return [String]
    #
    # @!attribute desired_inference_units
    #   <p>The desired number of inference units to be used by the model using this endpoint.
    #
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_inference_units
    #   <p>The number of inference units currently used by the model using this endpoint.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The creation date and time of the endpoint.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The date and time that the endpoint was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    #
    #   @return [String]
    #
    # @!attribute desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer KMS
    #         key.</p>
    #
    #   @return [String]
    #
    EndpointProperties = ::Struct.new(
      :endpoint_arn,
      :status,
      :message,
      :model_arn,
      :desired_model_arn,
      :desired_inference_units,
      :current_inference_units,
      :creation_time,
      :last_modified_time,
      :data_access_role_arn,
      :desired_data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointStatus
    #
    module EndpointStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      IN_SERVICE = "IN_SERVICE"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    EntitiesDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an entities detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the entities detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned the entities detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the entities detection job. If the status is <code>FAILED</code>,
    #         the <code>Message</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the entities detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the entities detection job completed</p>
    #
    #   @return [Time]
    #
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the entities detection
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the entities detection
    #         job. </p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    EntitiesDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :entity_recognizer_arn,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an entity. </p>
    #          <p> </p>
    #
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The entity's type.</p>
    #
    #   Enum, one of: ["PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The text of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute begin_offset
    #   <p>A character offset in the input text that shows where the entity begins (the first
    #         character is at position 0). The offset returns the position of each UTF-8 code point in the
    #         string. A <i>code point</i> is the abstract character from a particular
    #         graphical representation. For example, a multi-byte UTF-8 character maps to a single code
    #         point.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>A character offset in the input text that shows where the entity ends. The offset
    #         returns the position of each UTF-8 code point in the string. A <i>code point</i>
    #         is the abstract character from a particular graphical representation. For example, a
    #         multi-byte UTF-8 character maps to a single code point. </p>
    #
    #   @return [Integer]
    #
    Entity = ::Struct.new(
      :score,
      :type,
      :text,
      :begin_offset,
      :end_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies one of the label or labels that categorize the personally identifiable
    #       information (PII) entity being analyzed.</p>
    #
    # @!attribute name
    #   <p>The name of the label.</p>
    #
    #   Enum, one of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #
    #   @return [Float]
    #
    EntityLabel = ::Struct.new(
      :name,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the annotations associated with a entity recognizer.</p>
    #
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the annotations for an entity recognizer are
    #         located. The URI must be in the same region as the API endpoint that you are calling.</p>
    #
    #   @return [String]
    #
    # @!attribute test_s3_uri
    #   <p>This specifies the Amazon S3 location where the test annotations for an entity recognizer
    #         are located. The URI must be in the same AWS Region as the API endpoint that you are
    #         calling.</p>
    #
    #   @return [String]
    #
    EntityRecognizerAnnotations = ::Struct.new(
      :s3_uri,
      :test_s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityRecognizerDataFormat
    #
    module EntityRecognizerDataFormat
      # No documentation available.
      #
      COMPREHEND_CSV = "COMPREHEND_CSV"

      # No documentation available.
      #
      AUGMENTED_MANIFEST = "AUGMENTED_MANIFEST"
    end

    # <p>Describes the training documents submitted with an entity recognizer.</p>
    #
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the training documents for an entity recognizer
    #         are located. The URI must be in the same region as the API endpoint that you are
    #         calling.</p>
    #
    #   @return [String]
    #
    # @!attribute test_s3_uri
    #   <p> Specifies the Amazon S3 location where the test documents for an entity recognizer are
    #         located. The URI must be in the same AWS Region as the API endpoint that you are
    #         calling.</p>
    #
    #   @return [String]
    #
    # @!attribute input_format
    #   <p> Specifies how the text in an input file should be processed. This is optional, and the
    #         default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.
    #         Use this option when you are processing large documents, such as newspaper articles or
    #         scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.
    #         Use this option when you are processing many short documents, such as text messages.</p>
    #
    #   Enum, one of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #
    #   @return [String]
    #
    EntityRecognizerDocuments = ::Struct.new(
      :s3_uri,
      :test_s3_uri,
      :input_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the entity recognizer submitted with an entity recognizer.</p>
    #
    # @!attribute s3_uri
    #   <p>Specifies the Amazon S3 location where the entity list is located. The URI must be in the
    #         same region as the API endpoint that you are calling.</p>
    #
    #   @return [String]
    #
    EntityRecognizerEntityList = ::Struct.new(
      :s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the accuracy of an entity recognizer. </p>
    #
    # @!attribute precision
    #   <p>A measure of the usefulness of the recognizer results in the test data. High precision
    #         means that the recognizer returned substantially more relevant results than irrelevant ones.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute recall
    #   <p>A measure of how complete the recognizer results are for the test data. High recall means
    #         that the recognizer returned most of the relevant results.</p>
    #
    #   @return [Float]
    #
    # @!attribute f1_score
    #   <p>A measure of how accurate the recognizer results are for the test data. It is derived from
    #         the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
    #         harmonic average of the two scores. For plain text entity recognizer models, the range is 0 to 100,
    #         where 100 is the best score. For PDF/Word entity recognizer models, the range is 0 to 1,
    #         where 1 is the best score.
    #       </p>
    #
    #   @return [Float]
    #
    EntityRecognizerEvaluationMetrics = ::Struct.new(
      :precision,
      :recall,
      :f1_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of entity recognizers. You can only specify one
    #       filtering parameter in a request. For more information, see the  operation./></p>
    #
    # @!attribute status
    #   <p>The status of an entity recognizer.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    # @!attribute recognizer_name
    #   <p>The name that you assigned the entity recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of entities based on the time that the list was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of entities based on the time that the list was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    EntityRecognizerFilter = ::Struct.new(
      :status,
      :recognizer_name,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the format and location of the input data.</p>
    #
    # @!attribute data_format
    #   <p>The format of your training data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPREHEND_CSV</code>: A CSV file that supplements your training documents. The
    #             CSV file contains information about the custom entities that your trained model will
    #             detect. The required format of the file depends on whether you are providing annotations
    #             or an entity list.</p>
    #                  <p>If you use this value, you must provide your CSV file by using either the
    #               <code>Annotations</code> or <code>EntityList</code> parameters. You must provide your
    #             training documents by using the <code>Documents</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
    #             SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
    #             object that contains a training document and its labels. Each label annotates a named
    #             entity in the training document. </p>
    #                  <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
    #             in your request.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
    #         default.</p>
    #
    #   Enum, one of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #
    #   @return [String]
    #
    # @!attribute entity_types
    #   <p>The entity types in the labeled training data that Amazon Comprehend uses to train the
    #         custom entity recognizer. Any entity types that you don't specify are ignored.</p>
    #            <p>A maximum of 25 entity types can be used at one time to train an entity recognizer. Entity
    #         types must not contain the following invalid characters: \n (line break), \\n (escaped line
    #         break), \r (carriage return), \\r (escaped carriage return), \t (tab), \\t (escaped tab),
    #         space, and , (comma). </p>
    #
    #   @return [Array<EntityTypesListItem>]
    #
    # @!attribute documents
    #   <p>The S3 location of the folder that contains the training documents for your custom entity
    #         recognizer.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>COMPREHEND_CSV</code>.</p>
    #
    #   @return [EntityRecognizerDocuments]
    #
    # @!attribute annotations
    #   <p>The S3 location of the CSV file that annotates your training documents.</p>
    #
    #   @return [EntityRecognizerAnnotations]
    #
    # @!attribute entity_list
    #   <p>The S3 location of the CSV file that has the entity list for your custom entity
    #         recognizer.</p>
    #
    #   @return [EntityRecognizerEntityList]
    #
    # @!attribute augmented_manifests
    #   <p>A list of augmented manifest files that provide training data for your custom model. An
    #         augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    #         Truth.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>AUGMENTED_MANIFEST</code>.</p>
    #
    #   @return [Array<AugmentedManifestsListItem>]
    #
    EntityRecognizerInputDataConfig = ::Struct.new(
      :data_format,
      :entity_types,
      :documents,
      :annotations,
      :entity_list,
      :augmented_manifests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about an entity recognizer.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute number_of_trained_documents
    #   <p> The number of documents in the input data that were used to train the entity recognizer.
    #         Typically this is 80 to 90 percent of the input documents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_test_documents
    #   <p> The number of documents in the input data that were used to test the entity recognizer.
    #         Typically this is 10 to 20 percent of the input documents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute evaluation_metrics
    #   <p>Detailed information about the accuracy of an entity recognizer.</p>
    #
    #   @return [EntityRecognizerEvaluationMetrics]
    #
    # @!attribute entity_types
    #   <p>Entity types from the metadata of an entity recognizer.</p>
    #
    #   @return [Array<EntityRecognizerMetadataEntityTypesListItem>]
    #
    EntityRecognizerMetadata = ::Struct.new(
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics,
      :entity_types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::EntityRecognizerMetadata [SENSITIVE]>"
      end
    end

    # <p>Individual item from the list of entity types in the metadata of an entity
    #       recognizer.</p>
    #
    # @!attribute type
    #   <p>Type of entity from the list of entity types in the metadata of an entity recognizer.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_metrics
    #   <p>Detailed information about the accuracy of the entity recognizer for a specific item on
    #         the list of entity types. </p>
    #
    #   @return [EntityTypesEvaluationMetrics]
    #
    # @!attribute number_of_train_mentions
    #   <p>Indicates the number of times the given entity type was seen in the training data. </p>
    #
    #   @return [Integer]
    #
    EntityRecognizerMetadataEntityTypesListItem = ::Struct.new(
      :type,
      :evaluation_metrics,
      :number_of_train_mentions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes information about an entity recognizer.</p>
    #
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p> The language of the input documents. All documents must be in the same language. Only
    #         English ("en") is currently supported.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Provides the status of the entity recognizer.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p> A description of the status of the recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the recognizer was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the recognizer creation completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute training_start_time
    #   <p>The time that training of the entity recognizer started.</p>
    #
    #   @return [Time]
    #
    # @!attribute training_end_time
    #   <p>The time that training of the entity recognizer was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data properties of an entity recognizer.</p>
    #
    #   @return [EntityRecognizerInputDataConfig]
    #
    # @!attribute recognizer_metadata
    #   <p> Provides information about an entity recognizer.</p>
    #
    #   @return [EntityRecognizerMetadata]
    #
    # @!attribute data_access_role_arn
    #   <p> The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your custom entity recognizer. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats: </p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name you assigned to the entity recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
    #         different AWS account to create the entity recognizer model in your AWS account.</p>
    #
    #   @return [String]
    #
    EntityRecognizerProperties = ::Struct.new(
      :entity_recognizer_arn,
      :language_code,
      :status,
      :message,
      :submit_time,
      :end_time,
      :training_start_time,
      :training_end_time,
      :input_data_config,
      :recognizer_metadata,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      :model_kms_key_id,
      :version_name,
      :source_model_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Comprehend::Types::EntityRecognizerProperties "\
          "entity_recognizer_arn=#{entity_recognizer_arn || 'nil'}, "\
          "language_code=#{language_code || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "message=#{message || 'nil'}, "\
          "submit_time=#{submit_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "training_start_time=#{training_start_time || 'nil'}, "\
          "training_end_time=#{training_end_time || 'nil'}, "\
          "input_data_config=#{input_data_config || 'nil'}, "\
          "recognizer_metadata=\"[SENSITIVE]\", "\
          "data_access_role_arn=#{data_access_role_arn || 'nil'}, "\
          "volume_kms_key_id=#{volume_kms_key_id || 'nil'}, "\
          "vpc_config=#{vpc_config || 'nil'}, "\
          "model_kms_key_id=#{model_kms_key_id || 'nil'}, "\
          "version_name=#{version_name || 'nil'}, "\
          "source_model_arn=#{source_model_arn || 'nil'}>"
      end
    end

    # <p> Describes the information about an entity recognizer and its versions.</p>
    #
    # @!attribute recognizer_name
    #   <p> The name that you assigned the entity recognizer.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_versions
    #   <p> The number of versions you created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute latest_version_created_at
    #   <p> The time that the latest entity recognizer version was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_version_name
    #   <p> The version name you assigned to the latest entity recognizer version.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_status
    #   <p> Provides the status of the latest entity recognizer version.</p>
    #
    #   Enum, one of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #
    #   @return [String]
    #
    EntityRecognizerSummary = ::Struct.new(
      :recognizer_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityType
    #
    module EntityType
      # No documentation available.
      #
      PERSON = "PERSON"

      # No documentation available.
      #
      LOCATION = "LOCATION"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"

      # No documentation available.
      #
      COMMERCIAL_ITEM = "COMMERCIAL_ITEM"

      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      QUANTITY = "QUANTITY"

      # No documentation available.
      #
      TITLE = "TITLE"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>Detailed information about the accuracy of an entity recognizer for a specific entity
    #       type. </p>
    #
    # @!attribute precision
    #   <p>A measure of the usefulness of the recognizer results for a specific entity type in the
    #         test data. High precision means that the recognizer returned substantially more relevant
    #         results than irrelevant ones. </p>
    #
    #   @return [Float]
    #
    # @!attribute recall
    #   <p>A measure of how complete the recognizer results are for a specific entity type in the
    #         test data. High recall means that the recognizer returned most of the relevant results.</p>
    #
    #   @return [Float]
    #
    # @!attribute f1_score
    #   <p>A measure of how accurate the recognizer results are for a specific entity type in the
    #         test data. It is derived from the <code>Precision</code> and <code>Recall</code> values. The
    #           <code>F1Score</code> is the harmonic average of the two scores. The highest score is 1, and
    #         the worst score is 0. </p>
    #
    #   @return [Float]
    #
    EntityTypesEvaluationMetrics = ::Struct.new(
      :precision,
      :recall,
      :f1_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
    #       custom entity recognizer.</p>
    #
    # @!attribute type
    #   <p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
    #         custom entity recognizer.</p>
    #            <p>Entity types must not contain the following invalid characters: \n (line break), \\n
    #         (escaped line break, \r (carriage return), \\r (escaped carriage return), \t (tab), \\t
    #         (escaped tab), space, and , (comma).</p>
    #
    #   @return [String]
    #
    EntityTypesListItem = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of event detection jobs.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the events detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    EventsDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about an events detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the events detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name you assigned the events detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the events detection job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of the events detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the events detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the events detection job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the events detection
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the events detection
    #         job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identify and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute target_event_types
    #   <p>The types of events that are detected by the job.</p>
    #
    #   @return [Array<String>]
    #
    EventsDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :target_event_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to import.</p>
    #
    #   @return [String]
    #
    # @!attribute model_name
    #   <p>The name to assign to the custom model that is created in Amazon Comprehend by this
    #         import.</p>
    #
    #   @return [String]
    #
    # @!attribute version_name
    #   <p>The version name given to the custom model that is created by this import. Version names
    #         can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)
    #         are allowed. The version name must be unique among all models with the same classifier name in
    #         the account/AWS Region.</p>
    #
    #   @return [String]
    #
    # @!attribute model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that allows
    #         Amazon Comprehend to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom
    #         model.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the custom model that is created by this import. A tag is a
    #         key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a
    #         tag with "Sales" as the key might be added to a resource to indicate its use by the sales
    #         department.</p>
    #
    #   @return [Array<Tag>]
    #
    ImportModelInput = ::Struct.new(
      :source_model_arn,
      :model_name,
      :version_name,
      :model_kms_key_id,
      :data_access_role_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model being imported.</p>
    #
    #   @return [String]
    #
    ImportModelOutput = ::Struct.new(
      :model_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input properties for an inference job.</p>
    #
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI for the input data. The URI must be in same region as the API
    #         endpoint that you are calling. The URI can point to a single input file or it can provide the
    #         prefix for a collection of data files. </p>
    #            <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
    #         single file, Amazon Comprehend uses that file as input. If more than one file begins with the
    #         prefix, Amazon Comprehend uses all of them as input.</p>
    #
    #   @return [String]
    #
    # @!attribute input_format
    #   <p>Specifies how the text in an input file should be processed:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DOC_PER_FILE</code> - Each file is considered a separate document. Use
    #             this option when you are processing large documents, such as newspaper articles or
    #             scientific papers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONE_DOC_PER_LINE</code> - Each line in a file is considered a separate
    #             document. Use this option when you are processing many short documents, such as text
    #             messages.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #
    #   @return [String]
    #
    # @!attribute document_reader_config
    #   <p>The document reader config field applies only for InputDataConfig of
    #         StartEntitiesDetectionJob. </p>
    #            <p>Use DocumentReaderConfig to provide specifications about how you want your inference
    #         documents read. Currently it applies for PDF documents in StartEntitiesDetectionJob custom
    #         inference.</p>
    #
    #   @return [DocumentReaderConfig]
    #
    InputDataConfig = ::Struct.new(
      :s3_uri,
      :input_format,
      :document_reader_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InputFormat
    #
    module InputFormat
      # No documentation available.
      #
      ONE_DOC_PER_FILE = "ONE_DOC_PER_FILE"

      # No documentation available.
      #
      ONE_DOC_PER_LINE = "ONE_DOC_PER_LINE"
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

    # <p>The filter specified for the operation is invalid. Specify a different
    #       filter.</p>
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

    # <p>The request is invalid.</p>
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

    # <p>The specified job was not found. Check the job ID and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    JobNotFoundException = ::Struct.new(
      :message,
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
      FAILED = "FAILED"

      # No documentation available.
      #
      STOP_REQUESTED = "STOP_REQUESTED"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Describes a key noun phrase.</p>
    #
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #
    #   @return [Float]
    #
    # @!attribute text
    #   <p>The text of a key noun phrase.</p>
    #
    #   @return [String]
    #
    # @!attribute begin_offset
    #   <p>A character offset in the input text that shows where the key phrase begins (the first
    #         character is at position 0). The offset returns the position of each UTF-8 code point in the
    #         string. A <i>code point</i> is the abstract character from a particular
    #         graphical representation. For example, a multi-byte UTF-8 character maps to a single code
    #         point.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>A character offset in the input text where the key phrase ends. The offset returns the
    #         position of each UTF-8 code point in the string. A <code>code point</code> is the abstract
    #         character from a particular graphical representation. For example, a multi-byte UTF-8
    #         character maps to a single code point.</p>
    #
    #   @return [Integer]
    #
    KeyPhrase = ::Struct.new(
      :score,
      :text,
      :begin_offset,
      :end_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    KeyPhrasesDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a key phrases detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the key phrases detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the key phrases detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned the key phrases detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the key phrases detection job. If the status is <code>FAILED</code>,
    #         the <code>Message</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the key phrases detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the key phrases detection job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the key phrases detection
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the key phrases detection
    #         job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your key phrases detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    KeyPhrasesDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The KMS customer managed key (CMK) entered cannot be validated. Verify the key and
    #       re-enter it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KmsKeyValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LanguageCode
    #
    module LanguageCode
      # No documentation available.
      #
      EN = "en"

      # No documentation available.
      #
      ES = "es"

      # No documentation available.
      #
      FR = "fr"

      # No documentation available.
      #
      DE = "de"

      # No documentation available.
      #
      IT = "it"

      # No documentation available.
      #
      PT = "pt"

      # No documentation available.
      #
      AR = "ar"

      # No documentation available.
      #
      HI = "hi"

      # No documentation available.
      #
      JA = "ja"

      # No documentation available.
      #
      KO = "ko"

      # No documentation available.
      #
      ZH = "zh"

      # No documentation available.
      #
      ZH_TW = "zh-TW"
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their names, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [DocumentClassificationJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListDocumentClassificationJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classification_job_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #
    #   @return [Array<DocumentClassificationJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListDocumentClassificationJobsOutput = ::Struct.new(
      :document_classification_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListDocumentClassifierSummariesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_summaries_list
    #   <p>The list of summaries of document classifiers.</p>
    #
    #   @return [Array<DocumentClassifierSummary>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListDocumentClassifierSummariesOutput = ::Struct.new(
      :document_classifier_summaries_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [DocumentClassifierFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListDocumentClassifiersInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #
    #   @return [Array<DocumentClassifierProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListDocumentClassifiersOutput = ::Struct.new(
      :document_classifier_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters that jobs that are returned. You can filter jobs on their name, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [DominantLanguageDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListDominantLanguageDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dominant_language_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<DominantLanguageDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListDominantLanguageDetectionJobsOutput = ::Struct.new(
      :dominant_language_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the endpoints that are returned. You can filter endpoints on their name, model,
    #         status, or the date and time that they were created. You can only set one filter at a time.
    #       </p>
    #
    #   @return [EndpointFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListEndpointsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_properties_list
    #   <p>Displays a list of endpoint properties being retrieved by the service in response to the
    #         request.</p>
    #
    #   @return [Array<EndpointProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListEndpointsOutput = ::Struct.new(
      :endpoint_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [EntitiesDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListEntitiesDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<EntitiesDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListEntitiesDetectionJobsOutput = ::Struct.new(
      :entities_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListEntityRecognizerSummariesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_summaries_list
    #   <p>The list entity recognizer summaries.</p>
    #
    #   @return [Array<EntityRecognizerSummary>]
    #
    # @!attribute next_token
    #   <p>The list entity recognizer summaries.</p>
    #
    #   @return [String]
    #
    ListEntityRecognizerSummariesOutput = ::Struct.new(
      :entity_recognizer_summaries_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the list of entities returned. You can filter on <code>Status</code>,
    #           <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
    #         at a time.</p>
    #
    #   @return [EntityRecognizerFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of results to return on each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListEntityRecognizersInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_properties_list
    #   <p>The list of properties of an entity recognizer.</p>
    #
    #   @return [Array<EntityRecognizerProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListEntityRecognizersOutput = ::Struct.new(
      :entity_recognizer_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [EventsDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page.</p>
    #
    #   @return [Integer]
    #
    ListEventsDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<EventsDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListEventsDetectionJobsOutput = ::Struct.new(
      :events_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [KeyPhrasesDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListKeyPhrasesDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_phrases_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<KeyPhrasesDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListKeyPhrasesDetectionJobsOutput = ::Struct.new(
      :key_phrases_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [PiiEntitiesDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page.</p>
    #
    #   @return [Integer]
    #
    ListPiiEntitiesDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pii_entities_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<PiiEntitiesDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListPiiEntitiesDetectionJobsOutput = ::Struct.new(
      :pii_entities_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [SentimentDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListSentimentDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sentiment_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<SentimentDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListSentimentDetectionJobsOutput = ::Struct.new(
      :sentiment_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are
    #         querying.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the Amazon Comprehend resource being queried. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    #   @return [TargetedSentimentDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListTargetedSentimentDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targeted_sentiment_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<TargetedSentimentDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListTargetedSentimentDetectionJobsOutput = ::Struct.new(
      :targeted_sentiment_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the
    #         date and time that they were submitted. You can set only one filter at a time.</p>
    #
    #   @return [TopicsDetectionJobFilter]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    #   @return [Integer]
    #
    ListTopicsDetectionJobsInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute topics_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #
    #   @return [Array<TopicsDetectionJobProperties>]
    #
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListTopicsDetectionJobsOutput = ::Struct.new(
      :topics_detection_job_properties_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModelStatus
    #
    module ModelStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      TRAINING = "TRAINING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      STOP_REQUESTED = "STOP_REQUESTED"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      IN_ERROR = "IN_ERROR"

      # No documentation available.
      #
      TRAINED = "TRAINED"
    end

    # <p>Provides configuration parameters for the output of inference jobs.</p>
    #          <p></p>
    #
    # @!attribute s3_uri
    #   <p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
    #         specify the Amazon S3 location where you want to write the output data. The URI must be in the
    #         same region as the API endpoint that you are calling. The location is used as the prefix for
    #         the actual location of the output file.</p>
    #            <p>When the topic detection job is finished, the service creates an output file in a
    #         directory specific to the job. The <code>S3Uri</code> field contains the location of the
    #         output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
    #         ouput of the operation.</p>
    #            <p>
    #         For a PII entity detection job, the output file is plain text, not a compressed archive.
    #         The output file name is the same as the input file, with <code>.out</code> appended at the end.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job. The KmsKeyId can be one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>KMS Key Alias: <code>"alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ARN of a KMS Key Alias:
    #               <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    OutputDataConfig = ::Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies the part of speech represented by the token and gives the confidence that
    #       Amazon Comprehend has that the part of speech was correctly identified. For more information
    #       about the parts of speech that Amazon Comprehend can identify, see <a>how-syntax</a>.</p>
    #
    # @!attribute tag
    #   <p>Identifies the part of speech that the token represents.</p>
    #
    #   Enum, one of: ["ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"]
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>The confidence that Amazon Comprehend has that the part of speech was correctly
    #         identified.</p>
    #
    #   @return [Float]
    #
    PartOfSpeechTag = ::Struct.new(
      :tag,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PartOfSpeechTagType
    #
    module PartOfSpeechTagType
      # No documentation available.
      #
      ADJ = "ADJ"

      # No documentation available.
      #
      ADP = "ADP"

      # No documentation available.
      #
      ADV = "ADV"

      # No documentation available.
      #
      AUX = "AUX"

      # No documentation available.
      #
      CONJ = "CONJ"

      # No documentation available.
      #
      CCONJ = "CCONJ"

      # No documentation available.
      #
      DET = "DET"

      # No documentation available.
      #
      INTJ = "INTJ"

      # No documentation available.
      #
      NOUN = "NOUN"

      # No documentation available.
      #
      NUM = "NUM"

      # No documentation available.
      #
      O = "O"

      # No documentation available.
      #
      PART = "PART"

      # No documentation available.
      #
      PRON = "PRON"

      # No documentation available.
      #
      PROPN = "PROPN"

      # No documentation available.
      #
      PUNCT = "PUNCT"

      # No documentation available.
      #
      SCONJ = "SCONJ"

      # No documentation available.
      #
      SYM = "SYM"

      # No documentation available.
      #
      VERB = "VERB"
    end

    # <p>Provides information for filtering a list of PII entity detection jobs.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    PiiEntitiesDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a PII entities detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the PII entities detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the PII entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned the PII entities detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the PII entities detection job. If the status is
    #         <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the PII entities detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the PII entities detection job completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the PII entities
    #         detection job.</p>
    #
    #   @return [PiiOutputDataConfig]
    #
    # @!attribute redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    #
    #   @return [RedactionConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    #
    #   Enum, one of: ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #
    #   @return [String]
    #
    PiiEntitiesDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :redaction_config,
      :language_code,
      :data_access_role_arn,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PiiEntitiesDetectionMaskMode
    #
    module PiiEntitiesDetectionMaskMode
      # No documentation available.
      #
      MASK = "MASK"

      # No documentation available.
      #
      REPLACE_WITH_PII_ENTITY_TYPE = "REPLACE_WITH_PII_ENTITY_TYPE"
    end

    # Includes enum constants for PiiEntitiesDetectionMode
    #
    module PiiEntitiesDetectionMode
      # No documentation available.
      #
      ONLY_REDACTION = "ONLY_REDACTION"

      # No documentation available.
      #
      ONLY_OFFSETS = "ONLY_OFFSETS"
    end

    # <p>Provides information about a PII entity.</p>
    #
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #
    #   @return [Float]
    #
    # @!attribute type
    #   <p>The entity's type.</p>
    #
    #   Enum, one of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #
    #   @return [String]
    #
    # @!attribute begin_offset
    #   <p>A character offset in the input text that shows where the PII entity begins (the first
    #         character is at position 0). The offset returns the position of each UTF-8 code point in the
    #         string. A <i>code point</i> is the abstract character from a particular
    #         graphical representation. For example, a multi-byte UTF-8 character maps to a single code
    #         point.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>A character offset in the input text that shows where the PII entity ends. The offset
    #         returns the position of each UTF-8 code point in the string. A <i>code point</i>
    #         is the abstract character from a particular graphical representation. For example, a
    #         multi-byte UTF-8 character maps to a single code point.</p>
    #
    #   @return [Integer]
    #
    PiiEntity = ::Struct.new(
      :score,
      :type,
      :begin_offset,
      :end_offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PiiEntityType
    #
    module PiiEntityType
      # No documentation available.
      #
      BANK_ACCOUNT_NUMBER = "BANK_ACCOUNT_NUMBER"

      # No documentation available.
      #
      BANK_ROUTING = "BANK_ROUTING"

      # No documentation available.
      #
      CREDIT_DEBIT_NUMBER = "CREDIT_DEBIT_NUMBER"

      # No documentation available.
      #
      CREDIT_DEBIT_CVV = "CREDIT_DEBIT_CVV"

      # No documentation available.
      #
      CREDIT_DEBIT_EXPIRY = "CREDIT_DEBIT_EXPIRY"

      # No documentation available.
      #
      PIN = "PIN"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      ADDRESS = "ADDRESS"

      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      PHONE = "PHONE"

      # No documentation available.
      #
      SSN = "SSN"

      # No documentation available.
      #
      DATE_TIME = "DATE_TIME"

      # No documentation available.
      #
      PASSPORT_NUMBER = "PASSPORT_NUMBER"

      # No documentation available.
      #
      DRIVER_ID = "DRIVER_ID"

      # No documentation available.
      #
      URL = "URL"

      # No documentation available.
      #
      AGE = "AGE"

      # No documentation available.
      #
      USERNAME = "USERNAME"

      # No documentation available.
      #
      PASSWORD = "PASSWORD"

      # No documentation available.
      #
      AWS_ACCESS_KEY = "AWS_ACCESS_KEY"

      # No documentation available.
      #
      AWS_SECRET_KEY = "AWS_SECRET_KEY"

      # No documentation available.
      #
      IP_ADDRESS = "IP_ADDRESS"

      # No documentation available.
      #
      MAC_ADDRESS = "MAC_ADDRESS"

      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      LICENSE_PLATE = "LICENSE_PLATE"

      # No documentation available.
      #
      VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER"

      # No documentation available.
      #
      UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER"

      # No documentation available.
      #
      CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER"

      # No documentation available.
      #
      US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"

      # No documentation available.
      #
      UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"

      # No documentation available.
      #
      IN_PERMANENT_ACCOUNT_NUMBER = "IN_PERMANENT_ACCOUNT_NUMBER"

      # No documentation available.
      #
      IN_NREGA = "IN_NREGA"

      # No documentation available.
      #
      INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER"

      # No documentation available.
      #
      SWIFT_CODE = "SWIFT_CODE"

      # No documentation available.
      #
      UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER"

      # No documentation available.
      #
      CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER"

      # No documentation available.
      #
      IN_AADHAAR = "IN_AADHAAR"

      # No documentation available.
      #
      IN_VOTER_NUMBER = "IN_VOTER_NUMBER"
    end

    # <p>Provides configuration parameters for the output of PII entity detection jobs.</p>
    #
    # @!attribute s3_uri
    #   <p>When you use the <code>PiiOutputDataConfig</code> object with asynchronous operations,
    #         you specify the Amazon S3 location where you want to write the output data. </p>
    #            <p>
    #         For a PII entity detection job, the output file is plain text, not a compressed archive.
    #         The output file name is the same as the input file, with <code>.out</code> appended at the end.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job.</p>
    #
    #   @return [String]
    #
    PiiOutputDataConfig = ::Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_policy
    #   <p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a
    #         UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the
    #         attribute names and values in double quotes. If the JSON body is also enclosed in double
    #         quotes, then you must escape the double quotes that are inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute policy_revision_id
    #   <p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If
    #         you are creating a new policy that has no prior version, don't use this parameter. Amazon
    #         Comprehend creates the revision ID for you.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :resource_arn,
      :resource_policy,
      :policy_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
    #         new revision ID, and it deletes the prior version of the policy.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :policy_revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides configuration parameters for PII entity redaction.</p>
    #
    # @!attribute pii_entity_types
    #   <p>An array of the types of PII entities that Amazon Comprehend detects in the input text for
    #         your request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute mask_mode
    #   <p>Specifies whether the PII entity is redacted with the mask character or the entity
    #         type.</p>
    #
    #   Enum, one of: ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute mask_character
    #   <p>A character that replaces each character in the redacted PII entity.</p>
    #
    #   @return [String]
    #
    RedactionConfig = ::Struct.new(
      :pii_entity_types,
      :mask_mode,
      :mask_character,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource name is already in use. Use a different name and try your request
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of resources per account has been exceeded. Review the resources, and
    #       then try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource ARN was not found. Check the ARN and try your request again.</p>
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

    # <p>The specified resource is not available. Check the resource and try your request
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    SentimentDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a sentiment detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the sentiment detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned to the sentiment detection job</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the sentiment detection job. If the status is <code>FAILED</code>,
    #         the <code>Messages</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the sentiment detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the sentiment detection job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the sentiment detection
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the sentiment detection
    #         job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    SentimentDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its
    #       detection of sentiments.</p>
    #
    # @!attribute positive
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>POSITIVE</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute negative
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>NEGATIVE</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute neutral
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>NEUTRAL</code> sentiment.</p>
    #
    #   @return [Float]
    #
    # @!attribute mixed
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>MIXED</code> sentiment.</p>
    #
    #   @return [Float]
    #
    SentimentScore = ::Struct.new(
      :positive,
      :negative,
      :neutral,
      :mixed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SentimentType
    #
    module SentimentType
      # No documentation available.
      #
      POSITIVE = "POSITIVE"

      # No documentation available.
      #
      NEGATIVE = "NEGATIVE"

      # No documentation available.
      #
      NEUTRAL = "NEUTRAL"

      # No documentation available.
      #
      MIXED = "MIXED"
    end

    # Includes enum constants for Split
    #
    module Split
      # No documentation available.
      #
      TRAIN = "TRAIN"

      # No documentation available.
      #
      TEST = "TEST"
    end

    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) of the document classifier to use to process the
    #         job.</p>
    #
    #   @return [String]
    #
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your document classification job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the document classification job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartDocumentClassificationJobInput = ::Struct.new(
      :job_name,
      :document_classifier_arn,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of the job, use this identifier
    #         with the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. For details, use the  operation.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
    #             processing the request.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPED - The job was successfully stopped without completing.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartDocumentClassificationJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>An identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your dominant language detection job. For more information,
    #         see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the dominant language detection job. A tag is a key-value pair
    #         that adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as
    #         the key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartDominantLanguageDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
    #         fully qualified identifier for the job. It includes the AWS account, Region, and the job ID.
    #         The format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartDominantLanguageDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used
    #         by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a
    #         custom entity recognition job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language. You can
    #         specify any of the languages supported by Amazon Comprehend. If custom entities recognition is
    #         used, this parameter is ignored and the language used for training the model is used
    #         instead.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the entities detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartEntitiesDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :entity_recognizer_arn,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of job, use this identifier with
    #         the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
    #             processing the request.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPED - The job was successfully stopped without completing.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartEntitiesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the events detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute target_event_types
    #   <p>The types of events to detect in the input documents.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the events detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartEventsDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :target_event_types,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the events detection job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartEventsDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your key phrases detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the key phrases detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartKeyPhrasesDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the key phrase detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartKeyPhrasesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    #
    #   Enum, one of: ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #
    #   @return [String]
    #
    # @!attribute redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    #
    #   @return [RedactionConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the PII entities detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartPiiEntitiesDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :mode,
      :redaction_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the PII entity detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartPiiEntitiesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. </p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartSentimentDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartSentimentDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>The input properties for an inference job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. </p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">Role-based permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the targeted sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartTargetedSentimentDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartTargetedSentimentDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. The output is a compressed archive with two
    #         files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and
    #           <code>doc-topics.csv</code> that lists the documents associated with each topic</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role
    #         that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html auth-role-permissions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_topics
    #   <p>The number of topics to detect.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the topics detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    #   @return [Array<Tag>]
    #
    StartTopicsDetectionJobInput = ::Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :number_of_topics,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of the job, use this identifier
    #         with the <code>DescribeTopicDetectionJob</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the job: </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is
    #             available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the
    #               <code>DescribeTopicDetectionJob</code> operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartTopicsDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    #
    #   @return [String]
    #
    StopDominantLanguageDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopDominantLanguageDetectionJob</code> operation.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopDominantLanguageDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    #
    #   @return [String]
    #
    StopEntitiesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopEntitiesDetectionJob</code> operation.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopEntitiesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job to stop.</p>
    #
    #   @return [String]
    #
    StopEventsDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the events detection job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopEventsDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    #
    #   @return [String]
    #
    StopKeyPhrasesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopKeyPhrasesDetectionJob</code> operation.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopKeyPhrasesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    #
    #   @return [String]
    #
    StopPiiEntitiesDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The status of the PII entities detection job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopPiiEntitiesDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    #
    #   @return [String]
    #
    StopSentimentDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopSentimentDetectionJob</code> operation.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopSentimentDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    #
    #   @return [String]
    #
    StopTargetedSentimentDetectionJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #         <code>STOPPED</code> if the job was previously stopped with the
    #         <code>StopSentimentDetectionJob</code> operation.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopTargetedSentimentDetectionJobOutput = ::Struct.new(
      :job_id,
      :job_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier currently being
    #         trained.</p>
    #
    #   @return [String]
    #
    StopTrainingDocumentClassifierInput = ::Struct.new(
      :document_classifier_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopTrainingDocumentClassifierOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being
    #         trained.</p>
    #
    #   @return [String]
    #
    StopTrainingEntityRecognizerInput = ::Struct.new(
      :entity_recognizer_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopTrainingEntityRecognizerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SyntaxLanguageCode
    #
    module SyntaxLanguageCode
      # No documentation available.
      #
      EN = "en"

      # No documentation available.
      #
      ES = "es"

      # No documentation available.
      #
      FR = "fr"

      # No documentation available.
      #
      DE = "de"

      # No documentation available.
      #
      IT = "it"

      # No documentation available.
      #
      PT = "pt"
    end

    # <p>Represents a work in the input text that was recognized and assigned a part of speech.
    #       There is one syntax token record for each word in the source text.</p>
    #
    # @!attribute token_id
    #   <p>A unique identifier for a token.</p>
    #
    #   @return [Integer]
    #
    # @!attribute text
    #   <p>The word that was recognized in the source text.</p>
    #
    #   @return [String]
    #
    # @!attribute begin_offset
    #   <p>The zero-based offset from the beginning of the source text to the first character in the
    #         word.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset
    #   <p>The zero-based offset from the beginning of the source text to the last character in the
    #         word.</p>
    #
    #   @return [Integer]
    #
    # @!attribute part_of_speech
    #   <p>Provides the part of speech label and the confidence level that Amazon Comprehend has that
    #         the part of speech was correctly identified. For more information, see <a>how-syntax</a>.</p>
    #
    #   @return [PartOfSpeechTag]
    #
    SyntaxToken = ::Struct.new(
      :token_id,
      :text,
      :begin_offset,
      :end_offset,
      :part_of_speech,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For
    #       example, a tag with the key-value pair ‘Department’:’Sales’ might be added to a resource to
    #       indicate its use by a particular department. </p>
    #
    # @!attribute key
    #   <p>The initial part of a key-value pair that forms a tag associated with a given resource.
    #         For instance, if you want to show which resources are used by which departments, you might use
    #         “Department” as the key portion of the pair, with multiple possible values such as “sales,”
    #         “legal,” and “administration.” </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p> The second part of a key-value pair that forms a tag associated with a given resource.
    #         For instance, if you want to show which resources are used by which departments, you might use
    #         “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the
    #         sales department. </p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want
    #         to associate the tags. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum
    #         of 50 tags (both existing and pending) associated with a specific resource. </p>
    #
    #   @return [Array<Tag>]
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

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    #
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    TargetedSentimentDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a targeted sentiment detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the targeted sentiment detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name that you assigned to the targeted sentiment detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the targeted sentiment detection job. If the status is <code>FAILED</code>,
    #         the <code>Messages</code> field shows the reason for the failure.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the targeted sentiment detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the targeted sentiment detection job ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input properties for an inference job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>Provides configuration parameters for the output of inference jobs.</p>
    #            <p></p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #
    #   Enum, one of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #
    #   @return [String]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input
    #         data.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the
    #         targeted sentiment detection job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    TargetedSentimentDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The size of the input text exceeds the limit. Use a smaller document.</p>
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

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
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

    # <p>The request contains more tag keys than can be associated with a resource (50 tag keys per
    #       resource).</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagKeysException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request contains more tags than can be associated with a resource (50 tags per
    #       resource). The maximum number of tags includes both existing tags and those included in your
    #       current request. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information for filtering topic detection jobs. For more information, see
    #         .</p>
    #
    # @!attribute job_name
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>Filters the list of topic detection jobs based on job status. Returns only jobs with
    #         the specified status.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Only returns jobs submitted before the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #
    #   @return [Time]
    #
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Only returns jobs submitted after the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #
    #   @return [Time]
    #
    TopicsDetectionJobFilter = ::Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a topic detection job.</p>
    #
    # @!attribute job_id
    #   <p>The identifier assigned to the topic detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the AWS account, Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:topics-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the topic detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The current status of the topic detection job. If the status is <code>Failed</code>,
    #         the reason for the failure is shown in the <code>Message</code> field.</p>
    #
    #   Enum, one of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description for the status of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute submit_time
    #   <p>The time that the topic detection job was submitted for processing.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the topic detection job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute input_data_config
    #   <p>The input data configuration supplied when you created the topic detection
    #         job.</p>
    #
    #   @return [InputDataConfig]
    #
    # @!attribute output_data_config
    #   <p>The output data configuration supplied when you created the topic detection
    #         job.</p>
    #
    #   @return [OutputDataConfig]
    #
    # @!attribute number_of_topics
    #   <p>The number of topics to detect supplied when you created the topic detection job. The
    #         default is 10. </p>
    #
    #   @return [Integer]
    #
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your job data. </p>
    #
    #   @return [String]
    #
    # @!attribute volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    #   @return [VpcConfig]
    #
    TopicsDetectionJobProperties = ::Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :number_of_topics,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Comprehend can't process the language of the input text. For custom entity
    #       recognition APIs, only English, Spanish, French, Italian, German, or Portuguese are accepted.
    #       For a list of supported languages, see <a>supported-languages</a>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedLanguageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you
    #         want to remove the tags. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The initial part of a key-value pair that forms a tag being removed from a given resource.
    #         For example, a tag with "Sales" as the key might be added to a resource to indicate its use by
    #         the sales department. Keys must be unique and cannot be duplicated for a particular resource.
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

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_model_arn
    #   <p>The ARN of the new model to use when updating an existing endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>
    #
    #   @return [String]
    #
    UpdateEndpointInput = ::Struct.new(
      :endpoint_arn,
      :desired_model_arn,
      :desired_inference_units,
      :desired_data_access_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #       the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #         VPC</a>. </p>
    #
    # @!attribute security_group_ids
    #   <p>The ID number for a security group on an instance of your private VPC. Security groups on
    #         your VPC function serve as a virtual firewall to control inbound and outbound traffic and
    #         provides security for the resources that you’ll be accessing on the VPC. This ID number is
    #         preceded by "sg-", for instance: "sg-03b388029b0a285ea". For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Security
    #           Groups for your VPC</a>. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnets
    #   <p>The ID for each subnet being used in your private VPC. This subnet is a subset of the a
    #         range of IPv4 addresses used by the VPC and is specific to a given availability zone in the
    #         VPC’s region. This ID number is preceded by "subnet-", for instance:
    #         "subnet-04ccf456919e69055". For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html">VPCs and
    #           Subnets</a>. </p>
    #
    #   @return [Array<String>]
    #
    VpcConfig = ::Struct.new(
      :security_group_ids,
      :subnets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
