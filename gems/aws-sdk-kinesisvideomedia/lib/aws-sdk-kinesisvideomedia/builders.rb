# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoMedia
  module Builders

    # Operation Builder for GetMedia
    class GetMedia
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/getMedia')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamName'] = input[:stream_name] unless input[:stream_name].nil?
        data['StreamARN'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['StartSelector'] = Builders::StartSelector.build(input[:start_selector]) unless input[:start_selector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StartSelector
    class StartSelector
      def self.build(input)
        data = {}
        data['StartSelectorType'] = input[:start_selector_type] unless input[:start_selector_type].nil?
        data['AfterFragmentNumber'] = input[:after_fragment_number] unless input[:after_fragment_number].nil?
        data['StartTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        data['ContinuationToken'] = input[:continuation_token] unless input[:continuation_token].nil?
        data
      end
    end
  end
end
