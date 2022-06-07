# frozen_string_literal: true

module AWS::SDK::Core
  # A credential provider that retrieves credentials in JSON format from
  # a given process.
  class ProcessCredentialsProvider
    include CredentialProvider
    include RefreshingCredentialsProvider

    PROFILE = proc do |cfg|
      profile_config = AWS::SDK::Core.shared_config[cfg[:profile]]
      if profile_config && profile_config['credential_process']
        new(process: profile_config['credential_process'])
      end
    end

    # Creates a new ProcessCredentialsProvider object, which allows an
    # external process to be used as a credential provider.
    #
    # @param [String] process Invocation string for the process.
    def initialize(process:, **options)
      @process = process
      super(options)
    end

    private

    def fetch
      @credentials = credentials_from_process(@process)
    end

    def credentials_from_process(proc_invocation)
      begin
        raw_out = `#{proc_invocation}`
        process_status = $CHILD_STATUS
      rescue Errno::ENOENT
        raise ArgumentError,
              "Could not find process: #{proc_invocation}."
      end

      if process_status.success?
        begin
          creds_json = JSON.parse(raw_out)
        rescue JSON::ParserError
          raise "Malformed JSON payload from: #{proc_invocation}."
        end
        payload_version = creds_json['Version']
        if payload_version == 1
          _parse_payload_format_v1(creds_json, proc_invocation)
        else
          raise "Invalid version (#{payload_version}) for credentials payload "\
                "from: #{proc_invocation}."
        end
      else
        raise "Failure executing #{proc_invocation}: the credential process "\
              'had non zero exit status and failed to provide credentials.'
      end
    end

    def _parse_payload_format_v1(creds_json, proc_invocation)
      unless creds_json['AccessKeyId'] && creds_json['SecretAccessKey']
        raise 'Invalid JSON payload for credentials from: '\
              "#{proc_invocation}."
      end

      expiration = if creds_json['Expiration']
                     Time.iso8601(creds_json['Expiration'])
                   end
      Credentials.new(
        access_key_id: creds_json['AccessKeyId'],
        secret_access_key: creds_json['SecretAccessKey'],
        session_token: creds_json['SessionToken'],
        expiration: expiration
      )
    end
  end
end
