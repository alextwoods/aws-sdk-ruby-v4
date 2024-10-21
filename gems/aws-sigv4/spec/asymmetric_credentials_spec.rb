# frozen_string_literal: true

require_relative 'spec_helper'

module AWS
  module Sigv4
    describe AsymmetricCredentials do
      # values for d,pk_x and pk_y are taken from get-vanilla sigv4a
      # reference test
      let(:access_key_id) { 'AKIDEXAMPLE' }
      let(:secret_access_key) { 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY' }
      let(:ec) do
        subject.derive_asymmetric_key(access_key_id, secret_access_key)[0]
      end

      let(:extra) do
        subject.derive_asymmetric_key(access_key_id, secret_access_key)[1]
      end

      describe 'derive_asymmetric_key' do
        it 'returns an EC PKey' do
          expect(ec).to be_a(OpenSSL::PKey::EC)
        end

        it 'computes the private key' do
          expect(extra[:d]).to be_a(Integer)
          expect(extra[:d]).to eq(
            0x7EFC8C0E65A324242818C5A50C891C6060B6A00717B7BA3CBE3C5D765BE9259C
          )
        end

        it 'computes the public key' do
          expect(extra[:public_key]).to be_a(OpenSSL::PKey::EC::Point)
        end

        it 'computes the pk_x and pk_y' do
          expect(extra[:pk_x]).to be_a(Integer)
          expect(extra[:pk_x]).to eq(
            0xB6618F6A65740A99E650B33B6B4B5BD0D43B176D721A3EDFEA7E7D2D56D936B1
          )

          expect(extra[:pk_y]).to be_a(Integer)
          expect(extra[:pk_y]).to eq(
            0x865ED22A7EADC9C5CB9D2CBACA1B3699139FEDC5043DC6661864218330C8E518
          )
        end

        # ensure that encoding of private keys with MSB set result in valid EC objects
        context 'private key with most significant bit set' do

          let(:access_key_id) { 'ASIAZRFOHJT45NGNWXS3' }
          let(:secret_access_key) { 'WOuDKprKr+rt3Dl7+RCiNpZGzi3Jw/DdVifyifuC' }
          let(:test_value) { 'test_value' }

          it 'derives a valid EC PKey' do
            signature = ec.dsa_sign_asn1(test_value)
            expect(ec.dsa_verify_asn1(test_value, signature)).to be_truthy
          end
        end
      end
    end
  end
end
