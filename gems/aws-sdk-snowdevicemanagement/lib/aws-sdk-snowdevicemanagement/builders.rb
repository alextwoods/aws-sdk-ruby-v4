# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SnowDeviceManagement
  module Builders

    # Operation Builder for CancelTask
    class CancelTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/task/%<taskId>s/cancel',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateTask
    class CreateTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/task')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targets'] = Builders::TargetList.build(input[:targets]) unless input[:targets].nil?
        data['command'] = Builders::Command.build(input[:command]) unless input[:command].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Command
    class Command
      def self.build(input)
        data = {}
        case input
        when Types::Command::Unlock
          data['unlock'] = (Builders::Unlock.build(input) unless input.nil?)
        when Types::Command::Reboot
          data['reboot'] = (Builders::Reboot.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Command"
        end

        data
      end
    end

    # Structure Builder for Reboot
    class Reboot
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for Unlock
    class Unlock
      def self.build(input)
        data = {}
        data
      end
    end

    # List Builder for TargetList
    class TargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeDevice
    class DescribeDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:managed_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :managed_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/managed-device/%<managedDeviceId>s/describe',
            managedDeviceId: Hearth::HTTP.uri_escape(input[:managed_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDeviceEc2Instances
    class DescribeDeviceEc2Instances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:managed_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :managed_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/managed-device/%<managedDeviceId>s/resources/ec2/describe',
            managedDeviceId: Hearth::HTTP.uri_escape(input[:managed_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['instanceIds'] = Builders::InstanceIdsList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceIdsList
    class InstanceIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeExecution
    class DescribeExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        if input[:managed_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :managed_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/task/%<taskId>s/execution/%<managedDeviceId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s),
            managedDeviceId: Hearth::HTTP.uri_escape(input[:managed_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTask
    class DescribeTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/task/%<taskId>s',
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeviceResources
    class ListDeviceResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:managed_device_id].to_s.empty?
          raise ArgumentError, "HTTP label :managed_device_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/managed-device/%<managedDeviceId>s/resources',
            managedDeviceId: Hearth::HTTP.uri_escape(input[:managed_device_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/managed-devices')
        params = Hearth::Query::ParamList.new
        params['jobId'] = input[:job_id].to_s unless input[:job_id].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListExecutions
    class ListExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/executions')
        params = Hearth::Query::ParamList.new
        params['taskId'] = input[:task_id].to_s unless input[:task_id].nil?
        params['state'] = input[:state].to_s unless input[:state].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTasks
    class ListTasks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tasks')
        params = Hearth::Query::ParamList.new
        params['state'] = input[:state].to_s unless input[:state].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
