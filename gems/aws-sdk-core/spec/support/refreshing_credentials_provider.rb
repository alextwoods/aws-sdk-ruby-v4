# frozen_string_literal: true

RSpec.shared_examples 'refreshing_credentials_provider' do
  include_examples 'credentials_provider'

  it 'is a refreshable identity provider' do
    expect(subject).to be_a(Hearth::RefreshingIdentityProvider)
  end

  it 'implements refreshable interface' do
    expect(subject.respond_to?(:refresh, true)).to be true
  end
end
