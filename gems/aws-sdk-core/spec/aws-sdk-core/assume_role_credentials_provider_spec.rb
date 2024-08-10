# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe AssumeRoleCredentialsProvider do
    before do
      allow(AWS::SDK::Core).to receive(:sts_loaded?).and_return(true)
      allow(AWS::SDK::Core).to receive(:sso_loaded?).and_return(false)
    end

    describe 'AssumeRoleCredentialsProvider::PROFILE' do
      before do
        config_file = Tempfile.create('config')
        config_file.write(shared_config)
        config_file.close
        config = SharedConfig.load(config_path: config_file.path)
        allow(AWS::SDK::Core).to receive(:shared_config).and_return(config)
      end

      context 'base case' do
        let(:shared_config) do
          <<~CONFIG
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
          # verify credentials from B
          expect(AWS::SDK::Core::StaticCredentialsProvider)
            .to receive(:new)
            .with(access_key_id: 'abc123', secret_access_key: 'def456',
                  session_token: nil)
            .and_return(credentials_from_b)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_b)
          end.and_return(client)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'First profile contains credentials' do
        let(:shared_config) do
          <<~CONFIG
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

        let(:credentials_from_b) { double }
        let(:client) { double }

        it 'Assumes RoleA using static credentials from Profile B' do
          # verify credentials from B
          expect(AWS::SDK::Core::StaticCredentialsProvider)
            .to receive(:new)
            .with(access_key_id: 'ghi890', secret_access_key: 'jkl123',
                  session_token: nil)
            .and_return(credentials_from_b)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_b)
          end.and_return(client)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      # combine tests for all assume role parameters
      context 'Assume role parameters provided' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            role_session_name = my_session_name
            external_id = my_external_id
            mfa_serial = arn:aws:iam::123456789012:mfa/user
            duration_seconds = 1234
            source_profile = B

            [profile B]
            aws_access_key_id = abc123
            aws_secret_access_key = def456
          CONFIG
        end

        let(:credentials_from_b) { double }
        let(:client) { double }

        it 'Assumes RoleA using static credentials from Profile B with all ' \
           'assume role parameters' do
          # verify credentials from B
          expect(AWS::SDK::Core::StaticCredentialsProvider)
            .to receive(:new)
            .with(access_key_id: 'abc123', secret_access_key: 'def456',
                  session_token: nil)
            .and_return(credentials_from_b)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_b)
          end.and_return(client)

          # verify client is used
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
            expect(kwargs[:role_session_name]).to eq('my_session_name')
            expect(kwargs[:external_id]).to eq('my_external_id')
            expect(kwargs[:serial_number])
              .to eq('arn:aws:iam::123456789012:mfa/user')
            expect(kwargs[:duration_seconds]).to eq(1234)
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'Credential Source: EC2 Instance Metadata' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            credential_source = Ec2InstanceMetadata
            ec2_metadata_service_endpoint_mode = IPv4
            ec2_metadata_service_endpoint = http://169.254.169.254
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Assumes RoleA using EC2CredentialProvider' do
          ec2_metadata = double('EC2Metadata')
          expect(EC2Metadata).to receive(:new)
            .with(endpoint_mode: 'IPv4', endpoint: 'http://169.254.169.254')
            .and_return(ec2_metadata)
          expect(EC2CredentialsProvider).to receive(:new)
            .with(client: ec2_metadata).and_return(source_credentials)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(source_credentials)
          end.and_return(client)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'Credential Source: Environment Variables' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            credential_source = Environment
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Assumes RoleA using credentials from the environment' do
          expect(StaticCredentialsProvider::ENVIRONMENT)
            .to receive(:call).and_return(source_credentials)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(source_credentials)
          end.and_return(client)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end

        it 'raises when missing' do
          expect(StaticCredentialsProvider::ENVIRONMENT)
            .to receive(:call).and_return(nil)

          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::NoSourceCredentialsError,
            /could not get source credentials/
          )
        end
      end

      context 'Credential Source: ECS Container' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            credential_source = EcsContainer
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Assumes RoleA using credentials from the environment' do
          expect(ECSCredentialsProvider)
            .to receive(:new).and_return(source_credentials)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(source_credentials)
          end.and_return(client)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'No source profile or credential source' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Raise error due to lack of source_profile or credential_source' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::NoSourceProfileError,
            'Profile A has a role_arn but no source_profile ' \
            'or credential_source'
          )
        end
      end

      context 'Both source profile and credential source' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            credential_source = Environment
            source_profile = B

            [profile B]
            aws_access_key_id = abc123
            aws_secret_access_key = def456
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Raise error due to lack of source_profile or credential_source' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::CredentialSourceConflictError,
            /Profile A has a source_profile and a credential_source/
          )
        end
      end

      context 'Source Profile Has Partial Credentials' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            aws_access_key_id = abc123
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Raises error due to lack of complete credentials' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::NoSourceCredentialsError,
            /source_profile does not have credentials/
          )
        end
      end

      context "Source Profile Doesn't Exist" do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Raise error due to missing profile' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::NoSuchProfileError,
            /source_profile B does not exist/
          )
        end
      end

      context 'Credential Source Not Supported' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            credential_source = CustomUnsupportedProvider
          CONFIG
        end

        let(:source_credentials) { double }
        let(:client) { double }

        it 'Raise error due to unsupported credential source' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::InvalidCredentialSourceError,
            /Unsupported credential_source/
          )
        end
      end

      context 'Chained Assume Role Profiles' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            role_arn = arn:aws:iam::123456789:role/RoleB
            source_profile = C

            [profile C]
            aws_access_key_id = mno456
            aws_secret_access_key = pqr789
          CONFIG
        end

        let(:credentials_from_b) { double }
        let(:credentials_from_c) { double }
        let(:client_b) { double }
        let(:client_a) { double }

        it 'Assumes RoleA using chained credentials from RoleB' do
          # verify credentials from C
          expect(AWS::SDK::Core::StaticCredentialsProvider)
            .to receive(:new)
            .with(access_key_id: 'mno456', secret_access_key: 'pqr789',
                  session_token: nil)
            .and_return(credentials_from_c)

          # verify client for B is created with credentials from C
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_c)
          end.and_return(client_b)

          # verify client_b is used to assume role b
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client_b)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleB')
          end.and_return(credentials_from_b)

          # verify client for A  is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_b)
          end.and_return(client_a)

          # verify client a is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client_a)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'Chained Assume Role Profiles With Static Credentials' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            aws_access_key_id = abc123
            aws_secret_access_key = def456
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            aws_access_key_id = ghi890
            aws_secret_access_key = jkl123
            role_arn = arn:aws:iam::123456789:role/RoleB
            source_profile = C

            [profile C]
            aws_access_key_id = mno456
            aws_secret_access_key = pqr789
          CONFIG
        end

        let(:credentials_from_b) { double }
        let(:client_a) { double }

        it 'Assumes RoleA using static credentials from Profile B' do
          # verify credentials from B
          expect(AWS::SDK::Core::StaticCredentialsProvider)
            .to receive(:new)
            .with(access_key_id: 'ghi890', secret_access_key: 'jkl123',
                  session_token: nil)
            .and_return(credentials_from_b)

          # verify client is created with credentials from B
          expect(AWS::SDK::STS::Client).to receive(:new) do |cfg|
            expect(cfg[:credentials_provider]).to be(credentials_from_b)
          end.and_return(client_a)

          # verify client is used to assume role a
          expect(AssumeRoleCredentialsProvider).to receive(:new) do |**kwargs|
            expect(kwargs[:client]).to be(client_a)
            expect(kwargs[:role_arn]).to eq('arn:aws:iam::123456789:role/RoleA')
          end

          AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
        end
      end

      context 'Chained Assume Role Profiles Loop Infinitely' do
        let(:shared_config) do
          <<~CONFIG
            [profile A]
            role_arn = arn:aws:iam::123456789:role/RoleA
            source_profile = B

            [profile B]
            role_arn = arn:aws:iam::123456789:role/RoleB
            source_profile = A
          CONFIG
        end

        it 'Raises an error due to Profile B referencing a visited profile' do
          expect do
            AssumeRoleCredentialsProvider::PROFILE.call({ profile: 'A' })
          end.to raise_error(
            AssumeRoleCredentialsProvider::SourceProfileCircularReferenceError,
            /Circular reference/
          )
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

    before do
      allow(AWS::SDK::STS::Client).to receive(:new).and_return(client)
    end

    let(:token_code) { nil }

    let(:assume_role_params) do
      {
        role_arn: 'role_arn',
        role_session_name: 'role_session_name',
        duration_seconds: 'duration_seconds',
        external_id: 'external_id',
        serial_number: 'serial_number',
        token_code: token_code
      }
    end

    subject { AssumeRoleCredentialsProvider.new(**assume_role_params) }

    include_examples 'refreshing_credentials_provider'

    describe '#initialize' do
      it 'constructs a default client when not given one' do
        expect(AWS::SDK::STS::Client).to receive(:new).and_return(client)
        AssumeRoleCredentialsProvider.new(**assume_role_params)
      end

      it 'uses the client when given' do
        expect(AWS::SDK::STS::Client).not_to receive(:new)
        AssumeRoleCredentialsProvider.new(
          **assume_role_params.merge(client: client)
        )
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

    describe '#identity' do
      it 'calls assume_role with the provided parameters and sets the ' \
         'credentials' do
        expect(client).to receive(:assume_role)
          .with(assume_role_params)
          .and_return(resp)

        credentials = subject.identity
        expect(credentials.access_key_id).to eq(credential_hash[:access_key_id])
        expect(credentials.secret_access_key)
          .to eq(credential_hash[:secret_access_key])
        expect(credentials.session_token).to eq(credential_hash[:session_token])
        expect(credentials.expiration).to eq(credential_hash[:expiration])
      end

      context 'token_code is a string' do
        let(:token_code) { 'token_code' }

        it 'calls assume_role with the provided token_code' do
          expect(client).to receive(:assume_role)
            .with(assume_role_params).and_return(resp)

          subject.identity
        end
      end

      context 'token_code is callable' do
        let(:token_code) do
          proc { 'dynamic_token_code' }
        end

        it 'calls token_code and then calls assume_role with the result' do
          expect(token_code).to receive(:call).and_call_original
          expect(client).to receive(:assume_role) do |args|
            expect(args[:token_code]).to eq('dynamic_token_code')
          end.and_return(resp)
          subject.identity
        end
      end
    end
  end
end
