# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
  module Paginators

    class DescribeActivations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_activations)
      # @param [Hash] options (see Client#describe_activations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_activations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_activations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_activations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_activations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.activation_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAssociationExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_association_executions)
      # @param [Hash] options (see Client#describe_association_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_association_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_association_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_association_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_association_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.association_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAssociationExecutionTargets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_association_execution_targets)
      # @param [Hash] options (see Client#describe_association_execution_targets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_association_execution_targets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_association_execution_targets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_association_execution_targets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_association_execution_targets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.association_execution_targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAutomationExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_automation_executions)
      # @param [Hash] options (see Client#describe_automation_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_automation_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_automation_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_automation_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_automation_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.automation_execution_metadata_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAutomationStepExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_automation_step_executions)
      # @param [Hash] options (see Client#describe_automation_step_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_automation_step_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_automation_step_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_automation_step_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_automation_step_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.step_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAvailablePatches
      # @param [Client] client
      # @param [Hash] params (see Client#describe_available_patches)
      # @param [Hash] options (see Client#describe_available_patches)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_available_patches operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_available_patches(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_available_patches(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_available_patches operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.patches.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEffectiveInstanceAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_effective_instance_associations)
      # @param [Hash] options (see Client#describe_effective_instance_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_effective_instance_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_effective_instance_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_effective_instance_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_effective_instance_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeEffectivePatchesForPatchBaseline
      # @param [Client] client
      # @param [Hash] params (see Client#describe_effective_patches_for_patch_baseline)
      # @param [Hash] options (see Client#describe_effective_patches_for_patch_baseline)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_effective_patches_for_patch_baseline operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_effective_patches_for_patch_baseline(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_effective_patches_for_patch_baseline(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_effective_patches_for_patch_baseline operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.effective_patches.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceAssociationsStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_associations_status)
      # @param [Hash] options (see Client#describe_instance_associations_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_associations_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_associations_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_associations_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_associations_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_association_status_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstanceInformation
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_information)
      # @param [Hash] options (see Client#describe_instance_information)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_information operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_information(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_information(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_information operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_information_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstancePatches
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_patches)
      # @param [Hash] options (see Client#describe_instance_patches)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_patches operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_patches(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_patches(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_patches operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.patches.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstancePatchStates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_patch_states)
      # @param [Hash] options (see Client#describe_instance_patch_states)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_patch_states operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_patch_states(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_patch_states(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_patch_states operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_patch_states.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInstancePatchStatesForPatchGroup
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instance_patch_states_for_patch_group)
      # @param [Hash] options (see Client#describe_instance_patch_states_for_patch_group)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instance_patch_states_for_patch_group operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instance_patch_states_for_patch_group(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instance_patch_states_for_patch_group(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_instance_patch_states_for_patch_group operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_patch_states.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeInventoryDeletions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_inventory_deletions)
      # @param [Hash] options (see Client#describe_inventory_deletions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_inventory_deletions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_inventory_deletions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_inventory_deletions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_inventory_deletions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.inventory_deletions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_executions)
      # @param [Hash] options (see Client#describe_maintenance_window_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.window_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowExecutionTaskInvocations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_execution_task_invocations)
      # @param [Hash] options (see Client#describe_maintenance_window_execution_task_invocations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_execution_task_invocations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_execution_task_invocations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_execution_task_invocations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_execution_task_invocations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.window_execution_task_invocation_identities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowExecutionTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_execution_tasks)
      # @param [Hash] options (see Client#describe_maintenance_window_execution_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_execution_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_execution_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_execution_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_execution_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.window_execution_task_identities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindows
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_windows)
      # @param [Hash] options (see Client#describe_maintenance_windows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_windows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_windows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_windows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_windows operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.window_identities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowSchedule
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_schedule)
      # @param [Hash] options (see Client#describe_maintenance_window_schedule)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_schedule operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_schedule(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_schedule(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_schedule operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.scheduled_window_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowsForTarget
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_windows_for_target)
      # @param [Hash] options (see Client#describe_maintenance_windows_for_target)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_windows_for_target operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_windows_for_target(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_windows_for_target(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_windows_for_target operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.window_identities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowTargets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_targets)
      # @param [Hash] options (see Client#describe_maintenance_window_targets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_targets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_targets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_targets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_targets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeMaintenanceWindowTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_maintenance_window_tasks)
      # @param [Hash] options (see Client#describe_maintenance_window_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_maintenance_window_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_maintenance_window_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_maintenance_window_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_maintenance_window_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOpsItems
      # @param [Client] client
      # @param [Hash] params (see Client#describe_ops_items)
      # @param [Hash] options (see Client#describe_ops_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_ops_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_ops_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_ops_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_ops_items operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ops_item_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeParameters
      # @param [Client] client
      # @param [Hash] params (see Client#describe_parameters)
      # @param [Hash] options (see Client#describe_parameters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_parameters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_parameters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_parameters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribePatchBaselines
      # @param [Client] client
      # @param [Hash] params (see Client#describe_patch_baselines)
      # @param [Hash] options (see Client#describe_patch_baselines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_patch_baselines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_patch_baselines(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_patch_baselines(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_patch_baselines operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.baseline_identities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePatchGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_patch_groups)
      # @param [Hash] options (see Client#describe_patch_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_patch_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_patch_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_patch_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_patch_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.mappings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePatchProperties
      # @param [Client] client
      # @param [Hash] params (see Client#describe_patch_properties)
      # @param [Hash] options (see Client#describe_patch_properties)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_patch_properties operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_patch_properties(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_patch_properties(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_patch_properties operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.properties.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSessions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_sessions)
      # @param [Hash] options (see Client#describe_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_sessions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.sessions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetInventory
      # @param [Client] client
      # @param [Hash] params (see Client#get_inventory)
      # @param [Hash] options (see Client#get_inventory)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_inventory operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_inventory(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_inventory(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_inventory operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.entities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetInventorySchema
      # @param [Client] client
      # @param [Hash] params (see Client#get_inventory_schema)
      # @param [Hash] options (see Client#get_inventory_schema)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_inventory_schema operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_inventory_schema(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_inventory_schema(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_inventory_schema operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.schemas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetOpsSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_ops_summary)
      # @param [Hash] options (see Client#get_ops_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ops_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ops_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ops_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_ops_summary operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.entities.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetParameterHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_parameter_history)
      # @param [Hash] options (see Client#get_parameter_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_parameter_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_parameter_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_parameter_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetParametersByPath
      # @param [Client] client
      # @param [Hash] params (see Client#get_parameters_by_path)
      # @param [Hash] options (see Client#get_parameters_by_path)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_parameters_by_path operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_parameters_by_path(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_parameters_by_path(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_associations)
      # @param [Hash] options (see Client#list_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.associations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAssociationVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_association_versions)
      # @param [Hash] options (see Client#list_association_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_association_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_association_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_association_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_association_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.association_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCommandInvocations
      # @param [Client] client
      # @param [Hash] params (see Client#list_command_invocations)
      # @param [Hash] options (see Client#list_command_invocations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_command_invocations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_command_invocations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_command_invocations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_command_invocations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.command_invocations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCommands
      # @param [Client] client
      # @param [Hash] params (see Client#list_commands)
      # @param [Hash] options (see Client#list_commands)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_commands operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_commands(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_commands(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_commands operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.commands.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListComplianceItems
      # @param [Client] client
      # @param [Hash] params (see Client#list_compliance_items)
      # @param [Hash] options (see Client#list_compliance_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_compliance_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_compliance_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_compliance_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_compliance_items operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.compliance_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListComplianceSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#list_compliance_summaries)
      # @param [Hash] options (see Client#list_compliance_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_compliance_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_compliance_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_compliance_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_compliance_summaries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.compliance_summary_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDocuments
      # @param [Client] client
      # @param [Hash] params (see Client#list_documents)
      # @param [Hash] options (see Client#list_documents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_documents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_documents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_documents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_documents operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.document_identifiers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDocumentVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_document_versions)
      # @param [Hash] options (see Client#list_document_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_document_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_document_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_document_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_document_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.document_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOpsItemEvents
      # @param [Client] client
      # @param [Hash] params (see Client#list_ops_item_events)
      # @param [Hash] options (see Client#list_ops_item_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ops_item_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ops_item_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ops_item_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_ops_item_events operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOpsItemRelatedItems
      # @param [Client] client
      # @param [Hash] params (see Client#list_ops_item_related_items)
      # @param [Hash] options (see Client#list_ops_item_related_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ops_item_related_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ops_item_related_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ops_item_related_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_ops_item_related_items operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOpsMetadata
      # @param [Client] client
      # @param [Hash] params (see Client#list_ops_metadata)
      # @param [Hash] options (see Client#list_ops_metadata)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ops_metadata operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ops_metadata(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ops_metadata(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_ops_metadata operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ops_metadata_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourceComplianceSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_compliance_summaries)
      # @param [Hash] options (see Client#list_resource_compliance_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_compliance_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_compliance_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_compliance_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_resource_compliance_summaries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_compliance_summary_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourceDataSync
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_data_sync)
      # @param [Hash] options (see Client#list_resource_data_sync)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_data_sync operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_data_sync(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_data_sync(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_resource_data_sync operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_data_sync_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
