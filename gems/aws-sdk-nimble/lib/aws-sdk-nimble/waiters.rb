# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Waiters

    # Wait until a LaunchProfile is Ready. Use this after invoking CreateLaunchProfile or UpdateLaunchProfile
    #
    class LaunchProfileReady
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
      # @option options [Integer] :max_delay (750)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 750 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_launch_profile,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"launch_profile\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"launch_profile\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"launch_profile\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
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
      #   (see Client#get_launch_profile)
      #
      # @param [Hash] options
      #   (see Client#get_launch_profile)
      #
      # @return [Types::GetLaunchProfile]
      #   (see Client#get_launch_profile)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a LaunchProfile is Deleted. Use this after invoking DeleteLaunchProfile
    #
    class LaunchProfileDeleted
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
      # @option options [Integer] :max_delay (750)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 750 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_launch_profile,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"launch_profile\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"launch_profile\".\"state\"",
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
      #   (see Client#get_launch_profile)
      #
      # @param [Hash] options
      #   (see Client#get_launch_profile)
      #
      # @return [Types::GetLaunchProfile]
      #   (see Client#get_launch_profile)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingImage is Ready. Use this after invoking CreateStreamingImage or UpdateStreamingImage
    #
    class StreamingImageReady
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_image,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"streaming_image\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"streaming_image\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"streaming_image\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
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
      #   (see Client#get_streaming_image)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_image)
      #
      # @return [Types::GetStreamingImage]
      #   (see Client#get_streaming_image)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingImage Deleted. Use this after invoking DeleteStreamingImage
    #
    class StreamingImageDeleted
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_image,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"streaming_image\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"streaming_image\".\"state\"",
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
      #   (see Client#get_streaming_image)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_image)
      #
      # @return [Types::GetStreamingImage]
      #   (see Client#get_streaming_image)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingSession is ready. Use this after invoking CreateStreamingSession, StartStreamingSession
    #
    class StreamingSessionReady
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
      # @option options [Integer] :max_delay (1800)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 10 || options[:min_delay],
          max_delay: 1800 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'START_FAILED'
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
      #   (see Client#get_streaming_session)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_session)
      #
      # @return [Types::GetStreamingSession]
      #   (see Client#get_streaming_session)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingSessionStopped. Use this after invoking StopStreamingSession
    #
    class StreamingSessionStopped
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
      # @option options [Integer] :max_delay (900)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 900 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'STOPPED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'STOP_FAILED'
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
      #   (see Client#get_streaming_session)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_session)
      #
      # @return [Types::GetStreamingSession]
      #   (see Client#get_streaming_session)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingSessionDeleted. Use this after invoking Deletesession
    #
    class StreamingSessionDeleted
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
      # @option options [Integer] :max_delay (900)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 900 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_session,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"session\".\"state\"",
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
      #   (see Client#get_streaming_session)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_session)
      #
      # @return [Types::GetStreamingSession]
      #   (see Client#get_streaming_session)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StreamingSessionStream is ready. Use this after invoking CreateStreamingSessionStream
    #
    class StreamingSessionStreamReady
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
      # @option options [Integer] :max_delay (150)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 150 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_streaming_session_stream,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stream\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stream\".\"state\"",
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
      #   (see Client#get_streaming_session_stream)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_session_stream)
      #
      # @return [Types::GetStreamingSessionStream]
      #   (see Client#get_streaming_session_stream)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Studio is Ready. Use this after invoking CreateStudio, UpdateStudio, or StartStudioSSOConfigurationRepair
    #
    class StudioReady
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_studio,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"studio\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
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
      #   (see Client#get_studio)
      #
      # @param [Hash] options
      #   (see Client#get_studio)
      #
      # @return [Types::GetStudio]
      #   (see Client#get_studio)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a Studio is Deleted. Use this after invoking DeleteStudio.
    #
    class StudioDeleted
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_studio,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"studio\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio\".\"state\"",
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
      #   (see Client#get_studio)
      #
      # @param [Hash] options
      #   (see Client#get_studio)
      #
      # @return [Types::GetStudio]
      #   (see Client#get_studio)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StudioComponent is Ready. Use this after invoking CreateStudioComponent or UpdateStudioComponent
    #
    class StudioComponentReady
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_studio_component,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"studio_component\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'READY'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio_component\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio_component\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'UPDATE_FAILED'
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
      #   (see Client#get_studio_component)
      #
      # @param [Hash] options
      #   (see Client#get_studio_component)
      #
      # @return [Types::GetStudioComponent]
      #   (see Client#get_studio_component)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a StudioComponent Deleted. Use this after invoking DeleteStudioComponent
    #
    class StudioComponentDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (1)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 1 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_studio_component,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"studio_component\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"studio_component\".\"state\"",
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
      #   (see Client#get_studio_component)
      #
      # @param [Hash] options
      #   (see Client#get_studio_component)
      #
      # @return [Types::GetStudioComponent]
      #   (see Client#get_studio_component)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
