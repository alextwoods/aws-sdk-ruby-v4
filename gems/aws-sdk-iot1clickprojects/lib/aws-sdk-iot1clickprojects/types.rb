# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickProjects
  module Types

    # @!attribute project_name
    #   <p>The name of the project containing the placement in which to associate the device.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_name
    #   <p>The name of the placement in which to associate the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The ID of the physical device to be associated with the given placement in the project.
    #         Note that a mandatory 4 character prefix is required for all <code>deviceId</code>
    #         values.</p>
    #
    #   @return [String]
    #
    # @!attribute device_template_name
    #   <p>The device template name to associate with the device ID.</p>
    #
    #   @return [String]
    #
    AssociateDeviceWithPlacementInput = ::Struct.new(
      :project_name,
      :placement_name,
      :device_id,
      :device_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDeviceWithPlacementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placement_name
    #   <p>The name of the placement to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project in which to create the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Optional user-defined key/value pairs providing contextual data (such as location or
    #         function) for the placement.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePlacementInput = ::Struct.new(
      :placement_name,
      :project_name,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreatePlacementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to create.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_template
    #   <p>The schema defining the placement to be created. A placement template defines placement
    #         default attributes and device templates. You cannot add or remove device templates after the
    #         project has been created. However, you can update <code>callbackOverrides</code> for the
    #         device templates using the <code>UpdateProject</code> API.</p>
    #
    #   @return [PlacementTemplate]
    #
    # @!attribute tags
    #   <p>Optional tags (metadata key/value pairs) to be associated with the project. For example,
    #           <code>{ {"key1": "value1", "key2": "value2"} }</code>. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging
    #           Strategies</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProjectInput = ::Struct.new(
      :project_name,
      :description,
      :placement_template,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placement_name
    #   <p>The name of the empty placement to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The project containing the empty placement to delete.</p>
    #
    #   @return [String]
    #
    DeletePlacementInput = ::Struct.new(
      :placement_name,
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePlacementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the empty project to delete.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placement_name
    #   <p>The name of the placement within a project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The project containing the placement to be described.</p>
    #
    #   @return [String]
    #
    DescribePlacementInput = ::Struct.new(
      :placement_name,
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placement
    #   <p>An object describing the placement.</p>
    #
    #   @return [PlacementDescription]
    #
    DescribePlacementOutput = ::Struct.new(
      :placement,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to be described.</p>
    #
    #   @return [String]
    #
    DescribeProjectInput = ::Struct.new(
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>An object describing the project.</p>
    #
    #   @return [ProjectDescription]
    #
    DescribeProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a device for a placement template (see <a>PlacementTemplate</a>).</p>
    #
    # @!attribute device_type
    #   <p>The device type, which currently must be <code>"button"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute callback_overrides
    #   <p>An optional Lambda function to invoke instead of the default Lambda function provided by
    #         the placement template.</p>
    #
    #   @return [Hash<String, String>]
    #
    DeviceTemplate = ::Struct.new(
      :device_type,
      :callback_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project that contains the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_name
    #   <p>The name of the placement that the device should be removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute device_template_name
    #   <p>The device ID that should be removed from the placement.</p>
    #
    #   @return [String]
    #
    DisassociateDeviceFromPlacementInput = ::Struct.new(
      :project_name,
      :placement_name,
      :device_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDeviceFromPlacementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project containing the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_name
    #   <p>The name of the placement to get the devices from.</p>
    #
    #   @return [String]
    #
    GetDevicesInPlacementInput = ::Struct.new(
      :project_name,
      :placement_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>An object containing the devices (zero or more) within the placement.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDevicesInPlacementOutput = ::Struct.new(
      :devices,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The project containing the placements to be listed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of 100 is
    #         used.</p>
    #
    #   @return [Integer]
    #
    ListPlacementsInput = ::Struct.new(
      :project_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placements
    #   <p>An object listing the requested placements.</p>
    #
    #   @return [Array<PlacementSummary>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next set of results - will be effectively empty if there
    #         are no further results.</p>
    #
    #   @return [String]
    #
    ListPlacementsOutput = ::Struct.new(
      :placements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of 100 is
    #         used.</p>
    #
    #   @return [Integer]
    #
    ListProjectsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute projects
    #   <p>An object containing the list of projects.</p>
    #
    #   @return [Array<ProjectSummary>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next set of results - will be effectively empty if there
    #         are no further results.</p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :projects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags you want to list.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags (metadata key/value pairs) which you have assigned to the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object describing a project's placement.</p>
    #
    # @!attribute project_name
    #   <p>The name of the project containing the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_name
    #   <p>The name of the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The user-defined attributes associated with the placement.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute created_date
    #   <p>The date when the placement was initially created, in UNIX epoch time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date when the placement was last updated, in UNIX epoch time format. If the placement
    #         was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the
    #         same.</p>
    #
    #   @return [Time]
    #
    PlacementDescription = ::Struct.new(
      :project_name,
      :placement_name,
      :attributes,
      :created_date,
      :updated_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object providing summary information for a particular placement.</p>
    #
    # @!attribute project_name
    #   <p>The name of the project containing the placement.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_name
    #   <p>The name of the placement being summarized.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date when the placement was originally created, in UNIX epoch time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date when the placement was last updated, in UNIX epoch time format. If the placement
    #         was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the
    #         same.</p>
    #
    #   @return [Time]
    #
    PlacementSummary = ::Struct.new(
      :project_name,
      :placement_name,
      :created_date,
      :updated_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object defining the template for a placement.</p>
    #
    # @!attribute default_attributes
    #   <p>The default attributes (key/value pairs) to be applied to all placements using this
    #         template.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute device_templates
    #   <p>An object specifying the <a>DeviceTemplate</a> for all placements using this
    #           (<a>PlacementTemplate</a>) template.</p>
    #
    #   @return [Hash<String, DeviceTemplate>]
    #
    PlacementTemplate = ::Struct.new(
      :default_attributes,
      :device_templates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object providing detailed information for a particular project associated with an AWS
    #       account and region.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project for which to obtain information from.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date when the project was originally created, in UNIX epoch time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date when the project was last updated, in UNIX epoch time format. If the project was
    #         not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute placement_template
    #   <p>An object describing the project's placement specifications.</p>
    #
    #   @return [PlacementTemplate]
    #
    # @!attribute tags
    #   <p>The tags (metadata key/value pairs) associated with the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    ProjectDescription = ::Struct.new(
      :arn,
      :project_name,
      :description,
      :created_date,
      :updated_date,
      :placement_template,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object providing summary information for a particular project for an associated AWS
    #       account and region.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project being summarized.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date when the project was originally created, in UNIX epoch time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date when the project was last updated, in UNIX epoch time format. If the project was
    #         not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags (metadata key/value pairs) associated with the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    ProjectSummary = ::Struct.new(
      :arn,
      :project_name,
      :created_date,
      :updated_date,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resouce for which tag(s) should be added or modified.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The new or modifying tag(s) for the resource. See <a href="https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html 1click-limits">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per
    #         resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tag you want to remove.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of those tags which you want to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute placement_name
    #   <p>The name of the placement to update.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project containing the placement to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The user-defined object of attributes used to update the placement. The maximum number of
    #         key/value pairs is 50.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdatePlacementInput = ::Struct.new(
      :placement_name,
      :project_name,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePlacementOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the project to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional user-defined description for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute placement_template
    #   <p>An object defining the project update. Once a project has been created, you cannot add
    #         device template names to the project. However, for a given <code>placementTemplate</code>, you
    #         can update the associated <code>callbackOverrides</code> for the device definition using this
    #         API.</p>
    #
    #   @return [PlacementTemplate]
    #
    UpdateProjectInput = ::Struct.new(
      :project_name,
      :description,
      :placement_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
