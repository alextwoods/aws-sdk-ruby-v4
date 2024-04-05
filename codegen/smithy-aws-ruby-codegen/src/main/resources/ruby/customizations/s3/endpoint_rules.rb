# S3 Endpoint custom functions
module Endpoints
  # aws.isVirtualHostableS3Bucket(value: string, allowSubDomains: bool) bool
  # rubocop:disable Style/OptionalBooleanParameter
  def self.virtual_hostable_s3_bucket?(value, allow_sub_domains = false)
    return false if value.empty?

    if allow_sub_domains
      labels = value.split('.', -1)
      return labels.all? { |l| aws_virtual_hostable_s3_bucket?(l) }
    end

    # must be between 3 and 63 characters long, no uppercase
    value =~ /\A(?!-)[a-z0-9-]{3,63}(?<!-)\z/ &&
      # not an IP address
      value !~ /(\d+\.){3}\d+/
  end
  # rubocop:enable Style/OptionalBooleanParameter
end
