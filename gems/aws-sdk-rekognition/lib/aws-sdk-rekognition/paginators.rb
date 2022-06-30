# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rekognition
  module Paginators

    class DescribeProjects
      # @param [Client] client
      # @param [Hash] params (see Client#describe_projects)
      # @param [Hash] options (see Client#describe_projects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_projects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_projects(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_projects(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_projects operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.project_descriptions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeProjectVersions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_project_versions)
      # @param [Hash] options (see Client#describe_project_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_project_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_project_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_project_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_project_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.project_version_descriptions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetCelebrityRecognition
      # @param [Client] client
      # @param [Hash] params (see Client#get_celebrity_recognition)
      # @param [Hash] options (see Client#get_celebrity_recognition)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_celebrity_recognition operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_celebrity_recognition(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_celebrity_recognition(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetContentModeration
      # @param [Client] client
      # @param [Hash] params (see Client#get_content_moderation)
      # @param [Hash] options (see Client#get_content_moderation)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_content_moderation operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_content_moderation(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_content_moderation(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetFaceDetection
      # @param [Client] client
      # @param [Hash] params (see Client#get_face_detection)
      # @param [Hash] options (see Client#get_face_detection)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_face_detection operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_face_detection(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_face_detection(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetFaceSearch
      # @param [Client] client
      # @param [Hash] params (see Client#get_face_search)
      # @param [Hash] options (see Client#get_face_search)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_face_search operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_face_search(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_face_search(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetLabelDetection
      # @param [Client] client
      # @param [Hash] params (see Client#get_label_detection)
      # @param [Hash] options (see Client#get_label_detection)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_label_detection operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_label_detection(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_label_detection(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetPersonTracking
      # @param [Client] client
      # @param [Hash] params (see Client#get_person_tracking)
      # @param [Hash] options (see Client#get_person_tracking)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_person_tracking operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_person_tracking(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_person_tracking(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSegmentDetection
      # @param [Client] client
      # @param [Hash] params (see Client#get_segment_detection)
      # @param [Hash] options (see Client#get_segment_detection)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_segment_detection operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_segment_detection(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_segment_detection(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTextDetection
      # @param [Client] client
      # @param [Hash] params (see Client#get_text_detection)
      # @param [Hash] options (see Client#get_text_detection)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_text_detection operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_text_detection(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_text_detection(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCollections
      # @param [Client] client
      # @param [Hash] params (see Client#list_collections)
      # @param [Hash] options (see Client#list_collections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_collections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_collections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_collections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_collections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.collection_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDatasetEntries
      # @param [Client] client
      # @param [Hash] params (see Client#list_dataset_entries)
      # @param [Hash] options (see Client#list_dataset_entries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dataset_entries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dataset_entries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dataset_entries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_dataset_entries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.dataset_entries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDatasetLabels
      # @param [Client] client
      # @param [Hash] params (see Client#list_dataset_labels)
      # @param [Hash] options (see Client#list_dataset_labels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dataset_labels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dataset_labels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dataset_labels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_dataset_labels operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.dataset_label_descriptions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFaces
      # @param [Client] client
      # @param [Hash] params (see Client#list_faces)
      # @param [Hash] options (see Client#list_faces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_faces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_faces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_faces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_faces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.faces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStreamProcessors
      # @param [Client] client
      # @param [Hash] params (see Client#list_stream_processors)
      # @param [Hash] options (see Client#list_stream_processors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_stream_processors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_stream_processors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_stream_processors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
