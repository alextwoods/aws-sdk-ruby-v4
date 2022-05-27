# frozen_string_literal: true

RSpec.shared_context 'mock_shared_config' do
  let(:mock_credential_file) do
    File.expand_path(
      File.join(
        File.dirname(__FILE__),
        'fixtures', 'shared_config', 'mock_shared_credentials'
      )
    )
  end

  let(:mock_config_file) do
    File.expand_path(
      File.join(
        File.dirname(__FILE__),
        'fixtures', 'shared_config', 'mock_shared_config'
      )
    )
  end

  # This shared config instance is shared across all RSpec tests.
  # It is used to test credential provider procs.
  let(:shared_config) do
    AWS::SDK::Core::SharedConfig.load(
      credentials_path: mock_credential_file,
      config_path: mock_config_file
    )
  end

  before do
    AWS::SDK::Core.instance_variable_set(:@shared_config, shared_config)
  end
end
