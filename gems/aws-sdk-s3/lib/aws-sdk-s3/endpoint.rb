# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'endpoint/endpoint_rules'

module AWS::SDK::S3
  module Endpoint
    Params = ::Struct.new(
      :bucket,
      :region,
      :use_fips,
      :use_dual_stack,
      :endpoint,
      :force_path_style,
      :accelerate,
      :use_global_endpoint,
      :use_object_lambda_endpoint,
      :key,
      :prefix,
      :disable_access_points,
      :disable_multi_region_access_points,
      :use_arn_region,
      :use_s3_express_control_endpoint,
      :disable_s3_express_session_auth,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_fips = false if self.use_fips.nil?
        self.use_dual_stack = false if self.use_dual_stack.nil?
        self.force_path_style = false if self.force_path_style.nil?
        self.accelerate = false if self.accelerate.nil?
        self.use_global_endpoint = false if self.use_global_endpoint.nil?
        self.disable_multi_region_access_points = false if self.disable_multi_region_access_points.nil?
      end
    end

    class Provider
      def resolve_endpoint(params)
        bucket = params.bucket
        region = params.region
        use_fips = params.use_fips
        use_dual_stack = params.use_dual_stack
        endpoint = params.endpoint
        force_path_style = params.force_path_style
        accelerate = params.accelerate
        use_global_endpoint = params.use_global_endpoint
        use_object_lambda_endpoint = params.use_object_lambda_endpoint
        key = params.key
        prefix = params.prefix
        disable_access_points = params.disable_access_points
        disable_multi_region_access_points = params.disable_multi_region_access_points
        use_arn_region = params.use_arn_region
        use_s3_express_control_endpoint = params.use_s3_express_control_endpoint
        disable_s3_express_session_auth = params.disable_s3_express_session_auth

        if (region != nil)
          if (accelerate == true) && (use_fips == true)
            raise ArgumentError, "Accelerate cannot be used with FIPS"
          end
          if (use_dual_stack == true) && (endpoint != nil)
            raise ArgumentError, "Cannot set dual-stack in combination with a custom endpoint."
          end
          if (endpoint != nil) && (use_fips == true)
            raise ArgumentError, "A custom endpoint cannot be combined with FIPS"
          end
          if (endpoint != nil) && (accelerate == true)
            raise ArgumentError, "A custom endpoint cannot be combined with S3 Accelerate"
          end
          if (use_fips == true) && (partition_result = AWS::SDK::Core::EndpointRules.partition(region)) && (partition_result['name'] == "aws-cn")
            raise ArgumentError, "Partition does not support FIPS"
          end
          if (bucket != nil) && (bucket_suffix = Hearth::EndpointRules::substring(bucket, 0, 6, true)) && (bucket_suffix == "--x-s3")
            if (use_dual_stack == true)
              raise ArgumentError, "S3Express does not support Dual-stack."
            end
            if (accelerate == true)
              raise ArgumentError, "S3Express does not support S3 Accelerate."
            end
            if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
              if (disable_s3_express_session_auth != nil) && (disable_s3_express_session_auth == true)
                if (url['isIp'] == true)
                  if (uri_encoded_bucket = Hearth::EndpointRules::uri_encode(bucket))
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                end
                if (AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?(bucket, false))
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
              end
              if (url['isIp'] == true)
                if (uri_encoded_bucket = Hearth::EndpointRules::uri_encode(bucket))
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{url['authority']}/#{uri_encoded_bucket}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
              end
              if (AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?(bucket, false))
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                  headers: {},
                  auth_schemes: []
                )
              end
              raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
            end
            if (use_s3_express_control_endpoint != nil) && (use_s3_express_control_endpoint == true)
              if (uri_encoded_bucket = Hearth::EndpointRules::uri_encode(bucket)) && (!endpoint != nil)
                if (use_fips == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3express-control-fips.#{region}.amazonaws.com/#{uri_encoded_bucket}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://s3express-control.#{region}.amazonaws.com/#{uri_encoded_bucket}",
                  headers: {},
                  auth_schemes: []
                )
              end
            end
            if (AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?(bucket, false))
              if (disable_s3_express_session_auth != nil) && (disable_s3_express_session_auth == true)
                if (s3express_availability_zone_id = Hearth::EndpointRules::substring(bucket, 6, 14, true)) && (s3express_availability_zone_delim = Hearth::EndpointRules::substring(bucket, 14, 16, true)) && (s3express_availability_zone_delim == "--")
                  if (use_fips == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3express-fips-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://#{bucket}.s3express-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (s3express_availability_zone_id = Hearth::EndpointRules::substring(bucket, 6, 15, true)) && (s3express_availability_zone_delim = Hearth::EndpointRules::substring(bucket, 15, 17, true)) && (s3express_availability_zone_delim == "--")
                  if (use_fips == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3express-fips-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://#{bucket}.s3express-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                    headers: {},
                    auth_schemes: []
                  )
                end
                raise ArgumentError, "Unrecognized S3Express bucket name format."
              end
              if (s3express_availability_zone_id = Hearth::EndpointRules::substring(bucket, 6, 14, true)) && (s3express_availability_zone_delim = Hearth::EndpointRules::substring(bucket, 14, 16, true)) && (s3express_availability_zone_delim == "--")
                if (use_fips == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://#{bucket}.s3express-fips-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                    headers: {},
                    auth_schemes: []
                  )
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://#{bucket}.s3express-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                  headers: {},
                  auth_schemes: []
                )
              end
              if (s3express_availability_zone_id = Hearth::EndpointRules::substring(bucket, 6, 15, true)) && (s3express_availability_zone_delim = Hearth::EndpointRules::substring(bucket, 15, 17, true)) && (s3express_availability_zone_delim == "--")
                if (use_fips == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://#{bucket}.s3express-fips-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                    headers: {},
                    auth_schemes: []
                  )
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://#{bucket}.s3express-#{s3express_availability_zone_id}.#{region}.amazonaws.com",
                  headers: {},
                  auth_schemes: []
                )
              end
              raise ArgumentError, "Unrecognized S3Express bucket name format."
            end
            raise ArgumentError, "S3Express bucket name is not a valid virtual hostable name."
          end
          if (!bucket != nil) && (use_s3_express_control_endpoint != nil) && (use_s3_express_control_endpoint == true)
            if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
              return Hearth::EndpointRules::Endpoint.new(
                uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                headers: {},
                auth_schemes: []
              )
            end
            if (use_fips == true)
              return Hearth::EndpointRules::Endpoint.new(
                uri: "https://s3express-control-fips.#{region}.amazonaws.com",
                headers: {},
                auth_schemes: []
              )
            end
            return Hearth::EndpointRules::Endpoint.new(
              uri: "https://s3express-control.#{region}.amazonaws.com",
              headers: {},
              auth_schemes: []
            )
          end
          if (bucket != nil) && (hardware_type = Hearth::EndpointRules::substring(bucket, 49, 50, true)) && (region_prefix = Hearth::EndpointRules::substring(bucket, 8, 12, true)) && (bucket_alias_suffix = Hearth::EndpointRules::substring(bucket, 0, 7, true)) && (outpost_id = Hearth::EndpointRules::substring(bucket, 32, 49, true)) && (region_partition = AWS::SDK::Core::EndpointRules.partition(region)) && (bucket_alias_suffix == "--op-s3")
            if (Hearth::EndpointRules::valid_host_label?(outpost_id, false))
              if (hardware_type == "e")
                if (region_prefix == "beta")
                  if (!endpoint != nil)
                    raise ArgumentError, "Expected a endpoint to be specified but no endpoint was found"
                  end
                  if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.ec2.#{url['authority']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://#{bucket}.ec2.s3-outposts.#{region}.#{region_partition['dnsSuffix']}",
                  headers: {},
                  auth_schemes: []
                )
              end
              if (hardware_type == "o")
                if (region_prefix == "beta")
                  if (!endpoint != nil)
                    raise ArgumentError, "Expected a endpoint to be specified but no endpoint was found"
                  end
                  if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.op-#{outpost_id}.#{url['authority']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://#{bucket}.op-#{outpost_id}.s3-outposts.#{region}.#{region_partition['dnsSuffix']}",
                  headers: {},
                  auth_schemes: []
                )
              end
              raise ArgumentError, "Unrecognized hardware type: \"Expected hardware type o or e but got #{hardware_type}\""
            end
            raise ArgumentError, "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`."
          end
          if (bucket != nil)
            if (endpoint != nil) && (!Hearth::EndpointRules::parse_url(endpoint) != nil)
              raise ArgumentError, "Custom endpoint `#{endpoint}` was not a valid URI"
            end
            if (force_path_style == false) && (AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?(bucket, false))
              if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                if (Hearth::EndpointRules::valid_host_label?(region, false))
                  if (accelerate == true) && (partition_result['name'] == "aws-cn")
                    raise ArgumentError, "S3 Accelerate cannot be used in this region"
                  end
                  if (use_dual_stack == true) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.us-east-1.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == true) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-fips.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.dualstack.us-east-1.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.dualstack.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.dualstack.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == true) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == false) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == true) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{bucket}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == false) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == true) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['isIp'] == false) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "https://#{bucket}.s3-accelerate.#{partition_result['dnsSuffix']}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3-accelerate.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "https://#{bucket}.s3.#{partition_result['dnsSuffix']}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (use_fips == false) && (accelerate == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://#{bucket}.s3.#{region}.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                end
                raise ArgumentError, "Invalid region: region was not a valid DNS name."
              end
            end
            if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (url['scheme'] == "http") && (AWS::SDK::S3::Endpoints.virtual_hostable_s3_bucket?(bucket, true)) && (force_path_style == false) && (use_fips == false) && (use_dual_stack == false) && (accelerate == false)
              if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                if (Hearth::EndpointRules::valid_host_label?(region, false))
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{bucket}.#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                raise ArgumentError, "Invalid region: region was not a valid DNS name."
              end
            end
            if (force_path_style == false) && (bucket_arn = AWS::SDK::Core::EndpointRules.parse_arn(bucket))
              if (arn_type = bucket_arn['resourceId'][0]) && (arn_type != "")
                if (bucket_arn['service'] == "s3-object-lambda")
                  if (arn_type == "accesspoint")
                    if (access_point_name = bucket_arn['resourceId'][1]) && (access_point_name != "")
                      if (use_dual_stack == true)
                        raise ArgumentError, "S3 Object Lambda does not support Dual-stack"
                      end
                      if (accelerate == true)
                        raise ArgumentError, "S3 Object Lambda does not support S3 Accelerate"
                      end
                      if (bucket_arn['region'] != "")
                        if (disable_access_points != nil) && (disable_access_points == true)
                          raise ArgumentError, "Access points are not supported for this operation"
                        end
                        if (!bucket_arn['resourceId'][2] != nil)
                          if (use_arn_region != nil) && (use_arn_region == false) && (bucket_arn['region'] != region)
                            raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{region}` and UseArnRegion is `false`"
                          end
                          if (bucket_partition = AWS::SDK::Core::EndpointRules.partition(bucket_arn['region']))
                            if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                              if (bucket_partition['name'] == partition_result['name'])
                                if (Hearth::EndpointRules::valid_host_label?(bucket_arn['region'], true))
                                  if (bucket_arn['accountId'] == "")
                                    raise ArgumentError, "Invalid ARN: Missing account id"
                                  end
                                  if (Hearth::EndpointRules::valid_host_label?(bucket_arn['accountId'], false))
                                    if (Hearth::EndpointRules::valid_host_label?(access_point_name, false))
                                      if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                                        return Hearth::EndpointRules::Endpoint.new(
                                          uri: "#{url['scheme']}://#{access_point_name}-#{bucket_arn['accountId']}.#{url['authority']}#{url['path']}",
                                          headers: {},
                                          auth_schemes: []
                                        )
                                      end
                                      if (use_fips == true)
                                        return Hearth::EndpointRules::Endpoint.new(
                                          uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-object-lambda-fips.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                          headers: {},
                                          auth_schemes: []
                                        )
                                      end
                                      return Hearth::EndpointRules::Endpoint.new(
                                        uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-object-lambda.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                        headers: {},
                                        auth_schemes: []
                                      )
                                    end
                                    raise ArgumentError, "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `#{access_point_name}`"
                                  end
                                  raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                                end
                                raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                              end
                              raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{bucket}`) has `#{bucket_partition['name']}`"
                            end
                          end
                        end
                        raise ArgumentError, "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."
                      end
                      raise ArgumentError, "Invalid ARN: bucket ARN is missing a region"
                    end
                    raise ArgumentError, "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"
                  end
                  raise ArgumentError, "Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `#{arn_type}`"
                end
                if (arn_type == "accesspoint")
                  if (access_point_name = bucket_arn['resourceId'][1]) && (access_point_name != "")
                    if (bucket_arn['region'] != "")
                      if (arn_type == "accesspoint")
                        if (bucket_arn['region'] != "")
                          if (disable_access_points != nil) && (disable_access_points == true)
                            raise ArgumentError, "Access points are not supported for this operation"
                          end
                          if (!bucket_arn['resourceId'][2] != nil)
                            if (use_arn_region != nil) && (use_arn_region == false) && (bucket_arn['region'] != region)
                              raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{region}` and UseArnRegion is `false`"
                            end
                            if (bucket_partition = AWS::SDK::Core::EndpointRules.partition(bucket_arn['region']))
                              if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                                if (bucket_partition['name'] == partition_result['name'])
                                  if (Hearth::EndpointRules::valid_host_label?(bucket_arn['region'], true))
                                    if (bucket_arn['service'] == "s3")
                                      if (Hearth::EndpointRules::valid_host_label?(bucket_arn['accountId'], false))
                                        if (Hearth::EndpointRules::valid_host_label?(access_point_name, false))
                                          if (accelerate == true)
                                            raise ArgumentError, "Access Points do not support S3 Accelerate"
                                          end
                                          if (use_fips == true) && (use_dual_stack == true)
                                            return Hearth::EndpointRules::Endpoint.new(
                                              uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint-fips.dualstack.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                              headers: {},
                                              auth_schemes: []
                                            )
                                          end
                                          if (use_fips == true) && (use_dual_stack == false)
                                            return Hearth::EndpointRules::Endpoint.new(
                                              uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint-fips.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                              headers: {},
                                              auth_schemes: []
                                            )
                                          end
                                          if (use_fips == false) && (use_dual_stack == true)
                                            return Hearth::EndpointRules::Endpoint.new(
                                              uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint.dualstack.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                              headers: {},
                                              auth_schemes: []
                                            )
                                          end
                                          if (use_fips == false) && (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                                            return Hearth::EndpointRules::Endpoint.new(
                                              uri: "#{url['scheme']}://#{access_point_name}-#{bucket_arn['accountId']}.#{url['authority']}#{url['path']}",
                                              headers: {},
                                              auth_schemes: []
                                            )
                                          end
                                          if (use_fips == false) && (use_dual_stack == false)
                                            return Hearth::EndpointRules::Endpoint.new(
                                              uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.s3-accesspoint.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                              headers: {},
                                              auth_schemes: []
                                            )
                                          end
                                        end
                                        raise ArgumentError, "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `#{access_point_name}`"
                                      end
                                      raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                                    end
                                    raise ArgumentError, "Invalid ARN: The ARN was not for the S3 service, found: #{bucket_arn['service']}"
                                  end
                                  raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                                end
                                raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{bucket}`) has `#{bucket_partition['name']}`"
                              end
                            end
                          end
                          raise ArgumentError, "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."
                        end
                      end
                    end
                    if (Hearth::EndpointRules::valid_host_label?(access_point_name, true))
                      if (use_dual_stack == true)
                        raise ArgumentError, "S3 MRAP does not support dual-stack"
                      end
                      if (use_fips == true)
                        raise ArgumentError, "S3 MRAP does not support FIPS"
                      end
                      if (accelerate == true)
                        raise ArgumentError, "S3 MRAP does not support S3 Accelerate"
                      end
                      if (disable_multi_region_access_points == true)
                        raise ArgumentError, "Invalid configuration: Multi-Region Access Point ARNs are disabled."
                      end
                      if (mrap_partition = AWS::SDK::Core::EndpointRules.partition(region))
                        if (mrap_partition['name'] == bucket_arn['partition'])
                          return Hearth::EndpointRules::Endpoint.new(
                            uri: "https://#{access_point_name}.accesspoint.s3-global.#{mrap_partition['dnsSuffix']}",
                            headers: {},
                            auth_schemes: []
                          )
                        end
                        raise ArgumentError, "Client was configured for partition `#{mrap_partition['name']}` but bucket referred to partition `#{bucket_arn['partition']}`"
                      end
                    end
                    raise ArgumentError, "Invalid Access Point Name"
                  end
                  raise ArgumentError, "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"
                end
                if (bucket_arn['service'] == "s3-outposts")
                  if (use_dual_stack == true)
                    raise ArgumentError, "S3 Outposts does not support Dual-stack"
                  end
                  if (use_fips == true)
                    raise ArgumentError, "S3 Outposts does not support FIPS"
                  end
                  if (accelerate == true)
                    raise ArgumentError, "S3 Outposts does not support S3 Accelerate"
                  end
                  if (bucket_arn['resourceId'][4] != nil)
                    raise ArgumentError, "Invalid Arn: Outpost Access Point ARN contains sub resources"
                  end
                  if (outpost_id = bucket_arn['resourceId'][1])
                    if (Hearth::EndpointRules::valid_host_label?(outpost_id, false))
                      if (use_arn_region != nil) && (use_arn_region == false) && (bucket_arn['region'] != region)
                        raise ArgumentError, "Invalid configuration: region from ARN `#{bucket_arn['region']}` does not match client region `#{region}` and UseArnRegion is `false`"
                      end
                      if (bucket_partition = AWS::SDK::Core::EndpointRules.partition(bucket_arn['region']))
                        if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                          if (bucket_partition['name'] == partition_result['name'])
                            if (Hearth::EndpointRules::valid_host_label?(bucket_arn['region'], true))
                              if (Hearth::EndpointRules::valid_host_label?(bucket_arn['accountId'], false))
                                if (outpost_type = bucket_arn['resourceId'][2])
                                  if (access_point_name = bucket_arn['resourceId'][3])
                                    if (outpost_type == "accesspoint")
                                      if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                                        return Hearth::EndpointRules::Endpoint.new(
                                          uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.#{outpost_id}.#{url['authority']}",
                                          headers: {},
                                          auth_schemes: []
                                        )
                                      end
                                      return Hearth::EndpointRules::Endpoint.new(
                                        uri: "https://#{access_point_name}-#{bucket_arn['accountId']}.#{outpost_id}.s3-outposts.#{bucket_arn['region']}.#{bucket_partition['dnsSuffix']}",
                                        headers: {},
                                        auth_schemes: []
                                      )
                                    end
                                    raise ArgumentError, "Expected an outpost type `accesspoint`, found #{outpost_type}"
                                  end
                                  raise ArgumentError, "Invalid ARN: expected an access point name"
                                end
                                raise ArgumentError, "Invalid ARN: Expected a 4-component resource"
                              end
                              raise ArgumentError, "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{bucket_arn['accountId']}`"
                            end
                            raise ArgumentError, "Invalid region in ARN: `#{bucket_arn['region']}` (invalid DNS name)"
                          end
                          raise ArgumentError, "Client was configured for partition `#{partition_result['name']}` but ARN (`#{bucket}`) has `#{bucket_partition['name']}`"
                        end
                      end
                    end
                    raise ArgumentError, "Invalid ARN: The outpost Id may only contain a-z, A-Z, 0-9 and `-`. Found: `#{outpost_id}`"
                  end
                  raise ArgumentError, "Invalid ARN: The Outpost Id was not set"
                end
                raise ArgumentError, "Invalid ARN: Unrecognized format: #{bucket} (type: #{arn_type})"
              end
              raise ArgumentError, "Invalid ARN: No ARN type specified"
            end
            if (arn_prefix = Hearth::EndpointRules::substring(bucket, 0, 4, false)) && (arn_prefix == "arn:") && (!AWS::SDK::Core::EndpointRules.parse_arn(bucket) != nil)
              raise ArgumentError, "Invalid ARN: `#{bucket}` was not a valid ARN"
            end
            if (force_path_style == true) && (AWS::SDK::Core::EndpointRules.parse_arn(bucket))
              raise ArgumentError, "Path-style addressing cannot be used with ARN buckets"
            end
            if (uri_encoded_bucket = Hearth::EndpointRules::uri_encode(bucket))
              if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
                if (accelerate == false)
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == true) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == true) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == true) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == true) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == true) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == true) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3-fips.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == false) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == true)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.dualstack.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == true) && (!endpoint != nil) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.dualstack.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (use_fips == false) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['normalizedPath']}#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == false) && (region == "aws-global")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == true)
                    if (region == "us-east-1")
                      return Hearth::EndpointRules::Endpoint.new(
                        uri: "https://s3.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                        headers: {},
                        auth_schemes: []
                      )
                    end
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  if (use_dual_stack == false) && (!endpoint != nil) && (use_fips == false) && (region != "aws-global") && (use_global_endpoint == false)
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.#{region}.#{partition_result['dnsSuffix']}/#{uri_encoded_bucket}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                end
                raise ArgumentError, "Path-style addressing cannot be used with S3 Accelerate"
              end
            end
          end
          if (use_object_lambda_endpoint != nil) && (use_object_lambda_endpoint == true)
            if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
              if (Hearth::EndpointRules::valid_host_label?(region, true))
                if (use_dual_stack == true)
                  raise ArgumentError, "S3 Object Lambda does not support Dual-stack"
                end
                if (accelerate == true)
                  raise ArgumentError, "S3 Object Lambda does not support S3 Accelerate"
                end
                if (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint))
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-object-lambda-fips.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                return Hearth::EndpointRules::Endpoint.new(
                  uri: "https://s3-object-lambda.#{region}.#{partition_result['dnsSuffix']}",
                  headers: {},
                  auth_schemes: []
                )
              end
              raise ArgumentError, "Invalid region: region was not a valid DNS name."
            end
          end
          if (!bucket != nil)
            if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
              if (Hearth::EndpointRules::valid_host_label?(region, true))
                if (use_fips == true) && (use_dual_stack == true) && (!endpoint != nil) && (region == "aws-global")
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.dualstack.us-east-1.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true) && (use_dual_stack == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true) && (use_dual_stack == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true) && (use_dual_stack == false) && (!endpoint != nil) && (region == "aws-global")
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.us-east-1.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true) && (use_dual_stack == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == true) && (use_dual_stack == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3-fips.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == true) && (!endpoint != nil) && (region == "aws-global")
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.dualstack.us-east-1.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == true) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.dualstack.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (region == "aws-global")
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (region != "aws-global") && (use_global_endpoint == true)
                  if (region == "us-east-1")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (endpoint != nil) && (url = Hearth::EndpointRules::parse_url(endpoint)) && (region != "aws-global") && (use_global_endpoint == false)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "#{url['scheme']}://#{url['authority']}#{url['path']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (!endpoint != nil) && (region == "aws-global")
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == true)
                  if (region == "us-east-1")
                    return Hearth::EndpointRules::Endpoint.new(
                      uri: "https://s3.#{partition_result['dnsSuffix']}",
                      headers: {},
                      auth_schemes: []
                    )
                  end
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
                if (use_fips == false) && (use_dual_stack == false) && (!endpoint != nil) && (region != "aws-global") && (use_global_endpoint == false)
                  return Hearth::EndpointRules::Endpoint.new(
                    uri: "https://s3.#{region}.#{partition_result['dnsSuffix']}",
                    headers: {},
                    auth_schemes: []
                  )
                end
              end
              raise ArgumentError, "Invalid region: region was not a valid DNS name."
            end
          end
        end
        raise ArgumentError, "A region must be set when sending requests to S3."

      end
    end

    module Parameters

      class AbortMultipartUpload
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class CompleteMultipartUpload
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class CopyObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = true
          params
        end
      end

      class CreateBucket
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_access_points = true
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class CreateMultipartUpload
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class CreateSession
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = true
          params
        end
      end

      class DeleteBucket
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketAnalyticsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketCors
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketEncryption
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketIntelligentTieringConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketInventoryConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketLifecycle
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketMetricsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketOwnershipControls
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketPolicy
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketReplication
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteBucketWebsite
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteObjects
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeleteObjectTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class DeletePublicAccessBlock
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketAccelerateConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketAcl
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketAnalyticsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketCors
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketEncryption
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketIntelligentTieringConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketInventoryConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketLifecycleConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketLocation
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketLogging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketMetricsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketNotificationConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketOwnershipControls
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketPolicy
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketPolicyStatus
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketReplication
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketRequestPayment
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketVersioning
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetBucketWebsite
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectAcl
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectAttributes
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectLegalHold
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectLockConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectRetention
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetObjectTorrent
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class GetPublicAccessBlock
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class HeadBucket
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class HeadObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListBucketAnalyticsConfigurations
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListBucketIntelligentTieringConfigurations
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListBucketInventoryConfigurations
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListBucketMetricsConfigurations
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListBuckets
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListDirectoryBuckets
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListMultipartUploads
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.prefix = input.prefix unless input.prefix.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListObjects
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.prefix = input.prefix unless input.prefix.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListObjectsV2
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.prefix = input.prefix unless input.prefix.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListObjectVersions
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.prefix = input.prefix unless input.prefix.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class ListParts
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketAccelerateConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketAcl
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketAnalyticsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketCors
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketEncryption
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketIntelligentTieringConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketInventoryConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketLifecycleConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketLogging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketMetricsConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketNotificationConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketOwnershipControls
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketPolicy
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketReplication
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketRequestPayment
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketVersioning
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutBucketWebsite
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObjectAcl
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObjectLegalHold
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObjectLockConfiguration
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObjectRetention
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutObjectTagging
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class PutPublicAccessBlock
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.use_s3_express_control_endpoint = true
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class RestoreObject
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class SelectObjectContent
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class UploadPart
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.key = input.key unless input.key.nil?
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end

      class UploadPartCopy
        def self.build(config, input, context)
          params = Params.new
          params.bucket = input.bucket unless input.bucket.nil?
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = true
          params
        end
      end

      class WriteGetObjectResponse
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.force_path_style = config[:force_path_style] unless config[:force_path_style].nil?
          params.accelerate = config[:accelerate] unless config[:accelerate].nil?
          params.use_global_endpoint = false
          params.use_object_lambda_endpoint = true
          params.disable_multi_region_access_points = config[:disable_multi_region_access_points] unless config[:disable_multi_region_access_points].nil?
          params.use_arn_region = config[:use_arn_region] unless config[:use_arn_region].nil?
          params.disable_s3_express_session_auth = config[:disable_s3_express_session_auth] unless config[:disable_s3_express_session_auth].nil?
          params
        end
      end
    end

  end
end
