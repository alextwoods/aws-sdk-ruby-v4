# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  # S3 Endpoint custom functions
  module Endpoints
    # aws.isVirtualHostableS3Bucket(value: string, allowSubDomains: bool) bool
    def self.virtual_hostable_s3_bucket?(value, allow_sub_domains)
      return false if value.empty?

      if allow_sub_domains
        labels = value.split('.', -1)
        return labels.all? { |l| aws_virtual_hostable_s3_bucket?(l, false) }
      end

      value =~ /\A(?!-)[a-z0-9-]{3,63}(?<!-)\z/ &&
        # not an IP address
        value !~ /(\d+\.){3}\d+/
    end
  end

end
