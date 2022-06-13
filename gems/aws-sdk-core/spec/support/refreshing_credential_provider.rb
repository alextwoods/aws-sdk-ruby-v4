# frozen_string_literal: true

RSpec.shared_examples 'refreshing_credential_provider' do
  it 'is a refreshable credential provider' do
    expect(subject).to be_a(AWS::SDK::Core::RefreshingCredentialProvider)
  end

  it 'implements refreshable interface' do
    expect(subject.respond_to?(:fetch, true)).to be true
  end

  it 'plumbs before_callback to RefreshingCredentialProvider' do
    expect(callback).to receive(:call)
      .with(an_instance_of(subject.class))
    subject.refresh
  end
end
