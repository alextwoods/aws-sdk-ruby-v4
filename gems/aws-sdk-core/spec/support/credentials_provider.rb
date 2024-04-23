# frozen_string_literal: true

RSpec.shared_examples 'credentials_provider' do
  it 'is an identity provider' do
    expect(subject).to be_a(Hearth::IdentityProvider)
  end

  it 'has an identity method' do
    expect(subject.respond_to?(:identity)).to be true
  end
end
