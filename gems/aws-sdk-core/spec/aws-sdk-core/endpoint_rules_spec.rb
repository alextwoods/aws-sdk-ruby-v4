# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  module EndpointRules
    describe '.partition' do
      it 'returns the partition metadata' do
        expect(EndpointRules.partition('us-east-1')).to include(
          'name', 'dnsSuffix', 'dualStackDnsSuffix', 'implicitGlobalRegion',
          'supportsDualStack', 'supportsFIPS'
        )
      end

      it 'returns the partition when the region matches' do
        expect(EndpointRules.partition('us-isob-east-1')['name'])
          .to eq('aws-iso-b')
      end

      it 'returns the partition when the region regex matches' do
        expect(EndpointRules.partition('us-isob-east-2')['name'])
          .to eq('aws-iso-b')
      end

      it 'falls back to aws partition when no others match' do
        expect(EndpointRules.partition('mars-west-1')['name'])
          .to eq('aws')
      end
    end

    describe '.parse_arn' do
      it 'parses a valid arn' do
        arn = EndpointRules.parse_arn(
          'arn:aws:s3:us-east-1:12345678910:foo:bar'
        )
        expect(arn['partition']).to eq('aws')
        expect(arn['service']).to eq('s3')
        expect(arn['region']).to eq('us-east-1')
        expect(arn['accountId']).to eq('12345678910')
        expect(arn['resourceId']).to eq(%w[foo bar])
      end

      it 'returns nil on invalid arns' do
        expect(EndpointRules.parse_arn('arn:aws:s3')).to be_nil
      end
    end
  end
end
