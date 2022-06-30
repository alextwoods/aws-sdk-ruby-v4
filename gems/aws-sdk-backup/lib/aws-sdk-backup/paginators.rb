# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Backup
  module Paginators

    class ListBackupJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_jobs)
      # @param [Hash] options (see Client#list_backup_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBackupPlans
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_plans)
      # @param [Hash] options (see Client#list_backup_plans)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_plans operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_plans(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_plans(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_plans operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_plans_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBackupPlanTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_plan_templates)
      # @param [Hash] options (see Client#list_backup_plan_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_plan_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_plan_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_plan_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_plan_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_plan_templates_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBackupPlanVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_plan_versions)
      # @param [Hash] options (see Client#list_backup_plan_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_plan_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_plan_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_plan_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_plan_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_plan_versions_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBackupSelections
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_selections)
      # @param [Hash] options (see Client#list_backup_selections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_selections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_selections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_selections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_selections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_selections_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBackupVaults
      # @param [Client] client
      # @param [Hash] params (see Client#list_backup_vaults)
      # @param [Hash] options (see Client#list_backup_vaults)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_backup_vaults operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_backup_vaults(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_backup_vaults(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_backup_vaults operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.backup_vault_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCopyJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_copy_jobs)
      # @param [Hash] options (see Client#list_copy_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_copy_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_copy_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_copy_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_copy_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.copy_jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFrameworks
      # @param [Client] client
      # @param [Hash] params (see Client#list_frameworks)
      # @param [Hash] options (see Client#list_frameworks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_frameworks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_frameworks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_frameworks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProtectedResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_protected_resources)
      # @param [Hash] options (see Client#list_protected_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_protected_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_protected_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_protected_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_protected_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRecoveryPointsByBackupVault
      # @param [Client] client
      # @param [Hash] params (see Client#list_recovery_points_by_backup_vault)
      # @param [Hash] options (see Client#list_recovery_points_by_backup_vault)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recovery_points_by_backup_vault operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recovery_points_by_backup_vault(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recovery_points_by_backup_vault(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_recovery_points_by_backup_vault operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.recovery_points.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRecoveryPointsByResource
      # @param [Client] client
      # @param [Hash] params (see Client#list_recovery_points_by_resource)
      # @param [Hash] options (see Client#list_recovery_points_by_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recovery_points_by_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recovery_points_by_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recovery_points_by_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_recovery_points_by_resource operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.recovery_points.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListReportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_report_jobs)
      # @param [Hash] options (see Client#list_report_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_report_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_report_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_report_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListReportPlans
      # @param [Client] client
      # @param [Hash] params (see Client#list_report_plans)
      # @param [Hash] options (see Client#list_report_plans)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_report_plans operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_report_plans(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_report_plans(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRestoreJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_restore_jobs)
      # @param [Hash] options (see Client#list_restore_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_restore_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_restore_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_restore_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_restore_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.restore_jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags)
      # @param [Hash] options (see Client#list_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
