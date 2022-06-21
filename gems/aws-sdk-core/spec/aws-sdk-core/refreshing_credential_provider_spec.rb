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
      @credentials = 'fetched'
    end
  end

  describe CredentialProvider do
    subject { TestRefreshingCredentialProvider.new(credentials) }

    let(:credentials) do
      Credentials.new(
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1'
      )
    end

    describe '#credentials' do
      it 'has a credentials accessor' do
        expect(subject.credentials).to eq(credentials)
      end
    end
  end
end
