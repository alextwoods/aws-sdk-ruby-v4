# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SigV4
  describe Signature do
    subject do
      Signature.new(
        headers: headers,
        metadata: metadata
      )
    end

    let(:headers) { { 'key' => 'value' } }
    let(:metadata) do
      {
        string_to_sign: 'sts',
        canonical_request: 'creq',
        content_sha256: '123'
      }
    end

    describe '#initialize' do
      it 'sets all of the attributes' do
        expect(subject.headers).to eq(headers)
        expect(subject.metadata).to eq(metadata)
      end

      context 'defaults' do
        subject do
          Signature.new(headers: headers)
        end

        it 'defaults metadata to an empty hash' do
          expect(subject.metadata).to eq({})
        end
      end
    end
  end
end
