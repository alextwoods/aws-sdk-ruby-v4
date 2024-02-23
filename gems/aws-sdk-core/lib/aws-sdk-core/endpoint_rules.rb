# frozen_string_literal: true

require_relative 'arn_parser'

module AWS::SDK::Core
  module EndpointRules

    module Partitions
      def self.default_metadata
        @default_metadata ||=
          begin
            path = File.expand_path('../../../partitions.json', __FILE__)
            JSON.parse(File.read(path), freeze: true)
          end
      end
    end

    def self.partition(value)
      partitions = Partitions.default_metadata["partitions"]
      partition =
        partitions.find { |p| p['regions'].keys.include?(value) } ||
          partitions.find { |p| value.match(p['regionRegex']) } ||
          partitions.find { |p| p['id'] == 'aws' }

      return nil unless partition

      partition['outputs']
    end

    # aws.parseArn(value: string) Option<ARN>
    def self.parse_arn(value)
      arn = AWS::SDK::Core::ArnParser.parse(value)
      json = arn.as_json
      # HACK: because of poor naming and also requirement of splitting
      resource = json.delete('resource')
      json['resourceId'] = resource.split(%r{[:\/]}, -1)
      json
    rescue ArgumentError
      nil
    end

    # TODO: Move to an S3 customization?
    # aws.isVirtualHostableS3Bucket(value: string, allowSubDomains: bool) bool
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
  end
end