# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::TranscribeStreaming
  # An API client for Transcribe
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Transcribe streaming offers three main types of real-time transcription:
  #       <b>Standard</b>, <b>Medical</b>, and
  #       <b>Call Analytics</b>.</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Standard transcriptions</b> are the most common option. Refer
  #       to  for details.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Medical transcriptions</b> are tailored to medical professionals
  #       and incorporate medical terms. A common use case for this service is transcribing doctor-patient
  #       dialogue in real time, so doctors can focus on their patient instead of taking notes. Refer to
  #        for details.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Call Analytics transcriptions</b> are designed for use with call
  #           center audio on two different channels; if you're looking for insight into customer service calls, use this
  #           option. Refer to  for details.</p>
  #             </li>
  #          </ul>
  #
  class Client
    include Hearth::ClientStubs
    @plugins = Hearth::PluginList.new

    def self.plugins
      @plugins
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::TranscribeStreaming::Config.new, options = {})
      @config = initialize_config(config)
      @stubs = Hearth::Stubbing::Stubs.new
    end

    # @return [Config] config
    attr_reader :config

    private

    def initialize_config(config)
      config = config.dup
      client_interceptors = config.interceptors
      config.interceptors = Hearth::InterceptorList.new
      Client.plugins.apply(config)
      Hearth::PluginList.new(config.plugins).apply(config)
      config.interceptors << client_interceptors
      config.freeze
    end

    def operation_config(options)
      return @config unless options[:plugins] || options[:interceptors]

      config = @config.dup
      Hearth::PluginList.new(options[:plugins]).apply(config) if options[:plugins]
      config.interceptors << options[:interceptors] if options[:interceptors]
      config.freeze
    end
  end
end
