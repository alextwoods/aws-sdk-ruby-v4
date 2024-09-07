# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SharedConfigProvider do
    subject { SharedConfigProvider.new(key, type: type) }

    let(:cfg) { { profile: 'default' } }

    before do
      mock_shared_config(shared_config)
    end

    let(:shared_config) do
      <<~CONFIG
        [profile default]
        float = 1.0
        not_float = not 1.0
        integer = 1
        not_integer = not 1
        string = string
        boolean_true = true
        boolean_false = false
        not_boolean = not true or false
      CONFIG
    end

    context 'type should be a float' do
      let(:type) { 'Float' }

      context 'value is a float' do
        let(:key) { 'float' }

        it 'parses the value' do
          expect(subject.call(cfg)).to eq(1.0)
        end
      end

      context 'value is not a float' do
        let(:key) { 'not_float' }

        it 'raises on unexpected values' do
          expect { subject.call(cfg) }.to raise_error(ArgumentError)
        end
      end
    end

    context 'type should be a integer' do
      let(:type) { 'Integer' }

      context 'value is an integer' do
        let(:key) { 'integer' }

        it 'parses the value' do
          expect(subject.call(cfg)).to eq(1)
        end
      end

      context 'value is not an integer' do
        let(:key) { 'not_integer' }

        it 'raises on unexpected values' do
          expect { subject.call(cfg) }.to raise_error(ArgumentError)
        end
      end
    end

    context 'type should be a boolean' do
      let(:type) { 'Boolean' }

      context 'value is true' do
        let(:key) { 'boolean_true' }

        it 'parses the true value' do
          expect(subject.call(cfg)).to eq(true)
        end
      end

      context 'value is false' do
        let(:key) { 'boolean_false' }

        it 'parses the false value' do
          expect(subject.call(cfg)).to eq(false)
        end
      end

      context 'value is not true or false' do
        let(:key) { 'not_boolean' }

        it 'raises on unexpected values' do
          expect { subject.call(cfg) }.to raise_error(ArgumentError)
        end
      end
    end

    context 'type is something else' do
      let(:type) { 'String' }

      context 'value is a string' do
        let(:key) { 'string' }

        it 'uses the value' do
          expect(subject.call(cfg)).to eq('string')
        end
      end
    end
  end
end
