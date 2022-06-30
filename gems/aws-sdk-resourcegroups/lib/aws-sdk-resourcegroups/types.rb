# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ResourceGroups
  module Types

    # <p>The request includes one or more parameters that violate validation rules.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the group, which is the identifier of the group in other operations. You
    #               can't change the name of a resource group after you create it. A resource group name can
    #               consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
    #               with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name
    #               must be unique within each AWS Region in your AWS account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource group. Descriptions can consist of letters, numbers,
    #               hyphens, underscores, periods, and spaces.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_query
    #   <p>The resource query that determines which AWS resources are members of this group.
    #               For more information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #           <note>
    #               <p>A resource group can contain either a <code>ResourceQuery</code> or a
    #                       <code>Configuration</code>, but not both.</p>
    #           </note>
    #
    #   @return [ResourceQuery]
    #
    # @!attribute tags
    #   <p>The tags to add to the group. A tag is key-value pair string.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute configuration
    #   <p>A configuration associates the resource group with an AWS service and specifies how
    #               the service can interact with the resources in the group. A configuration is an array of
    #                   <a>GroupConfigurationItem</a> elements. For details about the syntax of
    #               service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                   groups</a>.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    #   @return [Array<GroupConfigurationItem>]
    #
    CreateGroupInput = ::Struct.new(
      :name,
      :description,
      :resource_query,
      :tags,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The description of the resource group.</p>
    #
    #   @return [Group]
    #
    # @!attribute resource_query
    #   <p>The resource query associated with the group. For more information about resource
    #               queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #
    #   @return [ResourceQuery]
    #
    # @!attribute tags
    #   <p>The tags associated with the group.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute group_configuration
    #   <p>The service configuration associated with the resource group. For details about the
    #               syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                   groups</a>.</p>
    #
    #   @return [GroupConfiguration]
    #
    CreateGroupOutput = ::Struct.new(
      :group,
      :resource_query,
      :tags,
      :group_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group to delete.</p>
    #
    #   @return [String]
    #
    DeleteGroupInput = ::Struct.new(
      :group_name,
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>A full description of the deleted resource group.</p>
    #
    #   @return [Group]
    #
    DeleteGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that failed to be added to or removed from a group.</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource that failed to be added or removed.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message text associated with the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code associated with the failure.</p>
    #
    #   @return [String]
    #
    FailedResource = ::Struct.new(
      :resource_arn,
      :error_message,
      :error_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller isn't authorized to make the request. Check permissions.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The name or the ARN of the resource group.</p>
    #
    #   @return [String]
    #
    GetGroupConfigurationInput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_configuration
    #   <p>The service configuration associated with the specified group. For details about the
    #               service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                   groups</a>.</p>
    #
    #   @return [GroupConfiguration]
    #
    GetGroupConfigurationOutput = ::Struct.new(
      :group_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group to retrieve.</p>
    #
    #   @return [String]
    #
    GetGroupInput = ::Struct.new(
      :group_name,
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>A full description of the resource group.</p>
    #
    #   @return [Group]
    #
    GetGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group to query.</p>
    #
    #   @return [String]
    #
    GetGroupQueryInput = ::Struct.new(
      :group_name,
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_query
    #   <p>The resource query associated with the specified group. For more information about
    #               resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>.</p>
    #
    #   @return [GroupQuery]
    #
    GetGroupQueryOutput = ::Struct.new(
      :group_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource group whose tags you want to retrieve.</p>
    #
    #   @return [String]
    #
    GetTagsInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the tagged resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the specified resource group.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetTagsOutput = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource group that contains AWS resources. You can assign resources to the group
    #             by associating either of the following elements with the group:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a>ResourceQuery</a> - Use a resource query to specify a set of tag
    #                     keys and values. All resources in the same AWS Region and AWS account that
    #                     have those keys with the same values are included in the group. You can add a
    #                     resource query when you create the group, or later by using the <a>PutGroupConfiguration</a> operation.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a>GroupConfiguration</a> - Use a service configuration to
    #                     associate the group with an AWS service. The configuration specifies which
    #                     resource types can be included in the group.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute group_arn
    #   <p>The ARN of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource group.</p>
    #
    #   @return [String]
    #
    Group = ::Struct.new(
      :group_arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A service configuration associated with a resource group. The configuration options
    #             are determined by the AWS service that defines the <code>Type</code>, and specifies
    #             which resources can be included in the group. You can add a service configuration when
    #             you create the group by using <a>CreateGroup</a>, or later by using the <a>PutGroupConfiguration</a> operation. For details about group service
    #             configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    #
    # @!attribute configuration
    #   <p>The configuration currently associated with the group and in effect.</p>
    #
    #   @return [Array<GroupConfigurationItem>]
    #
    # @!attribute proposed_configuration
    #   <p>If present, the new configuration that is in the process of being applied to the
    #               group.</p>
    #
    #   @return [Array<GroupConfigurationItem>]
    #
    # @!attribute status
    #   <p>The current status of an attempt to update the group configuration.</p>
    #
    #   Enum, one of: ["UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If present, the reason why a request to update the group configuration failed.</p>
    #
    #   @return [String]
    #
    GroupConfiguration = ::Struct.new(
      :configuration,
      :proposed_configuration,
      :status,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An item in a group configuration. A group service configuration can have one or more
    #             items. For details about group service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                 resource groups</a>.</p>
    #
    # @!attribute type
    #   <p>Specifies the type of group configuration item. Each item must have a unique value for
    #                   <code>type</code>. For the list of types that you can specify for a configuration
    #               item, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A collection of parameters for this group configuration item. For the list of
    #               parameters that you can use with each configuration item type, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html about-slg-types">Supported
    #                   resource types and parameters</a>.</p>
    #
    #   @return [Array<GroupConfigurationParameter>]
    #
    GroupConfigurationItem = ::Struct.new(
      :type,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter for a group configuration item. For details about group service
    #             configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the group configuration parameter. For the list of parameters that you can
    #               use with each configuration item type, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The value or values to be used for the specified parameter. For the list of values you
    #               can use with each parameter, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #
    #   @return [Array<String>]
    #
    GroupConfigurationParameter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupConfigurationStatus
    #
    module GroupConfigurationStatus
      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>A filter collection that you can use to restrict the results from a <code>List</code>
    #             operation to only those you want to include.</p>
    #
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #
    #   Enum, one of: ["resource-type", "configuration-type"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>One or more filter values. Allowed filter values vary by group filter name, and are
    #               case-sensitive.</p>
    #
    #   @return [Array<String>]
    #
    GroupFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupFilterName
    #
    module GroupFilterName
      # No documentation available.
      #
      ResourceType = "resource-type"

      # No documentation available.
      #
      ConfigurationType = "configuration-type"
    end

    # <p>The unique identifiers for a resource group.</p>
    #
    # @!attribute group_name
    #   <p>The name of the resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_arn
    #   <p>The ARN of the resource group.</p>
    #
    #   @return [String]
    #
    GroupIdentifier = ::Struct.new(
      :group_name,
      :group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A mapping of a query attached to a resource group that determines the AWS resources
    #             that are members of the group.</p>
    #
    # @!attribute group_name
    #   <p>The name of the resource group that is associated with the specified resource
    #               query.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_query
    #   <p>The resource query that determines which AWS resources are members of the associated
    #               resource group.</p>
    #
    #   @return [ResourceQuery]
    #
    GroupQuery = ::Struct.new(
      :group_name,
      :resource_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The name or the ARN of the resource group to add resources to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The list of ARNs for resources to be added to the group. </p>
    #
    #   @return [Array<String>]
    #
    GroupResourcesInput = ::Struct.new(
      :group,
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute succeeded
    #   <p>A list of ARNs of resources that were successfully added to the group by this
    #               operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failed
    #   <p>A list of ARNs of any resources that failed to be added to the group by this
    #               operation.</p>
    #
    #   @return [Array<FailedResource>]
    #
    # @!attribute pending
    #   <p>A list of ARNs of any resources that are still in the process of being added to the
    #               group by this operation. These pending additions continue asynchronously. You can check
    #               the status of pending additions by using the <code>
    #                  <a>ListGroupResources</a>
    #               </code> operation, and checking the <code>Resources</code> array in the response
    #               and the <code>Status</code> field of each object in that array. </p>
    #
    #   @return [Array<PendingResource>]
    #
    GroupResourcesOutput = ::Struct.new(
      :succeeded,
      :failed,
      :pending,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error occurred while processing the request. Try again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this parameter. Use the
    #                               <code>Group</code> request field instead.</b>
    #                  </i>
    #               </p>
    #           </important>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply
    #               to a <code>ListGroupResources</code> operation. Filters the results to include only
    #               those of the specified resource types.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>resource-type</code> - Filter resources by their type. Specify up to
    #                       five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>When you specify a <code>resource-type</code> filter for
    #                   <code>ListGroupResources</code>, AWS Resource Groups validates your filter resource types
    #               against the types that are defined in the query associated with the group. For example,
    #               if a group contains only S3 buckets because its query specifies only that resource type,
    #               but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups
    #               does not filter for EC2 instances. In this case, a <code>ListGroupResources</code>
    #               request returns a <code>BadRequestException</code> error with a message similar to the
    #               following:</p>
    #           <p>
    #               <code>The resource types specified as filters in the request are not
    #               valid.</code>
    #            </p>
    #           <p>The error includes a list of resource types that failed the validation because they
    #               are not part of the query associated with the group. This validation doesn't occur when
    #               the group query specifies <code>AWS::AllSupported</code>, because a group based on such
    #               a query can contain any of the allowed resource types for the query type (tag-based or
    #               AWS CloudFormation stack-based queries).</p>
    #
    #   @return [Array<ResourceFilter>]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    #   @return [String]
    #
    ListGroupResourcesInput = ::Struct.new(
      :group_name,
      :group,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure returned by the <a>ListGroupResources</a> operation that
    #             contains identity and group membership status information for one of the resources in
    #             the group.</p>
    #
    # @!attribute identifier
    #   <p>A structure that contains the ARN of a resource and its resource type.</p>
    #
    #   @return [ResourceIdentifier]
    #
    # @!attribute status
    #   <p>A structure that contains the status of this resource's membership in the
    #               group.</p>
    #           <note>
    #               <p>This field is present in the response only if the group is of type
    #                       <code>AWS::EC2::HostManagement</code>.</p>
    #           </note>
    #
    #   @return [ResourceStatus]
    #
    ListGroupResourcesItem = ::Struct.new(
      :identifier,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>An array of resources from which you can determine each resource's identity, type, and
    #               group membership status.</p>
    #
    #   @return [Array<ListGroupResourcesItem>]
    #
    # @!attribute resource_identifiers
    #   <important>
    #               <p>
    #                  <b>
    #                     <i>Deprecated - don't use this parameter. Use the
    #                               <code>Resources</code> response field
    #                   instead.</i>
    #                  </b>
    #               </p>
    #           </important>
    #
    #   @deprecated
    #     This field is deprecated, use Resources instead.
    #
    #   @return [Array<ResourceIdentifier>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute query_errors
    #   <p>A list of <code>QueryError</code> objects. Each error is an object that contains
    #                   <code>ErrorCode</code> and <code>Message</code> structures. Possible values for
    #                   <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
    #                   <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>
    #
    #   @return [Array<QueryError>]
    #
    ListGroupResourcesOutput = ::Struct.new(
      :resources,
      :resource_identifiers,
      :next_token,
      :query_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to
    #               a <code>ListGroups</code> operation.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>resource-type</code> - Filter the results to include only those of the
    #                       specified resource types. Specify up to five resource types in the format
    #                               <code>AWS::<i>ServiceCode</i>::<i>ResourceType</i>
    #                     </code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or
    #                       <code>AWS::S3::Bucket</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>configuration-type</code> - Filter the results to include only those
    #                       groups that have the specified configuration types attached. The current
    #                       supported values are:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>AWS:EC2::CapacityReservationPool</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>AWS:EC2::HostManagement</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Array<GroupFilter>]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    #   @return [String]
    #
    ListGroupsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_identifiers
    #   <p>A list of <a>GroupIdentifier</a> objects. Each identifier is an object that
    #               contains both the <code>Name</code> and the <code>GroupArn</code>.</p>
    #
    #   @return [Array<GroupIdentifier>]
    #
    # @!attribute groups
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this field. Use the
    #                               <code>GroupIdentifiers</code> response field
    #                       instead.</b>
    #                  </i>
    #               </p>
    #           </important>
    #
    #   @deprecated
    #     This field is deprecated, use GroupIdentifiers instead.
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListGroupsOutput = ::Struct.new(
      :group_identifiers,
      :groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request uses an HTTP method that isn't allowed for the specified resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MethodNotAllowedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the specified resources don't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that identifies a resource that is currently pending addition to the group
    #             as a member. Adding a resource to a resource group happens asynchronously as a
    #             background task and this one isn't completed yet.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) of the resource that's in a pending state.</p>
    #
    #   @return [String]
    #
    PendingResource = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The name or ARN of the resource group with the configuration that you want to
    #               update.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The new configuration to associate with the specified group. A configuration
    #               associates the resource group with an AWS service and specifies how the service can
    #               interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>
    #           <p>For information about the syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                   resource groups</a>.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    #   @return [Array<GroupConfigurationItem>]
    #
    PutGroupConfigurationInput = ::Struct.new(
      :group,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutGroupConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A two-part error structure that can occur in <code>ListGroupResources</code> or
    #                 <code>SearchResources</code> operations on CloudFormation stack-based queries. The error
    #             occurs if the CloudFormation stack on which the query is based either does not exist, or has a
    #             status that renders the stack inactive. A <code>QueryError</code> occurrence does not
    #             necessarily mean that AWS Resource Groups could not complete the operation, but the resulting
    #             group might have no member resources.</p>
    #
    # @!attribute error_code
    #   <p>Possible values are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
    #                   <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>
    #
    #   Enum, one of: ["CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that explains the <code>ErrorCode</code> value. Messages might state that
    #               the specified CloudFormation stack does not exist (or no longer exists). For
    #                   <code>CLOUDFORMATION_STACK_INACTIVE</code>, the message typically states that the
    #               CloudFormation stack has a status that is not (or no longer) active, such as
    #                   <code>CREATE_FAILED</code>.</p>
    #
    #   @return [String]
    #
    QueryError = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for QueryErrorCode
    #
    module QueryErrorCode
      # No documentation available.
      #
      CLOUDFORMATION_STACK_INACTIVE = "CLOUDFORMATION_STACK_INACTIVE"

      # No documentation available.
      #
      CLOUDFORMATION_STACK_NOT_EXISTING = "CLOUDFORMATION_STACK_NOT_EXISTING"
    end

    # Includes enum constants for QueryType
    #
    module QueryType
      # No documentation available.
      #
      TAG_FILTERS_1_0 = "TAG_FILTERS_1_0"

      # No documentation available.
      #
      CLOUDFORMATION_STACK_1_0 = "CLOUDFORMATION_STACK_1_0"
    end

    # <p>A filter name and value pair that is used to obtain more specific results from a list
    #             of resources.</p>
    #
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #
    #   Enum, one of: ["resource-type"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>One or more filter values. Allowed filter values vary by resource filter name, and are
    #               case-sensitive.</p>
    #
    #   @return [Array<String>]
    #
    ResourceFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceFilterName
    #
    module ResourceFilterName
      # No documentation available.
      #
      ResourceType = "resource-type"
    end

    # <p>A structure that contains the ARN of a resource and its resource type.</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>
    #
    #   @return [String]
    #
    ResourceIdentifier = ::Struct.new(
      :resource_arn,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The query that is used to define a resource group or a search for resources. A query
    #             specifies both a query type and a query string as a JSON object. See the examples
    #             section for example JSON strings.</p>
    #         <p>The examples that follow are shown as standard JSON strings. If you include such a
    #             string as a parameter to the AWS CLI or an SDK API, you might need to 'escape' the
    #             string into a single line. For example, see the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                 strings</a> in the <i>AWS CLI User Guide</i>.</p>
    #         <p>
    #             <b>Example 1</b>
    #          </p>
    #         <p>The following generic example shows a resource query JSON string that includes only
    #             resources that meet the following criteria:</p>
    #         <ul>
    #             <li>
    #                 <p>The resource type must be either <code>resource_type1</code> or
    #                         <code>resource_type2</code>.</p>
    #             </li>
    #             <li>
    #                 <p>The resource must have a tag <code>Key1</code> with a value of either
    #                         <code>ValueA</code> or <code>ValueB</code>.</p>
    #             </li>
    #             <li>
    #                 <p>The resource must have a tag <code>Key2</code> with a value of either
    #                         <code>ValueC</code> or <code>ValueD</code>.</p>
    #             </li>
    #          </ul>
    #         <p>
    #             <code>{
    #     "Type": "TAG_FILTERS_1_0",
    #     "Query": {
    #         "ResourceTypeFilters": [ "resource_type1", "resource_type2"],
    #         "TagFilters": [
    #             {
    #                 "Key": "Key1",
    #                 "Values": ["ValueA","ValueB"]
    #             },
    #             {
    #                 "Key":"Key2",
    #                 "Values":["ValueC","ValueD"]
    #             }
    #         ]
    #     }
    # }</code>
    #          </p>
    #         <p>This has the equivalent "shortcut" syntax of the following:</p>
    #         <p>
    #             <code>{
    #     "Type": "TAG_FILTERS_1_0",
    #     "Query": {
    #         "ResourceTypeFilters": [ "resource_type1", "resource_type2"],
    #         "TagFilters": [
    #             { "Key1": ["ValueA","ValueB"] },
    #             { "Key2": ["ValueC","ValueD"]
    #             }
    #         ]
    #     }
    # }</code>
    #          </p>
    #         <p>
    #             <b>Example 2</b>
    #          </p>
    #         <p>The following example shows a resource query JSON string that includes only Amazon EC2
    #             instances that are tagged <code>Stage</code> with a value of <code>Test</code>.</p>
    #         <p>
    #             <code>{
    #     "Type": "TAG_FILTERS_1_0",
    #     "Query": "{
    #         "ResourceTypeFilters": "AWS::EC2::Instance",
    #         "TagFilters": { "Stage": "Test" }
    #     }
    # }</code>
    #          </p>
    #         <p>
    #             <b>Example 3</b>
    #          </p>
    #         <p>The following example shows a resource query JSON string that includes resource of any
    #             supported type as long as it is tagged <code>Stage</code> with a value of
    #                 <code>Prod</code>.</p>
    #         <p>
    #             <code>{
    #     "Type": "TAG_FILTERS_1_0",
    #     "Query": {
    #         "ResourceTypeFilters": "AWS::AllSupported",
    #         "TagFilters": { "Stage": "Prod" }
    #     }
    # }</code>
    #          </p>
    #         <p>
    #             <b>Example 4</b>
    #          </p>
    #         <p>The following example shows a resource query JSON string that includes only Amazon EC2
    #             instances and Amazon S3 buckets that are part of the specified AWS CloudFormation stack.</p>
    #         <p>
    #             <code>{
    #     "Type": "CLOUDFORMATION_STACK_1_0",
    #     "Query": {
    #         "ResourceTypeFilters": [ "AWS::EC2::Instance", "AWS::S3::Bucket" ],
    #         "StackIdentifier": "arn:aws:cloudformation:us-west-2:123456789012:stack/AWStestuseraccount/fb0d5000-aba8-00e8-aa9e-50d5cEXAMPLE"
    #     }
    # }</code>
    #          </p>
    #
    # @!attribute type
    #   <p>The type of the query. You can use the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <i>
    #                        <code>CLOUDFORMATION_STACK_1_0:</code>
    #                     </i>Specifies that the
    #                           <code>Query</code> contains an ARN for a CloudFormation stack.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <i>
    #                        <code>TAG_FILTERS_1_0:</code>
    #                     </i>Specifies that the
    #                           <code>Query</code> parameter contains a JSON string that represents a
    #                       collection of simple tag filters for resource types and tags. The JSON string
    #                       uses a syntax similar to the <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html">GetResources</a>
    #                     </code> operation, but uses only the <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html resourcegrouptagging-GetResources-request-ResourceTypeFilters"> ResourceTypeFilters</a>
    #                     </code> and <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html resourcegrouptagging-GetResources-request-TagFiltersTagFilters">TagFilters</a>
    #                     </code> fields. If you specify more than one tag key,
    #                       only resources that match all tag keys, and at least one value of each specified
    #                       tag key, are returned in your query. If you specify more than one value for a
    #                       tag key, a resource matches the filter if it has a tag key value that matches
    #                           <i>any</i> of the specified values.</p>
    #                   <p>For example, consider the following sample query for resources that have two
    #                       tags, <code>Stage</code> and <code>Version</code>, with two values each:</p>
    #                   <p>
    #                     <code>[{"Stage":["Test","Deploy"]},{"Version":["1","2"]}]</code>
    #                  </p>
    #                   <p>The results of this query could include the following.</p>
    #                   <ul>
    #                     <li>
    #                           <p>An EC2 instance that has the following two tags:
    #                                   <code>{"Stage":"Deploy"}</code>, and
    #                               <code>{"Version":"2"}</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>An S3 bucket that has the following two tags:
    #                                   <code>{"Stage":"Test"}</code>, and
    #                               <code>{"Version":"1"}</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #                   <p>The query would not include the following items in the results, however. </p>
    #                   <ul>
    #                     <li>
    #                           <p>An EC2 instance that has only the following tag:
    #                                   <code>{"Stage":"Deploy"}</code>.</p>
    #                           <p>The instance does not have <b>all</b> of the
    #                               tag keys specified in the filter, so it is excluded from the
    #                               results.</p>
    #                       </li>
    #                     <li>
    #                           <p>An RDS database that has the following two tags:
    #                                   <code>{"Stage":"Archived"}</code> and
    #                               <code>{"Version":"4"}</code>
    #                        </p>
    #                           <p>The database has all of the tag keys, but none of those keys has an
    #                               associated value that matches at least one of the specified values in
    #                               the filter.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #
    #   @return [String]
    #
    # @!attribute query
    #   <p>The query that defines a group or a search.</p>
    #
    #   @return [String]
    #
    ResourceQuery = ::Struct.new(
      :type,
      :query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that identifies the current group membership status for a resource. Adding
    #             a resource to a resource group is performed asynchronously as a background task. A
    #                 <code>PENDING</code> status indicates, for this resource, that the process isn't
    #             completed yet.</p>
    #
    # @!attribute name
    #   <p>The current status.</p>
    #
    #   Enum, one of: ["PENDING"]
    #
    #   @return [String]
    #
    ResourceStatus = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceStatusValue
    #
    module ResourceStatusValue
      # No documentation available.
      #
      Pending = "PENDING"
    end

    # @!attribute resource_query
    #   <p>The search query, using the same formats that are supported for resource group
    #               definition. For more information, see <a>CreateGroup</a>.</p>
    #
    #   @return [ResourceQuery]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    #   @return [String]
    #
    SearchResourcesInput = ::Struct.new(
      :resource_query,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_identifiers
    #   <p>The ARNs and resource types of resources that are members of the group that you
    #               specified.</p>
    #
    #   @return [Array<ResourceIdentifier>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute query_errors
    #   <p>A list of <code>QueryError</code> objects. Each error is an object that contains
    #                   <code>ErrorCode</code> and <code>Message</code> structures. Possible values for
    #                   <code>ErrorCode</code> are <code>CLOUDFORMATION_STACK_INACTIVE</code> and
    #                   <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>.</p>
    #
    #   @return [Array<QueryError>]
    #
    SearchResourcesOutput = ::Struct.new(
      :resource_identifiers,
      :next_token,
      :query_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource group to which to add tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the specified resource group. A tag is a string-to-string map of
    #               key-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagInput = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the tagged resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that have been added to the specified resource group.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagOutput = ::Struct.new(
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've exceeded throttling limits by making too many requests in a period of
    #             time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it doesn't have valid credentials for the target
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The name or the ARN of the resource group from which to remove the resources.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The ARNs of the resources to be removed from the group.</p>
    #
    #   @return [Array<String>]
    #
    UngroupResourcesInput = ::Struct.new(
      :group,
      :resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute succeeded
    #   <p>A list of resources that were successfully removed from the group by this
    #               operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failed
    #   <p>A list of any resources that failed to be removed from the group by this
    #               operation.</p>
    #
    #   @return [Array<FailedResource>]
    #
    # @!attribute pending
    #   <p>A list of any resources that are still in the process of being removed from the group
    #               by this operation. These pending removals continue asynchronously. You can check the
    #               status of pending removals by using the <code>
    #                  <a>ListGroupResources</a>
    #               </code> operation. After the resource is successfully removed, it no longer
    #               appears in the response.</p>
    #
    #   @return [Array<PendingResource>]
    #
    UngroupResourcesOutput = ::Struct.new(
      :succeeded,
      :failed,
      :pending,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource group from which to remove tags. The command removed both the
    #               specified keys and any values associated with those keys.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>The keys of the tags to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagInput = ::Struct.new(
      :arn,
      :keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the resource group from which tags have been removed.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>The keys of the tags that were removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagOutput = ::Struct.new(
      :arn,
      :keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description that you want to update the resource group with. Descriptions can
    #               contain letters, numbers, hyphens, underscores, periods, and spaces.</p>
    #
    #   @return [String]
    #
    UpdateGroupInput = ::Struct.new(
      :group_name,
      :group,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group
    #   <p>The update description of the resource group.</p>
    #
    #   @return [Group]
    #
    UpdateGroupOutput = ::Struct.new(
      :group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #
    #   @return [String]
    #
    # @!attribute group
    #   <p>The name or the ARN of the resource group to query.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_query
    #   <p>The resource query to determine which AWS resources are members of this resource
    #               group.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    #   @return [ResourceQuery]
    #
    UpdateGroupQueryInput = ::Struct.new(
      :group_name,
      :group,
      :resource_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_query
    #   <p>The updated resource query associated with the resource group after the update.</p>
    #
    #   @return [GroupQuery]
    #
    UpdateGroupQueryOutput = ::Struct.new(
      :group_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
