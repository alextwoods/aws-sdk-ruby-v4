# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMaker
  module Waiters

    class EndpointDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ValidationException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"endpoint_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_endpoint)
      #
      # @param [Hash] options
      #   (see Client#describe_endpoint)
      #
      # @return [Types::DescribeEndpoint]
      #   (see Client#describe_endpoint)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class EndpointInService
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_endpoint,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"endpoint_status\"",
                    comparator: "stringEquals",
                    expected: 'InService'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"endpoint_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_endpoint)
      #
      # @param [Hash] options
      #   (see Client#describe_endpoint)
      #
      # @return [Types::DescribeEndpoint]
      #   (see Client#describe_endpoint)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_image,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"image_status\"",
                    comparator: "stringEquals",
                    expected: 'CREATED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"image_status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_image)
      #
      # @param [Hash] options
      #   (see Client#describe_image)
      #
      # @return [Types::DescribeImage]
      #   (see Client#describe_image)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_image,
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
                    path: "\"image_status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_image)
      #
      # @param [Hash] options
      #   (see Client#describe_image)
      #
      # @return [Types::DescribeImage]
      #   (see Client#describe_image)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageUpdated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_image,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"image_status\"",
                    comparator: "stringEquals",
                    expected: 'CREATED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"image_status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_image)
      #
      # @param [Hash] options
      #   (see Client#describe_image)
      #
      # @return [Types::DescribeImage]
      #   (see Client#describe_image)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageVersionCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_image_version,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"image_version_status\"",
                    comparator: "stringEquals",
                    expected: 'CREATED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"image_version_status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_image_version)
      #
      # @param [Hash] options
      #   (see Client#describe_image_version)
      #
      # @return [Types::DescribeImageVersion]
      #   (see Client#describe_image_version)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageVersionDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_image_version,
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
                    path: "\"image_version_status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_image_version)
      #
      # @param [Hash] options
      #   (see Client#describe_image_version)
      #
      # @return [Types::DescribeImageVersion]
      #   (see Client#describe_image_version)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NotebookInstanceDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ValidationException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"notebook_instance_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_notebook_instance)
      #
      # @param [Hash] options
      #   (see Client#describe_notebook_instance)
      #
      # @return [Types::DescribeNotebookInstance]
      #   (see Client#describe_notebook_instance)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NotebookInstanceInService
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"notebook_instance_status\"",
                    comparator: "stringEquals",
                    expected: 'InService'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"notebook_instance_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_notebook_instance)
      #
      # @param [Hash] options
      #   (see Client#describe_notebook_instance)
      #
      # @return [Types::DescribeNotebookInstance]
      #   (see Client#describe_notebook_instance)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NotebookInstanceStopped
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_notebook_instance,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"notebook_instance_status\"",
                    comparator: "stringEquals",
                    expected: 'Stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"notebook_instance_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_notebook_instance)
      #
      # @param [Hash] options
      #   (see Client#describe_notebook_instance)
      #
      # @return [Types::DescribeNotebookInstance]
      #   (see Client#describe_notebook_instance)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ProcessingJobCompletedOrStopped
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_processing_job,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"processing_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"processing_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"processing_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_processing_job)
      #
      # @param [Hash] options
      #   (see Client#describe_processing_job)
      #
      # @return [Types::DescribeProcessingJob]
      #   (see Client#describe_processing_job)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TrainingJobCompletedOrStopped
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (120)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 120 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_training_job,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"training_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"training_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"training_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_training_job)
      #
      # @param [Hash] options
      #   (see Client#describe_training_job)
      #
      # @return [Types::DescribeTrainingJob]
      #   (see Client#describe_training_job)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TransformJobCompletedOrStopped
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_transform_job,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"transform_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"transform_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"transform_job_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_transform_job)
      #
      # @param [Hash] options
      #   (see Client#describe_transform_job)
      #
      # @return [Types::DescribeTransformJob]
      #   (see Client#describe_transform_job)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
