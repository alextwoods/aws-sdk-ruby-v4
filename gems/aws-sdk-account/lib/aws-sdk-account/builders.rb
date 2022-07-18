# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Account
  module Builders

    # Operation Builder for DeleteAlternateContact
    class DeleteAlternateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/deleteAlternateContact')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AlternateContactType'] = input[:alternate_contact_type] unless input[:alternate_contact_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAlternateContact
    class GetAlternateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getAlternateContact')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AlternateContactType'] = input[:alternate_contact_type] unless input[:alternate_contact_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAlternateContact
    class PutAlternateContact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/putAlternateContact')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['AlternateContactType'] = input[:alternate_contact_type] unless input[:alternate_contact_type].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
