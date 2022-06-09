# frozen_string_literal: true

require_relative '../spec_helper'

# Define the required namespace and classes
module AWS::SDK::SSO
  class Client; end
  Config = Struct.new(:region, keyword_init: true)
end

module AWS::SDK::Core
  describe SSOCredentialsProvider do
    describe SSOCredentialsProvider::PROFILE do
      include_context 'shared_config'

      context 'profile has sso information' do
        it 'returns an instance of SSOCredentialsProvider' do
          cfg = { profile: 'sso_credentials' }
          mock_token_file('START_URL', cached_token)
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(SSOCredentialsProvider)
        end
      end

      context 'profile does not have sso information' do
        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    before(:each) do
      allow(AWS::SDK::Core).to receive(:sso_loaded?).and_return(true)
    end

    let(:callback) { nil }

    subject do
      SSOCredentialsProvider.new(
        **sso_provider_options.merge(before_refresh: callback)
      )
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

    let(:sso_provider_options) do
      {
        sso_start_url: sso_start_url,
        sso_region: sso_region,
        sso_role_name: sso_role_name,
        sso_account_id: sso_account_id
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

    it 'is refreshable' do
      mock_token_file(sso_start_url, cached_token)
      expect(subject.respond_to?(:refresh, true)).to be true
      expect(subject).to be_a(RefreshingCredentialsProvider)
    end

    describe '#initialize' do
      it 'constructs an client with sso_region if not provided' do
        expect(AWS::SDK::SSO::Config).to receive(:new)
          .with(region: sso_region).and_call_original
        expect(AWS::SDK::SSO::Client).to receive(:new)
          .with(an_instance_of(AWS::SDK::SSO::Config))
          .and_return(client)
        mock_token_file(sso_start_url, cached_token)

        provider = SSOCredentialsProvider.new(**sso_provider_options)
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
          SSOCredentialsProvider.new(**sso_provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises an ArgumentError when token file is missing fields' do
        mock_token_file(sso_start_url, { 'accessToken' => access_token })

        expect do
          SSOCredentialsProvider.new(**sso_provider_options)
        end.to raise_error(ArgumentError)

        mock_token_file(sso_start_url, { 'expiresAt' => expiration })

        expect do
          SSOCredentialsProvider.new(**sso_provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises an InvalidSSOCredentials error when token is expired' do
        mock_token_file(
          sso_start_url,
          { 'accessToken' => access_token, 'expiresAt' => one_hour_ago }
        )

        expect do
          SSOCredentialsProvider.new(**sso_provider_options)
        end.to raise_error(ArgumentError)
      end

      it 'raises when aws-sdk-sso is not available' do
        expect(AWS::SDK::Core).to receive(:sso_loaded?).and_return(false)
        expect do
          SSOCredentialsProvider.new(**sso_provider_options)
        end.to raise_error(RuntimeError, /aws-sdk-sso is required/)
      end

      it 'uses a provided client' do
        expect(AWS::SDK::SSO::Client).not_to receive(:new)
        mock_token_file(sso_start_url, cached_token)

        provider = SSOCredentialsProvider.new(
          **sso_provider_options.merge(client: client)
        )
        expect(provider.client).to be(client)
      end

      context 'before_refresh' do
        let(:callback) do
          proc {}
        end

        it 'uses the callback' do
          require 'byebug'
          byebug
          mock_token_file(sso_start_url, cached_token)
          expect(an_instance_of(AWS::SDK::SSO::Client))
            .to receive(:get_role_credentials)
          expect(callback).to receive(:call)
            .with(an_instance_of(SSOCredentialsProvider))
          subject.refresh
        end
      end
    end
  end
end
