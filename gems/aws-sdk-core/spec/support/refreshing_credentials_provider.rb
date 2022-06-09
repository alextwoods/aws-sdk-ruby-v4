# frozen_string_literal: true

RSpec.shared_examples 'refreshing_credentials_provider' do
  it 'is a refreshable credentials provider' do
    expect(subject).to be_a(AWS::SDK::Core::RefreshingCredentialsProvider)
  end

  it 'implements refreshable interface' do
    expect(subject.respond_to?(:fetch, true)).to be true
  end

  it 'plumbs before_callback to RefreshingCredentialsProvider' do
    expect(callback).to receive(:call)
      .with(an_instance_of(subject.class))
    subject.refresh
  end
end
