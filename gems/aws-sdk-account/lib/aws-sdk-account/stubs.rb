# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Account
  module Stubs

    # Operation Stubber for DeleteAlternateContact
    class DeleteAlternateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAlternateContact
    class GetAlternateContact
      def self.default(visited=[])
        {
          alternate_contact: AlternateContact.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AlternateContact'] = AlternateContact.stub(stub[:alternate_contact]) unless stub[:alternate_contact].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AlternateContact
    class AlternateContact
      def self.default(visited=[])
        return nil if visited.include?('AlternateContact')
        visited = visited + ['AlternateContact']
        {
          name: 'name',
          title: 'title',
          email_address: 'email_address',
          phone_number: 'phone_number',
          alternate_contact_type: 'alternate_contact_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlternateContact.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Title'] = stub[:title] unless stub[:title].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['AlternateContactType'] = stub[:alternate_contact_type] unless stub[:alternate_contact_type].nil?
        data
      end
    end

    # Operation Stubber for PutAlternateContact
    class PutAlternateContact
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
