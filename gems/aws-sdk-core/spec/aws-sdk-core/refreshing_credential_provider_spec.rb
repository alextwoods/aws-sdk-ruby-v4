# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  class TestRefreshingCredentialProvider
    include RefreshingCredentialProvider

    def initialize(credentials)
      @credentials = credentials
      super()
    end

    private

    def fetch
      @credentials = Credentials.new(
        access_key_id: 'ACCESS_KEY_2',
        secret_access_key: 'SECRET_KEY_2'
      )
    end
  end

  describe CredentialProvider do
    subject { TestRefreshingCredentialProvider.new(credentials) }

    let(:mutex) { subject.instance_variable_get(:@mutex) }

    let(:expiration) { Time.now + (60 * 15) }
    let(:credentials) do
      Credentials.new(
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        expiration: expiration
      )
    end

    describe '#credentials' do
      context 'credentials expire in less than one minute' do
        let(:expiration) { Time.now + 60 - 1 }

        it 'refreshes synchronously' do
          expect(mutex).to receive(:synchronize).and_call_original
          expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_2')
        end
      end

      context 'credentials expire in less than five minutes' do
        let(:expiration) { Time.now + (60 * 5) - 1 }

        it 'refreshes asynchronously' do
          expect(mutex).to receive(:locked?).and_call_original
          expect(Thread).to receive(:new).and_yield
          expect(mutex).to receive(:synchronize).and_call_original
          expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_2')
        end
      end

      context 'credentials are not close to expiration' do
        it 'does not refresh credentials' do
          expect(mutex).not_to receive(:synchronize)
          expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_1')
        end
      end

      context 'credentials were never fetched' do
        let(:credentials) { nil }

        it 'fetches credentials' do
          expect(mutex).to receive(:synchronize).and_call_original
          expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_2')
        end
      end

      context 'credentials do not expire' do
        let(:expiration) { nil }

        it 'does not refresh credentials' do
          expect(mutex).not_to receive(:synchronize)
          expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_1')
        end
      end
    end

    describe '#refresh' do
      it 'refreshes the credentials' do
        expect(mutex).to receive(:synchronize).and_call_original
        expect(subject.refresh).to be nil
        expect(subject.credentials.access_key_id).to eq('ACCESS_KEY_2')
      end
    end
  end
end
