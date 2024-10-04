# frozen_string_literal: true

require_relative '../../spec_helper'

module AWS::SDK::Core::Identities
  describe Credentials do
    let(:access_key_id) { 'access_key_id' }
    let(:secret_access_key) { 'secret_access_key' }
    let(:session_session_token) { 'session_token' }
    let(:account_id) { '012345678910' }
    let(:expiration) { Time.now }

    subject do
      Credentials.new(
        access_key_id: access_key_id,
        secret_access_key: secret,
        session_token: token,
        expiration: expiration
      )
    end

    describe '#access_key_id' do
      it 'has an access_key_id accessor' do
        expect(subject.access_key_id).to eq(access_key_id)
      end
    end

    describe '#secret_access_key' do
      it 'has an secret_access_key accessor' do
        expect(subject.secret_access_key).to eq(secret_access_key)
      end
    end

    describe '#session_session_token' do
      it 'has an session_token accessor' do
        expect(subject.session_session_token).to eq(session_token)
      end
    end
    
    describe '#account_id' do
      it 'has an account_id accessor' do
        expect(subject.account_id).to eq(account_id)
      end
    end

    describe '#expiration' do
      it 'has an expiration accessor' do
        expect(subject.expiration).to eq(expiration)
      end
    end

    describe '#set?' do
      it 'returns true when credentials are set' do
        expect(subject.set?).to be(true)
      end

      it 'returns false when credentials are not set' do
        creds = Credentials.new(access_key_id: '', secret_access_key: '')
        expect(creds.set?).to be(false)
      end
    end

    describe '#inspect' do
      it 'only prints the access key id' do
        expect(subject.inspect).to eq(
          "#<#{subject.class.name} access_key_id=#{access_key_id.inspect}>"
        )
      end
    end
  end
end
