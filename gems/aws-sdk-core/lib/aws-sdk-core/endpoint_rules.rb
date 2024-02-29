# frozen_string_literal: true

module AWS::SDK::Core
  # AWS Specific functions for Endpoint Rules.
  # @api private
  module EndpointRules
    # AWS partition metadata.
    # @api private
    module Partitions
      def self.default_metadata
        @default_metadata ||=
          begin
            path = File.expand_path('../../partitions.json', __dir__)
            JSON.parse(File.read(path), freeze: true)
          end
      end
    end

    # aws.partition(region: string) Option<Partition>
    def self.partition(region)
      partitions = Partitions.default_metadata['partitions']
      partition =
        partitions.find { |p| p['regions'].keys.include?(region) } ||
        partitions.find { |p| region.match(p['regionRegex']) } ||
        partitions.find { |p| p['id'] == 'aws' }

      return nil unless partition

      partition['outputs']
    end

    # aws.parseArn(region: string) Option<ARN>
    def self.parse_arn(value)
      arn = AWS::SDK::Core::ARNParser.parse(value)
      json = arn.as_json
      # HACK: because of poor naming and also requirement of splitting
      resource = json.delete('resource')
      json['resourceId'] = resource.split(%r{[:/]}, -1)
      json
    rescue ARN::InvalidARNError
      nil
    end
  end
end
