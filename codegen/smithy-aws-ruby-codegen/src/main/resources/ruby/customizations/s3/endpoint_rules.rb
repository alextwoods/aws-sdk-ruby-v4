# S3 Endpoint custom functions
module Endpoints
  # aws.isVirtualHostableS3Bucket(value: string, allowSubDomains: bool) bool
  def self.virtual_hostable_s3_bucket?(value, allow_sub_domains)
    return false if value.empty?

    if allow_sub_domains
      labels = value.split('.', -1)
      return labels.all? { |l| virtual_hostable_s3_bucket?(l, false) }
    end

    value =~ /\A(?!-)[a-z0-9-]{3,63}(?<!-)\z/ &&
      # not an IP address
      value !~ /(\d+\.){3}\d+/
  end
end
