# frozen_string_literal: true

require_relative '../spec_helper'

# Define the required namespace and classes
module AWS::SDK::SSO
  class Client
    def initialize(_config, _options = {})
      nil
    end
  end
  Config = Struct.new(:region, keyword_init: true)
end

module AWS::SDK::Core
  describe SSOCredentialsProvider do
    before do
      allow(AWS::SDK::Core).to receive(:sso_loaded?).and_return(true)
    end

    describe 'SSOCredentialsProvider::PROFILE' do
      before do
        allow(AWS::SDK::Core).to receive(:shared_config)
          .and_return(shared_config)
      end

      context 'profile has sso information' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile sso_credentials]
            sso_account_id = SSO_ACCOUNT_ID
            sso_region = us-east-1
            sso_role_name = SSO_ROLE_NAME
            sso_start_url = START_URL
          CONFIG
        end

        it 'returns an instance of SSOCredentialsProvider' do
          cfg = { profile: 'sso_credentials' }
          mock_token_file('START_URL', cached_token)
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(SSOCredentialsProvider)
        end
      end

      context 'profile does not have sso information' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    let(:in_one_hour) { Time.now + (60 * 60) }
    let(:one_hour_ago) { Time.now - (60 * 60) }
    let(:expiration) { in_one_hour }

    let(:access_token) { 'token' }
    let(:cached_token) do
      { 'accessToken' => access_token, 'expiresAt' => expiration }
    end

    let(:sso_role_name) { 'role' }
    let(:sso_start_url) { 'd-peccy.awsapps.com/start' }
    let(:sso_region) { 'us-west-2' }
    let(:sso_account_id) { '12345' }

    let(:provider_options) do
      {
        sso_start_url: sso_start_url,
        sso_region: sso_region,
        sso_role_name: sso_role_name,
        sso_account_id: sso_account_id
      }
    end

    subject do
      SSOCredentialsProvider.new(**provider_options.merge(client: client))
    end

    let(:config) { double('AWS::SDK::SSO::Config') }
    let(:client) do
      double(
        'AWS::SDK::SSO::Client',
        get_role_credentials: get_role_credentials_resp
      )
    end
    let(:get_role_credentials_resp) do
      double(
        'Hearth::Output',
        data: double(
          'AWS::SDK::SSO::Types::GetRoleCredentialsOutput',
          role_credentials: double(**credential_hash)
        )
      )
    end
    let(:credential_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1',
        expiration: expiration
      }
    end

    def mock_token_file(start_url, cached_token)
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(start_url)
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(
        Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json"
      )

      allow(File).to receive(:read)
        .with(path).and_return(JSON.dump(cached_token))
    end

    include_examples 'credentials_provider'
    context 'refreshable credentials' do
      before do
        mock_token_file(sso_start_url, cached_token)
      end

      let(:callback) { proc {} }

      subject do
        SSOCredentialsProvider.new(
          **provider_options.merge(before_refresh: callback, client: client)
        )
      end

      include_examples 'refreshing_credentials_provider'
    end

    describe '#initialize' do
      it 'constructs an client with sso_region if not provided' do
        expect(AWS::SDK::SSO::Config).to receive(:new)
          .with(region: sso_region).and_return(config)
        expect(AWS::SDK::SSO::Client).to receive(:new)
          .with(config).and_return(client)
        mock_token_file(sso_start_url, cached_token)

        provider = SSOCredentialsProvider.new(**provider_options)
        expect(provider.client).to be(client)
      end

      it 'raises an ArgumentError when token file is missing' do
        start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(sso_start_url)
        allow(Dir).to receive(:home).and_return('HOME')
        path = File.join(
          Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json"
        )
        allow(File).to receive(:read).with(path).and_raise(Errno::ENOENT)

        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises an ArgumentError when token file is missing fields' do
        mock_token_file(sso_start_url, { 'accessToken' => access_token })

        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(ArgumentError)

        mock_token_file(sso_start_url, { 'expiresAt' => expiration })

        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises an ArgumentError when token is expired' do
        mock_token_file(
          sso_start_url,
          { 'accessToken' => access_token, 'expiresAt' => one_hour_ago }
        )

        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises when aws-sdk-sso is not available' do
        expect(AWS::SDK::Core).to receive(:sso_loaded?).and_return(false)
        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(RuntimeError, /aws-sdk-sso is required/)
      end

      it 'uses a provided client' do
        expect(AWS::SDK::SSO::Client).not_to receive(:new)
        mock_token_file(sso_start_url, cached_token)

        provider = SSOCredentialsProvider.new(
          **provider_options.merge(client: client)
        )
        expect(provider.client).to be(client)
      end
    end

    describe '#credentials' do
      it 'will read valid credentials from get_role_credentials' do
        mock_token_file(sso_start_url, cached_token)
        creds = subject.credentials
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
      end
    end
  end
end
