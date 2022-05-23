# frozen_string_literal: true

# TODO
class AWS::SDK::Core::ProcessCredentialsProvider
  include AWS::SDK::Core::CredentialProvider

  PROFILE = proc do |cfg|
    shared_config = AWS::SDK::Core.shared_config[cfg[:profile]]
    if shared_config[:credential_process]
      new(shared_config[:credential_process])
    end
  end

  # Creates a new ProcessCredentialsProvider object, which allows an
  # external process to be used as a credential provider.
  #
  # @param [String] process Invocation string for the process.
  def initialize(process)
    @process = process
  end

  private

  def credentials
    credentials_from_process(@process)
  end

  def credentials_from_process(proc_invocation)
    begin
      raw_out = `#{proc_invocation}`
      process_status = $?
    rescue Errno::ENOENT
      raise ArgumentError,
            "Could not find process: #{proc_invocation}"
    end

    if process_status.success?
      begin
        creds_json = JSON.parse(raw_out)
      rescue JSON::ParserError
        raise ArgumentError,
              "Invalid JSON response from: #{proc_invocation}"
      end
      payload_version = creds_json['Version']
      if payload_version == 1
        _parse_payload_format_v1(creds_json, proc_invocation)
      else
        raise ArgumentError,
              "Invalid version #{payload_version} for credentials payload "\
              "from: #{proc_invocation}"
      end
    else
      raise "Failure executing #{proc_invocation}, the credential process had "\
            'non zero exit status and failed to provide credentials'
    end
  end

  def _parse_payload_format_v1(creds_json, proc_invocation)
    credentials = AWS::SDK::Core::Credentials.new(
      access_key_id: creds_json[:access_key_id],
      secret_access_key: creds_json[:secret_access_key],
      session_token: creds_json[:session_token]
    )
    if creds_json['Expiration']
      @expiration = Time.iso8601(creds_json['Expiration'])
    end

    unless credentials.access_key_id && credentials.secret_access_key
      raise 'Invalid payload for JSON credentials version 1 from: '\
            "#{proc_invocation}"
    end
    @credentials = credentials
  end
end
