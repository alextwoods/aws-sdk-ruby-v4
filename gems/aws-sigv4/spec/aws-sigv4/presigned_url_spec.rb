# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SigV4
  describe PresignedUrl do
    subject do
      PresignedUrl.new(
        url: url,
        headers: headers,
        metadata: metadata
      )
    end

    let(:url) { URI('https://example.com?key=value') }
    let(:headers) { { 'key' => 'value' } }
    let(:metadata) do
      {
        string_to_sign: 'sts',
        canonical_request: 'creq',
        signature: 'sig',
        content_sha256: 'checksum'
      }
    end

    describe '#initialize' do
      it 'sets all of the attributes' do
        expect(subject.url).to eq(url)
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
