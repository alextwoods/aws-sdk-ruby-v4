# frozen_string_literal: true

require_relative '../../spec_helper'

module AWS::SDK::Core::Identities
  describe Credentials do
    let(:akid) { 'akid' }
    let(:secret) { 'secret' }
    let(:token) { 'token' }
    let(:expiration) { Time.now }

    subject do
      Credentials.new(
        access_key_id: akid,
        secret_access_key: secret,
        session_token: token,
        expiration: expiration
      )
    end

    describe '#access_key_id' do
      it 'has an access_key_id accessor' do
        expect(subject.access_key_id).to eq(akid)
      end
    end

    describe '#secret_access_key' do
      it 'has an secret_access_key accessor' do
        expect(subject.secret_access_key).to eq(secret)
      end
    end

    describe '#session_token' do
      it 'has an session_token accessor' do
        expect(subject.session_token).to eq(token)
      end
    end

    describe '#expiration' do
      it 'has an expiration accessor' do
        expect(subject.expiration).to eq(expiration)
      end
    end

    describe '#set?' do
      it 'returns true when credentials are set' do
        expect(subject.set?).to be_truthy
      end

      it 'returns false when credentials are not set' do
        expect(Credentials.new(access_key_id: '', secret_access_key: '')
                 .set?).to be_falsey
      end
    end

    describe '#inspect' do
      it 'does not print the secret key' do
        expect(subject.inspect).not_to include(secret)
      end
    end
  end
end
