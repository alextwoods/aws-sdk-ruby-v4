# frozen_string_literal: true

RSpec.shared_examples 'credential_provider' do
  it 'is a credential provider' do
    expect(subject).to be_a(AWS::SDK::Core::CredentialProvider)
  end

  it 'has a credentials method' do
    expect(subject.respond_to?(:credentials)).to be true
  end
end
