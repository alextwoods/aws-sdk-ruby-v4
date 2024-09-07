# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SharedConfig do
    let(:credentials_file) do
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

    describe '.parse' do
      # TODO?
    end
  end
end
