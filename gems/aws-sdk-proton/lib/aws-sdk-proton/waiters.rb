# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Proton
  module Waiters

    # Wait until a Component is deployed. Use this after invoking CreateComponent or UpdateComponent
    #
    class ComponentDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"component\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCEEDED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"component\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_component)
      #
      # @param [Hash] options
      #   (see Client#get_component)
      #
      # @return [Types::GetComponent]
      #   (see Client#get_component)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Component is deleted. Use this after invoking DeleteComponent
    #
    class ComponentDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_component,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"component\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_component)
      #
      # @param [Hash] options
      #   (see Client#get_component)
      #
      # @return [Types::GetComponent]
      #   (see Client#get_component)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an Environment is deployed. Use this after invoking CreateEnvironment or UpdateEnvironment
    #
    class EnvironmentDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_environment,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environment\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCEEDED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"environment\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_environment)
      #
      # @param [Hash] options
      #   (see Client#get_environment)
      #
      # @return [Types::GetEnvironment]
      #   (see Client#get_environment)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an EnvironmentTemplateVersion is registered. Use this after invoking CreateEnvironmentTemplateVersion
    #
    class EnvironmentTemplateVersionRegistered
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (2)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (300)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 300 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_environment_template_version,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environment_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DRAFT'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environment_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PUBLISHED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"environment_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'REGISTRATION_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_environment_template_version)
      #
      # @param [Hash] options
      #   (see Client#get_environment_template_version)
      #
      # @return [Types::GetEnvironmentTemplateVersion]
      #   (see Client#get_environment_template_version)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an Service has deployed its instances and possibly pipeline. Use this after invoking CreateService
    #
    class ServiceCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED_CLEANUP_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED_CLEANUP_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service)
      #
      # @param [Hash] options
      #   (see Client#get_service)
      #
      # @return [Types::GetService]
      #   (see Client#get_service)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Service, its instances, and possibly pipeline have been deployed after UpdateService is invoked
    #
    class ServiceUpdated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED_CLEANUP_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED_CLEANUP_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_COMPLETE_CLEANUP_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service)
      #
      # @param [Hash] options
      #   (see Client#get_service)
      #
      # @return [Types::GetService]
      #   (see Client#get_service)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Service, its instances, and possibly pipeline have been deleted after DeleteService is invoked
    #
    class ServiceDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service)
      #
      # @param [Hash] options
      #   (see Client#get_service)
      #
      # @return [Types::GetService]
      #   (see Client#get_service)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an ServicePipeline is deployed. Use this after invoking CreateService or UpdateServicePipeline
    #
    class ServicePipelineDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (10)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (3600)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 10 || options[:min_delay],
          max_delay: 3600 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service\".\"pipeline\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCEEDED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service\".\"pipeline\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service)
      #
      # @param [Hash] options
      #   (see Client#get_service)
      #
      # @return [Types::GetService]
      #   (see Client#get_service)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a ServiceInstance is deployed. Use this after invoking CreateService or UpdateServiceInstance
    #
    class ServiceInstanceDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (4999)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 4999 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service_instance,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service_instance\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCEEDED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service_instance\".\"deployment_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service_instance)
      #
      # @param [Hash] options
      #   (see Client#get_service_instance)
      #
      # @return [Types::GetServiceInstance]
      #   (see Client#get_service_instance)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a ServiceTemplateVersion is registered. Use this after invoking CreateServiceTemplateVersion
    #
    class ServiceTemplateVersionRegistered
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (2)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (300)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 300 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_service_template_version,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DRAFT'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"service_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PUBLISHED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"service_template_version\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'REGISTRATION_FAILED'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_service_template_version)
      #
      # @param [Hash] options
      #   (see Client#get_service_template_version)
      #
      # @return [Types::GetServiceTemplateVersion]
      #   (see Client#get_service_template_version)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
