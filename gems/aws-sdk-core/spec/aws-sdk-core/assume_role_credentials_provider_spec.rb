# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::STS
  # Define the required namespace
  class Client; end

  Config = Struct.new(:region, :credentials_provider, keyword_init: true)
end

module AWS::SDK::Core
  describe AssumeRoleCredentialsProvider do
    before(:each) do
      allow(AWS::SDK::Core).to receive(:sts_loaded?).and_return(true)
    end

    describe 'AssumeRoleCredentialsProvider::PROFILE' do
      let(:shared_config) do
        {}
      end

      before(:each) do
        allow(AWS::SDK::Core).to receive(:shared_config)
          .and_return(shared_config)
      end

      context 'base case' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            aws_access_key_id = abc123
            aws_secret_access_key = def456
          CONFIG
        end

        let(:credentials_from_b) { double }
        let(:client) { double }

        it 'Assume RoleA using static credentials from Profile B' do
          # expect(AWS::SDK::Core::StaticCredentialsProvider)
          #   .to receive(:new)
          #         .with(access_key_id: "abc123", secret_access_key: 'def456')
          #         .and_return(credentials_from_b)
          # expect(AWS::SDK::STS::Client)
          #   .to receive(:new)
          #         .with(credentials_provider: credentials_from_b)
          #         .and_return(client)
          # AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'First profile contains credentials' do
        let(:shared_config) do
          IniParser.ini_parse(<<-CONFIG)
            [profile A]
            aws_access_key_id = abc123
            aws_secret_access_key = def456
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            aws_access_key_id = ghi890
            aws_secret_access_key = jkl123
          CONFIG
        end
      end

    end

    let(:expiration) { Time.now }

    let(:credential_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1',
        expiration: expiration
      }
    end
    let(:client) { double('sts client') }

    let(:resp) do
      double(
        'client-resp',
        data: double(credentials: double(**credential_hash))
      )
    end

    before(:each) do
      allow(AWS::SDK::STS::Client).to receive(:new).and_return(client)
    end

    let(:assume_role_params) do
      {
        role_arn: 'role_arn',
        role_session_name: 'role_session_name',
        policy: 'policy',
        duration_seconds: 'duration_seconds',
        external_id: 'external_id',
        serial_number: 'serial_number'
      }
    end

    subject { AssumeRoleCredentialsProvider.new(**assume_role_params) }

    describe '#initialize' do
      it 'constructs a default client when not given one' do
        expect(AWS::SDK::STS::Client).to receive(:new).and_return(client)
        AssumeRoleCredentialsProvider.new(**assume_role_params)
      end

      it 'uses the client when given' do
        expect(AWS::SDK::STS::Client).not_to receive(:new)
        AssumeRoleCredentialsProvider.new(**assume_role_params.merge(client: client))
      end

      context 'aws-sdk-sts not available' do
        it 'raises an error' do
          expect(AWS::SDK::Core).to receive(:sts_loaded?).and_return(false)
          expect do
            AssumeRoleCredentialsProvider.new(**assume_role_params)
          end.to raise_error(StandardError, /aws-sdk-sts is required/)
        end
      end
    end

    describe '#credentials' do
      it 'calls assume_role with the provided parameters and sets the credentials' do
        expect(client).to receive(:assume_role)
                            .with(assume_role_params)
                            .and_return(resp)

        credentials = subject.credentials
        expect(credentials).to be_an_instance_of(Credentials)
        expect(credentials.access_key_id).to eq(credential_hash[:access_key_id])
        expect(credentials.session_token).to eq(credential_hash[:session_token])
        expect(credentials.expiration).to eq(credential_hash[:expiration])
      end
    end
  end
end
