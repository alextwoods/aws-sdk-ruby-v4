# frozen_string_literal: true

# Modify load path to include codegen gems from build directories
projections = 'gems/*/lib'
Dir.glob(projections) do |gem_path|
  $LOAD_PATH.unshift(File.expand_path(gem_path))
end

module Benchmark
  module Gems
    class Core < Benchmark::Gem
      def gem_name
        'aws-sdk-core'
      end

      def gem_dir
        'gems/aws-sdk-core'
      end

      # Core does not have a client and does not have any operation benchmarks
    end
  end
end
