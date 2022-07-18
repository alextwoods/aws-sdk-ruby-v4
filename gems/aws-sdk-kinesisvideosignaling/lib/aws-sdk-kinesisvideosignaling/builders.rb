# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoSignaling
  module Builders

    # Operation Builder for GetIceServerConfig
    class GetIceServerConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/get-ice-server-config')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['Service'] = input[:service] unless input[:service].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendAlexaOfferToMaster
    class SendAlexaOfferToMaster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/send-alexa-offer-to-master')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelARN'] = input[:channel_arn] unless input[:channel_arn].nil?
        data['SenderClientId'] = input[:sender_client_id] unless input[:sender_client_id].nil?
        data['MessagePayload'] = input[:message_payload] unless input[:message_payload].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
