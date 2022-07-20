# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Comprehend
  module Stubs

    # Operation Stubber for BatchDetectDominantLanguage
    class BatchDetectDominantLanguage
      def self.default(visited=[])
        {
          result_list: ListOfDetectDominantLanguageResult.default(visited),
          error_list: BatchItemErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResultList'] = ListOfDetectDominantLanguageResult.stub(stub[:result_list]) unless stub[:result_list].nil?
        data['ErrorList'] = BatchItemErrorList.stub(stub[:error_list]) unless stub[:error_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchItemErrorList
    class BatchItemErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchItemErrorList')
        visited = visited + ['BatchItemErrorList']
        [
          BatchItemError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchItemError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchItemError
    class BatchItemError
      def self.default(visited=[])
        return nil if visited.include?('BatchItemError')
        visited = visited + ['BatchItemError']
        {
          index: 1,
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchItemError.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for ListOfDetectDominantLanguageResult
    class ListOfDetectDominantLanguageResult
      def self.default(visited=[])
        return nil if visited.include?('ListOfDetectDominantLanguageResult')
        visited = visited + ['ListOfDetectDominantLanguageResult']
        [
          BatchDetectDominantLanguageItemResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDetectDominantLanguageItemResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDetectDominantLanguageItemResult
    class BatchDetectDominantLanguageItemResult
      def self.default(visited=[])
        return nil if visited.include?('BatchDetectDominantLanguageItemResult')
        visited = visited + ['BatchDetectDominantLanguageItemResult']
        {
          index: 1,
          languages: ListOfDominantLanguages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetectDominantLanguageItemResult.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['Languages'] = ListOfDominantLanguages.stub(stub[:languages]) unless stub[:languages].nil?
        data
      end
    end

    # List Stubber for ListOfDominantLanguages
    class ListOfDominantLanguages
      def self.default(visited=[])
        return nil if visited.include?('ListOfDominantLanguages')
        visited = visited + ['ListOfDominantLanguages']
        [
          DominantLanguage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DominantLanguage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DominantLanguage
    class DominantLanguage
      def self.default(visited=[])
        return nil if visited.include?('DominantLanguage')
        visited = visited + ['DominantLanguage']
        {
          language_code: 'language_code',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DominantLanguage.new
        data = {}
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for BatchDetectEntities
    class BatchDetectEntities
      def self.default(visited=[])
        {
          result_list: ListOfDetectEntitiesResult.default(visited),
          error_list: BatchItemErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResultList'] = ListOfDetectEntitiesResult.stub(stub[:result_list]) unless stub[:result_list].nil?
        data['ErrorList'] = BatchItemErrorList.stub(stub[:error_list]) unless stub[:error_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfDetectEntitiesResult
    class ListOfDetectEntitiesResult
      def self.default(visited=[])
        return nil if visited.include?('ListOfDetectEntitiesResult')
        visited = visited + ['ListOfDetectEntitiesResult']
        [
          BatchDetectEntitiesItemResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDetectEntitiesItemResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDetectEntitiesItemResult
    class BatchDetectEntitiesItemResult
      def self.default(visited=[])
        return nil if visited.include?('BatchDetectEntitiesItemResult')
        visited = visited + ['BatchDetectEntitiesItemResult']
        {
          index: 1,
          entities: ListOfEntities.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetectEntitiesItemResult.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['Entities'] = ListOfEntities.stub(stub[:entities]) unless stub[:entities].nil?
        data
      end
    end

    # List Stubber for ListOfEntities
    class ListOfEntities
      def self.default(visited=[])
        return nil if visited.include?('ListOfEntities')
        visited = visited + ['ListOfEntities']
        [
          Entity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Entity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entity
    class Entity
      def self.default(visited=[])
        return nil if visited.include?('Entity')
        visited = visited + ['Entity']
        {
          score: 1.0,
          type: 'type',
          text: 'text',
          begin_offset: 1,
          end_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Entity.new
        data = {}
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data
      end
    end

    # Operation Stubber for BatchDetectKeyPhrases
    class BatchDetectKeyPhrases
      def self.default(visited=[])
        {
          result_list: ListOfDetectKeyPhrasesResult.default(visited),
          error_list: BatchItemErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResultList'] = ListOfDetectKeyPhrasesResult.stub(stub[:result_list]) unless stub[:result_list].nil?
        data['ErrorList'] = BatchItemErrorList.stub(stub[:error_list]) unless stub[:error_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfDetectKeyPhrasesResult
    class ListOfDetectKeyPhrasesResult
      def self.default(visited=[])
        return nil if visited.include?('ListOfDetectKeyPhrasesResult')
        visited = visited + ['ListOfDetectKeyPhrasesResult']
        [
          BatchDetectKeyPhrasesItemResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDetectKeyPhrasesItemResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDetectKeyPhrasesItemResult
    class BatchDetectKeyPhrasesItemResult
      def self.default(visited=[])
        return nil if visited.include?('BatchDetectKeyPhrasesItemResult')
        visited = visited + ['BatchDetectKeyPhrasesItemResult']
        {
          index: 1,
          key_phrases: ListOfKeyPhrases.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetectKeyPhrasesItemResult.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['KeyPhrases'] = ListOfKeyPhrases.stub(stub[:key_phrases]) unless stub[:key_phrases].nil?
        data
      end
    end

    # List Stubber for ListOfKeyPhrases
    class ListOfKeyPhrases
      def self.default(visited=[])
        return nil if visited.include?('ListOfKeyPhrases')
        visited = visited + ['ListOfKeyPhrases']
        [
          KeyPhrase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyPhrase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyPhrase
    class KeyPhrase
      def self.default(visited=[])
        return nil if visited.include?('KeyPhrase')
        visited = visited + ['KeyPhrase']
        {
          score: 1.0,
          text: 'text',
          begin_offset: 1,
          end_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyPhrase.new
        data = {}
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data
      end
    end

    # Operation Stubber for BatchDetectSentiment
    class BatchDetectSentiment
      def self.default(visited=[])
        {
          result_list: ListOfDetectSentimentResult.default(visited),
          error_list: BatchItemErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResultList'] = ListOfDetectSentimentResult.stub(stub[:result_list]) unless stub[:result_list].nil?
        data['ErrorList'] = BatchItemErrorList.stub(stub[:error_list]) unless stub[:error_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfDetectSentimentResult
    class ListOfDetectSentimentResult
      def self.default(visited=[])
        return nil if visited.include?('ListOfDetectSentimentResult')
        visited = visited + ['ListOfDetectSentimentResult']
        [
          BatchDetectSentimentItemResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDetectSentimentItemResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDetectSentimentItemResult
    class BatchDetectSentimentItemResult
      def self.default(visited=[])
        return nil if visited.include?('BatchDetectSentimentItemResult')
        visited = visited + ['BatchDetectSentimentItemResult']
        {
          index: 1,
          sentiment: 'sentiment',
          sentiment_score: SentimentScore.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetectSentimentItemResult.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['Sentiment'] = stub[:sentiment] unless stub[:sentiment].nil?
        data['SentimentScore'] = SentimentScore.stub(stub[:sentiment_score]) unless stub[:sentiment_score].nil?
        data
      end
    end

    # Structure Stubber for SentimentScore
    class SentimentScore
      def self.default(visited=[])
        return nil if visited.include?('SentimentScore')
        visited = visited + ['SentimentScore']
        {
          positive: 1.0,
          negative: 1.0,
          neutral: 1.0,
          mixed: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentScore.new
        data = {}
        data['Positive'] = Hearth::NumberHelper.serialize(stub[:positive])
        data['Negative'] = Hearth::NumberHelper.serialize(stub[:negative])
        data['Neutral'] = Hearth::NumberHelper.serialize(stub[:neutral])
        data['Mixed'] = Hearth::NumberHelper.serialize(stub[:mixed])
        data
      end
    end

    # Operation Stubber for BatchDetectSyntax
    class BatchDetectSyntax
      def self.default(visited=[])
        {
          result_list: ListOfDetectSyntaxResult.default(visited),
          error_list: BatchItemErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResultList'] = ListOfDetectSyntaxResult.stub(stub[:result_list]) unless stub[:result_list].nil?
        data['ErrorList'] = BatchItemErrorList.stub(stub[:error_list]) unless stub[:error_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfDetectSyntaxResult
    class ListOfDetectSyntaxResult
      def self.default(visited=[])
        return nil if visited.include?('ListOfDetectSyntaxResult')
        visited = visited + ['ListOfDetectSyntaxResult']
        [
          BatchDetectSyntaxItemResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDetectSyntaxItemResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDetectSyntaxItemResult
    class BatchDetectSyntaxItemResult
      def self.default(visited=[])
        return nil if visited.include?('BatchDetectSyntaxItemResult')
        visited = visited + ['BatchDetectSyntaxItemResult']
        {
          index: 1,
          syntax_tokens: ListOfSyntaxTokens.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDetectSyntaxItemResult.new
        data = {}
        data['Index'] = stub[:index] unless stub[:index].nil?
        data['SyntaxTokens'] = ListOfSyntaxTokens.stub(stub[:syntax_tokens]) unless stub[:syntax_tokens].nil?
        data
      end
    end

    # List Stubber for ListOfSyntaxTokens
    class ListOfSyntaxTokens
      def self.default(visited=[])
        return nil if visited.include?('ListOfSyntaxTokens')
        visited = visited + ['ListOfSyntaxTokens']
        [
          SyntaxToken.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SyntaxToken.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SyntaxToken
    class SyntaxToken
      def self.default(visited=[])
        return nil if visited.include?('SyntaxToken')
        visited = visited + ['SyntaxToken']
        {
          token_id: 1,
          text: 'text',
          begin_offset: 1,
          end_offset: 1,
          part_of_speech: PartOfSpeechTag.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SyntaxToken.new
        data = {}
        data['TokenId'] = stub[:token_id] unless stub[:token_id].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['PartOfSpeech'] = PartOfSpeechTag.stub(stub[:part_of_speech]) unless stub[:part_of_speech].nil?
        data
      end
    end

    # Structure Stubber for PartOfSpeechTag
    class PartOfSpeechTag
      def self.default(visited=[])
        return nil if visited.include?('PartOfSpeechTag')
        visited = visited + ['PartOfSpeechTag']
        {
          tag: 'tag',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PartOfSpeechTag.new
        data = {}
        data['Tag'] = stub[:tag] unless stub[:tag].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for ClassifyDocument
    class ClassifyDocument
      def self.default(visited=[])
        {
          classes: ListOfClasses.default(visited),
          labels: ListOfLabels.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Classes'] = ListOfClasses.stub(stub[:classes]) unless stub[:classes].nil?
        data['Labels'] = ListOfLabels.stub(stub[:labels]) unless stub[:labels].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfLabels
    class ListOfLabels
      def self.default(visited=[])
        return nil if visited.include?('ListOfLabels')
        visited = visited + ['ListOfLabels']
        [
          DocumentLabel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentLabel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentLabel
    class DocumentLabel
      def self.default(visited=[])
        return nil if visited.include?('DocumentLabel')
        visited = visited + ['DocumentLabel']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentLabel.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for ListOfClasses
    class ListOfClasses
      def self.default(visited=[])
        return nil if visited.include?('ListOfClasses')
        visited = visited + ['ListOfClasses']
        [
          DocumentClass.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentClass.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentClass
    class DocumentClass
      def self.default(visited=[])
        return nil if visited.include?('DocumentClass')
        visited = visited + ['DocumentClass']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClass.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for ContainsPiiEntities
    class ContainsPiiEntities
      def self.default(visited=[])
        {
          labels: ListOfEntityLabels.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Labels'] = ListOfEntityLabels.stub(stub[:labels]) unless stub[:labels].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfEntityLabels
    class ListOfEntityLabels
      def self.default(visited=[])
        return nil if visited.include?('ListOfEntityLabels')
        visited = visited + ['ListOfEntityLabels']
        [
          EntityLabel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityLabel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityLabel
    class EntityLabel
      def self.default(visited=[])
        return nil if visited.include?('EntityLabel')
        visited = visited + ['EntityLabel']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityLabel.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for CreateDocumentClassifier
    class CreateDocumentClassifier
      def self.default(visited=[])
        {
          document_classifier_arn: 'document_classifier_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassifierArn'] = stub[:document_classifier_arn] unless stub[:document_classifier_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEndpoint
    class CreateEndpoint
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEntityRecognizer
    class CreateEntityRecognizer
      def self.default(visited=[])
        {
          entity_recognizer_arn: 'entity_recognizer_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntityRecognizerArn'] = stub[:entity_recognizer_arn] unless stub[:entity_recognizer_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDocumentClassifier
    class DeleteDocumentClassifier
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEntityRecognizer
    class DeleteEntityRecognizer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDocumentClassificationJob
    class DescribeDocumentClassificationJob
      def self.default(visited=[])
        {
          document_classification_job_properties: DocumentClassificationJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassificationJobProperties'] = DocumentClassificationJobProperties.stub(stub[:document_classification_job_properties]) unless stub[:document_classification_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DocumentClassificationJobProperties
    class DocumentClassificationJobProperties
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassificationJobProperties')
        visited = visited + ['DocumentClassificationJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          document_classifier_arn: 'document_classifier_arn',
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClassificationJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['DocumentClassifierArn'] = stub[:document_classifier_arn] unless stub[:document_classifier_arn].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Structure Stubber for VpcConfig
    class VpcConfig
      def self.default(visited=[])
        return nil if visited.include?('VpcConfig')
        visited = visited + ['VpcConfig']
        {
          security_group_ids: SecurityGroupIds.default(visited),
          subnets: Subnets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfig.new
        data = {}
        data['SecurityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['Subnets'] = Subnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data
      end
    end

    # List Stubber for Subnets
    class Subnets
      def self.default(visited=[])
        return nil if visited.include?('Subnets')
        visited = visited + ['Subnets']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_uri: 's3_uri',
          input_format: 'input_format',
          document_reader_config: DocumentReaderConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['InputFormat'] = stub[:input_format] unless stub[:input_format].nil?
        data['DocumentReaderConfig'] = DocumentReaderConfig.stub(stub[:document_reader_config]) unless stub[:document_reader_config].nil?
        data
      end
    end

    # Structure Stubber for DocumentReaderConfig
    class DocumentReaderConfig
      def self.default(visited=[])
        return nil if visited.include?('DocumentReaderConfig')
        visited = visited + ['DocumentReaderConfig']
        {
          document_read_action: 'document_read_action',
          document_read_mode: 'document_read_mode',
          feature_types: ListOfDocumentReadFeatureTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentReaderConfig.new
        data = {}
        data['DocumentReadAction'] = stub[:document_read_action] unless stub[:document_read_action].nil?
        data['DocumentReadMode'] = stub[:document_read_mode] unless stub[:document_read_mode].nil?
        data['FeatureTypes'] = ListOfDocumentReadFeatureTypes.stub(stub[:feature_types]) unless stub[:feature_types].nil?
        data
      end
    end

    # List Stubber for ListOfDocumentReadFeatureTypes
    class ListOfDocumentReadFeatureTypes
      def self.default(visited=[])
        return nil if visited.include?('ListOfDocumentReadFeatureTypes')
        visited = visited + ['ListOfDocumentReadFeatureTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDocumentClassifier
    class DescribeDocumentClassifier
      def self.default(visited=[])
        {
          document_classifier_properties: DocumentClassifierProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassifierProperties'] = DocumentClassifierProperties.stub(stub[:document_classifier_properties]) unless stub[:document_classifier_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DocumentClassifierProperties
    class DocumentClassifierProperties
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierProperties')
        visited = visited + ['DocumentClassifierProperties']
        {
          document_classifier_arn: 'document_classifier_arn',
          language_code: 'language_code',
          status: 'status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          training_start_time: Time.now,
          training_end_time: Time.now,
          input_data_config: DocumentClassifierInputDataConfig.default(visited),
          output_data_config: DocumentClassifierOutputDataConfig.default(visited),
          classifier_metadata: ClassifierMetadata.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
          mode: 'mode',
          model_kms_key_id: 'model_kms_key_id',
          version_name: 'version_name',
          source_model_arn: 'source_model_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClassifierProperties.new
        data = {}
        data['DocumentClassifierArn'] = stub[:document_classifier_arn] unless stub[:document_classifier_arn].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['TrainingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_start_time]).to_i unless stub[:training_start_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['InputDataConfig'] = DocumentClassifierInputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = DocumentClassifierOutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['ClassifierMetadata'] = ClassifierMetadata.stub(stub[:classifier_metadata]) unless stub[:classifier_metadata].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['ModelKmsKeyId'] = stub[:model_kms_key_id] unless stub[:model_kms_key_id].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['SourceModelArn'] = stub[:source_model_arn] unless stub[:source_model_arn].nil?
        data
      end
    end

    # Structure Stubber for ClassifierMetadata
    class ClassifierMetadata
      def self.default(visited=[])
        return nil if visited.include?('ClassifierMetadata')
        visited = visited + ['ClassifierMetadata']
        {
          number_of_labels: 1,
          number_of_trained_documents: 1,
          number_of_test_documents: 1,
          evaluation_metrics: ClassifierEvaluationMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassifierMetadata.new
        data = {}
        data['NumberOfLabels'] = stub[:number_of_labels] unless stub[:number_of_labels].nil?
        data['NumberOfTrainedDocuments'] = stub[:number_of_trained_documents] unless stub[:number_of_trained_documents].nil?
        data['NumberOfTestDocuments'] = stub[:number_of_test_documents] unless stub[:number_of_test_documents].nil?
        data['EvaluationMetrics'] = ClassifierEvaluationMetrics.stub(stub[:evaluation_metrics]) unless stub[:evaluation_metrics].nil?
        data
      end
    end

    # Structure Stubber for ClassifierEvaluationMetrics
    class ClassifierEvaluationMetrics
      def self.default(visited=[])
        return nil if visited.include?('ClassifierEvaluationMetrics')
        visited = visited + ['ClassifierEvaluationMetrics']
        {
          accuracy: 1.0,
          precision: 1.0,
          recall: 1.0,
          f1_score: 1.0,
          micro_precision: 1.0,
          micro_recall: 1.0,
          micro_f1_score: 1.0,
          hamming_loss: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ClassifierEvaluationMetrics.new
        data = {}
        data['Accuracy'] = Hearth::NumberHelper.serialize(stub[:accuracy])
        data['Precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data['Recall'] = Hearth::NumberHelper.serialize(stub[:recall])
        data['F1Score'] = Hearth::NumberHelper.serialize(stub[:f1_score])
        data['MicroPrecision'] = Hearth::NumberHelper.serialize(stub[:micro_precision])
        data['MicroRecall'] = Hearth::NumberHelper.serialize(stub[:micro_recall])
        data['MicroF1Score'] = Hearth::NumberHelper.serialize(stub[:micro_f1_score])
        data['HammingLoss'] = Hearth::NumberHelper.serialize(stub[:hamming_loss])
        data
      end
    end

    # Structure Stubber for DocumentClassifierOutputDataConfig
    class DocumentClassifierOutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierOutputDataConfig')
        visited = visited + ['DocumentClassifierOutputDataConfig']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClassifierOutputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for DocumentClassifierInputDataConfig
    class DocumentClassifierInputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierInputDataConfig')
        visited = visited + ['DocumentClassifierInputDataConfig']
        {
          data_format: 'data_format',
          s3_uri: 's3_uri',
          test_s3_uri: 'test_s3_uri',
          label_delimiter: 'label_delimiter',
          augmented_manifests: DocumentClassifierAugmentedManifestsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClassifierInputDataConfig.new
        data = {}
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['TestS3Uri'] = stub[:test_s3_uri] unless stub[:test_s3_uri].nil?
        data['LabelDelimiter'] = stub[:label_delimiter] unless stub[:label_delimiter].nil?
        data['AugmentedManifests'] = DocumentClassifierAugmentedManifestsList.stub(stub[:augmented_manifests]) unless stub[:augmented_manifests].nil?
        data
      end
    end

    # List Stubber for DocumentClassifierAugmentedManifestsList
    class DocumentClassifierAugmentedManifestsList
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierAugmentedManifestsList')
        visited = visited + ['DocumentClassifierAugmentedManifestsList']
        [
          AugmentedManifestsListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AugmentedManifestsListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AugmentedManifestsListItem
    class AugmentedManifestsListItem
      def self.default(visited=[])
        return nil if visited.include?('AugmentedManifestsListItem')
        visited = visited + ['AugmentedManifestsListItem']
        {
          s3_uri: 's3_uri',
          split: 'split',
          attribute_names: AttributeNamesList.default(visited),
          annotation_data_s3_uri: 'annotation_data_s3_uri',
          source_documents_s3_uri: 'source_documents_s3_uri',
          document_type: 'document_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AugmentedManifestsListItem.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['Split'] = stub[:split] unless stub[:split].nil?
        data['AttributeNames'] = AttributeNamesList.stub(stub[:attribute_names]) unless stub[:attribute_names].nil?
        data['AnnotationDataS3Uri'] = stub[:annotation_data_s3_uri] unless stub[:annotation_data_s3_uri].nil?
        data['SourceDocumentsS3Uri'] = stub[:source_documents_s3_uri] unless stub[:source_documents_s3_uri].nil?
        data['DocumentType'] = stub[:document_type] unless stub[:document_type].nil?
        data
      end
    end

    # List Stubber for AttributeNamesList
    class AttributeNamesList
      def self.default(visited=[])
        return nil if visited.include?('AttributeNamesList')
        visited = visited + ['AttributeNamesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDominantLanguageDetectionJob
    class DescribeDominantLanguageDetectionJob
      def self.default(visited=[])
        {
          dominant_language_detection_job_properties: DominantLanguageDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DominantLanguageDetectionJobProperties'] = DominantLanguageDetectionJobProperties.stub(stub[:dominant_language_detection_job_properties]) unless stub[:dominant_language_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DominantLanguageDetectionJobProperties
    class DominantLanguageDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('DominantLanguageDetectionJobProperties')
        visited = visited + ['DominantLanguageDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DominantLanguageDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeEndpoint
    class DescribeEndpoint
      def self.default(visited=[])
        {
          endpoint_properties: EndpointProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointProperties'] = EndpointProperties.stub(stub[:endpoint_properties]) unless stub[:endpoint_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EndpointProperties
    class EndpointProperties
      def self.default(visited=[])
        return nil if visited.include?('EndpointProperties')
        visited = visited + ['EndpointProperties']
        {
          endpoint_arn: 'endpoint_arn',
          status: 'status',
          message: 'message',
          model_arn: 'model_arn',
          desired_model_arn: 'desired_model_arn',
          desired_inference_units: 1,
          current_inference_units: 1,
          creation_time: Time.now,
          last_modified_time: Time.now,
          data_access_role_arn: 'data_access_role_arn',
          desired_data_access_role_arn: 'desired_data_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointProperties.new
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        data['DesiredModelArn'] = stub[:desired_model_arn] unless stub[:desired_model_arn].nil?
        data['DesiredInferenceUnits'] = stub[:desired_inference_units] unless stub[:desired_inference_units].nil?
        data['CurrentInferenceUnits'] = stub[:current_inference_units] unless stub[:current_inference_units].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['DesiredDataAccessRoleArn'] = stub[:desired_data_access_role_arn] unless stub[:desired_data_access_role_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeEntitiesDetectionJob
    class DescribeEntitiesDetectionJob
      def self.default(visited=[])
        {
          entities_detection_job_properties: EntitiesDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntitiesDetectionJobProperties'] = EntitiesDetectionJobProperties.stub(stub[:entities_detection_job_properties]) unless stub[:entities_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EntitiesDetectionJobProperties
    class EntitiesDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('EntitiesDetectionJobProperties')
        visited = visited + ['EntitiesDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          entity_recognizer_arn: 'entity_recognizer_arn',
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitiesDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['EntityRecognizerArn'] = stub[:entity_recognizer_arn] unless stub[:entity_recognizer_arn].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeEntityRecognizer
    class DescribeEntityRecognizer
      def self.default(visited=[])
        {
          entity_recognizer_properties: EntityRecognizerProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntityRecognizerProperties'] = EntityRecognizerProperties.stub(stub[:entity_recognizer_properties]) unless stub[:entity_recognizer_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EntityRecognizerProperties
    class EntityRecognizerProperties
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerProperties')
        visited = visited + ['EntityRecognizerProperties']
        {
          entity_recognizer_arn: 'entity_recognizer_arn',
          language_code: 'language_code',
          status: 'status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          training_start_time: Time.now,
          training_end_time: Time.now,
          input_data_config: EntityRecognizerInputDataConfig.default(visited),
          recognizer_metadata: EntityRecognizerMetadata.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
          model_kms_key_id: 'model_kms_key_id',
          version_name: 'version_name',
          source_model_arn: 'source_model_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerProperties.new
        data = {}
        data['EntityRecognizerArn'] = stub[:entity_recognizer_arn] unless stub[:entity_recognizer_arn].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['TrainingStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_start_time]).to_i unless stub[:training_start_time].nil?
        data['TrainingEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:training_end_time]).to_i unless stub[:training_end_time].nil?
        data['InputDataConfig'] = EntityRecognizerInputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['RecognizerMetadata'] = EntityRecognizerMetadata.stub(stub[:recognizer_metadata]) unless stub[:recognizer_metadata].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['ModelKmsKeyId'] = stub[:model_kms_key_id] unless stub[:model_kms_key_id].nil?
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['SourceModelArn'] = stub[:source_model_arn] unless stub[:source_model_arn].nil?
        data
      end
    end

    # Structure Stubber for EntityRecognizerMetadata
    class EntityRecognizerMetadata
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerMetadata')
        visited = visited + ['EntityRecognizerMetadata']
        {
          number_of_trained_documents: 1,
          number_of_test_documents: 1,
          evaluation_metrics: EntityRecognizerEvaluationMetrics.default(visited),
          entity_types: EntityRecognizerMetadataEntityTypesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerMetadata.new
        data = {}
        data['NumberOfTrainedDocuments'] = stub[:number_of_trained_documents] unless stub[:number_of_trained_documents].nil?
        data['NumberOfTestDocuments'] = stub[:number_of_test_documents] unless stub[:number_of_test_documents].nil?
        data['EvaluationMetrics'] = EntityRecognizerEvaluationMetrics.stub(stub[:evaluation_metrics]) unless stub[:evaluation_metrics].nil?
        data['EntityTypes'] = EntityRecognizerMetadataEntityTypesList.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data
      end
    end

    # List Stubber for EntityRecognizerMetadataEntityTypesList
    class EntityRecognizerMetadataEntityTypesList
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerMetadataEntityTypesList')
        visited = visited + ['EntityRecognizerMetadataEntityTypesList']
        [
          EntityRecognizerMetadataEntityTypesListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityRecognizerMetadataEntityTypesListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityRecognizerMetadataEntityTypesListItem
    class EntityRecognizerMetadataEntityTypesListItem
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerMetadataEntityTypesListItem')
        visited = visited + ['EntityRecognizerMetadataEntityTypesListItem']
        {
          type: 'type',
          evaluation_metrics: EntityTypesEvaluationMetrics.default(visited),
          number_of_train_mentions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerMetadataEntityTypesListItem.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['EvaluationMetrics'] = EntityTypesEvaluationMetrics.stub(stub[:evaluation_metrics]) unless stub[:evaluation_metrics].nil?
        data['NumberOfTrainMentions'] = stub[:number_of_train_mentions] unless stub[:number_of_train_mentions].nil?
        data
      end
    end

    # Structure Stubber for EntityTypesEvaluationMetrics
    class EntityTypesEvaluationMetrics
      def self.default(visited=[])
        return nil if visited.include?('EntityTypesEvaluationMetrics')
        visited = visited + ['EntityTypesEvaluationMetrics']
        {
          precision: 1.0,
          recall: 1.0,
          f1_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityTypesEvaluationMetrics.new
        data = {}
        data['Precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data['Recall'] = Hearth::NumberHelper.serialize(stub[:recall])
        data['F1Score'] = Hearth::NumberHelper.serialize(stub[:f1_score])
        data
      end
    end

    # Structure Stubber for EntityRecognizerEvaluationMetrics
    class EntityRecognizerEvaluationMetrics
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerEvaluationMetrics')
        visited = visited + ['EntityRecognizerEvaluationMetrics']
        {
          precision: 1.0,
          recall: 1.0,
          f1_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerEvaluationMetrics.new
        data = {}
        data['Precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data['Recall'] = Hearth::NumberHelper.serialize(stub[:recall])
        data['F1Score'] = Hearth::NumberHelper.serialize(stub[:f1_score])
        data
      end
    end

    # Structure Stubber for EntityRecognizerInputDataConfig
    class EntityRecognizerInputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerInputDataConfig')
        visited = visited + ['EntityRecognizerInputDataConfig']
        {
          data_format: 'data_format',
          entity_types: EntityTypesList.default(visited),
          documents: EntityRecognizerDocuments.default(visited),
          annotations: EntityRecognizerAnnotations.default(visited),
          entity_list: EntityRecognizerEntityList.default(visited),
          augmented_manifests: EntityRecognizerAugmentedManifestsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerInputDataConfig.new
        data = {}
        data['DataFormat'] = stub[:data_format] unless stub[:data_format].nil?
        data['EntityTypes'] = EntityTypesList.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data['Documents'] = EntityRecognizerDocuments.stub(stub[:documents]) unless stub[:documents].nil?
        data['Annotations'] = EntityRecognizerAnnotations.stub(stub[:annotations]) unless stub[:annotations].nil?
        data['EntityList'] = EntityRecognizerEntityList.stub(stub[:entity_list]) unless stub[:entity_list].nil?
        data['AugmentedManifests'] = EntityRecognizerAugmentedManifestsList.stub(stub[:augmented_manifests]) unless stub[:augmented_manifests].nil?
        data
      end
    end

    # List Stubber for EntityRecognizerAugmentedManifestsList
    class EntityRecognizerAugmentedManifestsList
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerAugmentedManifestsList')
        visited = visited + ['EntityRecognizerAugmentedManifestsList']
        [
          AugmentedManifestsListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AugmentedManifestsListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityRecognizerEntityList
    class EntityRecognizerEntityList
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerEntityList')
        visited = visited + ['EntityRecognizerEntityList']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerEntityList.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for EntityRecognizerAnnotations
    class EntityRecognizerAnnotations
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerAnnotations')
        visited = visited + ['EntityRecognizerAnnotations']
        {
          s3_uri: 's3_uri',
          test_s3_uri: 'test_s3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerAnnotations.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['TestS3Uri'] = stub[:test_s3_uri] unless stub[:test_s3_uri].nil?
        data
      end
    end

    # Structure Stubber for EntityRecognizerDocuments
    class EntityRecognizerDocuments
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerDocuments')
        visited = visited + ['EntityRecognizerDocuments']
        {
          s3_uri: 's3_uri',
          test_s3_uri: 'test_s3_uri',
          input_format: 'input_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerDocuments.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['TestS3Uri'] = stub[:test_s3_uri] unless stub[:test_s3_uri].nil?
        data['InputFormat'] = stub[:input_format] unless stub[:input_format].nil?
        data
      end
    end

    # List Stubber for EntityTypesList
    class EntityTypesList
      def self.default(visited=[])
        return nil if visited.include?('EntityTypesList')
        visited = visited + ['EntityTypesList']
        [
          EntityTypesListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityTypesListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityTypesListItem
    class EntityTypesListItem
      def self.default(visited=[])
        return nil if visited.include?('EntityTypesListItem')
        visited = visited + ['EntityTypesListItem']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityTypesListItem.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventsDetectionJob
    class DescribeEventsDetectionJob
      def self.default(visited=[])
        {
          events_detection_job_properties: EventsDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventsDetectionJobProperties'] = EventsDetectionJobProperties.stub(stub[:events_detection_job_properties]) unless stub[:events_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventsDetectionJobProperties
    class EventsDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('EventsDetectionJobProperties')
        visited = visited + ['EventsDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          target_event_types: TargetEventTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventsDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['TargetEventTypes'] = TargetEventTypes.stub(stub[:target_event_types]) unless stub[:target_event_types].nil?
        data
      end
    end

    # List Stubber for TargetEventTypes
    class TargetEventTypes
      def self.default(visited=[])
        return nil if visited.include?('TargetEventTypes')
        visited = visited + ['TargetEventTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeKeyPhrasesDetectionJob
    class DescribeKeyPhrasesDetectionJob
      def self.default(visited=[])
        {
          key_phrases_detection_job_properties: KeyPhrasesDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyPhrasesDetectionJobProperties'] = KeyPhrasesDetectionJobProperties.stub(stub[:key_phrases_detection_job_properties]) unless stub[:key_phrases_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KeyPhrasesDetectionJobProperties
    class KeyPhrasesDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('KeyPhrasesDetectionJobProperties')
        visited = visited + ['KeyPhrasesDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyPhrasesDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DescribePiiEntitiesDetectionJob
    class DescribePiiEntitiesDetectionJob
      def self.default(visited=[])
        {
          pii_entities_detection_job_properties: PiiEntitiesDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PiiEntitiesDetectionJobProperties'] = PiiEntitiesDetectionJobProperties.stub(stub[:pii_entities_detection_job_properties]) unless stub[:pii_entities_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PiiEntitiesDetectionJobProperties
    class PiiEntitiesDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('PiiEntitiesDetectionJobProperties')
        visited = visited + ['PiiEntitiesDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: PiiOutputDataConfig.default(visited),
          redaction_config: RedactionConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::PiiEntitiesDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = PiiOutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['RedactionConfig'] = RedactionConfig.stub(stub[:redaction_config]) unless stub[:redaction_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # Structure Stubber for RedactionConfig
    class RedactionConfig
      def self.default(visited=[])
        return nil if visited.include?('RedactionConfig')
        visited = visited + ['RedactionConfig']
        {
          pii_entity_types: ListOfPiiEntityTypes.default(visited),
          mask_mode: 'mask_mode',
          mask_character: 'mask_character',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedactionConfig.new
        data = {}
        data['PiiEntityTypes'] = ListOfPiiEntityTypes.stub(stub[:pii_entity_types]) unless stub[:pii_entity_types].nil?
        data['MaskMode'] = stub[:mask_mode] unless stub[:mask_mode].nil?
        data['MaskCharacter'] = stub[:mask_character] unless stub[:mask_character].nil?
        data
      end
    end

    # List Stubber for ListOfPiiEntityTypes
    class ListOfPiiEntityTypes
      def self.default(visited=[])
        return nil if visited.include?('ListOfPiiEntityTypes')
        visited = visited + ['ListOfPiiEntityTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PiiOutputDataConfig
    class PiiOutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('PiiOutputDataConfig')
        visited = visited + ['PiiOutputDataConfig']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PiiOutputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.default(visited=[])
        {
          resource_policy: 'resource_policy',
          creation_time: Time.now,
          last_modified_time: Time.now,
          policy_revision_id: 'policy_revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourcePolicy'] = stub[:resource_policy] unless stub[:resource_policy].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['PolicyRevisionId'] = stub[:policy_revision_id] unless stub[:policy_revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSentimentDetectionJob
    class DescribeSentimentDetectionJob
      def self.default(visited=[])
        {
          sentiment_detection_job_properties: SentimentDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SentimentDetectionJobProperties'] = SentimentDetectionJobProperties.stub(stub[:sentiment_detection_job_properties]) unless stub[:sentiment_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SentimentDetectionJobProperties
    class SentimentDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('SentimentDetectionJobProperties')
        visited = visited + ['SentimentDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeTargetedSentimentDetectionJob
    class DescribeTargetedSentimentDetectionJob
      def self.default(visited=[])
        {
          targeted_sentiment_detection_job_properties: TargetedSentimentDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TargetedSentimentDetectionJobProperties'] = TargetedSentimentDetectionJobProperties.stub(stub[:targeted_sentiment_detection_job_properties]) unless stub[:targeted_sentiment_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TargetedSentimentDetectionJobProperties
    class TargetedSentimentDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('TargetedSentimentDetectionJobProperties')
        visited = visited + ['TargetedSentimentDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetedSentimentDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeTopicsDetectionJob
    class DescribeTopicsDetectionJob
      def self.default(visited=[])
        {
          topics_detection_job_properties: TopicsDetectionJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TopicsDetectionJobProperties'] = TopicsDetectionJobProperties.stub(stub[:topics_detection_job_properties]) unless stub[:topics_detection_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TopicsDetectionJobProperties
    class TopicsDetectionJobProperties
      def self.default(visited=[])
        return nil if visited.include?('TopicsDetectionJobProperties')
        visited = visited + ['TopicsDetectionJobProperties']
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          number_of_topics: 1,
          data_access_role_arn: 'data_access_role_arn',
          volume_kms_key_id: 'volume_kms_key_id',
          vpc_config: VpcConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TopicsDetectionJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['NumberOfTopics'] = stub[:number_of_topics] unless stub[:number_of_topics].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['VolumeKmsKeyId'] = stub[:volume_kms_key_id] unless stub[:volume_kms_key_id].nil?
        data['VpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data
      end
    end

    # Operation Stubber for DetectDominantLanguage
    class DetectDominantLanguage
      def self.default(visited=[])
        {
          languages: ListOfDominantLanguages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Languages'] = ListOfDominantLanguages.stub(stub[:languages]) unless stub[:languages].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectEntities
    class DetectEntities
      def self.default(visited=[])
        {
          entities: ListOfEntities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = ListOfEntities.stub(stub[:entities]) unless stub[:entities].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectKeyPhrases
    class DetectKeyPhrases
      def self.default(visited=[])
        {
          key_phrases: ListOfKeyPhrases.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyPhrases'] = ListOfKeyPhrases.stub(stub[:key_phrases]) unless stub[:key_phrases].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectPiiEntities
    class DetectPiiEntities
      def self.default(visited=[])
        {
          entities: ListOfPiiEntities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = ListOfPiiEntities.stub(stub[:entities]) unless stub[:entities].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfPiiEntities
    class ListOfPiiEntities
      def self.default(visited=[])
        return nil if visited.include?('ListOfPiiEntities')
        visited = visited + ['ListOfPiiEntities']
        [
          PiiEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PiiEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PiiEntity
    class PiiEntity
      def self.default(visited=[])
        return nil if visited.include?('PiiEntity')
        visited = visited + ['PiiEntity']
        {
          score: 1.0,
          type: 'type',
          begin_offset: 1,
          end_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PiiEntity.new
        data = {}
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data
      end
    end

    # Operation Stubber for DetectSentiment
    class DetectSentiment
      def self.default(visited=[])
        {
          sentiment: 'sentiment',
          sentiment_score: SentimentScore.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Sentiment'] = stub[:sentiment] unless stub[:sentiment].nil?
        data['SentimentScore'] = SentimentScore.stub(stub[:sentiment_score]) unless stub[:sentiment_score].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectSyntax
    class DetectSyntax
      def self.default(visited=[])
        {
          syntax_tokens: ListOfSyntaxTokens.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SyntaxTokens'] = ListOfSyntaxTokens.stub(stub[:syntax_tokens]) unless stub[:syntax_tokens].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportModel
    class ImportModel
      def self.default(visited=[])
        {
          model_arn: 'model_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ModelArn'] = stub[:model_arn] unless stub[:model_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDocumentClassificationJobs
    class ListDocumentClassificationJobs
      def self.default(visited=[])
        {
          document_classification_job_properties_list: DocumentClassificationJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassificationJobPropertiesList'] = DocumentClassificationJobPropertiesList.stub(stub[:document_classification_job_properties_list]) unless stub[:document_classification_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentClassificationJobPropertiesList
    class DocumentClassificationJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassificationJobPropertiesList')
        visited = visited + ['DocumentClassificationJobPropertiesList']
        [
          DocumentClassificationJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentClassificationJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDocumentClassifierSummaries
    class ListDocumentClassifierSummaries
      def self.default(visited=[])
        {
          document_classifier_summaries_list: DocumentClassifierSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassifierSummariesList'] = DocumentClassifierSummariesList.stub(stub[:document_classifier_summaries_list]) unless stub[:document_classifier_summaries_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentClassifierSummariesList
    class DocumentClassifierSummariesList
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierSummariesList')
        visited = visited + ['DocumentClassifierSummariesList']
        [
          DocumentClassifierSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentClassifierSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentClassifierSummary
    class DocumentClassifierSummary
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierSummary')
        visited = visited + ['DocumentClassifierSummary']
        {
          document_classifier_name: 'document_classifier_name',
          number_of_versions: 1,
          latest_version_created_at: Time.now,
          latest_version_name: 'latest_version_name',
          latest_version_status: 'latest_version_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentClassifierSummary.new
        data = {}
        data['DocumentClassifierName'] = stub[:document_classifier_name] unless stub[:document_classifier_name].nil?
        data['NumberOfVersions'] = stub[:number_of_versions] unless stub[:number_of_versions].nil?
        data['LatestVersionCreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_version_created_at]).to_i unless stub[:latest_version_created_at].nil?
        data['LatestVersionName'] = stub[:latest_version_name] unless stub[:latest_version_name].nil?
        data['LatestVersionStatus'] = stub[:latest_version_status] unless stub[:latest_version_status].nil?
        data
      end
    end

    # Operation Stubber for ListDocumentClassifiers
    class ListDocumentClassifiers
      def self.default(visited=[])
        {
          document_classifier_properties_list: DocumentClassifierPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentClassifierPropertiesList'] = DocumentClassifierPropertiesList.stub(stub[:document_classifier_properties_list]) unless stub[:document_classifier_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentClassifierPropertiesList
    class DocumentClassifierPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('DocumentClassifierPropertiesList')
        visited = visited + ['DocumentClassifierPropertiesList']
        [
          DocumentClassifierProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentClassifierProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDominantLanguageDetectionJobs
    class ListDominantLanguageDetectionJobs
      def self.default(visited=[])
        {
          dominant_language_detection_job_properties_list: DominantLanguageDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DominantLanguageDetectionJobPropertiesList'] = DominantLanguageDetectionJobPropertiesList.stub(stub[:dominant_language_detection_job_properties_list]) unless stub[:dominant_language_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DominantLanguageDetectionJobPropertiesList
    class DominantLanguageDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('DominantLanguageDetectionJobPropertiesList')
        visited = visited + ['DominantLanguageDetectionJobPropertiesList']
        [
          DominantLanguageDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DominantLanguageDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEndpoints
    class ListEndpoints
      def self.default(visited=[])
        {
          endpoint_properties_list: EndpointPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointPropertiesList'] = EndpointPropertiesList.stub(stub[:endpoint_properties_list]) unless stub[:endpoint_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointPropertiesList
    class EndpointPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('EndpointPropertiesList')
        visited = visited + ['EndpointPropertiesList']
        [
          EndpointProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEntitiesDetectionJobs
    class ListEntitiesDetectionJobs
      def self.default(visited=[])
        {
          entities_detection_job_properties_list: EntitiesDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntitiesDetectionJobPropertiesList'] = EntitiesDetectionJobPropertiesList.stub(stub[:entities_detection_job_properties_list]) unless stub[:entities_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntitiesDetectionJobPropertiesList
    class EntitiesDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('EntitiesDetectionJobPropertiesList')
        visited = visited + ['EntitiesDetectionJobPropertiesList']
        [
          EntitiesDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntitiesDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEntityRecognizerSummaries
    class ListEntityRecognizerSummaries
      def self.default(visited=[])
        {
          entity_recognizer_summaries_list: EntityRecognizerSummariesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntityRecognizerSummariesList'] = EntityRecognizerSummariesList.stub(stub[:entity_recognizer_summaries_list]) unless stub[:entity_recognizer_summaries_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntityRecognizerSummariesList
    class EntityRecognizerSummariesList
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerSummariesList')
        visited = visited + ['EntityRecognizerSummariesList']
        [
          EntityRecognizerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityRecognizerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityRecognizerSummary
    class EntityRecognizerSummary
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerSummary')
        visited = visited + ['EntityRecognizerSummary']
        {
          recognizer_name: 'recognizer_name',
          number_of_versions: 1,
          latest_version_created_at: Time.now,
          latest_version_name: 'latest_version_name',
          latest_version_status: 'latest_version_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityRecognizerSummary.new
        data = {}
        data['RecognizerName'] = stub[:recognizer_name] unless stub[:recognizer_name].nil?
        data['NumberOfVersions'] = stub[:number_of_versions] unless stub[:number_of_versions].nil?
        data['LatestVersionCreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_version_created_at]).to_i unless stub[:latest_version_created_at].nil?
        data['LatestVersionName'] = stub[:latest_version_name] unless stub[:latest_version_name].nil?
        data['LatestVersionStatus'] = stub[:latest_version_status] unless stub[:latest_version_status].nil?
        data
      end
    end

    # Operation Stubber for ListEntityRecognizers
    class ListEntityRecognizers
      def self.default(visited=[])
        {
          entity_recognizer_properties_list: EntityRecognizerPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntityRecognizerPropertiesList'] = EntityRecognizerPropertiesList.stub(stub[:entity_recognizer_properties_list]) unless stub[:entity_recognizer_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntityRecognizerPropertiesList
    class EntityRecognizerPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('EntityRecognizerPropertiesList')
        visited = visited + ['EntityRecognizerPropertiesList']
        [
          EntityRecognizerProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityRecognizerProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEventsDetectionJobs
    class ListEventsDetectionJobs
      def self.default(visited=[])
        {
          events_detection_job_properties_list: EventsDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EventsDetectionJobPropertiesList'] = EventsDetectionJobPropertiesList.stub(stub[:events_detection_job_properties_list]) unless stub[:events_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventsDetectionJobPropertiesList
    class EventsDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('EventsDetectionJobPropertiesList')
        visited = visited + ['EventsDetectionJobPropertiesList']
        [
          EventsDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventsDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListKeyPhrasesDetectionJobs
    class ListKeyPhrasesDetectionJobs
      def self.default(visited=[])
        {
          key_phrases_detection_job_properties_list: KeyPhrasesDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['KeyPhrasesDetectionJobPropertiesList'] = KeyPhrasesDetectionJobPropertiesList.stub(stub[:key_phrases_detection_job_properties_list]) unless stub[:key_phrases_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KeyPhrasesDetectionJobPropertiesList
    class KeyPhrasesDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('KeyPhrasesDetectionJobPropertiesList')
        visited = visited + ['KeyPhrasesDetectionJobPropertiesList']
        [
          KeyPhrasesDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << KeyPhrasesDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPiiEntitiesDetectionJobs
    class ListPiiEntitiesDetectionJobs
      def self.default(visited=[])
        {
          pii_entities_detection_job_properties_list: PiiEntitiesDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PiiEntitiesDetectionJobPropertiesList'] = PiiEntitiesDetectionJobPropertiesList.stub(stub[:pii_entities_detection_job_properties_list]) unless stub[:pii_entities_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PiiEntitiesDetectionJobPropertiesList
    class PiiEntitiesDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('PiiEntitiesDetectionJobPropertiesList')
        visited = visited + ['PiiEntitiesDetectionJobPropertiesList']
        [
          PiiEntitiesDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PiiEntitiesDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSentimentDetectionJobs
    class ListSentimentDetectionJobs
      def self.default(visited=[])
        {
          sentiment_detection_job_properties_list: SentimentDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SentimentDetectionJobPropertiesList'] = SentimentDetectionJobPropertiesList.stub(stub[:sentiment_detection_job_properties_list]) unless stub[:sentiment_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SentimentDetectionJobPropertiesList
    class SentimentDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('SentimentDetectionJobPropertiesList')
        visited = visited + ['SentimentDetectionJobPropertiesList']
        [
          SentimentDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SentimentDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTargetedSentimentDetectionJobs
    class ListTargetedSentimentDetectionJobs
      def self.default(visited=[])
        {
          targeted_sentiment_detection_job_properties_list: TargetedSentimentDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TargetedSentimentDetectionJobPropertiesList'] = TargetedSentimentDetectionJobPropertiesList.stub(stub[:targeted_sentiment_detection_job_properties_list]) unless stub[:targeted_sentiment_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TargetedSentimentDetectionJobPropertiesList
    class TargetedSentimentDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('TargetedSentimentDetectionJobPropertiesList')
        visited = visited + ['TargetedSentimentDetectionJobPropertiesList']
        [
          TargetedSentimentDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TargetedSentimentDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTopicsDetectionJobs
    class ListTopicsDetectionJobs
      def self.default(visited=[])
        {
          topics_detection_job_properties_list: TopicsDetectionJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TopicsDetectionJobPropertiesList'] = TopicsDetectionJobPropertiesList.stub(stub[:topics_detection_job_properties_list]) unless stub[:topics_detection_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TopicsDetectionJobPropertiesList
    class TopicsDetectionJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('TopicsDetectionJobPropertiesList')
        visited = visited + ['TopicsDetectionJobPropertiesList']
        [
          TopicsDetectionJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TopicsDetectionJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          policy_revision_id: 'policy_revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyRevisionId'] = stub[:policy_revision_id] unless stub[:policy_revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDocumentClassificationJob
    class StartDocumentClassificationJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDominantLanguageDetectionJob
    class StartDominantLanguageDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartEntitiesDetectionJob
    class StartEntitiesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartEventsDetectionJob
    class StartEventsDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartKeyPhrasesDetectionJob
    class StartKeyPhrasesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartPiiEntitiesDetectionJob
    class StartPiiEntitiesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSentimentDetectionJob
    class StartSentimentDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTargetedSentimentDetectionJob
    class StartTargetedSentimentDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTopicsDetectionJob
    class StartTopicsDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_arn: 'job_arn',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDominantLanguageDetectionJob
    class StopDominantLanguageDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopEntitiesDetectionJob
    class StopEntitiesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopEventsDetectionJob
    class StopEventsDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopKeyPhrasesDetectionJob
    class StopKeyPhrasesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopPiiEntitiesDetectionJob
    class StopPiiEntitiesDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopSentimentDetectionJob
    class StopSentimentDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTargetedSentimentDetectionJob
    class StopTargetedSentimentDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTrainingDocumentClassifier
    class StopTrainingDocumentClassifier
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTrainingEntityRecognizer
    class StopTrainingEntityRecognizer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEndpoint
    class UpdateEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
