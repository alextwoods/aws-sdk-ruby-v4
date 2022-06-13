# frozen_string_literal: true

RSpec.shared_examples 'credentials_provider' do
  it 'is a credentials provider' do
    expect(subject).to be_a(AWS::SDK::Core::CredentialsProvider)
  end

  it 'has a credentials method' do
    expect(subject.respond_to?(:credentials)).to be true
  end
end
