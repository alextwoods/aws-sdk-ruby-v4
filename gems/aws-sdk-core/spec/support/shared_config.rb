# frozen_string_literal: true

RSpec.shared_context 'shared_config' do
  let(:credential_file) do
    File.expand_path(
      File.join(
        File.dirname(__FILE__),
        '..', 'fixtures', 'shared_config', 'credentials'
      )
    )
  end

  let(:config_file) do
    File.expand_path(
      File.join(
        File.dirname(__FILE__),
        '..', 'fixtures', 'shared_config', 'config'
      )
    )
  end

  # This shared config instance is shared across all RSpec tests.
  # It is used to test credential provider procs.
  let(:shared_config) do
    AWS::SDK::Core::SharedConfig.load(
      credentials_path: credential_file,
      config_path: config_file
    )
  end

  before do
    AWS::SDK::Core.instance_variable_set(:@shared_config, shared_config)
  end

  after do
    AWS::SDK::Core.instance_variable_set(:@shared_config, nil)
  end
end
