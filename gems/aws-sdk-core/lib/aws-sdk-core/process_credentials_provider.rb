# frozen_string_literal: true

module AWS::SDK::Core
  # A credentials provider that executes a given process and attempts
  # to read its stdout to parse a JSON payload containing the credentials.
  #
  #     provider = AWS::SDK::Core::ProcessCredentials.new(
  #       '/usr/bin/credential_proc'
  #     )
  #     ec2 = AWS::SDK::EC2::Client.new(credentials_provider: provider)
  #
  # Automatically handles refreshing credentials if an Expiration time is
  # provided in the credentials payload.
  #
  # @see https://docs.aws.amazon.com/cli/latest/topic/config-vars.html#sourcing-credentials-from-external-processes
  class ProcessCredentialsProvider < Hearth::IdentityProvider
    include Hearth::RefreshingIdentityProvider

    # Initializes an instance of ProcessCredentialProvider using a profile.
    def self.from_profile(config, options = {})
      profile = options[:profile] || config[:profile]
      profile_config = AWS::SDK::Core.shared_config.profiles[profile]
      return unless profile_config && profile_config['credential_process']

      new(process: profile_config['credential_process'])
    end

    # Creates a new ProcessCredentialProvider object, which allows an
    # external process to be used as a credential provider.
    #
    # @param [String] process Invocation string for the process.
    def initialize(process:)
      @process = process
      super()
    end

    private

    def refresh(_properties = {})
      @identity = credentials_from_process(@process)
    end

    def credentials_from_process(proc_invocation)
      raw_out, process_status = execute_command(proc_invocation)
      if process_status.success?
        creds_json = parse_payload(raw_out, proc_invocation)
        payload_version = creds_json['Version']
        if payload_version == 1
          parse_payload_format_v1(creds_json, proc_invocation)
        else
          raise "Invalid version (#{payload_version}) for credentials " \
                "payload from: #{proc_invocation}."
        end
      else
        raise "Failure executing #{proc_invocation}: the credential process " \
              'had non zero exit status and failed to provide credentials.'
      end
    end

    def execute_command(proc_invocation)
      [`#{proc_invocation}`, $CHILD_STATUS]
    rescue Errno::ENOENT
      raise ArgumentError,
            "Could not find process: #{proc_invocation}."
    end

    def parse_payload(raw_out, proc_invocation)
      JSON.parse(raw_out)
    rescue JSON::ParserError
      raise "Malformed JSON payload from: #{proc_invocation}."
    end

    def parse_payload_format_v1(creds_json, proc_invocation)
      unless creds_json['AccessKeyId'] && creds_json['SecretAccessKey']
        raise 'Invalid JSON payload for credentials from: ' \
              "#{proc_invocation}."
      end

      expiration = if creds_json['Expiration']
                     Time.iso8601(creds_json['Expiration'])
                   end
      AWS::SDK::Core::Identities::Credentials.new(
        access_key_id: creds_json['AccessKeyId'],
        secret_access_key: creds_json['SecretAccessKey'],
        session_token: creds_json['SessionToken'],
        expiration: expiration
      )
    end
  end
end
