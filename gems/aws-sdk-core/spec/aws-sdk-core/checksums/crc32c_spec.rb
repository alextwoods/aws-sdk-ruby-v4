# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Crt
    module Checksums
    end
  end
end

module AWS::SDK::Core
  module Checksums
    describe CRC32C do
      context 'crt is not available' do
        before do
          allow(AWS::SDK::Core).to receive(:crt_loaded?).and_return(false)
        end

        it 'raises an ArgumentError' do
          expect { CRC32C.new }.to raise_error(ArgumentError)
        end
      end

      context 'crt is available' do
        before do
          allow(AWS::SDK::Core).to receive(:crt_loaded?).and_return(true)
        end

        let(:crc32c) { double }

        it 'initializes Digest32 with the crt method' do
          # expect(Aws::Crt::Checksums)
          #   .to receive(:method).with(:crc32c).and_return(crc32c)
          # expect_any_instance_of(Digest32).to receive(:initialize).with(crc32c)
          # CRC32C.new
        end
      end
    end
  end
end
