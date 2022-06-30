# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSiteWise
  module Types

    # <p>Contains an access policy that defines an identity's access to an IoT SiteWise Monitor
    #       resource.</p>
    #
    # @!attribute id
    #   <p>The ID of the access policy.</p>
    #
    #   @return [String]
    #
    # @!attribute identity
    #   <p>The identity (an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user).</p>
    #
    #   @return [Identity]
    #
    # @!attribute resource
    #   <p>The IoT SiteWise Monitor resource (a portal or project).</p>
    #
    #   @return [Resource]
    #
    # @!attribute permission
    #   <p>The permissions for the access policy. Note that a project <code>ADMINISTRATOR</code> is
    #         also known as a project owner.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the access policy was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the access policy was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    AccessPolicySummary = ::Struct.new(
      :id,
      :identity,
      :resource,
      :permission,
      :creation_date,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregateType
    #
    module AggregateType
      # No documentation available.
      #
      AVERAGE = "AVERAGE"

      # No documentation available.
      #
      COUNT = "COUNT"

      # No documentation available.
      #
      MAXIMUM = "MAXIMUM"

      # No documentation available.
      #
      MINIMUM = "MINIMUM"

      # No documentation available.
      #
      SUM = "SUM"

      # No documentation available.
      #
      STANDARD_DEVIATION = "STANDARD_DEVIATION"
    end

    # <p>Contains aggregated asset property values (for example, average, minimum, and
    #       maximum).</p>
    #
    # @!attribute timestamp
    #   <p>The date the aggregating computations occurred, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute quality
    #   <p>The quality of the aggregated data.</p>
    #
    #   Enum, one of: ["GOOD", "BAD", "UNCERTAIN"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the aggregates.</p>
    #
    #   @return [Aggregates]
    #
    AggregatedValue = ::Struct.new(
      :timestamp,
      :quality,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the (pre-calculated) aggregate values for an asset property.</p>
    #
    # @!attribute average
    #   <p>The average (mean) value of the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    # @!attribute count
    #   <p>The count of data points in the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    # @!attribute maximum
    #   <p>The maximum value of the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    # @!attribute minimum
    #   <p>The minimum value of the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    # @!attribute sum
    #   <p>The sum of the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    # @!attribute standard_deviation
    #   <p>The standard deviation of the time series over a time interval window.</p>
    #
    #   @return [Float]
    #
    Aggregates = ::Struct.new(
      :average,
      :count,
      :maximum,
      :minimum,
      :sum,
      :standard_deviation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #   You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #   For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #
    # @!attribute alarm_role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IAM role that allows the alarm to perform actions and access Amazon Web Services
    #         resources and services, such as IoT Events.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_lambda_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Lambda function that manages alarm notifications. For more
    #         information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">Managing alarm
    #           notifications</a> in the <i>IoT Events Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    Alarms = ::Struct.new(
      :alarm_role_arn,
      :notification_lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a composite model in an asset. This object contains the asset's
    #       properties that you define in the composite model.</p>
    #
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The asset properties that this composite model defines.</p>
    #
    #   @return [Array<AssetProperty>]
    #
    AssetCompositeModel = ::Struct.new(
      :name,
      :description,
      :type,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssetErrorCode
    #
    module AssetErrorCode
      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"
    end

    # <p>Contains error details for the requested associate project asset action.</p>
    #
    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    AssetErrorDetails = ::Struct.new(
      :asset_id,
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an asset hierarchy that contains a hierarchy's name and ID.</p>
    #
    # @!attribute id
    #   <p>The ID of the hierarchy. This ID is a <code>hierarchyId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The hierarchy name provided in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a>
    #         API operation.</p>
    #
    #   @return [String]
    #
    AssetHierarchy = ::Struct.new(
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a parent asset and a child asset that are related through an
    #       asset hierarchy.</p>
    #
    # @!attribute parent_asset_id
    #   <p>The ID of the parent asset in this asset relationship.</p>
    #
    #   @return [String]
    #
    # @!attribute child_asset_id
    #   <p>The ID of the child asset in this asset relationship.</p>
    #
    #   @return [String]
    #
    AssetHierarchyInfo = ::Struct.new(
      :parent_asset_id,
      :child_asset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a composite model in an asset model. This object contains the
    #       asset property definitions that you define in the composite model.</p>
    #
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The asset property definitions for this composite model.</p>
    #
    #   @return [Array<AssetModelProperty>]
    #
    AssetModelCompositeModel = ::Struct.new(
      :name,
      :description,
      :type,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a composite model definition in an asset model. This composite model definition
    #       is applied to all assets created from the asset model.</p>
    #
    # @!attribute name
    #   <p>The name of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the composite model.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the composite model. For alarm composite models, this type is
    #           <code>AWS/ALARM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The asset property definitions for this composite model.</p>
    #
    #   @return [Array<AssetModelPropertyDefinition>]
    #
    AssetModelCompositeModelDefinition = ::Struct.new(
      :name,
      :description,
      :type,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an asset hierarchy that contains a hierarchy's name, ID, and child asset model
    #       ID that specifies the type of asset that can be in this hierarchy.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset model hierarchy. This ID is a <code>hierarchyId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset model hierarchy that you specify by using the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> API operation.</p>
    #
    #   @return [String]
    #
    # @!attribute child_asset_model_id
    #   <p>The ID of the asset model. All assets in this hierarchy must be instances of the
    #           <code>childAssetModelId</code> asset model.</p>
    #
    #   @return [String]
    #
    AssetModelHierarchy = ::Struct.new(
      :id,
      :name,
      :child_asset_model_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset model hierarchy used in asset model creation. An asset model hierarchy
    #       determines the kind (or type) of asset that can belong to a hierarchy.</p>
    #
    # @!attribute name
    #   <p>The name of the asset model hierarchy definition (as specified in the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html">CreateAssetModel</a> or
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html">UpdateAssetModel</a> API operation).</p>
    #
    #   @return [String]
    #
    # @!attribute child_asset_model_id
    #   <p>The ID of an asset model for this hierarchy.</p>
    #
    #   @return [String]
    #
    AssetModelHierarchyDefinition = ::Struct.new(
      :name,
      :child_asset_model_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an asset model property.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset model property.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset model property.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the asset model property.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter exists on properties that
    #         have the <code>STRUCT</code> data type.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the asset model property, such as <code>Newtons</code> or
    #         <code>RPM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The property type (see <code>PropertyType</code>).</p>
    #
    #   @return [PropertyType]
    #
    AssetModelProperty = ::Struct.new(
      :id,
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset model property definition. This property definition is applied to all
    #       assets created from the asset model.</p>
    #
    # @!attribute name
    #   <p>The name of the property definition.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the property definition.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to
    #         identify the type of the structure for this property.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter is required on properties
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model in which you
    #         define this property. Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite
    #         models.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the property definition, such as <code>Newtons</code> or
    #         <code>RPM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The property definition type (see <code>PropertyType</code>). You can only specify one
    #         type in a property definition.</p>
    #
    #   @return [PropertyType]
    #
    AssetModelPropertyDefinition = ::Struct.new(
      :name,
      :data_type,
      :data_type_spec,
      :unit,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssetModelState
    #
    module AssetModelState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      PROPAGATING = "PROPAGATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains current status information for an asset model. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #         states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute state
    #   <p>The current state of the asset model.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #
    #   @return [ErrorDetails]
    #
    AssetModelStatus = ::Struct.new(
      :state,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of an asset model.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset model (used with IoT SiteWise APIs).</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The asset model description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the asset model was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the asset model was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the asset model.</p>
    #
    #   @return [AssetModelStatus]
    #
    AssetModelSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains asset property information.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification
    #   <p>The asset property's notification topic and state. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #
    #   @return [PropertyNotification]
    #
    # @!attribute data_type
    #   <p>The data type of the asset property.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this property. This parameter exists on properties that
    #         have the <code>STRUCT</code> data type.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>
    #
    #   @return [String]
    #
    AssetProperty = ::Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :data_type_spec,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains asset property value information.</p>
    #
    # @!attribute value
    #   <p>The value of the asset property (see <code>Variant</code>).</p>
    #
    #   @return [Variant]
    #
    # @!attribute timestamp
    #   <p>The timestamp of the asset property value.</p>
    #
    #   @return [TimeInNanos]
    #
    # @!attribute quality
    #   <p>The quality of the asset property value.</p>
    #
    #   Enum, one of: ["GOOD", "BAD", "UNCERTAIN"]
    #
    #   @return [String]
    #
    AssetPropertyValue = ::Struct.new(
      :value,
      :timestamp,
      :quality,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about assets that are related to one another.</p>
    #
    # @!attribute hierarchy_info
    #   <p>The assets that are related through an asset hierarchy.</p>
    #            <p>This object is present if the <code>relationshipType</code> is
    #         <code>HIERARCHY</code>.</p>
    #
    #   @return [AssetHierarchyInfo]
    #
    # @!attribute relationship_type
    #   <p>The relationship type of the assets in this relationship. This value is one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HIERARCHY</code> – The assets are related through an asset hierarchy. If
    #             you specify this relationship type, this asset relationship includes the
    #               <code>hierarchyInfo</code> object.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["HIERARCHY"]
    #
    #   @return [String]
    #
    AssetRelationshipSummary = ::Struct.new(
      :hierarchy_info,
      :relationship_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssetRelationshipType
    #
    module AssetRelationshipType
      # No documentation available.
      #
      HIERARCHY = "HIERARCHY"
    end

    # Includes enum constants for AssetState
    #
    module AssetState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about the current status of an asset. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html">Asset and model
    #         states</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute state
    #   <p>The current status of the asset.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #
    #   @return [ErrorDetails]
    #
    AssetStatus = ::Struct.new(
      :state,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of an asset.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model used to create this asset.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the asset.</p>
    #
    #   @return [AssetStatus]
    #
    # @!attribute hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #
    #   @return [Array<AssetHierarchy>]
    #
    # @!attribute description
    #   <p>A description for the asset.</p>
    #
    #   @return [String]
    #
    AssetSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the parent asset.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
    #         of assets to be formed that all come from the same asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute child_asset_id
    #   <p>The ID of the child asset to be associated.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    AssociateAssetsInput = ::Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateAssetsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    AssociateTimeSeriesToAssetPropertyInput = ::Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateTimeSeriesToAssetPropertyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of an associated asset.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model used to create the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the asset.</p>
    #
    #   @return [AssetStatus]
    #
    # @!attribute hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #
    #   @return [Array<AssetHierarchy>]
    #
    # @!attribute description
    #   <p>A description for the asset.</p>
    #
    #   @return [String]
    #
    AssociatedAssetsSummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :asset_model_id,
      :creation_date,
      :last_update_date,
      :status,
      :hierarchies,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset attribute property. For more information, see
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes">Attributes</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute default_value
    #   <p>The default value of the asset model property attribute. All assets that you create from
    #         the asset model contain this attribute value. You can update an attribute's value after you
    #         create an asset. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html">Updating attribute values</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    Attribute = ::Struct.new(
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthMode
    #
    module AuthMode
      # No documentation available.
      #
      IAM = "IAM"

      # No documentation available.
      #
      SSO = "SSO"
    end

    # @!attribute project_id
    #   <p>The ID of the project to which to associate the assets.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_ids
    #   <p>The IDs of the assets to be associated to the project.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    BatchAssociateProjectAssetsInput = ::Struct.new(
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #
    #   @return [Array<AssetErrorDetails>]
    #
    BatchAssociateProjectAssetsOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project from which to disassociate the assets.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_ids
    #   <p>The IDs of the assets to be disassociated from the project.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    BatchDisassociateProjectAssetsInput = ::Struct.new(
      :project_id,
      :asset_ids,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of associated error information, if any.</p>
    #
    #   @return [Array<AssetErrorDetails>]
    #
    BatchDisassociateProjectAssetsOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchEntryCompletionStatus
    #
    module BatchEntryCompletionStatus
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Contains information for an asset property aggregate entry that is associated with the
    #   <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregate_types
    #   <p>The data aggregating function.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resolution
    #   <p>The time interval over which to aggregate data.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    BatchGetAssetPropertyAggregatesEntry = ::Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchGetAssetPropertyAggregatesErrorCode
    #
    module BatchGetAssetPropertyAggregatesErrorCode
      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      InvalidRequestException = "InvalidRequestException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"
    end

    # <p>Contains error information for an asset property aggregate entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyAggregatesErrorEntry = ::Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the error code and the timestamp for an asset property aggregate entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    BatchGetAssetPropertyAggregatesErrorInfo = ::Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property aggregate entries for the batch get request.
    #     You can specify up to 16 entries per request.</p>
    #
    #   @return [Array<BatchGetAssetPropertyAggregatesEntry>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is less than 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is less than the value of <code>maxResults</code>.
    #           The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    BatchGetAssetPropertyAggregatesInput = ::Struct.new(
      :entries,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #
    #   @return [Array<BatchGetAssetPropertyAggregatesErrorEntry>]
    #
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #
    #   @return [Array<BatchGetAssetPropertyAggregatesSuccessEntry>]
    #
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #
    #   @return [Array<BatchGetAssetPropertyAggregatesSkippedEntry>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyAggregatesOutput = ::Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> request.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #
    #   Enum, one of: ["SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #
    #   @return [BatchGetAssetPropertyAggregatesErrorInfo]
    #
    BatchGetAssetPropertyAggregatesSkippedEntry = ::Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains success information for an entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyAggregates.html">BatchGetAssetPropertyAggregates</a> API.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregated_values
    #   <p>The requested aggregated asset property values (for example, average, minimum, and maximum).</p>
    #
    #   @return [Array<AggregatedValue>]
    #
    BatchGetAssetPropertyAggregatesSuccessEntry = ::Struct.new(
      :entry_id,
      :aggregated_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for an asset property value entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueEntry = ::Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchGetAssetPropertyValueErrorCode
    #
    module BatchGetAssetPropertyValueErrorCode
      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      InvalidRequestException = "InvalidRequestException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"
    end

    # <p>Contains error information for an asset property value entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueErrorEntry = ::Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The error information, such as the error code and the timestamp.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    BatchGetAssetPropertyValueErrorInfo = ::Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for an asset property historical value entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    #          <p>To identify an asset property, you must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p>
    #             </li>
    #             <li>
    #                <p>A <code>propertyAlias</code>, which is a data stream alias (for example,
    #           <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueHistoryEntry = ::Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchGetAssetPropertyValueHistoryErrorCode
    #
    module BatchGetAssetPropertyValueHistoryErrorCode
      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      InvalidRequestException = "InvalidRequestException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"
    end

    # <p>A list of the errors (if any) associated with the batch request. Each error entry
    #       contains the <code>entryId</code> of the entry that failed.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #
    #   @return [String]
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueHistoryErrorEntry = ::Struct.new(
      :error_code,
      :error_message,
      :entry_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The error information, such as the error code and the timestamp.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_timestamp
    #   <p>The date the error occurred, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    BatchGetAssetPropertyValueHistoryErrorInfo = ::Struct.new(
      :error_code,
      :error_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property historical value entries for the batch get request.
    #       You can specify up to 16 entries per request.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueHistoryEntry>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. A result set is returned in the two cases, whichever occurs first.</p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result set is less than 1 MB.</p>
    #               </li>
    #               <li>
    #                  <p>The number of data points in the result set is less than the value of <code>maxResults</code>.
    #           The maximum value of <code>maxResults</code> is 4000.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    BatchGetAssetPropertyValueHistoryInput = ::Struct.new(
      :entries,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueHistoryErrorEntry>]
    #
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueHistorySuccessEntry>]
    #
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueHistorySkippedEntry>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueHistoryOutput = ::Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> request.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValueHistory.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    #
    #   Enum, one of: ["SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #
    #   @return [BatchGetAssetPropertyValueHistoryErrorInfo]
    #
    BatchGetAssetPropertyValueHistorySkippedEntry = ::Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains success information for an entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValueHistory</a> API.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_property_value_history
    #   <p>The requested historical values for the specified asset property.</p>
    #
    #   @return [Array<AssetPropertyValue>]
    #
    BatchGetAssetPropertyValueHistorySuccessEntry = ::Struct.new(
      :entry_id,
      :asset_property_value_history,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entries
    #   <p>The list of asset property value entries for the batch get request.
    #       You can specify up to 16 entries per request.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueEntry>]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueInput = ::Struct.new(
      :entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueErrorEntry>]
    #
    # @!attribute success_entries
    #   <p>A list of entries that were processed successfully by this batch request. Each success entry
    #         contains the <code>entryId</code> of the entry that succeeded and the latest query result.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueSuccessEntry>]
    #
    # @!attribute skipped_entries
    #   <p>A list of entries that were not processed by this batch request.
    #         because these entries had been completely processed by previous paginated requests.
    #         Each skipped entry contains the <code>entryId</code> of the entry that skipped.</p>
    #
    #   @return [Array<BatchGetAssetPropertyValueSkippedEntry>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    BatchGetAssetPropertyValueOutput = ::Struct.new(
      :error_entries,
      :success_entries,
      :skipped_entries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for an entry that has been processed by the previous
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> request.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_status
    #   <p>The completion status of each entry that is associated with the
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> request.</p>
    #
    #   Enum, one of: ["SUCCESS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>The error information, such as the error code and the timestamp.</p>
    #
    #   @return [BatchGetAssetPropertyValueErrorInfo]
    #
    BatchGetAssetPropertyValueSkippedEntry = ::Struct.new(
      :entry_id,
      :completion_status,
      :error_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains success information for an entry that is associated with the
    #     <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchGetAssetPropertyValue.html">BatchGetAssetPropertyValue</a> API.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the entry.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_property_value
    #   <p>Contains asset property value information.</p>
    #
    #   @return [AssetPropertyValue]
    #
    BatchGetAssetPropertyValueSuccessEntry = ::Struct.new(
      :entry_id,
      :asset_property_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error information from updating a batch of asset property values.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException", "LimitExceededException", "ConflictingOperationException", "TimestampOutOfRangeException", "AccessDeniedException"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The associated error message.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamps
    #   <p>A list of timestamps for each  error, if any.</p>
    #
    #   @return [Array<TimeInNanos>]
    #
    BatchPutAssetPropertyError = ::Struct.new(
      :error_code,
      :error_message,
      :timestamps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains error information for asset property value entries that are associated with the
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html">BatchPutAssetPropertyValue</a> API.</p>
    #
    # @!attribute entry_id
    #   <p>The ID of the failed entry.</p>
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>The list of update property value errors.</p>
    #
    #   @return [Array<BatchPutAssetPropertyError>]
    #
    BatchPutAssetPropertyErrorEntry = ::Struct.new(
      :entry_id,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchPutAssetPropertyValueErrorCode
    #
    module BatchPutAssetPropertyValueErrorCode
      # No documentation available.
      #
      ResourceNotFoundException = "ResourceNotFoundException"

      # No documentation available.
      #
      InvalidRequestException = "InvalidRequestException"

      # No documentation available.
      #
      InternalFailureException = "InternalFailureException"

      # No documentation available.
      #
      ServiceUnavailableException = "ServiceUnavailableException"

      # No documentation available.
      #
      ThrottlingException = "ThrottlingException"

      # No documentation available.
      #
      LimitExceededException = "LimitExceededException"

      # No documentation available.
      #
      ConflictingOperationException = "ConflictingOperationException"

      # No documentation available.
      #
      TimestampOutOfRangeException = "TimestampOutOfRangeException"

      # No documentation available.
      #
      AccessDeniedException = "AccessDeniedException"
    end

    # @!attribute entries
    #   <p>The list of asset property value entries for the batch put request. You can specify up to
    #         10 entries per request.</p>
    #
    #   @return [Array<PutAssetPropertyValueEntry>]
    #
    BatchPutAssetPropertyValueInput = ::Struct.new(
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>A list of the errors (if any) associated with the batch put request. Each error entry
    #         contains the <code>entryId</code> of the entry that failed.</p>
    #
    #   @return [Array<BatchPutAssetPropertyErrorEntry>]
    #
    BatchPutAssetPropertyValueOutput = ::Struct.new(
      :error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CapabilitySyncStatus
    #
    module CapabilitySyncStatus
      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"

      # No documentation available.
      #
      OUT_OF_SYNC = "OUT_OF_SYNC"

      # No documentation available.
      #
      SYNC_FAILED = "SYNC_FAILED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>Contains information about a composite model property on an asset.</p>
    #
    # @!attribute name
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the composite model that defines this property.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_property
    #   <p>Contains asset property information.</p>
    #
    #   @return [Property]
    #
    CompositeModelProperty = ::Struct.new(
      :name,
      :type,
      :asset_property,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComputeLocation
    #
    module ComputeLocation
      # No documentation available.
      #
      EDGE = "EDGE"

      # No documentation available.
      #
      CLOUD = "CLOUD"
    end

    # <p>Contains the details of an IoT SiteWise configuration error.</p>
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    ConfigurationErrorDetails = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationState
    #
    module ConfigurationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>Contains current status information for the configuration.</p>
    #
    # @!attribute state
    #   <p>The current state of the configuration.</p>
    #
    #   Enum, one of: ["ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #
    #   @return [ConfigurationErrorDetails]
    #
    ConfigurationStatus = ::Struct.new(
      :state,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that conflicts with this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource that conflicts with this operation.</p>
    #
    #   @return [String]
    #
    ConflictingOperationException = ::Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_identity
    #   <p>The identity for this access policy. Choose an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user.</p>
    #
    #   @return [Identity]
    #
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #
    #   @return [Resource]
    #
    # @!attribute access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the access policy. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    #           IoT SiteWise resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAccessPolicyInput = ::Struct.new(
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policy_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the access policy, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateAccessPolicyOutput = ::Struct.new(
      :access_policy_id,
      :access_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_name
    #   <p>A unique, friendly name for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model from which to create the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the asset. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #
    #   @return [String]
    #
    CreateAssetInput = ::Struct.new(
      :asset_name,
      :asset_model_id,
      :client_token,
      :tags,
      :asset_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_name
    #   <p>A unique, friendly name for the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_description
    #   <p>A description for the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_properties
    #   <p>The property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Array<AssetModelPropertyDefinition>]
    #
    # @!attribute asset_model_hierarchies
    #   <p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model
    #         whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Array<AssetModelHierarchyDefinition>]
    #
    # @!attribute asset_model_composite_models
    #   <p>The composite asset models that are part of this asset model.
    #         Composite asset models are asset models that contain specific properties. Each composite model
    #         has a type that defines the properties that the composite model supports. Use composite asset
    #         models to define alarms on this asset model.</p>
    #
    #   @return [Array<AssetModelCompositeModelDefinition>]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the asset model. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAssetModelInput = ::Struct.new(
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model. You can use this ID when you call other IoT SiteWise APIs.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>CREATING</code> after
    #         successfully calling this operation) and any error message.</p>
    #
    #   @return [AssetModelStatus]
    #
    CreateAssetModelOutput = ::Struct.new(
      :asset_model_id,
      :asset_model_arn,
      :asset_model_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset. This ID uniquely identifies the asset within IoT SiteWise and can be used with other
    #         IoT SiteWise APIs.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>CREATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [AssetStatus]
    #
    CreateAssetOutput = ::Struct.new(
      :asset_id,
      :asset_arn,
      :asset_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project in which to create the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_name
    #   <p>A friendly name for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_description
    #   <p>A description for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_definition
    #   <p>The dashboard definition specified in a JSON literal. For detailed information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the dashboard. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDashboardInput = ::Struct.new(
      :project_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the dashboard, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateDashboardOutput = ::Struct.new(
      :dashboard_id,
      :dashboard_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_name
    #   <p>A unique, friendly name for the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_platform
    #   <p>The gateway's platform. You can only specify one platform in a gateway.</p>
    #
    #   @return [GatewayPlatform]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the gateway. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateGatewayInput = ::Struct.new(
      :gateway_name,
      :gateway_platform,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device. You can use this ID when you call other IoT SiteWise APIs.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the gateway, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateGatewayOutput = ::Struct.new(
      :gateway_id,
      :gateway_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_name
    #   <p>A friendly name for the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_description
    #   <p>A description for the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_logo_image_file
    #   <p>A logo image to display in the portal. Upload a square, high-resolution image. The
    #         image is displayed on a dark background.</p>
    #
    #   @return [ImageFile]
    #
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the portal. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute portal_auth_mode
    #   <p>The service to use to authenticate users to the portal. Choose from the following
    #         options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SSO</code> – The portal uses Amazon Web Services Single Sign On to authenticate users and manage
    #             user permissions. Before you can create a portal that uses Amazon Web Services SSO, you must enable Amazon Web Services SSO.
    #             For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html mon-gs-sso">Enabling Amazon Web Services SSO</a> in the
    #               <i>IoT SiteWise User Guide</i>. This option is only available in Amazon Web Services Regions other than
    #             the China Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> – The portal uses Identity and Access Management to authenticate users and manage
    #             user permissions.</p>
    #               </li>
    #            </ul>
    #            <p>You can't change this value after you create a portal.</p>
    #            <p>Default: <code>SSO</code>
    #            </p>
    #
    #   Enum, one of: ["IAM", "SSO"]
    #
    #   @return [String]
    #
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #            <important>
    #               <p>If you use the <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html">IoT Events managed Lambda
    #             function</a> to manage your emails, you must <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">verify the sender email
    #             address in Amazon SES</a>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #
    #   @return [Alarms]
    #
    CreatePortalInput = ::Struct.new(
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :client_token,
      :portal_logo_image_file,
      :role_arn,
      :tags,
      :portal_auth_mode,
      :notification_sender_email,
      :alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the created portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the portal, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute portal_start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use Amazon Web Services SSO for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>CREATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [PortalStatus]
    #
    # @!attribute sso_application_id
    #   <p>The associated Amazon Web Services SSO application ID, if the portal uses Amazon Web Services SSO.</p>
    #
    #   @return [String]
    #
    CreatePortalOutput = ::Struct.new(
      :portal_id,
      :portal_arn,
      :portal_start_url,
      :portal_status,
      :sso_application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal in which to create the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>A friendly name for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_description
    #   <p>A description for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the project. For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProjectInput = ::Struct.new(
      :portal_id,
      :project_name,
      :project_description,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the project, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateProjectOutput = ::Struct.new(
      :project_id,
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a customer managed Amazon S3 bucket.</p>
    #
    # @!attribute s3_resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Amazon S3 object. For more information about how to find the ARN for an
    #         Amazon S3 object, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-arn-format.html">Amazon S3 resources</a> in the
    #           <i>Amazon Simple Storage Service User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Identity and Access Management role that allows IoT SiteWise to send data to Amazon S3.</p>
    #
    #   @return [String]
    #
    CustomerManagedS3Storage = ::Struct.new(
      :s3_resource_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a dashboard summary.</p>
    #
    # @!attribute id
    #   <p>The ID of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the dashboard</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The dashboard's description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the dashboard was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the dashboard was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DashboardSummary = ::Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteAccessPolicyInput = ::Struct.new(
      :access_policy_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteAssetInput = ::Struct.new(
      :asset_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteAssetModelInput = ::Struct.new(
      :asset_model_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>DELETING</code> after
    #         successfully calling this operation) and any error message.</p>
    #
    #   @return [AssetModelStatus]
    #
    DeleteAssetModelOutput = ::Struct.new(
      :asset_model_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [AssetStatus]
    #
    DeleteAssetOutput = ::Struct.new(
      :asset_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteDashboardInput = ::Struct.new(
      :dashboard_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDashboardOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to delete.</p>
    #
    #   @return [String]
    #
    DeleteGatewayInput = ::Struct.new(
      :gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGatewayOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeletePortalInput = ::Struct.new(
      :portal_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>DELETING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [PortalStatus]
    #
    DeletePortalOutput = ::Struct.new(
      :portal_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project_id,
      :client_token,
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

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DeleteTimeSeriesInput = ::Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTimeSeriesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    #   @return [String]
    #
    DescribeAccessPolicyInput = ::Struct.new(
      :access_policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policy_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the access policy, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute access_policy_identity
    #   <p>The identity (Amazon Web Services SSO user, Amazon Web Services SSO group, or IAM user) to which this access policy
    #         applies.</p>
    #
    #   @return [Identity]
    #
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource (portal or project) to which this access policy provides
    #         access.</p>
    #
    #   @return [Resource]
    #
    # @!attribute access_policy_permission
    #   <p>The access policy permission. Note that a project <code>ADMINISTRATOR</code> is also known
    #         as a project owner.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute access_policy_creation_date
    #   <p>The date the access policy was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute access_policy_last_update_date
    #   <p>The date the access policy was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeAccessPolicyOutput = ::Struct.new(
      :access_policy_id,
      :access_policy_arn,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :access_policy_creation_date,
      :access_policy_last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    DescribeAssetInput = ::Struct.new(
      :asset_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #
    #   @return [String]
    #
    DescribeAssetModelInput = ::Struct.new(
      :asset_model_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset model, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_name
    #   <p>The name of the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_description
    #   <p>The asset model's description.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_properties
    #   <p>The list of asset properties for the asset model.</p>
    #            <p>This object doesn't include properties that you define in composite models. You can find
    #         composite model properties in the <code>assetModelCompositeModels</code> object.</p>
    #
    #   @return [Array<AssetModelProperty>]
    #
    # @!attribute asset_model_hierarchies
    #   <p>A list of asset model hierarchies that each contain a <code>childAssetModelId</code> and a
    #           <code>hierarchyId</code> (named <code>id</code>). A hierarchy specifies allowed parent/child
    #         asset relationships for an asset model.</p>
    #
    #   @return [Array<AssetModelHierarchy>]
    #
    # @!attribute asset_model_composite_models
    #   <p>The list of composite asset models for the asset model.</p>
    #
    #   @return [Array<AssetModelCompositeModel>]
    #
    # @!attribute asset_model_creation_date
    #   <p>The date the asset model was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute asset_model_last_update_date
    #   <p>The date the asset model was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute asset_model_status
    #   <p>The current status of the asset model, which contains a state and any error
    #         message.</p>
    #
    #   @return [AssetModelStatus]
    #
    DescribeAssetModelOutput = ::Struct.new(
      :asset_model_id,
      :asset_model_arn,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :asset_model_creation_date,
      :asset_model_last_update_date,
      :asset_model_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the asset, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute asset_name
    #   <p>The name of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model that was used to create the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_properties
    #   <p>The list of asset properties for the asset.</p>
    #            <p>This object doesn't include properties that you define in composite models. You can find
    #         composite model properties in the <code>assetCompositeModels</code> object.</p>
    #
    #   @return [Array<AssetProperty>]
    #
    # @!attribute asset_hierarchies
    #   <p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>
    #
    #   @return [Array<AssetHierarchy>]
    #
    # @!attribute asset_composite_models
    #   <p>The composite models for the asset.</p>
    #
    #   @return [Array<AssetCompositeModel>]
    #
    # @!attribute asset_creation_date
    #   <p>The date the asset was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute asset_last_update_date
    #   <p>The date the asset was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute asset_status
    #   <p>The current status of the asset, which contains a state and any error message.</p>
    #
    #   @return [AssetStatus]
    #
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #
    #   @return [String]
    #
    DescribeAssetOutput = ::Struct.new(
      :asset_id,
      :asset_arn,
      :asset_name,
      :asset_model_id,
      :asset_properties,
      :asset_hierarchies,
      :asset_composite_models,
      :asset_creation_date,
      :asset_last_update_date,
      :asset_status,
      :asset_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    DescribeAssetPropertyInput = ::Struct.new(
      :asset_id,
      :property_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_name
    #   <p>The name of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_property
    #   <p>The asset property's definition, alias, and notification state.</p>
    #            <p>This response includes this object for normal asset properties. If you describe an asset
    #         property in a composite model, this response includes the asset property information in
    #           <code>compositeModel</code>.</p>
    #
    #   @return [Property]
    #
    # @!attribute composite_model
    #   <p>The composite asset model that declares this asset property, if this asset property exists
    #         in a composite model.</p>
    #
    #   @return [CompositeModelProperty]
    #
    DescribeAssetPropertyOutput = ::Struct.new(
      :asset_id,
      :asset_name,
      :asset_model_id,
      :asset_property,
      :composite_model,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #
    #   @return [String]
    #
    DescribeDashboardInput = ::Struct.new(
      :dashboard_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the dashboard, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_name
    #   <p>The name of the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute project_id
    #   <p>The ID of the project that the dashboard is in.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_description
    #   <p>The dashboard's description.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_definition
    #   <p>The dashboard's definition JSON literal. For detailed information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating
    #           dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_creation_date
    #   <p>The date the dashboard was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute dashboard_last_update_date
    #   <p>The date the dashboard was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeDashboardOutput = ::Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :dashboard_name,
      :project_id,
      :dashboard_description,
      :dashboard_definition,
      :dashboard_creation_date,
      :dashboard_last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeDefaultEncryptionConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The key ARN of the customer managed key used for KMS encryption if you use
    #           <code>KMS_BASED_ENCRYPTION</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_status
    #   <p>The status of the account configuration. This contains the
    #         <code>ConfigurationState</code>. If there's an error, it also contains the
    #           <code>ErrorDetails</code>.</p>
    #
    #   @return [ConfigurationStatus]
    #
    DescribeDefaultEncryptionConfigurationOutput = ::Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC-UA
    #         sources from the IoT SiteWise console, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
    #           <code>1</code>.</p>
    #
    #   @return [String]
    #
    DescribeGatewayCapabilityConfigurationInput = ::Struct.new(
      :gateway_id,
      :capability_namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway that defines the capability configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_configuration
    #   <p>The JSON document that defines the gateway capability's configuration. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #
    #   @return [String]
    #
    DescribeGatewayCapabilityConfigurationOutput = ::Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      :capability_sync_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #
    #   @return [String]
    #
    DescribeGatewayInput = ::Struct.new(
      :gateway_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_name
    #   <p>The name of the gateway.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the gateway, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute gateway_platform
    #   <p>The gateway's platform.</p>
    #
    #   @return [GatewayPlatform]
    #
    # @!attribute gateway_capability_summaries
    #   <p>A list of gateway capability summaries that each contain a namespace and status. Each
    #         gateway capability defines data sources for the gateway. To retrieve a capability
    #         configuration's definition, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html">DescribeGatewayCapabilityConfiguration</a>.</p>
    #
    #   @return [Array<GatewayCapabilitySummary>]
    #
    # @!attribute creation_date
    #   <p>The date the gateway was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the gateway was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeGatewayOutput = ::Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_arn,
      :gateway_platform,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeLoggingOptionsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_options
    #   <p>The current logging options.</p>
    #
    #   @return [LoggingOptions]
    #
    DescribeLoggingOptionsOutput = ::Struct.new(
      :logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #
    #   @return [String]
    #
    DescribePortalInput = ::Struct.new(
      :portal_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the portal, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute portal_name
    #   <p>The name of the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_description
    #   <p>The portal's description.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_client_id
    #   <p>The Amazon Web Services SSO application generated client ID (used with Amazon Web Services SSO APIs). IoT SiteWise includes
    #           <code>portalClientId</code> for only portals that use Amazon Web Services SSO to authenticate users.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use Amazon Web Services SSO for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_status
    #   <p>The current status of the portal, which contains a state and any error message.</p>
    #
    #   @return [PortalStatus]
    #
    # @!attribute portal_creation_date
    #   <p>The date the portal was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute portal_last_update_date
    #   <p>The date the portal was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute portal_logo_image_location
    #   <p>The portal's logo image, which is available at a URL.</p>
    #
    #   @return [ImageLocation]
    #
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_auth_mode
    #   <p>The service to use to authenticate users to the portal.</p>
    #
    #   Enum, one of: ["IAM", "SSO"]
    #
    #   @return [String]
    #
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.</p>
    #
    #   @return [Alarms]
    #
    DescribePortalOutput = ::Struct.new(
      :portal_id,
      :portal_arn,
      :portal_name,
      :portal_description,
      :portal_client_id,
      :portal_start_url,
      :portal_contact_email,
      :portal_status,
      :portal_creation_date,
      :portal_last_update_date,
      :portal_logo_image_location,
      :role_arn,
      :portal_auth_mode,
      :notification_sender_email,
      :alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    DescribeProjectInput = ::Struct.new(
      :project_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the project, which has the following format.</p>
    #           <p>
    #               <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_id
    #   <p>The ID of the portal that the project is in.</p>
    #
    #   @return [String]
    #
    # @!attribute project_description
    #   <p>The project's description.</p>
    #
    #   @return [String]
    #
    # @!attribute project_creation_date
    #   <p>The date the project was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute project_last_update_date
    #   <p>The date the project was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeProjectOutput = ::Struct.new(
      :project_id,
      :project_arn,
      :project_name,
      :portal_id,
      :project_description,
      :project_creation_date,
      :project_last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeStorageConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #
    #   @return [String]
    #
    # @!attribute multi_layer_storage
    #   <p>Contains information about the storage destination.</p>
    #
    #   @return [MultiLayerStorage]
    #
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How many days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute configuration_status
    #   <p>Contains current status information for the configuration.</p>
    #
    #   @return [ConfigurationStatus]
    #
    # @!attribute last_update_date
    #   <p>The date the storage configuration was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeStorageConfigurationOutput = ::Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    DescribeTimeSeriesInput = ::Struct.new(
      :alias,
      :asset_id,
      :property_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the time series.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this time series. This parameter is required for time series
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model
    #         in which you created the asset property that is associated with your time series.
    #         Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_creation_date
    #   <p>The date that the time series was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute time_series_last_update_date
    #   <p>The date that the time series was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    DescribeTimeSeriesOutput = ::Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed error information. </p>
    #
    # @!attribute code
    #   <p>The error code. </p>
    #
    #   Enum, one of: ["INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message. </p>
    #
    #   @return [String]
    #
    DetailedError = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DetailedErrorCode
    #
    module DetailedErrorCode
      # No documentation available.
      #
      INCOMPATIBLE_COMPUTE_LOCATION = "INCOMPATIBLE_COMPUTE_LOCATION"

      # No documentation available.
      #
      INCOMPATIBLE_FORWARDING_CONFIGURATION = "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    end

    # @!attribute asset_id
    #   <p>The ID of the parent asset from which to disassociate the child asset.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_id
    #   <p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
    #         of assets to be formed that all come from the same asset model. You can use the hierarchy ID
    #         to identify the correct asset to disassociate. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute child_asset_id
    #   <p>The ID of the child asset to disassociate.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DisassociateAssetsInput = ::Struct.new(
      :asset_id,
      :hierarchy_id,
      :child_asset_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateAssetsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    DisassociateTimeSeriesFromAssetPropertyInput = ::Struct.new(
      :alias,
      :asset_id,
      :property_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateTimeSeriesFromAssetPropertyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DisassociatedDataStorageState
    #
    module DisassociatedDataStorageState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for EncryptionType
    #
    module EncryptionType
      # No documentation available.
      #
      SITEWISE_DEFAULT_ENCRYPTION = "SITEWISE_DEFAULT_ENCRYPTION"

      # No documentation available.
      #
      KMS_BASED_ENCRYPTION = "KMS_BASED_ENCRYPTION"
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"
    end

    # <p>Contains the details of an IoT SiteWise error.</p>
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p> A list of detailed errors. </p>
    #
    #   @return [Array<DetailedError>]
    #
    ErrorDetails = ::Struct.new(
      :code,
      :message,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains expression variable information.</p>
    #
    # @!attribute name
    #   <p>The friendly name of the variable to be used in the expression.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The variable that identifies an asset property from which to use values.</p>
    #
    #   @return [VariableValue]
    #
    ExpressionVariable = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The forwarding configuration for a given property.</p>
    #
    # @!attribute state
    #   <p>The forwarding state for the given property. </p>
    #
    #   Enum, one of: ["DISABLED", "ENABLED"]
    #
    #   @return [String]
    #
    ForwardingConfig = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ForwardingConfigState
    #
    module ForwardingConfigState
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # <p>Contains a summary of a gateway capability configuration.</p>
    #
    # @!attribute capability_namespace
    #   <p>The namespace of the capability configuration.
    #         For example, if you configure OPC-UA
    #         sources from the IoT SiteWise console, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
    #           <code>1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #
    #   @return [String]
    #
    GatewayCapabilitySummary = ::Struct.new(
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a gateway's platform information.</p>
    #
    # @!attribute greengrass
    #   <p>A gateway that runs on IoT Greengrass.</p>
    #
    #   @return [Greengrass]
    #
    # @!attribute greengrass_v2
    #   <p>A gateway that runs on IoT Greengrass V2.</p>
    #
    #   @return [GreengrassV2]
    #
    GatewayPlatform = ::Struct.new(
      :greengrass,
      :greengrass_v2,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of a gateway.</p>
    #
    # @!attribute gateway_id
    #   <p>The ID of the gateway device.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_name
    #   <p>The name of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_platform
    #   <p>Contains a gateway's platform information.</p>
    #
    #   @return [GatewayPlatform]
    #
    # @!attribute gateway_capability_summaries
    #   <p>A list of gateway capability summaries that each contain a namespace and status. Each
    #         gateway capability defines data sources for the gateway. To retrieve a capability
    #         configuration's definition, use <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html">DescribeGatewayCapabilityConfiguration</a>.</p>
    #
    #   @return [Array<GatewayCapabilitySummary>]
    #
    # @!attribute creation_date
    #   <p>The date the gateway was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the gateway was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    GatewaySummary = ::Struct.new(
      :gateway_id,
      :gateway_name,
      :gateway_platform,
      :gateway_capability_summaries,
      :creation_date,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregate_types
    #   <p>The data aggregating function.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resolution
    #   <p>The time interval over which to aggregate data.</p>
    #
    #   @return [String]
    #
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 100</p>
    #
    #   @return [Integer]
    #
    GetAssetPropertyAggregatesInput = ::Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :aggregate_types,
      :resolution,
      :qualities,
      :start_date,
      :end_date,
      :time_ordering,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aggregated_values
    #   <p>The requested aggregated values.</p>
    #
    #   @return [Array<AggregatedValue>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    GetAssetPropertyAggregatesOutput = ::Struct.new(
      :aggregated_values,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date
    #   <p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute qualities
    #   <p>The quality by which to filter asset data.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute time_ordering
    #   <p>The chronological sorting order of the requested information.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 100</p>
    #
    #   @return [Integer]
    #
    GetAssetPropertyValueHistoryInput = ::Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_date,
      :end_date,
      :qualities,
      :time_ordering,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_property_value_history
    #   <p>The asset property's value history.</p>
    #
    #   @return [Array<AssetPropertyValue>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    GetAssetPropertyValueHistoryOutput = ::Struct.new(
      :asset_property_value_history,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    GetAssetPropertyValueInput = ::Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute property_value
    #   <p>The current asset property value.</p>
    #
    #   @return [AssetPropertyValue]
    #
    GetAssetPropertyValueOutput = ::Struct.new(
      :property_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time_in_seconds
    #   <p>The exclusive start of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time_in_seconds
    #   <p>The inclusive end of the range from which to interpolate data, expressed in seconds in
    #         Unix epoch time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_time_offset_in_nanos
    #   <p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute quality
    #   <p>The quality of the asset property value. You can use this parameter as a filter to choose
    #         only the asset property values that have a specific quality.</p>
    #
    #   Enum, one of: ["GOOD", "BAD", "UNCERTAIN"]
    #
    #   @return [String]
    #
    # @!attribute interval_in_seconds
    #   <p>The time interval in seconds over which to interpolate data. Each interval starts when the
    #         previous one ends.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request. If not specified, the default value is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The interpolation type.</p>
    #            <p>Valid values: <code>LINEAR_INTERPOLATION | LOCF_INTERPOLATION</code>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINEAR_INTERPOLATION</code> – Estimates missing data using <a href="https://en.wikipedia.org/wiki/Linear_interpolation">linear
    #             interpolation</a>.</p>
    #                  <p>For example, you can use this operation to return the interpolated temperature values
    #             for a wind turbine every 24 hours over a duration of 7 days. If the interpolation starts
    #             July 1, 2021, at 9 AM, IoT SiteWise returns the first interpolated value on July 2, 2021, at 9 AM,
    #             the second interpolated value on July 3, 2021, at 9 AM, and so on.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCF_INTERPOLATION</code> – Estimates missing data using last observation
    #             carried forward interpolation</p>
    #                  <p>If no data point is found for an interval, IoT SiteWise returns the last observed data point
    #             for the previous interval and carries forward this interpolated value until a new data
    #             point is found.</p>
    #                  <p>For example, you can get the state of an on-off valve every 24 hours over a duration
    #             of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT SiteWise returns the last
    #             observed data point between July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first
    #             interpolated value. If a data point isn't found after 9 AM on July 2, 2021, IoT SiteWise uses the
    #             same interpolated value for the rest of the days.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute interval_window_in_seconds
    #   <p>The query interval for the window, in seconds. IoT SiteWise computes each interpolated value by
    #         using data points from the timestamp of each interval, minus the window to the timestamp of
    #         each interval plus the window. If not specified, the window ranges between the start time
    #         minus the interval and the end time plus the interval.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you specify a value for the <code>intervalWindowInSeconds</code> parameter, the
    #               value for the <code>type</code> parameter must be
    #               <code>LINEAR_INTERPOLATION</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>If a data point isn't found during the specified query window, IoT SiteWise won't return an
    #               interpolated value for the interval. This indicates that there's a gap in the ingested
    #               data points.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For example, you can get the interpolated temperature values for a wind turbine every 24
    #         hours over a duration of 7 days. If the interpolation starts on July 1, 2021, at 9 AM with a
    #         window of 2 hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM
    #         plus 2 hours) on July 2, 2021 to compute the first interpolated value. Next, IoT SiteWise uses the
    #         data points from 7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021 to
    #         compute the second interpolated value, and so on. </p>
    #
    #   @return [Integer]
    #
    GetInterpolatedAssetPropertyValuesInput = ::Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :start_time_in_seconds,
      :start_time_offset_in_nanos,
      :end_time_in_seconds,
      :end_time_offset_in_nanos,
      :quality,
      :interval_in_seconds,
      :next_token,
      :max_results,
      :type,
      :interval_window_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute interpolated_asset_property_values
    #   <p>The requested interpolated values.</p>
    #
    #   @return [Array<InterpolatedAssetPropertyValue>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    GetInterpolatedAssetPropertyValuesOutput = ::Struct.new(
      :interpolated_asset_property_values,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details for a gateway that runs on IoT Greengrass. To create a gateway that runs on IoT Greengrass,
    #       you must add the IoT SiteWise connector to a Greengrass group and deploy it. Your Greengrass
    #       group must also have permissions to upload data to IoT SiteWise. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html">Ingesting data using a
    #         gateway</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Greengrass group. For more information about how to find a group's
    #         ARN, see <a href="https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html">ListGroups</a> and <a href="https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html">GetGroup</a> in the
    #           <i>IoT Greengrass API Reference</i>.</p>
    #
    #   @return [String]
    #
    Greengrass = ::Struct.new(
      :group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details for a gateway that runs on IoT Greengrass V2. To create a gateway that runs on IoT Greengrass
    #       V2, you must deploy the IoT SiteWise Edge component to your gateway device. Your <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html">Greengrass
    #         device role</a> must use the <code>AWSIoTSiteWiseEdgeAccess</code> policy. For more
    #       information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html">Using IoT SiteWise at the edge</a> in the
    #         <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute core_device_thing_name
    #   <p>The name of the IoT thing for your IoT Greengrass V2 core device.</p>
    #
    #   @return [String]
    #
    GreengrassV2 = ::Struct.new(
      :core_device_thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information for a group identity in an access policy.</p>
    #
    # @!attribute id
    #   <p>The Amazon Web Services SSO ID of the group.</p>
    #
    #   @return [String]
    #
    GroupIdentity = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an Identity and Access Management role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #         <i>IAM User Guide</i>.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the IAM role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>.</p>
    #
    #   @return [String]
    #
    IAMRoleIdentity = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an Identity and Access Management user.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If you delete the IAM user, access policies that contain this identity include an
    #           empty <code>arn</code>. You can delete the access policy for the IAM user that no longer
    #           exists.</p>
    #            </note>
    #
    #   @return [String]
    #
    IAMUserIdentity = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an identity that can access an IoT SiteWise Monitor resource.</p>
    #          <note>
    #             <p>Currently, you can't use Amazon Web Services APIs to retrieve Amazon Web Services SSO identity IDs. You can find the
    #         Amazon Web Services SSO identity IDs in the URL of user and group pages in the <a href="https://console.aws.amazon.com/singlesignon">Amazon Web Services SSO console</a>.</p>
    #          </note>
    #
    # @!attribute user
    #   <p>An Amazon Web Services SSO user identity.</p>
    #
    #   @return [UserIdentity]
    #
    # @!attribute group
    #   <p>An Amazon Web Services SSO group identity.</p>
    #
    #   @return [GroupIdentity]
    #
    # @!attribute iam_user
    #   <p>An IAM user identity.</p>
    #
    #   @return [IAMUserIdentity]
    #
    # @!attribute iam_role
    #   <p>An IAM role identity.</p>
    #
    #   @return [IAMRoleIdentity]
    #
    Identity = ::Struct.new(
      :user,
      :group,
      :iam_user,
      :iam_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityType
    #
    module IdentityType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"

      # No documentation available.
      #
      IAM = "IAM"
    end

    # <p>Contains an image that is one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>An image file. Choose this option to upload a new image.</p>
    #             </li>
    #             <li>
    #                <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute id
    #   <p>The ID of an existing image. Specify this parameter to keep an existing image.</p>
    #
    #   @return [String]
    #
    # @!attribute file
    #   <p>Contains an image file.</p>
    #
    #   @return [ImageFile]
    #
    Image = ::Struct.new(
      :id,
      :file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an image file.</p>
    #
    # @!attribute data
    #   <p>The image file contents, represented as a base64-encoded string. The file size must be
    #         less than 1 MB.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The file type of the image.</p>
    #
    #   Enum, one of: ["PNG"]
    #
    #   @return [String]
    #
    ImageFile = ::Struct.new(
      :data,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageFileType
    #
    module ImageFileType
      # No documentation available.
      #
      PNG = "PNG"
    end

    # <p>Contains an image that is uploaded to IoT SiteWise and available at a URL.</p>
    #
    # @!attribute id
    #   <p>The ID of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL where the image is available. The URL is valid for 15 minutes so that you can view
    #         and download the image</p>
    #
    #   @return [String]
    #
    ImageLocation = ::Struct.new(
      :id,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>IoT SiteWise can't process your request right now. Try again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an interpolated asset property value.</p>
    #
    # @!attribute timestamp
    #   <p>Contains a timestamp with optional nanosecond granularity.</p>
    #
    #   @return [TimeInNanos]
    #
    # @!attribute value
    #   <p>Contains an asset property value (of a single type only).</p>
    #
    #   @return [Variant]
    #
    InterpolatedAssetPropertyValue = ::Struct.new(
      :timestamp,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters. Check your request and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit for a resource. For example, this can occur if you're trying to
    #       associate more than the allowed number of child assets or attempting to create more than the
    #       allowed number of properties for an asset model.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_type
    #   <p>The type of identity (Amazon Web Services SSO user, Amazon Web Services SSO group, or IAM user). This parameter is required
    #         if you specify <code>identityId</code>.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "IAM"]
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The ID of the identity. This parameter is required if you specify <code>USER</code> or
    #           <code>GROUP</code> for <code>identityType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource (portal or project). This parameter is required if you specify
    #           <code>resourceId</code>.</p>
    #
    #   Enum, one of: ["PORTAL", "PROJECT"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource. This parameter is required if you specify
    #           <code>resourceType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_arn
    #   <p>The ARN of the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM ARNs</a> in the
    #           <i>IAM User Guide</i>. This parameter is required if you specify
    #           <code>IAM</code> for <code>identityType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListAccessPoliciesInput = ::Struct.new(
      :identity_type,
      :identity_id,
      :resource_type,
      :resource_id,
      :iam_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_policy_summaries
    #   <p>A list that summarizes each access policy.</p>
    #
    #   @return [Array<AccessPolicySummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListAccessPoliciesOutput = ::Struct.new(
      :access_policy_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListAssetModelsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_summaries
    #   <p>A list that summarizes each asset model.</p>
    #
    #   @return [Array<AssetModelSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListAssetModelsOutput = ::Struct.new(
      :asset_model_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute traversal_type
    #   <p>The type of traversal to use to identify asset relationships. Choose the following
    #         option:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root
    #             asset. The asset that you specify in <code>assetId</code> is the first result in the list
    #             of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PATH_TO_ROOT"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #
    #   @return [Integer]
    #
    ListAssetRelationshipsInput = ::Struct.new(
      :asset_id,
      :traversal_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_relationship_summaries
    #   <p>A list that summarizes each asset relationship.</p>
    #
    #   @return [Array<AssetRelationshipSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListAssetRelationshipsOutput = ::Struct.new(
      :asset_relationship_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListAssetsFilter
    #
    module ListAssetsFilter
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      TOP_LEVEL = "TOP_LEVEL"
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    # @!attribute asset_model_id
    #   <p>The ID of the asset model by which to filter the list of assets. This parameter is
    #         required if you choose <code>ALL</code> for <code>filter</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>The filter for the requested list of assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all assets for a given asset model ID. The
    #               <code>assetModelId</code> parameter is required if you filter by
    #             <code>ALL</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset
    #             hierarchy tree.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ALL</code>
    #            </p>
    #
    #   Enum, one of: ["ALL", "TOP_LEVEL"]
    #
    #   @return [String]
    #
    ListAssetsInput = ::Struct.new(
      :next_token,
      :max_results,
      :asset_model_id,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes each asset.</p>
    #
    #   @return [Array<AssetSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListAssetsOutput = ::Struct.new(
      :asset_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to query.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_id
    #   <p>The ID of the hierarchy by which child assets are associated to the asset. To find a
    #         hierarchy ID, use the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html">DescribeAsset</a> or <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html">DescribeAssetModel</a> operations. This
    #         parameter is required if you choose <code>CHILD</code> for
    #         <code>traversalDirection</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute traversal_direction
    #   <p>The direction to list associated assets. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHILD</code> – The list includes all child assets associated to the
    #             asset. The <code>hierarchyId</code> parameter is required if you choose
    #             <code>CHILD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARENT</code> – The list includes the asset's parent asset.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>CHILD</code>
    #            </p>
    #
    #   Enum, one of: ["PARENT", "CHILD"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListAssociatedAssetsInput = ::Struct.new(
      :asset_id,
      :hierarchy_id,
      :traversal_direction,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_summaries
    #   <p>A list that summarizes the associated assets.</p>
    #
    #   @return [Array<AssociatedAssetsSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListAssociatedAssetsOutput = ::Struct.new(
      :asset_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListDashboardsInput = ::Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_summaries
    #   <p>A list that summarizes each dashboard in the project.</p>
    #
    #   @return [Array<DashboardSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListDashboardsOutput = ::Struct.new(
      :dashboard_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListGatewaysInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_summaries
    #   <p>A list that summarizes each gateway.</p>
    #
    #   @return [Array<GatewaySummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListGatewaysOutput = ::Struct.new(
      :gateway_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListPortalsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_summaries
    #   <p>A list that summarizes each portal.</p>
    #
    #   @return [Array<PortalSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListPortalsOutput = ::Struct.new(
      :portal_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListProjectAssetsInput = ::Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_ids
    #   <p>A list that contains the IDs of each asset associated with the project.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListProjectAssetsOutput = ::Struct.new(
      :asset_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #            <p>Default: 50</p>
    #
    #   @return [Integer]
    #
    ListProjectsInput = ::Struct.new(
      :portal_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_summaries
    #   <p>A list that summarizes each project in the portal.</p>
    #
    #   @return [Array<ProjectSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :project_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
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
    #   <p>The list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for each paginated request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_prefix
    #   <p>The alias prefix of the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_type
    #   <p>The type of the time series. The time series type can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASSOCIATED</code> – The time series is associated with an asset
    #             property.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISASSOCIATED</code> – The time series isn't associated with any asset
    #             property.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASSOCIATED", "DISASSOCIATED"]
    #
    #   @return [String]
    #
    ListTimeSeriesInput = ::Struct.new(
      :next_token,
      :max_results,
      :asset_id,
      :alias_prefix,
      :time_series_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute time_series_summaries
    #   <p>One or more time series summaries to list.</p>
    #
    #   @return [Array<TimeSeriesSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #
    #   @return [String]
    #
    ListTimeSeriesOutput = ::Struct.new(
      :time_series_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ListTimeSeriesType
    #
    module ListTimeSeriesType
      # No documentation available.
      #
      ASSOCIATED = "ASSOCIATED"

      # No documentation available.
      #
      DISASSOCIATED = "DISASSOCIATED"
    end

    # Includes enum constants for LoggingLevel
    #
    module LoggingLevel
      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      OFF = "OFF"
    end

    # <p>Contains logging options.</p>
    #
    # @!attribute level
    #   <p>The IoT SiteWise logging verbosity level.</p>
    #
    #   Enum, one of: ["ERROR", "INFO", "OFF"]
    #
    #   @return [String]
    #
    LoggingOptions = ::Struct.new(
      :level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset measurement property. For more information, see
    #       <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements">Measurements</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute processing_config
    #   <p>The processing configuration for the given measurement property.
    #         You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #         By default, measurements are forwarded to the cloud.</p>
    #
    #   @return [MeasurementProcessingConfig]
    #
    Measurement = ::Struct.new(
      :processing_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The processing configuration for the given measurement property.
    #       You can configure measurements to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #       By default, measurements are forwarded to the cloud.</p>
    #
    # @!attribute forwarding_config
    #   <p>The forwarding configuration for the given measurement property. </p>
    #
    #   @return [ForwardingConfig]
    #
    MeasurementProcessingConfig = ::Struct.new(
      :forwarding_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset metric property. With metrics, you can calculate aggregate functions,
    #       such as an average, maximum, or minimum, as specified through an expression. A metric maps
    #       several values to a single value (such as a sum).</p>
    #          <p>The maximum number of dependent/cascading variables used in any one metric calculation is
    #       10. Therefore, a <i>root</i> metric can have
    #       up to 10 cascading metrics in its computational dependency
    #       tree. Additionally, a metric can only have a data type of <code>DOUBLE</code> and consume
    #       properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics">Metrics</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute expression
    #   <p>The mathematical expression that defines the metric aggregation function. You can specify
    #         up to 10 variables per expression. You can specify up to 10 functions
    #         per expression. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute variables
    #   <p>The list of variables used in the expression.</p>
    #
    #   @return [Array<ExpressionVariable>]
    #
    # @!attribute window
    #   <p>The window (time interval) over which IoT SiteWise computes the metric's aggregation expression.
    #         IoT SiteWise computes one data point per <code>window</code>.</p>
    #
    #   @return [MetricWindow]
    #
    # @!attribute processing_config
    #   <p>The processing configuration for the given metric property.
    #         You can configure metrics to be computed at the edge or in the Amazon Web Services Cloud.
    #         By default, metrics are forwarded to the cloud.</p>
    #
    #   @return [MetricProcessingConfig]
    #
    Metric = ::Struct.new(
      :expression,
      :variables,
      :window,
      :processing_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The processing configuration for the given metric property.
    #       You can configure metrics to be computed at the edge or in the Amazon Web Services Cloud.
    #       By default, metrics are forwarded to the cloud.</p>
    #
    # @!attribute compute_location
    #   <p>The compute location for the given metric property. </p>
    #
    #   Enum, one of: ["EDGE", "CLOUD"]
    #
    #   @return [String]
    #
    MetricProcessingConfig = ::Struct.new(
      :compute_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a time interval window used for data aggregate computations (for example,
    #       average, sum, count, and so on).</p>
    #
    # @!attribute tumbling
    #   <p>The tumbling time interval window.</p>
    #
    #   @return [TumblingWindow]
    #
    MetricWindow = ::Struct.new(
      :tumbling,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MonitorErrorCode
    #
    module MonitorErrorCode
      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      LIMIT_EXCEEDED = "LIMIT_EXCEEDED"
    end

    # <p>Contains IoT SiteWise Monitor error details.</p>
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    MonitorErrorDetails = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the storage destination.</p>
    #
    # @!attribute customer_managed_s3_storage
    #   <p>Contains information about a customer managed Amazon S3 bucket.</p>
    #
    #   @return [CustomerManagedS3Storage]
    #
    MultiLayerStorage = ::Struct.new(
      :customer_managed_s3_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Permission
    #
    module Permission
      # No documentation available.
      #
      ADMINISTRATOR = "ADMINISTRATOR"

      # No documentation available.
      #
      VIEWER = "VIEWER"
    end

    # <p>Identifies an IoT SiteWise Monitor portal.</p>
    #
    # @!attribute id
    #   <p>The ID of the portal.</p>
    #
    #   @return [String]
    #
    PortalResource = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PortalState
    #
    module PortalState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about the current status of a portal.</p>
    #
    # @!attribute state
    #   <p>The current state of the portal.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Contains associated error information, if any.</p>
    #
    #   @return [MonitorErrorDetails]
    #
    PortalStatus = ::Struct.new(
      :state,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a portal summary.</p>
    #
    # @!attribute id
    #   <p>The ID of the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The portal's description.</p>
    #
    #   @return [String]
    #
    # @!attribute start_url
    #   <p>The URL for the IoT SiteWise Monitor portal. You can use this URL to access portals that
    #         use Amazon Web Services SSO for authentication. For portals that use IAM for authentication, you must use the
    #         IoT SiteWise console to get a URL that you can use to access the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the portal was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the portal was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Contains information about the current status of a portal.</p>
    #
    #   @return [PortalStatus]
    #
    PortalSummary = ::Struct.new(
      :id,
      :name,
      :description,
      :start_url,
      :creation_date,
      :last_update_date,
      :role_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a specific IoT SiteWise Monitor project.</p>
    #
    # @!attribute id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    ProjectResource = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains project summary information.</p>
    #
    # @!attribute id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The project's description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date the project was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_date
    #   <p>The date the project was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    ProjectSummary = ::Struct.new(
      :id,
      :name,
      :description,
      :creation_date,
      :last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains asset property information.</p>
    #
    # @!attribute id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification
    #   <p>The asset property's notification topic and state. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html">UpdateAssetProperty</a>.</p>
    #
    #   @return [PropertyNotification]
    #
    # @!attribute data_type
    #   <p>The property data type.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The property type (see <code>PropertyType</code>). A property contains one type.</p>
    #
    #   @return [PropertyType]
    #
    Property = ::Struct.new(
      :id,
      :name,
      :alias,
      :notification,
      :data_type,
      :unit,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropertyDataType
    #
    module PropertyDataType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      STRUCT = "STRUCT"
    end

    # <p>Contains asset property value notification information. When the notification state is enabled, IoT SiteWise publishes property value
    #       updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute topic
    #   <p>The MQTT topic to which IoT SiteWise publishes property value update notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current notification state.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    PropertyNotification = ::Struct.new(
      :topic,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropertyNotificationState
    #
    module PropertyNotificationState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Contains a property type, which can be one of <code>attribute</code>,
    #         <code>measurement</code>, <code>metric</code>, or <code>transform</code>.</p>
    #
    # @!attribute attribute
    #   <p>Specifies an asset attribute property. An attribute generally contains static information,
    #         such as the serial number of an <a href="https://en.wikipedia.org/wiki/Internet_of_things Industrial_applications">IIoT</a> wind turbine.</p>
    #
    #   @return [Attribute]
    #
    # @!attribute measurement
    #   <p>Specifies an asset measurement property. A measurement represents a device's raw sensor
    #         data stream, such as timestamped temperature values or timestamped power values.</p>
    #
    #   @return [Measurement]
    #
    # @!attribute transform
    #   <p>Specifies an asset transform property. A transform contains a mathematical expression that
    #         maps a property's data points from one form to another, such as a unit conversion from Celsius
    #         to Fahrenheit.</p>
    #
    #   @return [Transform]
    #
    # @!attribute metric
    #   <p>Specifies an asset metric property. A metric contains a mathematical expression that uses
    #         aggregate functions to process all input data points over a time interval and output a single
    #         data point, such as to calculate the average hourly temperature.</p>
    #
    #   @return [Metric]
    #
    PropertyType = ::Struct.new(
      :attribute,
      :measurement,
      :transform,
      :metric,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of value updates for an asset property in the list of asset entries
    #       consumed by the <a href="https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html">BatchPutAssetPropertyValue</a> API
    #       operation.</p>
    #
    # @!attribute entry_id
    #   <p>The user specified ID for the entry. You can use this ID to identify which entries
    #         failed.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_id
    #   <p>The ID of the asset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property for this entry.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute property_values
    #   <p>The list of property values to upload. You can specify up to 10
    #           <code>propertyValues</code> array elements. </p>
    #
    #   @return [Array<AssetPropertyValue>]
    #
    PutAssetPropertyValueEntry = ::Struct.new(
      :entry_id,
      :asset_id,
      :property_id,
      :property_alias,
      :property_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Key ID of the customer managed key used for KMS encryption. This is required if you
    #         use <code>KMS_BASED_ENCRYPTION</code>.</p>
    #
    #   @return [String]
    #
    PutDefaultEncryptionConfigurationInput = ::Struct.new(
      :encryption_type,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Key ARN of the KMS key used for KMS encryption if you use
    #           <code>KMS_BASED_ENCRYPTION</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_status
    #   <p>The status of the account configuration. This contains the
    #         <code>ConfigurationState</code>. If there is an error, it also contains the
    #           <code>ErrorDetails</code>.</p>
    #
    #   @return [ConfigurationStatus]
    #
    PutDefaultEncryptionConfigurationOutput = ::Struct.new(
      :encryption_type,
      :kms_key_arn,
      :configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_options
    #   <p>The logging options to set.</p>
    #
    #   @return [LoggingOptions]
    #
    PutLoggingOptionsInput = ::Struct.new(
      :logging_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLoggingOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #
    #   @return [String]
    #
    # @!attribute multi_layer_storage
    #   <p>Identifies a storage destination. If you specified <code>MULTI_LAYER_STORAGE</code> for the storage type,
    #         you must specify a <code>MultiLayerStorage</code> object.</p>
    #
    #   @return [MultiLayerStorage]
    #
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How many days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #
    #   @return [RetentionPeriod]
    #
    PutStorageConfigurationInput = ::Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute storage_type
    #   <p>The storage tier that you specified for your data.
    #         The <code>storageType</code> parameter can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SITEWISE_DEFAULT_STORAGE</code> – IoT SiteWise saves your data into the hot tier.
    #             The hot tier is a service-managed database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI_LAYER_STORAGE</code> – IoT SiteWise saves your data in both the cold tier and the hot tier.
    #             The cold tier is a customer-managed Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"]
    #
    #   @return [String]
    #
    # @!attribute multi_layer_storage
    #   <p>Contains information about the storage destination.</p>
    #
    #   @return [MultiLayerStorage]
    #
    # @!attribute disassociated_data_storage
    #   <p>Contains the storage configuration for time series (data streams) that aren't associated with asset properties.
    #         The <code>disassociatedDataStorage</code> can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – IoT SiteWise accepts time series that aren't associated with asset properties.</p>
    #                  <important>
    #                     <p>After the <code>disassociatedDataStorage</code> is enabled, you can't disable it.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – IoT SiteWise doesn't accept time series (data streams) that aren't associated with asset properties.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html">Data streams</a>
    #       in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>How many days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #
    #   @return [RetentionPeriod]
    #
    # @!attribute configuration_status
    #   <p>Contains current status information for the configuration.</p>
    #
    #   @return [ConfigurationStatus]
    #
    PutStorageConfigurationOutput = ::Struct.new(
      :storage_type,
      :multi_layer_storage,
      :disassociated_data_storage,
      :retention_period,
      :configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Quality
    #
    module Quality
      # No documentation available.
      #
      GOOD = "GOOD"

      # No documentation available.
      #
      BAD = "BAD"

      # No documentation available.
      #
      UNCERTAIN = "UNCERTAIN"
    end

    # <p>Contains an IoT SiteWise Monitor resource ID for a portal or project.</p>
    #
    # @!attribute portal
    #   <p>A portal resource.</p>
    #
    #   @return [PortalResource]
    #
    # @!attribute project
    #   <p>A project resource.</p>
    #
    #   @return [ProjectResource]
    #
    Resource = ::Struct.new(
      :portal,
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that already exists.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource that already exists.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      :resource_id,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      PORTAL = "PORTAL"

      # No documentation available.
      #
      PROJECT = "PROJECT"
    end

    # <p>How many days your data is kept in the hot tier. By default, your data is kept indefinitely in the hot tier.</p>
    #
    # @!attribute number_of_days
    #   <p>The number of days that your data is kept.</p>
    #            <note>
    #               <p>If you specified a value for this parameter, the <code>unlimited</code> parameter must
    #           be <code>false</code>.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute unlimited
    #   <p>If true, your data is kept indefinitely.</p>
    #            <note>
    #               <p>If configured to <code>true</code>, you must not specify a value for the
    #             <code>numberOfDays</code> parameter.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    RetentionPeriod = ::Struct.new(
      :number_of_days,
      :unlimited,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested service is unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageType
    #
    module StorageType
      # No documentation available.
      #
      SITEWISE_DEFAULT_STORAGE = "SITEWISE_DEFAULT_STORAGE"

      # No documentation available.
      #
      MULTI_LAYER_STORAGE = "MULTI_LAYER_STORAGE"
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your IoT SiteWise
    #           resources</a> in the <i>IoT SiteWise User Guide</i>.</p>
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

    # <p>Your request exceeded a rate limit. For example, you might have exceeded the number of
    #       IoT SiteWise assets that can be created per second, the allowed number of messages per second, and so
    #       on.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a timestamp with optional nanosecond granularity.</p>
    #
    # @!attribute time_in_seconds
    #   <p>The timestamp date, in seconds, in the Unix epoch format. Fractional nanosecond data is
    #         provided by <code>offsetInNanos</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute offset_in_nanos
    #   <p>The nanosecond offset from <code>timeInSeconds</code>.</p>
    #
    #   @return [Integer]
    #
    TimeInNanos = ::Struct.new(
      :time_in_seconds,
      :offset_in_nanos,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TimeOrdering
    #
    module TimeOrdering
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>Contains a summary of a time series (data stream).</p>
    #
    # @!attribute asset_id
    #   <p>The ID of the asset in which the asset property was created.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias that identifies the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_id
    #   <p>The ID of the time series.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the time series.</p>
    #            <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to identify the type of the structure for this time series.</p>
    #
    #   Enum, one of: ["STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"]
    #
    #   @return [String]
    #
    # @!attribute data_type_spec
    #   <p>The data type of the structure for this time series. This parameter is required for time series
    #         that have the <code>STRUCT</code> data type.</p>
    #            <p>The options for this parameter depend on the type of the composite model
    #         in which you created the asset property that is associated with your time series.
    #         Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite models.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_creation_date
    #   <p>The date that the time series was created, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    # @!attribute time_series_last_update_date
    #   <p>The date that the time series was last updated, in Unix epoch time.</p>
    #
    #   @return [Time]
    #
    TimeSeriesSummary = ::Struct.new(
      :asset_id,
      :property_id,
      :alias,
      :time_series_id,
      :data_type,
      :data_type_spec,
      :time_series_creation_date,
      :time_series_last_update_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit for the number of tags allowed for a resource. For more
    #       information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag naming limits and
    #         requirements</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the resource with too many tags.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset transform property. A transform is a one-to-one mapping of a property's
    #       data points from one form to another. For example, you can use a transform to convert a
    #       Celsius data stream to Fahrenheit by applying the transformation expression to each data point
    #       of the Celsius stream. A transform can only have a data type of <code>DOUBLE</code> and
    #       consume properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms">Transforms</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    # @!attribute expression
    #   <p>The mathematical expression that defines the transformation function. You can specify up
    #         to 10 variables per expression. You can specify up to 10 functions per
    #         expression. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute variables
    #   <p>The list of variables used in the expression.</p>
    #
    #   @return [Array<ExpressionVariable>]
    #
    # @!attribute processing_config
    #   <p>The processing configuration for the given transform property.
    #         You can configure transforms to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #         You can also configure transforms to be computed at the edge or in the cloud.</p>
    #
    #   @return [TransformProcessingConfig]
    #
    Transform = ::Struct.new(
      :expression,
      :variables,
      :processing_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The processing configuration for the given transform property.
    #       You can configure transforms to be kept at the edge or forwarded to the Amazon Web Services Cloud.
    #       You can also configure transforms to be computed at the edge or in the cloud.</p>
    #
    # @!attribute compute_location
    #   <p>The compute location for the given transform property. </p>
    #
    #   Enum, one of: ["EDGE", "CLOUD"]
    #
    #   @return [String]
    #
    # @!attribute forwarding_config
    #   <p>The forwarding configuration for a given property.</p>
    #
    #   @return [ForwardingConfig]
    #
    TransformProcessingConfig = ::Struct.new(
      :compute_location,
      :forwarding_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TraversalDirection
    #
    module TraversalDirection
      # No documentation available.
      #
      PARENT = "PARENT"

      # No documentation available.
      #
      CHILD = "CHILD"
    end

    # Includes enum constants for TraversalType
    #
    module TraversalType
      # No documentation available.
      #
      PATH_TO_ROOT = "PATH_TO_ROOT"
    end

    # <p>Contains a tumbling window, which is a repeating fixed-sized, non-overlapping, and
    #       contiguous time window. You can use this window in metrics to aggregate data from properties
    #       and other assets.</p>
    #          <p>You can use <code>m</code>, <code>h</code>, <code>d</code>, and <code>w</code> when you
    #       specify an interval or offset. Note that <code>m</code> represents minutes, <code>h</code>
    #       represents hours, <code>d</code> represents days, and <code>w</code> represents weeks. You can
    #       also use <code>s</code> to represent seconds in <code>offset</code>.</p>
    #          <p>The <code>interval</code> and <code>offset</code> parameters support the <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a>. For example,
    #         <code>PT5S</code> represents 5 seconds, <code>PT5M</code> represents 5 minutes, and
    #         <code>PT5H</code> represents 5 hours.</p>
    #
    # @!attribute interval
    #   <p>The time interval for the tumbling window. The interval time must be between 1 minute and
    #         1 week.</p>
    #            <p>IoT SiteWise computes the <code>1w</code> interval the end of Sunday at midnight each week (UTC),
    #         the <code>1d</code> interval at the end of each day at midnight (UTC), the <code>1h</code>
    #         interval at the end of each hour, and so on. </p>
    #            <p>When IoT SiteWise aggregates data points for metric computations, the start of each interval is
    #         exclusive and the end of each interval is inclusive. IoT SiteWise places the computed data point at
    #         the end of the interval.</p>
    #
    #   @return [String]
    #
    # @!attribute offset
    #   <p>The offset for the tumbling window. The <code>offset</code> parameter accepts the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>The offset time.</p>
    #                  <p>For example, if you specify <code>18h</code> for <code>offset</code> and
    #               <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following
    #             ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation
    #                 result at 6 PM (UTC) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at
    #                 6 PM (UTC) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The ISO 8601 format.</p>
    #                  <p>For example, if you specify <code>PT18H</code> for <code>offset</code> and
    #               <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the following
    #             ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (UTC), you get the first aggregation
    #                 result at 6 PM (UTC) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (UTC), you get the first aggregation result at
    #                 6 PM (UTC) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The 24-hour clock.</p>
    #                  <p>For example, if you specify <code>00:03:00</code> for <code>offset</code>,
    #               <code>5m</code> for <code>interval</code>, and you create the metric at 2 PM (UTC), you
    #             get the first aggregation result at 2:03 PM (UTC). You get the second aggregation result
    #             at 2:08 PM (UTC). </p>
    #               </li>
    #               <li>
    #                  <p>The offset time zone.</p>
    #                  <p>For example, if you specify <code>2021-07-23T18:00-08</code> for <code>offset</code>
    #             and <code>1d</code> for <code>interval</code>, IoT SiteWise aggregates data in one of the
    #             following ways:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you create the metric before or at 6 PM (PST), you get the first aggregation
    #                 result at 6 PM (PST) on the day when you create the metric.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you create the metric after 6 PM (PST), you get the first aggregation result at
    #                 6 PM (PST) the next day.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    TumblingWindow = ::Struct.new(
      :interval,
      :offset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are not authorized.</p>
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

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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

    # @!attribute access_policy_id
    #   <p>The ID of the access policy.</p>
    #
    #   @return [String]
    #
    # @!attribute access_policy_identity
    #   <p>The identity for this access policy. Choose an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user.</p>
    #
    #   @return [Identity]
    #
    # @!attribute access_policy_resource
    #   <p>The IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    #
    #   @return [Resource]
    #
    # @!attribute access_policy_permission
    #   <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    #
    #   Enum, one of: ["ADMINISTRATOR", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateAccessPolicyInput = ::Struct.new(
      :access_policy_id,
      :access_policy_identity,
      :access_policy_resource,
      :access_policy_permission,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAccessPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_name
    #   <p>A unique, friendly name for the asset.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_description
    #   <p>A description for the asset.</p>
    #
    #   @return [String]
    #
    UpdateAssetInput = ::Struct.new(
      :asset_id,
      :asset_name,
      :client_token,
      :asset_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_id
    #   <p>The ID of the asset model to update.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_name
    #   <p>A unique, friendly name for the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_description
    #   <p>A description for the asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute asset_model_properties
    #   <p>The updated property definitions of the asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html">Asset properties</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 200 properties per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Array<AssetModelProperty>]
    #
    # @!attribute asset_model_hierarchies
    #   <p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset
    #         model whose assets can be children of any other assets created from this asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>You can specify up to 10 hierarchies per asset model. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [Array<AssetModelHierarchy>]
    #
    # @!attribute asset_model_composite_models
    #   <p>The composite asset models that are part of this asset model.
    #         Composite asset models are asset models that contain specific properties. Each composite model
    #         has a type that defines the properties that the composite model supports. Use composite asset
    #         models to define alarms on this asset model.</p>
    #
    #   @return [Array<AssetModelCompositeModel>]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateAssetModelInput = ::Struct.new(
      :asset_model_id,
      :asset_model_name,
      :asset_model_description,
      :asset_model_properties,
      :asset_model_hierarchies,
      :asset_model_composite_models,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_model_status
    #   <p>The status of the asset model, which contains a state (<code>UPDATING</code> after
    #         successfully calling this operation) and any error message.</p>
    #
    #   @return [AssetModelStatus]
    #
    UpdateAssetModelOutput = ::Struct.new(
      :asset_model_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_status
    #   <p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [AssetStatus]
    #
    UpdateAssetOutput = ::Struct.new(
      :asset_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute asset_id
    #   <p>The ID of the asset to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute property_id
    #   <p>The ID of the asset property to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute property_alias
    #   <p>The alias that identifies the property, such as an OPC-UA server data stream path
    #           (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
    #           <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html">Mapping industrial data streams to asset properties</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the alias is removed from the property.</p>
    #
    #   @return [String]
    #
    # @!attribute property_notification_state
    #   <p>The MQTT notification state (enabled or disabled) for this asset property.
    #         When the notification state is enabled, IoT SiteWise publishes property value
    #         updates to a unique MQTT topic. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html">Interacting with other services</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #            <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateAssetPropertyInput = ::Struct.new(
      :asset_id,
      :property_id,
      :property_alias,
      :property_notification_state,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAssetPropertyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dashboard_id
    #   <p>The ID of the dashboard to update.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_name
    #   <p>A new friendly name for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_description
    #   <p>A new description for the dashboard.</p>
    #
    #   @return [String]
    #
    # @!attribute dashboard_definition
    #   <p>The new dashboard definition, as specified in a JSON literal. For detailed information,
    #         see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html">Creating dashboards (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateDashboardInput = ::Struct.new(
      :dashboard_id,
      :dashboard_name,
      :dashboard_description,
      :dashboard_definition,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDashboardOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability configuration to be updated.
    #         For example, if you configure OPC-UA
    #         sources from the IoT SiteWise console, your OPC-UA capability configuration has the namespace
    #           <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
    #           <code>1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_configuration
    #   <p>The JSON document that defines the configuration for the gateway capability. For more
    #         information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html configure-source-cli">Configuring data sources (CLI)</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    UpdateGatewayCapabilityConfigurationInput = ::Struct.new(
      :gateway_id,
      :capability_namespace,
      :capability_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capability_namespace
    #   <p>The namespace of the gateway capability.</p>
    #
    #   @return [String]
    #
    # @!attribute capability_sync_status
    #   <p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
    #               </li>
    #            </ul>
    #            <p>After you update a capability configuration, its sync status is <code>OUT_OF_SYNC</code>
    #         until the gateway receives and applies or rejects the updated configuration.</p>
    #
    #   Enum, one of: ["IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN"]
    #
    #   @return [String]
    #
    UpdateGatewayCapabilityConfigurationOutput = ::Struct.new(
      :capability_namespace,
      :capability_sync_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute gateway_id
    #   <p>The ID of the gateway to update.</p>
    #
    #   @return [String]
    #
    # @!attribute gateway_name
    #   <p>A unique, friendly name for the gateway.</p>
    #
    #   @return [String]
    #
    UpdateGatewayInput = ::Struct.new(
      :gateway_id,
      :gateway_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGatewayOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_id
    #   <p>The ID of the portal to update.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_name
    #   <p>A new friendly name for the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_description
    #   <p>A new description for the portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_contact_email
    #   <p>The Amazon Web Services administrator's contact email address.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_logo_image
    #   <p>Contains an image that is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An image file. Choose this option to upload a new image.</p>
    #               </li>
    #               <li>
    #                  <p>The ID of an existing image. Choose this option to keep an existing image.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Image]
    #
    # @!attribute role_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of a service role that allows the portal's users to access your IoT SiteWise
    #         resources on your behalf. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html">Using service roles for IoT SiteWise Monitor</a> in the
    #           <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_sender_email
    #   <p>The email address that sends alarm notifications.</p>
    #
    #   @return [String]
    #
    # @!attribute alarms
    #   <p>Contains the configuration information of an alarm created in an IoT SiteWise Monitor portal.
    #     You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range.
    #     For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html">Monitoring with alarms</a> in the <i>IoT SiteWise Application Guide</i>.</p>
    #
    #   @return [Alarms]
    #
    UpdatePortalInput = ::Struct.new(
      :portal_id,
      :portal_name,
      :portal_description,
      :portal_contact_email,
      :portal_logo_image,
      :role_arn,
      :client_token,
      :notification_sender_email,
      :alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_status
    #   <p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully
    #         calling this operation) and any error message.</p>
    #
    #   @return [PortalStatus]
    #
    UpdatePortalOutput = ::Struct.new(
      :portal_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project to update.</p>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>A new friendly name for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_description
    #   <p>A new description for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    #
    #   @return [String]
    #
    UpdateProjectInput = ::Struct.new(
      :project_id,
      :project_name,
      :project_description,
      :client_token,
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

    # <p>Contains information for a user identity in an access policy.</p>
    #
    # @!attribute id
    #   <p>The Amazon Web Services SSO ID of the user.</p>
    #
    #   @return [String]
    #
    UserIdentity = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a property value used in an expression.</p>
    #
    # @!attribute property_id
    #   <p>The ID of the property to use as the variable. You can use the property <code>name</code>
    #         if it's from the same asset model.</p>
    #
    #   @return [String]
    #
    # @!attribute hierarchy_id
    #   <p>The ID of the hierarchy to query for the property ID. You can use the hierarchy's name
    #         instead of the hierarchy's ID.</p>
    #            <p>You use a hierarchy ID instead of a model ID because you can have several hierarchies
    #         using the same model and therefore the same <code>propertyId</code>. For example, you might
    #         have separately grouped assets that come from the same asset model. For more information, see
    #         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html">Asset hierarchies</a> in the <i>IoT SiteWise User Guide</i>.</p>
    #
    #   @return [String]
    #
    VariableValue = ::Struct.new(
      :property_id,
      :hierarchy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an asset property value (of a single type only).</p>
    #
    # @!attribute string_value
    #   <p>Asset property data of type string (sequence of characters).</p>
    #
    #   @return [String]
    #
    # @!attribute integer_value
    #   <p>Asset property data of type integer (whole number).</p>
    #
    #   @return [Integer]
    #
    # @!attribute double_value
    #   <p>Asset property data of type double (floating point number).</p>
    #
    #   @return [Float]
    #
    # @!attribute boolean_value
    #   <p>Asset property data of type Boolean (true or false).</p>
    #
    #   @return [Boolean]
    #
    Variant = ::Struct.new(
      :string_value,
      :integer_value,
      :double_value,
      :boolean_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
