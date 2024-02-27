# frozen_string_literal: true

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
      arn = AWS::SDK::Core::ARNParser.parse(value)
      json = arn.as_json
      # HACK: because of poor naming and also requirement of splitting
      resource = json.delete('resource')
      json['resourceId'] = resource.split(%r{[:\/]}, -1)
      json
    rescue ArgumentError
      nil
    end
  end
end