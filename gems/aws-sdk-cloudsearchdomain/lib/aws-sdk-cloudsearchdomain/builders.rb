# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearchDomain
  module Builders

    # Operation Builder for Search
    class Search
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('format=sdk&pretty=true').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2013-01-01/search')
        params = Hearth::Query::ParamList.new
        params['cursor'] = input[:cursor].to_s unless input[:cursor].nil?
        params['expr'] = input[:expr].to_s unless input[:expr].nil?
        params['facet'] = input[:facet].to_s unless input[:facet].nil?
        params['fq'] = input[:filter_query].to_s unless input[:filter_query].nil?
        params['highlight'] = input[:highlight].to_s unless input[:highlight].nil?
        params['partial'] = input[:partial].to_s unless input[:partial].nil?
        params['q'] = input[:query].to_s unless input[:query].nil?
        params['q.options'] = input[:query_options].to_s unless input[:query_options].nil?
        params['q.parser'] = input[:query_parser].to_s unless input[:query_parser].nil?
        params['return'] = input[:return].to_s unless input[:return].nil?
        params['size'] = input[:size].to_s unless input[:size].nil?
        params['sort'] = input[:sort].to_s unless input[:sort].nil?
        params['start'] = input[:start].to_s unless input[:start].nil?
        params['stats'] = input[:stats].to_s unless input[:stats].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for Suggest
    class Suggest
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('format=sdk&pretty=true').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2013-01-01/suggest')
        params = Hearth::Query::ParamList.new
        params['q'] = input[:query].to_s unless input[:query].nil?
        params['suggester'] = input[:suggester].to_s unless input[:suggester].nil?
        params['size'] = input[:size].to_s unless input[:size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UploadDocuments
    class UploadDocuments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('format=sdk').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/2013-01-01/documents/batch')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:documents]
        http_req.headers['Transfer-Encoding'] = 'chunked'
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
      end
    end
  end
end
