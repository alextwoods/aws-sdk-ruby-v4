# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe Checksums do
    describe '.algorithm_for' do

      before do
        allow(AWS::SDK::Core).to receive(:crt_loaded?).and_return(true)
        allow(Checksums::CRC32C).to receive(:digest_method).and_return(double)
      end

      %w[MD5 SHA1 SHA256 CRC32 CRC32c].each do |algorithm|
        context "when given #{algorithm}" do
          it 'returns a checksum object' do
            digest = subject.algorithm_for(algorithm)
            expect(digest).to respond_to(:digest_length)
            expect(digest).to respond_to(:base64digest)
            expect(digest).to respond_to(:reset)
            expect(digest).to respond_to(:update)
          end
        end
      end

      it 'raises an ArgumentError when given an unsupported algorithm' do
        expect { described_class.algorithm_for('XYZ') }
          .to raise_error(ArgumentError, /Unsupported checksum algorithm/)
      end
    end
  end
end
