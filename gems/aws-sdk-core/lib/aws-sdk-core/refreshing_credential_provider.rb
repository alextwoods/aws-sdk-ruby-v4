# frozen_string_literal: true

module AWS::SDK::Core
  # A module used by credential provider classes that enables refreshing. This
  # provides basic refresh logic in a thread-safe manner. Classes mixing in
  # this module are expected to implement a #refresh method that populates
  # the @credentials instance variable.
  #
  # @api private
  module RefreshingCredentialProvider
    include CredentialProvider

    SYNC_EXPIRATION_LENGTH = 60 # 1 minute
    ASYNC_EXPIRATION_LENGTH = 600 # 5 minutes

    def initialize
      @mutex = Mutex.new
    end

    # @return [Credentials]
    def credentials
      refresh_if_near_expiration!
      @credentials
    end

    # Refresh credentials.
    # @return [nil]
    def refresh
      @mutex.synchronize { fetch }
      nil
    end

    private

    # Refreshes credentials asynchronously and synchronously.
    # If we are near to expiration, block while getting new credentials.
    # Otherwise, if we're approaching expiration, use the existing credentials
    # but attempt a refresh in the background.
    def refresh_if_near_expiration!
      # NOTE: These checks are optimizations. Rather than acquire the mutex on
      # every #refresh_if_near_expiration! call, we check before doing so, and
      # then we check within the mutex to avoid a race condition.
      # See: https://github.com/aws/aws-sdk-ruby/issues/2641 for more info.
      if should_fetch?(SYNC_EXPIRATION_LENGTH)
        sync_refresh
      elsif should_fetch?(ASYNC_EXPIRATION_LENGTH)
        async_refresh
      end
    end

    def sync_refresh
      @mutex.synchronize do
        fetch if should_fetch?(SYNC_EXPIRATION_LENGTH)
      end
    end

    def async_refresh
      return if @mutex.locked?

      Thread.new do
        @mutex.synchronize do
          fetch if should_fetch?(ASYNC_EXPIRATION_LENGTH)
        end
      end
    end

    def should_fetch?(expiration_length)
      if @credentials
        if @credentials.expiration
          # Are we within expiration?
          (Time.now.to_i + expiration_length) > @credentials.expiration.to_i
        else
          false
        end
      else
        # If no credentials, we need to fetch them
        true
      end
    end
  end
end
