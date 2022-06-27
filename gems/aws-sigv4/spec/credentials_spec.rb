# frozen_string_literal: true

require_relative 'spec_helper'

module AWS::Sigv4
  describe Credentials do
    subject do
      Credentials.new(
        access_key_id: access_key_id,
        secret_access_key: secret_access_key,
        session_token: session_token,
        expiration: expiration
      )
    end

    let(:access_key_id) { 'ACCESS_KEY_1' }
    let(:secret_access_key) { 'SECRET_KEY_1' }
    let(:session_token) { 'TOKEN_1' }
    let(:expiration) { Time.now }

    describe '#initialize' do
      it 'sets all of the attributes' do
        expect(subject.access_key_id).to eq(access_key_id)
        expect(subject.secret_access_key).to eq(secret_access_key)
        expect(subject.session_token).to eq(session_token)
        expect(subject.expiration).to eq(expiration)
      end

      context 'defaults' do
        subject do
          Credentials.new(
            access_key_id: access_key_id,
            secret_access_key: secret_access_key
          )
        end

        it 'defaults session_token to nil' do
          expect(subject.session_token).to be_nil
        end

        it 'defaults expiration to nil' do
          expect(subject.expiration).to be_nil
        end
      end
    end

    describe '#inspect' do
      it 'does not return the secret key' do
        expect(subject.inspect).not_to include('secret')
      end
    end
  end
end
