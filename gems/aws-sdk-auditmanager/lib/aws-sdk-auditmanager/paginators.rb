# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AuditManager
  module Paginators

    class GetChangeLogs
      # @param [Client] client
      # @param [Hash] params (see Client#get_change_logs)
      # @param [Hash] options (see Client#get_change_logs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_change_logs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_change_logs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_change_logs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetDelegations
      # @param [Client] client
      # @param [Hash] params (see Client#get_delegations)
      # @param [Hash] options (see Client#get_delegations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_delegations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_delegations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_delegations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetEvidenceByEvidenceFolder
      # @param [Client] client
      # @param [Hash] params (see Client#get_evidence_by_evidence_folder)
      # @param [Hash] options (see Client#get_evidence_by_evidence_folder)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_evidence_by_evidence_folder operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_evidence_by_evidence_folder(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_evidence_by_evidence_folder(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetEvidenceFoldersByAssessment
      # @param [Client] client
      # @param [Hash] params (see Client#get_evidence_folders_by_assessment)
      # @param [Hash] options (see Client#get_evidence_folders_by_assessment)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_evidence_folders_by_assessment operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_evidence_folders_by_assessment(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_evidence_folders_by_assessment(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetEvidenceFoldersByAssessmentControl
      # @param [Client] client
      # @param [Hash] params (see Client#get_evidence_folders_by_assessment_control)
      # @param [Hash] options (see Client#get_evidence_folders_by_assessment_control)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_evidence_folders_by_assessment_control operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_evidence_folders_by_assessment_control(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_evidence_folders_by_assessment_control(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentControlInsightsByControlDomain
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_control_insights_by_control_domain)
      # @param [Hash] options (see Client#list_assessment_control_insights_by_control_domain)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_control_insights_by_control_domain operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_control_insights_by_control_domain(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_control_insights_by_control_domain(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentFrameworks
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_frameworks)
      # @param [Hash] options (see Client#list_assessment_frameworks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_frameworks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_frameworks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_frameworks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentFrameworkShareRequests
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_framework_share_requests)
      # @param [Hash] options (see Client#list_assessment_framework_share_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_framework_share_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_framework_share_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_framework_share_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentReports
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_reports)
      # @param [Hash] options (see Client#list_assessment_reports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_reports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_reports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_reports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessments
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessments)
      # @param [Hash] options (see Client#list_assessments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListControlDomainInsights
      # @param [Client] client
      # @param [Hash] params (see Client#list_control_domain_insights)
      # @param [Hash] options (see Client#list_control_domain_insights)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_control_domain_insights operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_control_domain_insights(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_control_domain_insights(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListControlDomainInsightsByAssessment
      # @param [Client] client
      # @param [Hash] params (see Client#list_control_domain_insights_by_assessment)
      # @param [Hash] options (see Client#list_control_domain_insights_by_assessment)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_control_domain_insights_by_assessment operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_control_domain_insights_by_assessment(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_control_domain_insights_by_assessment(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListControlInsightsByControlDomain
      # @param [Client] client
      # @param [Hash] params (see Client#list_control_insights_by_control_domain)
      # @param [Hash] options (see Client#list_control_insights_by_control_domain)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_control_insights_by_control_domain operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_control_insights_by_control_domain(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_control_insights_by_control_domain(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListControls
      # @param [Client] client
      # @param [Hash] params (see Client#list_controls)
      # @param [Hash] options (see Client#list_controls)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_controls operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_controls(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_controls(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListKeywordsForDataSource
      # @param [Client] client
      # @param [Hash] params (see Client#list_keywords_for_data_source)
      # @param [Hash] options (see Client#list_keywords_for_data_source)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_keywords_for_data_source operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_keywords_for_data_source(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_keywords_for_data_source(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNotifications
      # @param [Client] client
      # @param [Hash] params (see Client#list_notifications)
      # @param [Hash] options (see Client#list_notifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_notifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_notifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
